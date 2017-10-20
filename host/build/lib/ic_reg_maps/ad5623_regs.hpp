/***********************************************************************
 * This file was generated by /home/thompsonlab/Documents/uhd/host/lib/ic_reg_maps/gen_ad5623_regs.py on Wed Sep 13 10:15:25 2017
 **********************************************************************/

#ifndef INCLUDED_AD5623_REGS_HPP
#define INCLUDED_AD5623_REGS_HPP

#include <uhd/config.hpp>
#include <uhd/exception.hpp>
#include <set>
#include <stdint.h>

class ad5623_regs_t{
public:
    uint16_t data;
    enum addr_t{
        ADDR_DAC_A = 0,
        ADDR_DAC_B = 1,
        ADDR_ALL = 7
    };
    addr_t addr;
    enum cmd_t{
        CMD_WR_INPUT_N = 0,
        CMD_UP_DAC_N = 1,
        CMD_WR_INPUT_N_UP_ALL = 2,
        CMD_WR_UP_DAC_CHAN_N = 3,
        CMD_POWER_DOWN = 4,
        CMD_RESET = 5,
        CMD_LOAD_LDAC = 6
    };
    cmd_t cmd;

    ad5623_regs_t(void){
        _state = NULL;
        data = 0;
        addr = ADDR_DAC_A;
        cmd = CMD_WR_INPUT_N;
    }

    ~ad5623_regs_t(void){
        delete _state;
    }

    uint32_t get_reg(void){
        uint32_t reg = 0;
        reg |= (uint32_t(data) & 0xfff) << 4;
        reg |= (uint32_t(addr) & 0x7) << 16;
        reg |= (uint32_t(cmd) & 0x7) << 19;
        return reg;
    }

    void save_state(void){
        if (_state == NULL) _state = new ad5623_regs_t();
        _state->data = this->data;
        _state->addr = this->addr;
        _state->cmd = this->cmd;
    }

    template<typename T> std::set<T> get_changed_addrs(void){
        if (_state == NULL) throw uhd::runtime_error("no saved state");
        //check each register for changes
        std::set<T> addrs;
        if(_state->data != this->data){
            addrs.insert(0);
        }
        if(_state->addr != this->addr){
            addrs.insert(0);
        }
        if(_state->cmd != this->cmd){
            addrs.insert(0);
        }
        return addrs;
    }

private:
    ad5623_regs_t *_state;
};

#endif /* INCLUDED_AD5623_REGS_HPP */
