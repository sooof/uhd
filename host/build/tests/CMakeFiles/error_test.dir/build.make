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
include tests/CMakeFiles/error_test.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/error_test.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/error_test.dir/flags.make

tests/CMakeFiles/error_test.dir/error_test.cpp.o: tests/CMakeFiles/error_test.dir/flags.make
tests/CMakeFiles/error_test.dir/error_test.cpp.o: ../tests/error_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thompsonlab/Documents/uhd/host/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/error_test.dir/error_test.cpp.o"
	cd /home/thompsonlab/Documents/uhd/host/build/tests && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/error_test.dir/error_test.cpp.o -c /home/thompsonlab/Documents/uhd/host/tests/error_test.cpp

tests/CMakeFiles/error_test.dir/error_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/error_test.dir/error_test.cpp.i"
	cd /home/thompsonlab/Documents/uhd/host/build/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thompsonlab/Documents/uhd/host/tests/error_test.cpp > CMakeFiles/error_test.dir/error_test.cpp.i

tests/CMakeFiles/error_test.dir/error_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/error_test.dir/error_test.cpp.s"
	cd /home/thompsonlab/Documents/uhd/host/build/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thompsonlab/Documents/uhd/host/tests/error_test.cpp -o CMakeFiles/error_test.dir/error_test.cpp.s

tests/CMakeFiles/error_test.dir/error_test.cpp.o.requires:

.PHONY : tests/CMakeFiles/error_test.dir/error_test.cpp.o.requires

tests/CMakeFiles/error_test.dir/error_test.cpp.o.provides: tests/CMakeFiles/error_test.dir/error_test.cpp.o.requires
	$(MAKE) -f tests/CMakeFiles/error_test.dir/build.make tests/CMakeFiles/error_test.dir/error_test.cpp.o.provides.build
.PHONY : tests/CMakeFiles/error_test.dir/error_test.cpp.o.provides

tests/CMakeFiles/error_test.dir/error_test.cpp.o.provides.build: tests/CMakeFiles/error_test.dir/error_test.cpp.o


# Object files for target error_test
error_test_OBJECTS = \
"CMakeFiles/error_test.dir/error_test.cpp.o"

# External object files for target error_test
error_test_EXTERNAL_OBJECTS =

tests/error_test: tests/CMakeFiles/error_test.dir/error_test.cpp.o
tests/error_test: tests/CMakeFiles/error_test.dir/build.make
tests/error_test: lib/libuhd.so.3.11
tests/error_test: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
tests/error_test: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
tests/error_test: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
tests/error_test: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
tests/error_test: /usr/lib/x86_64-linux-gnu/libboost_regex.so
tests/error_test: /usr/lib/x86_64-linux-gnu/libboost_system.so
tests/error_test: /usr/lib/x86_64-linux-gnu/libboost_unit_test_framework.so
tests/error_test: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
tests/error_test: /usr/lib/x86_64-linux-gnu/libboost_thread.so
tests/error_test: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
tests/error_test: /usr/lib/x86_64-linux-gnu/libpthread.so
tests/error_test: /usr/lib/x86_64-linux-gnu/libusb-1.0.so
tests/error_test: tests/CMakeFiles/error_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/thompsonlab/Documents/uhd/host/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable error_test"
	cd /home/thompsonlab/Documents/uhd/host/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/error_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/error_test.dir/build: tests/error_test

.PHONY : tests/CMakeFiles/error_test.dir/build

tests/CMakeFiles/error_test.dir/requires: tests/CMakeFiles/error_test.dir/error_test.cpp.o.requires

.PHONY : tests/CMakeFiles/error_test.dir/requires

tests/CMakeFiles/error_test.dir/clean:
	cd /home/thompsonlab/Documents/uhd/host/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/error_test.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/error_test.dir/clean

tests/CMakeFiles/error_test.dir/depend:
	cd /home/thompsonlab/Documents/uhd/host/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/thompsonlab/Documents/uhd/host /home/thompsonlab/Documents/uhd/host/tests /home/thompsonlab/Documents/uhd/host/build /home/thompsonlab/Documents/uhd/host/build/tests /home/thompsonlab/Documents/uhd/host/build/tests/CMakeFiles/error_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/error_test.dir/depend

