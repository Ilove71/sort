# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/artur/sort

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/artur/sort/build

# Include any dependencies generated for this target.
include CMakeFiles/radix.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/radix.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/radix.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/radix.dir/flags.make

CMakeFiles/radix.dir/src/radix.cpp.o: CMakeFiles/radix.dir/flags.make
CMakeFiles/radix.dir/src/radix.cpp.o: ../src/radix.cpp
CMakeFiles/radix.dir/src/radix.cpp.o: CMakeFiles/radix.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/artur/sort/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/radix.dir/src/radix.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/radix.dir/src/radix.cpp.o -MF CMakeFiles/radix.dir/src/radix.cpp.o.d -o CMakeFiles/radix.dir/src/radix.cpp.o -c /home/artur/sort/src/radix.cpp

CMakeFiles/radix.dir/src/radix.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/radix.dir/src/radix.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/artur/sort/src/radix.cpp > CMakeFiles/radix.dir/src/radix.cpp.i

CMakeFiles/radix.dir/src/radix.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/radix.dir/src/radix.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/artur/sort/src/radix.cpp -o CMakeFiles/radix.dir/src/radix.cpp.s

# Object files for target radix
radix_OBJECTS = \
"CMakeFiles/radix.dir/src/radix.cpp.o"

# External object files for target radix
radix_EXTERNAL_OBJECTS =

radix: CMakeFiles/radix.dir/src/radix.cpp.o
radix: CMakeFiles/radix.dir/build.make
radix: CMakeFiles/radix.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/artur/sort/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable radix"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/radix.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/radix.dir/build: radix
.PHONY : CMakeFiles/radix.dir/build

CMakeFiles/radix.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/radix.dir/cmake_clean.cmake
.PHONY : CMakeFiles/radix.dir/clean

CMakeFiles/radix.dir/depend:
	cd /home/artur/sort/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/artur/sort /home/artur/sort /home/artur/sort/build /home/artur/sort/build /home/artur/sort/build/CMakeFiles/radix.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/radix.dir/depend

