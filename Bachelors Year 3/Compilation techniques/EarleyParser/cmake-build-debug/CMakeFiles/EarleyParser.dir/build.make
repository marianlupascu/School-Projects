# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = "C:\Users\Marian Lupascu\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\191.6183.77\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Users\Marian Lupascu\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\191.6183.77\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\Marian Lupascu\Documents\Documente\FMI\III\SEM II\Tehnici de compilare\EarleyParser"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\Marian Lupascu\Documents\Documente\FMI\III\SEM II\Tehnici de compilare\EarleyParser\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/EarleyParser.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/EarleyParser.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/EarleyParser.dir/flags.make

CMakeFiles/EarleyParser.dir/main.cpp.obj: CMakeFiles/EarleyParser.dir/flags.make
CMakeFiles/EarleyParser.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\Marian Lupascu\Documents\Documente\FMI\III\SEM II\Tehnici de compilare\EarleyParser\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/EarleyParser.dir/main.cpp.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\EarleyParser.dir\main.cpp.obj -c "C:\Users\Marian Lupascu\Documents\Documente\FMI\III\SEM II\Tehnici de compilare\EarleyParser\main.cpp"

CMakeFiles/EarleyParser.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/EarleyParser.dir/main.cpp.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\Marian Lupascu\Documents\Documente\FMI\III\SEM II\Tehnici de compilare\EarleyParser\main.cpp" > CMakeFiles\EarleyParser.dir\main.cpp.i

CMakeFiles/EarleyParser.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/EarleyParser.dir/main.cpp.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\Marian Lupascu\Documents\Documente\FMI\III\SEM II\Tehnici de compilare\EarleyParser\main.cpp" -o CMakeFiles\EarleyParser.dir\main.cpp.s

# Object files for target EarleyParser
EarleyParser_OBJECTS = \
"CMakeFiles/EarleyParser.dir/main.cpp.obj"

# External object files for target EarleyParser
EarleyParser_EXTERNAL_OBJECTS =

EarleyParser.exe: CMakeFiles/EarleyParser.dir/main.cpp.obj
EarleyParser.exe: CMakeFiles/EarleyParser.dir/build.make
EarleyParser.exe: CMakeFiles/EarleyParser.dir/linklibs.rsp
EarleyParser.exe: CMakeFiles/EarleyParser.dir/objects1.rsp
EarleyParser.exe: CMakeFiles/EarleyParser.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\Marian Lupascu\Documents\Documente\FMI\III\SEM II\Tehnici de compilare\EarleyParser\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable EarleyParser.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\EarleyParser.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/EarleyParser.dir/build: EarleyParser.exe

.PHONY : CMakeFiles/EarleyParser.dir/build

CMakeFiles/EarleyParser.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\EarleyParser.dir\cmake_clean.cmake
.PHONY : CMakeFiles/EarleyParser.dir/clean

CMakeFiles/EarleyParser.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\Marian Lupascu\Documents\Documente\FMI\III\SEM II\Tehnici de compilare\EarleyParser" "C:\Users\Marian Lupascu\Documents\Documente\FMI\III\SEM II\Tehnici de compilare\EarleyParser" "C:\Users\Marian Lupascu\Documents\Documente\FMI\III\SEM II\Tehnici de compilare\EarleyParser\cmake-build-debug" "C:\Users\Marian Lupascu\Documents\Documente\FMI\III\SEM II\Tehnici de compilare\EarleyParser\cmake-build-debug" "C:\Users\Marian Lupascu\Documents\Documente\FMI\III\SEM II\Tehnici de compilare\EarleyParser\cmake-build-debug\CMakeFiles\EarleyParser.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/EarleyParser.dir/depend

