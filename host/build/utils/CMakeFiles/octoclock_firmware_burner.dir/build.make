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
include utils/CMakeFiles/octoclock_firmware_burner.dir/depend.make

# Include the progress variables for this target.
include utils/CMakeFiles/octoclock_firmware_burner.dir/progress.make

# Include the compile flags for this target's objects.
include utils/CMakeFiles/octoclock_firmware_burner.dir/flags.make

utils/CMakeFiles/octoclock_firmware_burner.dir/octoclock_firmware_burner.cpp.o: utils/CMakeFiles/octoclock_firmware_burner.dir/flags.make
utils/CMakeFiles/octoclock_firmware_burner.dir/octoclock_firmware_burner.cpp.o: ../utils/octoclock_firmware_burner.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thompsonlab/Documents/uhd/host/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object utils/CMakeFiles/octoclock_firmware_burner.dir/octoclock_firmware_burner.cpp.o"
	cd /home/thompsonlab/Documents/uhd/host/build/utils && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/octoclock_firmware_burner.dir/octoclock_firmware_burner.cpp.o -c /home/thompsonlab/Documents/uhd/host/utils/octoclock_firmware_burner.cpp

utils/CMakeFiles/octoclock_firmware_burner.dir/octoclock_firmware_burner.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/octoclock_firmware_burner.dir/octoclock_firmware_burner.cpp.i"
	cd /home/thompsonlab/Documents/uhd/host/build/utils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thompsonlab/Documents/uhd/host/utils/octoclock_firmware_burner.cpp > CMakeFiles/octoclock_firmware_burner.dir/octoclock_firmware_burner.cpp.i

utils/CMakeFiles/octoclock_firmware_burner.dir/octoclock_firmware_burner.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/octoclock_firmware_burner.dir/octoclock_firmware_burner.cpp.s"
	cd /home/thompsonlab/Documents/uhd/host/build/utils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thompsonlab/Documents/uhd/host/utils/octoclock_firmware_burner.cpp -o CMakeFiles/octoclock_firmware_burner.dir/octoclock_firmware_burner.cpp.s

utils/CMakeFiles/octoclock_firmware_burner.dir/octoclock_firmware_burner.cpp.o.requires:

.PHONY : utils/CMakeFiles/octoclock_firmware_burner.dir/octoclock_firmware_burner.cpp.o.requires

utils/CMakeFiles/octoclock_firmware_burner.dir/octoclock_firmware_burner.cpp.o.provides: utils/CMakeFiles/octoclock_firmware_burner.dir/octoclock_firmware_burner.cpp.o.requires
	$(MAKE) -f utils/CMakeFiles/octoclock_firmware_burner.dir/build.make utils/CMakeFiles/octoclock_firmware_burner.dir/octoclock_firmware_burner.cpp.o.provides.build
.PHONY : utils/CMakeFiles/octoclock_firmware_burner.dir/octoclock_firmware_burner.cpp.o.provides

utils/CMakeFiles/octoclock_firmware_burner.dir/octoclock_firmware_burner.cpp.o.provides.build: utils/CMakeFiles/octoclock_firmware_burner.dir/octoclock_firmware_burner.cpp.o


utils/CMakeFiles/octoclock_firmware_burner.dir/__/lib/utils/ihex.cpp.o: utils/CMakeFiles/octoclock_firmware_burner.dir/flags.make
utils/CMakeFiles/octoclock_firmware_burner.dir/__/lib/utils/ihex.cpp.o: ../lib/utils/ihex.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thompsonlab/Documents/uhd/host/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object utils/CMakeFiles/octoclock_firmware_burner.dir/__/lib/utils/ihex.cpp.o"
	cd /home/thompsonlab/Documents/uhd/host/build/utils && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/octoclock_firmware_burner.dir/__/lib/utils/ihex.cpp.o -c /home/thompsonlab/Documents/uhd/host/lib/utils/ihex.cpp

utils/CMakeFiles/octoclock_firmware_burner.dir/__/lib/utils/ihex.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/octoclock_firmware_burner.dir/__/lib/utils/ihex.cpp.i"
	cd /home/thompsonlab/Documents/uhd/host/build/utils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thompsonlab/Documents/uhd/host/lib/utils/ihex.cpp > CMakeFiles/octoclock_firmware_burner.dir/__/lib/utils/ihex.cpp.i

utils/CMakeFiles/octoclock_firmware_burner.dir/__/lib/utils/ihex.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/octoclock_firmware_burner.dir/__/lib/utils/ihex.cpp.s"
	cd /home/thompsonlab/Documents/uhd/host/build/utils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thompsonlab/Documents/uhd/host/lib/utils/ihex.cpp -o CMakeFiles/octoclock_firmware_burner.dir/__/lib/utils/ihex.cpp.s

utils/CMakeFiles/octoclock_firmware_burner.dir/__/lib/utils/ihex.cpp.o.requires:

.PHONY : utils/CMakeFiles/octoclock_firmware_burner.dir/__/lib/utils/ihex.cpp.o.requires

utils/CMakeFiles/octoclock_firmware_burner.dir/__/lib/utils/ihex.cpp.o.provides: utils/CMakeFiles/octoclock_firmware_burner.dir/__/lib/utils/ihex.cpp.o.requires
	$(MAKE) -f utils/CMakeFiles/octoclock_firmware_burner.dir/build.make utils/CMakeFiles/octoclock_firmware_burner.dir/__/lib/utils/ihex.cpp.o.provides.build
.PHONY : utils/CMakeFiles/octoclock_firmware_burner.dir/__/lib/utils/ihex.cpp.o.provides

utils/CMakeFiles/octoclock_firmware_burner.dir/__/lib/utils/ihex.cpp.o.provides.build: utils/CMakeFiles/octoclock_firmware_burner.dir/__/lib/utils/ihex.cpp.o


# Object files for target octoclock_firmware_burner
octoclock_firmware_burner_OBJECTS = \
"CMakeFiles/octoclock_firmware_burner.dir/octoclock_firmware_burner.cpp.o" \
"CMakeFiles/octoclock_firmware_burner.dir/__/lib/utils/ihex.cpp.o"

# External object files for target octoclock_firmware_burner
octoclock_firmware_burner_EXTERNAL_OBJECTS =

utils/octoclock_firmware_burner: utils/CMakeFiles/octoclock_firmware_burner.dir/octoclock_firmware_burner.cpp.o
utils/octoclock_firmware_burner: utils/CMakeFiles/octoclock_firmware_burner.dir/__/lib/utils/ihex.cpp.o
utils/octoclock_firmware_burner: utils/CMakeFiles/octoclock_firmware_burner.dir/build.make
utils/octoclock_firmware_burner: lib/libuhd.so.3.11
utils/octoclock_firmware_burner: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
utils/octoclock_firmware_burner: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
utils/octoclock_firmware_burner: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
utils/octoclock_firmware_burner: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
utils/octoclock_firmware_burner: /usr/lib/x86_64-linux-gnu/libboost_regex.so
utils/octoclock_firmware_burner: /usr/lib/x86_64-linux-gnu/libboost_system.so
utils/octoclock_firmware_burner: /usr/lib/x86_64-linux-gnu/libboost_unit_test_framework.so
utils/octoclock_firmware_burner: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
utils/octoclock_firmware_burner: /usr/lib/x86_64-linux-gnu/libboost_thread.so
utils/octoclock_firmware_burner: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
utils/octoclock_firmware_burner: /usr/lib/x86_64-linux-gnu/libpthread.so
utils/octoclock_firmware_burner: /usr/lib/x86_64-linux-gnu/libusb-1.0.so
utils/octoclock_firmware_burner: utils/CMakeFiles/octoclock_firmware_burner.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/thompsonlab/Documents/uhd/host/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable octoclock_firmware_burner"
	cd /home/thompsonlab/Documents/uhd/host/build/utils && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/octoclock_firmware_burner.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
utils/CMakeFiles/octoclock_firmware_burner.dir/build: utils/octoclock_firmware_burner

.PHONY : utils/CMakeFiles/octoclock_firmware_burner.dir/build

utils/CMakeFiles/octoclock_firmware_burner.dir/requires: utils/CMakeFiles/octoclock_firmware_burner.dir/octoclock_firmware_burner.cpp.o.requires
utils/CMakeFiles/octoclock_firmware_burner.dir/requires: utils/CMakeFiles/octoclock_firmware_burner.dir/__/lib/utils/ihex.cpp.o.requires

.PHONY : utils/CMakeFiles/octoclock_firmware_burner.dir/requires

utils/CMakeFiles/octoclock_firmware_burner.dir/clean:
	cd /home/thompsonlab/Documents/uhd/host/build/utils && $(CMAKE_COMMAND) -P CMakeFiles/octoclock_firmware_burner.dir/cmake_clean.cmake
.PHONY : utils/CMakeFiles/octoclock_firmware_burner.dir/clean

utils/CMakeFiles/octoclock_firmware_burner.dir/depend:
	cd /home/thompsonlab/Documents/uhd/host/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/thompsonlab/Documents/uhd/host /home/thompsonlab/Documents/uhd/host/utils /home/thompsonlab/Documents/uhd/host/build /home/thompsonlab/Documents/uhd/host/build/utils /home/thompsonlab/Documents/uhd/host/build/utils/CMakeFiles/octoclock_firmware_burner.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : utils/CMakeFiles/octoclock_firmware_burner.dir/depend

