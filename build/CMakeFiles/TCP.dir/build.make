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
CMAKE_SOURCE_DIR = /home/houda/Downloads/TCP/TCP

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/houda/Downloads/TCP/TCP/build

# Include any dependencies generated for this target.
include CMakeFiles/TCP.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/TCP.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/TCP.dir/flags.make

CMakeFiles/TCP.dir/main.cpp.o: CMakeFiles/TCP.dir/flags.make
CMakeFiles/TCP.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/houda/Downloads/TCP/TCP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/TCP.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TCP.dir/main.cpp.o -c /home/houda/Downloads/TCP/TCP/main.cpp

CMakeFiles/TCP.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TCP.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/houda/Downloads/TCP/TCP/main.cpp > CMakeFiles/TCP.dir/main.cpp.i

CMakeFiles/TCP.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TCP.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/houda/Downloads/TCP/TCP/main.cpp -o CMakeFiles/TCP.dir/main.cpp.s

CMakeFiles/TCP.dir/src/Modes.cpp.o: CMakeFiles/TCP.dir/flags.make
CMakeFiles/TCP.dir/src/Modes.cpp.o: ../src/Modes.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/houda/Downloads/TCP/TCP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/TCP.dir/src/Modes.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TCP.dir/src/Modes.cpp.o -c /home/houda/Downloads/TCP/TCP/src/Modes.cpp

CMakeFiles/TCP.dir/src/Modes.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TCP.dir/src/Modes.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/houda/Downloads/TCP/TCP/src/Modes.cpp > CMakeFiles/TCP.dir/src/Modes.cpp.i

CMakeFiles/TCP.dir/src/Modes.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TCP.dir/src/Modes.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/houda/Downloads/TCP/TCP/src/Modes.cpp -o CMakeFiles/TCP.dir/src/Modes.cpp.s

# Object files for target TCP
TCP_OBJECTS = \
"CMakeFiles/TCP.dir/main.cpp.o" \
"CMakeFiles/TCP.dir/src/Modes.cpp.o"

# External object files for target TCP
TCP_EXTERNAL_OBJECTS =

TCP: CMakeFiles/TCP.dir/main.cpp.o
TCP: CMakeFiles/TCP.dir/src/Modes.cpp.o
TCP: CMakeFiles/TCP.dir/build.make
TCP: CMakeFiles/TCP.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/houda/Downloads/TCP/TCP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable TCP"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TCP.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/TCP.dir/build: TCP

.PHONY : CMakeFiles/TCP.dir/build

CMakeFiles/TCP.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/TCP.dir/cmake_clean.cmake
.PHONY : CMakeFiles/TCP.dir/clean

CMakeFiles/TCP.dir/depend:
	cd /home/houda/Downloads/TCP/TCP/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/houda/Downloads/TCP/TCP /home/houda/Downloads/TCP/TCP /home/houda/Downloads/TCP/TCP/build /home/houda/Downloads/TCP/TCP/build /home/houda/Downloads/TCP/TCP/build/CMakeFiles/TCP.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/TCP.dir/depend
