# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.8

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2017.2.3\bin\cmake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2017.2.3\bin\cmake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\github\bwolffleal\Grafo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\github\bwolffleal\Grafo\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Grafo.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Grafo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Grafo.dir/flags.make

CMakeFiles/Grafo.dir/main.cpp.obj: CMakeFiles/Grafo.dir/flags.make
CMakeFiles/Grafo.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\github\bwolffleal\Grafo\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Grafo.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Grafo.dir\main.cpp.obj -c C:\github\bwolffleal\Grafo\main.cpp

CMakeFiles/Grafo.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Grafo.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\github\bwolffleal\Grafo\main.cpp > CMakeFiles\Grafo.dir\main.cpp.i

CMakeFiles/Grafo.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Grafo.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\github\bwolffleal\Grafo\main.cpp -o CMakeFiles\Grafo.dir\main.cpp.s

CMakeFiles/Grafo.dir/main.cpp.obj.requires:

.PHONY : CMakeFiles/Grafo.dir/main.cpp.obj.requires

CMakeFiles/Grafo.dir/main.cpp.obj.provides: CMakeFiles/Grafo.dir/main.cpp.obj.requires
	$(MAKE) -f CMakeFiles\Grafo.dir\build.make CMakeFiles/Grafo.dir/main.cpp.obj.provides.build
.PHONY : CMakeFiles/Grafo.dir/main.cpp.obj.provides

CMakeFiles/Grafo.dir/main.cpp.obj.provides.build: CMakeFiles/Grafo.dir/main.cpp.obj


# Object files for target Grafo
Grafo_OBJECTS = \
"CMakeFiles/Grafo.dir/main.cpp.obj"

# External object files for target Grafo
Grafo_EXTERNAL_OBJECTS =

Grafo.exe: CMakeFiles/Grafo.dir/main.cpp.obj
Grafo.exe: CMakeFiles/Grafo.dir/build.make
Grafo.exe: CMakeFiles/Grafo.dir/linklibs.rsp
Grafo.exe: CMakeFiles/Grafo.dir/objects1.rsp
Grafo.exe: CMakeFiles/Grafo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\github\bwolffleal\Grafo\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Grafo.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Grafo.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Grafo.dir/build: Grafo.exe

.PHONY : CMakeFiles/Grafo.dir/build

CMakeFiles/Grafo.dir/requires: CMakeFiles/Grafo.dir/main.cpp.obj.requires

.PHONY : CMakeFiles/Grafo.dir/requires

CMakeFiles/Grafo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Grafo.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Grafo.dir/clean

CMakeFiles/Grafo.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\github\bwolffleal\Grafo C:\github\bwolffleal\Grafo C:\github\bwolffleal\Grafo\cmake-build-debug C:\github\bwolffleal\Grafo\cmake-build-debug C:\github\bwolffleal\Grafo\cmake-build-debug\CMakeFiles\Grafo.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Grafo.dir/depend

