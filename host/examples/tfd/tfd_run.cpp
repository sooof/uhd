///////////////////////////////////////////////////////////////////////////////
// author Rohit Dilip (rdilip@)
// date_created 11.09.2017
// date_modified 11.09.2017
// Description: This program activates and runs the DDS for the USRP b200 device.
// It accepts a master clock rate, center frequency, gain, and samples/buffer
// as input values. The most relevant section is probably at the very end in 
// the final while loop. This program also provides helper methods to collapse
// an input frequency, amplitude, and phase into one value, then to add those
// to the system. Note that amplitude should be between 0 and 1, phase between
// 0 and 2 pi, and the tone quality degrades when frequency goes above half
// the clock rate.
///////////////////////////////////////////////////////////////////////////////

#include <uhd/utils/thread_priority.hpp>
#include <uhd/utils/safe_main.hpp>
#include <uhd/usrp/multi_usrp.hpp>
#include <uhd/exception.hpp>
#include <uhd/property_tree.hpp>
#include <uhd/types/tune_request.hpp>
#include <boost/program_options.hpp>
#include <boost/format.hpp>
#include <boost/thread.hpp>
#include <boost/lexical_cast.hpp>
#include <boost/algorithm/string.hpp>
#include <iostream>
#include <stdint.h>
#include <csignal>
#include <thread>
#include <fstream>

namespace po = boost::program_options;

static bool stop_signal_called = false;
void sig_int_handler(int){stop_signal_called = true;}
double MASTER_CLOCK_RATE;


static void update(uhd::tx_streamer::sptr _tx_stream, std::vector<std::complex<float> > buff,
	std::vector<std::complex<float> *> buffs, uhd::tx_metadata_t md) {	
	while (true) {
		if (stop_signal_called) break;
	  _tx_stream->send(buffs, buff.size(), md);
	}
}

static uint32_t combine(float fq, int am, int ph) {
	uint32_t comb_fq_am_ph;
	uint16_t fq0;
	uint8_t am0, ph0;
	am0 = (uint8_t)(am * 254);
	ph0 = (uint8_t)(ph * 254 / 6.28);
	fq0 = (uint16_t)((fq / MASTER_CLOCK_RATE) * std::pow(2,16));
	comb_fq_am_ph = ph0;
	comb_fq_am_ph = (comb_fq_am_ph << 8) | am0;
	comb_fq_am_ph = (comb_fq_am_ph << 16) | fq0;
	return comb_fq_am_ph;
}

static void set_tone(uhd::property_tree::sptr tree, int index, float fq, int am, int ph) {
	const uhd::fs_path mb_path = "/mboards/0";
	const uhd::fs_path rx_dsp_path = mb_path / "rx_dsps" / 0;

	uint32_t comb_fq_am_ph;
	comb_fq_am_ph = combine(fq, am, ph);

	tree->access<uint32_t>(rx_dsp_path / "llr_reg" + std::to_string(index)).set(comb_fq_am_ph);
}


static int rf_signal(double freq, double gain, double clock_rate, uint64_t spb) {

	MASTER_CLOCK_RATE = clock_rate;
	// Master clock rate is hardcoded in, FPGA image location should not change
	uhd::set_thread_priority_safe();
	std::string device_args("master_clock_rate=" + std::to_string(MASTER_CLOCK_RATE) + "e6,fpga=/home/thompsonlab/Documents/fpga/usrp3/top/b200/build/usrp_b200_fpga.bin");
	std::string subdev("A:0");
	std::string ant("TX/RX");
	std::string ref("internal");
	uhd::usrp::multi_usrp::sptr usrp = uhd::usrp::multi_usrp::make(device_args);
	std::cout << boost::format("Using Device: %s") % usrp->get_pp_string() << std::endl;

    //detect which channels to use
    std::vector<std::string> channel_strings;
    std::vector<size_t> channel_nums;
    boost::split(channel_strings, "0", boost::is_any_of("\"',"));
    for(size_t ch = 0; ch < channel_strings.size(); ch++){
        size_t chan = boost::lexical_cast<int>(channel_strings[ch]);
        if(chan >= usrp->get_tx_num_channels())
            throw std::runtime_error("Invalid channel(s) specified.");
        else
            channel_nums.push_back(boost::lexical_cast<int>(channel_strings[ch]));
    }


	uhd::tune_request_t tune_request(freq);
	std::cout << boost::format("Requested frequency: %s") % freq << std::endl;
	usrp->set_tx_freq(tune_request);
	std::cout << boost::format("Acquired frequency: %s") % usrp->get_tx_freq() << std::endl;

	usrp->set_tx_gain(gain);
	std::cout << boost::format("Requested gain: %s") % gain << std::endl;
	std::cout << boost::format("Acquired gain: %s") % usrp->get_tx_gain() << std::endl;

   boost::this_thread::sleep(boost::posix_time::seconds(1)); //allow for some setup time


	//create a transmit streamer
	//linearly map channels (index0 = channel0, index1 = channel1, ...)
	uhd::stream_args_t stream_args("fc32", "sc16");
	stream_args.channels = channel_nums;
	uhd::tx_streamer::sptr tx_stream = usrp->get_tx_stream(stream_args);

	// Starting streaming
	std::signal(SIGINT, &sig_int_handler);
   std::cout << "Press Ctrl + C to stop streaming..." << std::endl;

	uhd::tx_metadata_t md;
 	if (spb == 0) spb = tx_stream->get_max_num_samps()*10;
	std::vector<std::complex<float> > buff(spb);
	std::vector<std::complex<float> *> buffs(channel_nums.size(), &buff.front());

	const uhd::fs_path mb_path = "/mboards/0";
	const uhd::fs_path rx_dsp_path = mb_path / "rx_dsps" / 0;

	uhd::property_tree::sptr _tree;
	uhd::device::sptr dev;
	dev = usrp->get_device();
	_tree = dev->get_tree();
	std::thread t1(update, tx_stream, buff, buffs, md);
	t1.detach();

	int i;
	double fq, am, ph;
/*
	while (!stop_signal_called) {

		std::ifstream inFile("/home/thompsonlab/Documents/uhd/host/examples/tfd/FIFO.txt");

		if (!inFile) {
			std::cout << "Could not open Freq file" << std::endl;
		}

		while (!inFile.eof()) {
			inFile >> i >> fq >> am >> ph;
			std::string id = std::to_string(i);
			set_tone(_tree, i, fq, am, ph);
			if (i == -1) {
				break;
			}
		}
		inFile.close();
	}

    //finished
    std::cout << std::endl << "Done!" << std::endl << std::endl;
*/
	while (!stop_signal_called) {}
	return EXIT_SUCCESS;
}

static int rf_signal() { return rf_signal(80e6, 90, 32.768, 0); } 

int UHD_SAFE_MAIN (int argc, char *argv[]) {
	double freq;
	double gain;
	uint64_t spb;
	double clock_rate;
    po::options_description desc("Allowed options");
    desc.add_options()
        ("spb", po::value<uint64_t>(&spb)->default_value(0), "samples per buffer, 0 for default")
        ("freq", po::value<double>(&freq)->default_value(80E6), "RF center frequency in Hz, default 80 MHz")
        ("gain", po::value<double>(&gain)->default_value(90), "gain for the RF chain, default 90")
		  ("clock_rate", po::value<double>(&clock_rate)->default_value(32.768), "Master clock rate in MHz, 32.768 default")
    ;
    po::variables_map vm;
    po::store(po::parse_command_line(argc, argv, desc), vm);
    po::notify(vm);
	 MASTER_CLOCK_RATE = clock_rate;

	return rf_signal(freq, gain, clock_rate, spb);
}

