# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/thompsonlab/Documents/uhd/host

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/thompsonlab/Documents/uhd/host/build

# Include any dependencies generated for this target.
include examples/CMakeFiles/zmq_server.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/zmq_server.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/zmq_server.dir/flags.make

examples/CMakeFiles/zmq_server.dir/tfd/zmq/zmq_server.cpp.o: examples/CMakeFiles/zmq_server.dir/flags.make
examples/CMakeFiles/zmq_server.dir/tfd/zmq/zmq_server.cpp.o: ../examples/tfd/zmq/zmq_server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thompsonlab/Documents/uhd/host/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/CMakeFiles/zmq_server.dir/tfd/zmq/zmq_server.cpp.o"
	cd /home/thompsonlab/Documents/uhd/host/build/examples && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/zmq_server.dir/tfd/zmq/zmq_server.cpp.o -c /home/thompsonlab/Documents/uhd/host/examples/tfd/zmq/zmq_server.cpp

examples/CMakeFiles/zmq_server.dir/tfd/zmq/zmq_server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/zmq_server.dir/tfd/zmq/zmq_server.cpp.i"
	cd /home/thompsonlab/Documents/uhd/host/build/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thompsonlab/Documents/uhd/host/examples/tfd/zmq/zmq_server.cpp > CMakeFiles/zmq_server.dir/tfd/zmq/zmq_server.cpp.i

examples/CMakeFiles/zmq_server.dir/tfd/zmq/zmq_server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/zmq_server.dir/tfd/zmq/zmq_server.cpp.s"
	cd /home/thompsonlab/Documents/uhd/host/build/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thompsonlab/Documents/uhd/host/examples/tfd/zmq/zmq_server.cpp -o CMakeFiles/zmq_server.dir/tfd/zmq/zmq_server.cpp.s

examples/CMakeFiles/zmq_server.dir/tfd/zmq/zmq_server.cpp.o.requires:

.PHONY : examples/CMakeFiles/zmq_server.dir/tfd/zmq/zmq_server.cpp.o.requires

examples/CMakeFiles/zmq_server.dir/tfd/zmq/zmq_server.cpp.o.provides: examples/CMakeFiles/zmq_server.dir/tfd/zmq/zmq_server.cpp.o.requires
	$(MAKE) -f examples/CMakeFiles/zmq_server.dir/build.make examples/CMakeFiles/zmq_server.dir/tfd/zmq/zmq_server.cpp.o.provides.build
.PHONY : examples/CMakeFiles/zmq_server.dir/tfd/zmq/zmq_server.cpp.o.provides

examples/CMakeFiles/zmq_server.dir/tfd/zmq/zmq_server.cpp.o.provides.build: examples/CMakeFiles/zmq_server.dir/tfd/zmq/zmq_server.cpp.o


# Object files for target zmq_server
zmq_server_OBJECTS = \
"CMakeFiles/zmq_server.dir/tfd/zmq/zmq_server.cpp.o"

# External object files for target zmq_server
zmq_server_EXTERNAL_OBJECTS =

examples/zmq_server: examples/CMakeFiles/zmq_server.dir/tfd/zmq/zmq_server.cpp.o
examples/zmq_server: examples/CMakeFiles/zmq_server.dir/build.make
examples/zmq_server: lib/libuhd.so.3.11
examples/zmq_server: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
examples/zmq_server: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
examples/zmq_server: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
examples/zmq_server: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
examples/zmq_server: /usr/lib/x86_64-linux-gnu/libboost_regex.so
examples/zmq_server: /usr/lib/x86_64-linux-gnu/libboost_system.so
examples/zmq_server: /usr/lib/x86_64-linux-gnu/libboost_unit_test_framework.so
examples/zmq_server: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
examples/zmq_server: /usr/lib/x86_64-linux-gnu/libboost_thread.so
examples/zmq_server: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
examples/zmq_server: /usr/lib/x86_64-linux-gnu/libpthread.so
examples/zmq_server: /usr/lib/x86_64-linux-gnu/libusb-1.0.so
examples/zmq_server: examples/CMakeFiles/zmq_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/thompsonlab/Documents/uhd/host/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable zmq_server"
	cd /home/thompsonlab/Documents/uhd/host/build/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/zmq_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/zmq_server.dir/build: examples/zmq_server

.PHONY : examples/CMakeFiles/zmq_server.dir/build

examples/CMakeFiles/zmq_server.dir/requires: examples/CMakeFiles/zmq_server.dir/tfd/zmq/zmq_server.cpp.o.requires

.PHONY : examples/CMakeFiles/zmq_server.dir/requires

examples/CMakeFiles/zmq_server.dir/clean:
	cd /home/thompsonlab/Documents/uhd/host/build/examples && $(CMAKE_COMMAND) -P CMakeFiles/zmq_server.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/zmq_server.dir/clean

examples/CMakeFiles/zmq_server.dir/depend:
	cd /home/thompsonlab/Documents/uhd/host/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/thompsonlab/Documents/uhd/host /home/thompsonlab/Documents/uhd/host/examples /home/thompsonlab/Documents/uhd/host/build /home/thompsonlab/Documents/uhd/host/build/examples /home/thompsonlab/Documents/uhd/host/build/examples/CMakeFiles/zmq_server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/zmq_server.dir/depend

