# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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
CMAKE_SOURCE_DIR = /home/vint/projects/theta-linux/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vint/projects/theta-linux/src/build

# Include any dependencies generated for this target.
include CMakeFiles/ThetaLinux.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ThetaLinux.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ThetaLinux.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ThetaLinux.dir/flags.make

CMakeFiles/ThetaLinux.dir/main.cpp.o: CMakeFiles/ThetaLinux.dir/flags.make
CMakeFiles/ThetaLinux.dir/main.cpp.o: /home/vint/projects/theta-linux/src/main.cpp
CMakeFiles/ThetaLinux.dir/main.cpp.o: CMakeFiles/ThetaLinux.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vint/projects/theta-linux/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ThetaLinux.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ThetaLinux.dir/main.cpp.o -MF CMakeFiles/ThetaLinux.dir/main.cpp.o.d -o CMakeFiles/ThetaLinux.dir/main.cpp.o -c /home/vint/projects/theta-linux/src/main.cpp

CMakeFiles/ThetaLinux.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ThetaLinux.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vint/projects/theta-linux/src/main.cpp > CMakeFiles/ThetaLinux.dir/main.cpp.i

CMakeFiles/ThetaLinux.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ThetaLinux.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vint/projects/theta-linux/src/main.cpp -o CMakeFiles/ThetaLinux.dir/main.cpp.s

CMakeFiles/ThetaLinux.dir/Engine/TextureMenager.cpp.o: CMakeFiles/ThetaLinux.dir/flags.make
CMakeFiles/ThetaLinux.dir/Engine/TextureMenager.cpp.o: /home/vint/projects/theta-linux/src/Engine/TextureMenager.cpp
CMakeFiles/ThetaLinux.dir/Engine/TextureMenager.cpp.o: CMakeFiles/ThetaLinux.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vint/projects/theta-linux/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ThetaLinux.dir/Engine/TextureMenager.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ThetaLinux.dir/Engine/TextureMenager.cpp.o -MF CMakeFiles/ThetaLinux.dir/Engine/TextureMenager.cpp.o.d -o CMakeFiles/ThetaLinux.dir/Engine/TextureMenager.cpp.o -c /home/vint/projects/theta-linux/src/Engine/TextureMenager.cpp

CMakeFiles/ThetaLinux.dir/Engine/TextureMenager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ThetaLinux.dir/Engine/TextureMenager.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vint/projects/theta-linux/src/Engine/TextureMenager.cpp > CMakeFiles/ThetaLinux.dir/Engine/TextureMenager.cpp.i

CMakeFiles/ThetaLinux.dir/Engine/TextureMenager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ThetaLinux.dir/Engine/TextureMenager.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vint/projects/theta-linux/src/Engine/TextureMenager.cpp -o CMakeFiles/ThetaLinux.dir/Engine/TextureMenager.cpp.s

# Object files for target ThetaLinux
ThetaLinux_OBJECTS = \
"CMakeFiles/ThetaLinux.dir/main.cpp.o" \
"CMakeFiles/ThetaLinux.dir/Engine/TextureMenager.cpp.o"

# External object files for target ThetaLinux
ThetaLinux_EXTERNAL_OBJECTS =

ThetaLinux: CMakeFiles/ThetaLinux.dir/main.cpp.o
ThetaLinux: CMakeFiles/ThetaLinux.dir/Engine/TextureMenager.cpp.o
ThetaLinux: CMakeFiles/ThetaLinux.dir/build.make
ThetaLinux: _deps/sfml-build/lib/libsfml-graphics.so.2.5.1
ThetaLinux: _deps/sfml-build/lib/libsfml-window.so.2.5.1
ThetaLinux: _deps/sfml-build/lib/libsfml-system.so.2.5.1
ThetaLinux: CMakeFiles/ThetaLinux.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/vint/projects/theta-linux/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ThetaLinux"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ThetaLinux.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ThetaLinux.dir/build: ThetaLinux
.PHONY : CMakeFiles/ThetaLinux.dir/build

CMakeFiles/ThetaLinux.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ThetaLinux.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ThetaLinux.dir/clean

CMakeFiles/ThetaLinux.dir/depend:
	cd /home/vint/projects/theta-linux/src/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vint/projects/theta-linux/src /home/vint/projects/theta-linux/src /home/vint/projects/theta-linux/src/build /home/vint/projects/theta-linux/src/build /home/vint/projects/theta-linux/src/build/CMakeFiles/ThetaLinux.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ThetaLinux.dir/depend

