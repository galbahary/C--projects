# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /mnt/c/Users/galba/CLionProjects/ex6-galbah

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/galba/CLionProjects/ex6-galbah/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/ex6_galbah.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ex6_galbah.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ex6_galbah.dir/flags.make

CMakeFiles/ex6_galbah.dir/test_ex6.cpp.o: CMakeFiles/ex6_galbah.dir/flags.make
CMakeFiles/ex6_galbah.dir/test_ex6.cpp.o: ../test_ex6.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/galba/CLionProjects/ex6-galbah/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ex6_galbah.dir/test_ex6.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ex6_galbah.dir/test_ex6.cpp.o -c /mnt/c/Users/galba/CLionProjects/ex6-galbah/test_ex6.cpp

CMakeFiles/ex6_galbah.dir/test_ex6.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ex6_galbah.dir/test_ex6.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/galba/CLionProjects/ex6-galbah/test_ex6.cpp > CMakeFiles/ex6_galbah.dir/test_ex6.cpp.i

CMakeFiles/ex6_galbah.dir/test_ex6.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ex6_galbah.dir/test_ex6.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/galba/CLionProjects/ex6-galbah/test_ex6.cpp -o CMakeFiles/ex6_galbah.dir/test_ex6.cpp.s

# Object files for target ex6_galbah
ex6_galbah_OBJECTS = \
"CMakeFiles/ex6_galbah.dir/test_ex6.cpp.o"

# External object files for target ex6_galbah
ex6_galbah_EXTERNAL_OBJECTS =

ex6_galbah: CMakeFiles/ex6_galbah.dir/test_ex6.cpp.o
ex6_galbah: CMakeFiles/ex6_galbah.dir/build.make
ex6_galbah: CMakeFiles/ex6_galbah.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/galba/CLionProjects/ex6-galbah/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ex6_galbah"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ex6_galbah.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ex6_galbah.dir/build: ex6_galbah

.PHONY : CMakeFiles/ex6_galbah.dir/build

CMakeFiles/ex6_galbah.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ex6_galbah.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ex6_galbah.dir/clean

CMakeFiles/ex6_galbah.dir/depend:
	cd /mnt/c/Users/galba/CLionProjects/ex6-galbah/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/galba/CLionProjects/ex6-galbah /mnt/c/Users/galba/CLionProjects/ex6-galbah /mnt/c/Users/galba/CLionProjects/ex6-galbah/cmake-build-debug /mnt/c/Users/galba/CLionProjects/ex6-galbah/cmake-build-debug /mnt/c/Users/galba/CLionProjects/ex6-galbah/cmake-build-debug/CMakeFiles/ex6_galbah.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ex6_galbah.dir/depend

