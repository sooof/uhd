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
include examples/getopt/CMakeFiles/getopt.dir/depend.make

# Include the progress variables for this target.
include examples/getopt/CMakeFiles/getopt.dir/progress.make

# Include the compile flags for this target's objects.
include examples/getopt/CMakeFiles/getopt.dir/flags.make

examples/getopt/CMakeFiles/getopt.dir/getopt.c.o: examples/getopt/CMakeFiles/getopt.dir/flags.make
examples/getopt/CMakeFiles/getopt.dir/getopt.c.o: ../examples/getopt/getopt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thompsonlab/Documents/uhd/host/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object examples/getopt/CMakeFiles/getopt.dir/getopt.c.o"
	cd /home/thompsonlab/Documents/uhd/host/build/examples/getopt && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/getopt.dir/getopt.c.o   -c /home/thompsonlab/Documents/uhd/host/examples/getopt/getopt.c

examples/getopt/CMakeFiles/getopt.dir/getopt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/getopt.dir/getopt.c.i"
	cd /home/thompsonlab/Documents/uhd/host/build/examples/getopt && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/thompsonlab/Documents/uhd/host/examples/getopt/getopt.c > CMakeFiles/getopt.dir/getopt.c.i

examples/getopt/CMakeFiles/getopt.dir/getopt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/getopt.dir/getopt.c.s"
	cd /home/thompsonlab/Documents/uhd/host/build/examples/getopt && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/thompsonlab/Documents/uhd/host/examples/getopt/getopt.c -o CMakeFiles/getopt.dir/getopt.c.s

examples/getopt/CMakeFiles/getopt.dir/getopt.c.o.requires:

.PHONY : examples/getopt/CMakeFiles/getopt.dir/getopt.c.o.requires

examples/getopt/CMakeFiles/getopt.dir/getopt.c.o.provides: examples/getopt/CMakeFiles/getopt.dir/getopt.c.o.requires
	$(MAKE) -f examples/getopt/CMakeFiles/getopt.dir/build.make examples/getopt/CMakeFiles/getopt.dir/getopt.c.o.provides.build
.PHONY : examples/getopt/CMakeFiles/getopt.dir/getopt.c.o.provides

examples/getopt/CMakeFiles/getopt.dir/getopt.c.o.provides.build: examples/getopt/CMakeFiles/getopt.dir/getopt.c.o


# Object files for target getopt
getopt_OBJECTS = \
"CMakeFiles/getopt.dir/getopt.c.o"

# External object files for target getopt
getopt_EXTERNAL_OBJECTS =

examples/getopt/libgetopt.a: examples/getopt/CMakeFiles/getopt.dir/getopt.c.o
examples/getopt/libgetopt.a: examples/getopt/CMakeFiles/getopt.dir/build.make
examples/getopt/libgetopt.a: examples/getopt/CMakeFiles/getopt.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/thompsonlab/Documents/uhd/host/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libgetopt.a"
	cd /home/thompsonlab/Documents/uhd/host/build/examples/getopt && $(CMAKE_COMMAND) -P CMakeFiles/getopt.dir/cmake_clean_target.cmake
	cd /home/thompsonlab/Documents/uhd/host/build/examples/getopt && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/getopt.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/getopt/CMakeFiles/getopt.dir/build: examples/getopt/libgetopt.a

.PHONY : examples/getopt/CMakeFiles/getopt.dir/build

examples/getopt/CMakeFiles/getopt.dir/requires: examples/getopt/CMakeFiles/getopt.dir/getopt.c.o.requires

.PHONY : examples/getopt/CMakeFiles/getopt.dir/requires

examples/getopt/CMakeFiles/getopt.dir/clean:
	cd /home/thompsonlab/Documents/uhd/host/build/examples/getopt && $(CMAKE_COMMAND) -P CMakeFiles/getopt.dir/cmake_clean.cmake
.PHONY : examples/getopt/CMakeFiles/getopt.dir/clean

examples/getopt/CMakeFiles/getopt.dir/depend:
	cd /home/thompsonlab/Documents/uhd/host/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/thompsonlab/Documents/uhd/host /home/thompsonlab/Documents/uhd/host/examples/getopt /home/thompsonlab/Documents/uhd/host/build /home/thompsonlab/Documents/uhd/host/build/examples/getopt /home/thompsonlab/Documents/uhd/host/build/examples/getopt/CMakeFiles/getopt.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/getopt/CMakeFiles/getopt.dir/depend

