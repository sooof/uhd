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
include tests/CMakeFiles/subdev_spec_test.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/subdev_spec_test.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/subdev_spec_test.dir/flags.make

tests/CMakeFiles/subdev_spec_test.dir/subdev_spec_test.cpp.o: tests/CMakeFiles/subdev_spec_test.dir/flags.make
tests/CMakeFiles/subdev_spec_test.dir/subdev_spec_test.cpp.o: ../tests/subdev_spec_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thompsonlab/Documents/uhd/host/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/subdev_spec_test.dir/subdev_spec_test.cpp.o"
	cd /home/thompsonlab/Documents/uhd/host/build/tests && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/subdev_spec_test.dir/subdev_spec_test.cpp.o -c /home/thompsonlab/Documents/uhd/host/tests/subdev_spec_test.cpp

tests/CMakeFiles/subdev_spec_test.dir/subdev_spec_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/subdev_spec_test.dir/subdev_spec_test.cpp.i"
	cd /home/thompsonlab/Documents/uhd/host/build/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thompsonlab/Documents/uhd/host/tests/subdev_spec_test.cpp > CMakeFiles/subdev_spec_test.dir/subdev_spec_test.cpp.i

tests/CMakeFiles/subdev_spec_test.dir/subdev_spec_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/subdev_spec_test.dir/subdev_spec_test.cpp.s"
	cd /home/thompsonlab/Documents/uhd/host/build/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thompsonlab/Documents/uhd/host/tests/subdev_spec_test.cpp -o CMakeFiles/subdev_spec_test.dir/subdev_spec_test.cpp.s

tests/CMakeFiles/subdev_spec_test.dir/subdev_spec_test.cpp.o.requires:

.PHONY : tests/CMakeFiles/subdev_spec_test.dir/subdev_spec_test.cpp.o.requires

tests/CMakeFiles/subdev_spec_test.dir/subdev_spec_test.cpp.o.provides: tests/CMakeFiles/subdev_spec_test.dir/subdev_spec_test.cpp.o.requires
	$(MAKE) -f tests/CMakeFiles/subdev_spec_test.dir/build.make tests/CMakeFiles/subdev_spec_test.dir/subdev_spec_test.cpp.o.provides.build
.PHONY : tests/CMakeFiles/subdev_spec_test.dir/subdev_spec_test.cpp.o.provides

tests/CMakeFiles/subdev_spec_test.dir/subdev_spec_test.cpp.o.provides.build: tests/CMakeFiles/subdev_spec_test.dir/subdev_spec_test.cpp.o


# Object files for target subdev_spec_test
subdev_spec_test_OBJECTS = \
"CMakeFiles/subdev_spec_test.dir/subdev_spec_test.cpp.o"

# External object files for target subdev_spec_test
subdev_spec_test_EXTERNAL_OBJECTS =

tests/subdev_spec_test: tests/CMakeFiles/subdev_spec_test.dir/subdev_spec_test.cpp.o
tests/subdev_spec_test: tests/CMakeFiles/subdev_spec_test.dir/build.make
tests/subdev_spec_test: lib/libuhd.so.3.11
tests/subdev_spec_test: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
tests/subdev_spec_test: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
tests/subdev_spec_test: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
tests/subdev_spec_test: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
tests/subdev_spec_test: /usr/lib/x86_64-linux-gnu/libboost_regex.so
tests/subdev_spec_test: /usr/lib/x86_64-linux-gnu/libboost_system.so
tests/subdev_spec_test: /usr/lib/x86_64-linux-gnu/libboost_unit_test_framework.so
tests/subdev_spec_test: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
tests/subdev_spec_test: /usr/lib/x86_64-linux-gnu/libboost_thread.so
tests/subdev_spec_test: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
tests/subdev_spec_test: /usr/lib/x86_64-linux-gnu/libpthread.so
tests/subdev_spec_test: /usr/lib/x86_64-linux-gnu/libusb-1.0.so
tests/subdev_spec_test: tests/CMakeFiles/subdev_spec_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/thompsonlab/Documents/uhd/host/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable subdev_spec_test"
	cd /home/thompsonlab/Documents/uhd/host/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/subdev_spec_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/subdev_spec_test.dir/build: tests/subdev_spec_test

.PHONY : tests/CMakeFiles/subdev_spec_test.dir/build

tests/CMakeFiles/subdev_spec_test.dir/requires: tests/CMakeFiles/subdev_spec_test.dir/subdev_spec_test.cpp.o.requires

.PHONY : tests/CMakeFiles/subdev_spec_test.dir/requires

tests/CMakeFiles/subdev_spec_test.dir/clean:
	cd /home/thompsonlab/Documents/uhd/host/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/subdev_spec_test.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/subdev_spec_test.dir/clean

tests/CMakeFiles/subdev_spec_test.dir/depend:
	cd /home/thompsonlab/Documents/uhd/host/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/thompsonlab/Documents/uhd/host /home/thompsonlab/Documents/uhd/host/tests /home/thompsonlab/Documents/uhd/host/build /home/thompsonlab/Documents/uhd/host/build/tests /home/thompsonlab/Documents/uhd/host/build/tests/CMakeFiles/subdev_spec_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/subdev_spec_test.dir/depend

