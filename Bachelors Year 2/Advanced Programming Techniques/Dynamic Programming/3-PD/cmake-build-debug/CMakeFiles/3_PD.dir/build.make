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
CMAKE_COMMAND = C:\Users\Maryan\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\172.4343.16\bin\cmake\bin\cmake.exe

# The command to remove a file.
RM = C:\Users\Maryan\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\172.4343.16\bin\cmake\bin\cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\Maryan\Documents\Documents\FMI\II\SEM I\Tehnici Avansate de Programare\Laboratoare\Lab PD\3-PD"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\Maryan\Documents\Documents\FMI\II\SEM I\Tehnici Avansate de Programare\Laboratoare\Lab PD\3-PD\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/3_PD.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/3_PD.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/3_PD.dir/flags.make

CMakeFiles/3_PD.dir/main.cpp.obj: CMakeFiles/3_PD.dir/flags.make
CMakeFiles/3_PD.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\Maryan\Documents\Documents\FMI\II\SEM I\Tehnici Avansate de Programare\Laboratoare\Lab PD\3-PD\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/3_PD.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\3_PD.dir\main.cpp.obj -c "C:\Users\Maryan\Documents\Documents\FMI\II\SEM I\Tehnici Avansate de Programare\Laboratoare\Lab PD\3-PD\main.cpp"

CMakeFiles/3_PD.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/3_PD.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\Maryan\Documents\Documents\FMI\II\SEM I\Tehnici Avansate de Programare\Laboratoare\Lab PD\3-PD\main.cpp" > CMakeFiles\3_PD.dir\main.cpp.i

CMakeFiles/3_PD.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/3_PD.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\Maryan\Documents\Documents\FMI\II\SEM I\Tehnici Avansate de Programare\Laboratoare\Lab PD\3-PD\main.cpp" -o CMakeFiles\3_PD.dir\main.cpp.s

CMakeFiles/3_PD.dir/main.cpp.obj.requires:

.PHONY : CMakeFiles/3_PD.dir/main.cpp.obj.requires

CMakeFiles/3_PD.dir/main.cpp.obj.provides: CMakeFiles/3_PD.dir/main.cpp.obj.requires
	$(MAKE) -f CMakeFiles\3_PD.dir\build.make CMakeFiles/3_PD.dir/main.cpp.obj.provides.build
.PHONY : CMakeFiles/3_PD.dir/main.cpp.obj.provides

CMakeFiles/3_PD.dir/main.cpp.obj.provides.build: CMakeFiles/3_PD.dir/main.cpp.obj


# Object files for target 3_PD
3_PD_OBJECTS = \
"CMakeFiles/3_PD.dir/main.cpp.obj"

# External object files for target 3_PD
3_PD_EXTERNAL_OBJECTS =

3_PD.exe: CMakeFiles/3_PD.dir/main.cpp.obj
3_PD.exe: CMakeFiles/3_PD.dir/build.make
3_PD.exe: CMakeFiles/3_PD.dir/linklibs.rsp
3_PD.exe: CMakeFiles/3_PD.dir/objects1.rsp
3_PD.exe: CMakeFiles/3_PD.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\Maryan\Documents\Documents\FMI\II\SEM I\Tehnici Avansate de Programare\Laboratoare\Lab PD\3-PD\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable 3_PD.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\3_PD.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/3_PD.dir/build: 3_PD.exe

.PHONY : CMakeFiles/3_PD.dir/build

CMakeFiles/3_PD.dir/requires: CMakeFiles/3_PD.dir/main.cpp.obj.requires

.PHONY : CMakeFiles/3_PD.dir/requires

CMakeFiles/3_PD.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\3_PD.dir\cmake_clean.cmake
.PHONY : CMakeFiles/3_PD.dir/clean

CMakeFiles/3_PD.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\Maryan\Documents\Documents\FMI\II\SEM I\Tehnici Avansate de Programare\Laboratoare\Lab PD\3-PD" "C:\Users\Maryan\Documents\Documents\FMI\II\SEM I\Tehnici Avansate de Programare\Laboratoare\Lab PD\3-PD" "C:\Users\Maryan\Documents\Documents\FMI\II\SEM I\Tehnici Avansate de Programare\Laboratoare\Lab PD\3-PD\cmake-build-debug" "C:\Users\Maryan\Documents\Documents\FMI\II\SEM I\Tehnici Avansate de Programare\Laboratoare\Lab PD\3-PD\cmake-build-debug" "C:\Users\Maryan\Documents\Documents\FMI\II\SEM I\Tehnici Avansate de Programare\Laboratoare\Lab PD\3-PD\cmake-build-debug\CMakeFiles\3_PD.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/3_PD.dir/depend

