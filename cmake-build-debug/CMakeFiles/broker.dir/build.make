# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = "A:\Program Files\JetBrains\CLion 2019.2.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "A:\Program Files\JetBrains\CLion 2019.2.2\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\User\CLionProjects\pmi_main_project

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\User\CLionProjects\pmi_main_project\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/broker.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/broker.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/broker.dir/flags.make

CMakeFiles/broker.dir/LiMP/broker.c.obj: CMakeFiles/broker.dir/flags.make
CMakeFiles/broker.dir/LiMP/broker.c.obj: ../LiMP/broker.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\User\CLionProjects\pmi_main_project\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/broker.dir/LiMP/broker.c.obj"
	C:\mingw-w64\x86_64-8.1.0-posix-seh-rt_v6-rev0\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\broker.dir\LiMP\broker.c.obj   -c C:\Users\User\CLionProjects\pmi_main_project\LiMP\broker.c

CMakeFiles/broker.dir/LiMP/broker.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/broker.dir/LiMP/broker.c.i"
	C:\mingw-w64\x86_64-8.1.0-posix-seh-rt_v6-rev0\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\User\CLionProjects\pmi_main_project\LiMP\broker.c > CMakeFiles\broker.dir\LiMP\broker.c.i

CMakeFiles/broker.dir/LiMP/broker.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/broker.dir/LiMP/broker.c.s"
	C:\mingw-w64\x86_64-8.1.0-posix-seh-rt_v6-rev0\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\User\CLionProjects\pmi_main_project\LiMP\broker.c -o CMakeFiles\broker.dir\LiMP\broker.c.s

# Object files for target broker
broker_OBJECTS = \
"CMakeFiles/broker.dir/LiMP/broker.c.obj"

# External object files for target broker
broker_EXTERNAL_OBJECTS =

broker.exe: CMakeFiles/broker.dir/LiMP/broker.c.obj
broker.exe: CMakeFiles/broker.dir/build.make
broker.exe: CMakeFiles/broker.dir/linklibs.rsp
broker.exe: CMakeFiles/broker.dir/objects1.rsp
broker.exe: CMakeFiles/broker.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\User\CLionProjects\pmi_main_project\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable broker.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\broker.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/broker.dir/build: broker.exe

.PHONY : CMakeFiles/broker.dir/build

CMakeFiles/broker.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\broker.dir\cmake_clean.cmake
.PHONY : CMakeFiles/broker.dir/clean

CMakeFiles/broker.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\User\CLionProjects\pmi_main_project C:\Users\User\CLionProjects\pmi_main_project C:\Users\User\CLionProjects\pmi_main_project\cmake-build-debug C:\Users\User\CLionProjects\pmi_main_project\cmake-build-debug C:\Users\User\CLionProjects\pmi_main_project\cmake-build-debug\CMakeFiles\broker.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/broker.dir/depend
