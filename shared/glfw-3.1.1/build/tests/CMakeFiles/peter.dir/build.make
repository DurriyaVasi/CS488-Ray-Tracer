# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.4

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.4.1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.4.1/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/chen/Downloads/cs488/shared/glfw-3.1.1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/chen/Downloads/cs488/shared/glfw-3.1.1/build

# Include any dependencies generated for this target.
include tests/CMakeFiles/peter.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/peter.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/peter.dir/flags.make

tests/CMakeFiles/peter.dir/peter.c.o: tests/CMakeFiles/peter.dir/flags.make
tests/CMakeFiles/peter.dir/peter.c.o: ../tests/peter.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chen/Downloads/cs488/shared/glfw-3.1.1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tests/CMakeFiles/peter.dir/peter.c.o"
	cd /Users/chen/Downloads/cs488/shared/glfw-3.1.1/build/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/OSX10.11.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/peter.dir/peter.c.o   -c /Users/chen/Downloads/cs488/shared/glfw-3.1.1/tests/peter.c

tests/CMakeFiles/peter.dir/peter.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/peter.dir/peter.c.i"
	cd /Users/chen/Downloads/cs488/shared/glfw-3.1.1/build/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/OSX10.11.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/chen/Downloads/cs488/shared/glfw-3.1.1/tests/peter.c > CMakeFiles/peter.dir/peter.c.i

tests/CMakeFiles/peter.dir/peter.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/peter.dir/peter.c.s"
	cd /Users/chen/Downloads/cs488/shared/glfw-3.1.1/build/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/OSX10.11.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/chen/Downloads/cs488/shared/glfw-3.1.1/tests/peter.c -o CMakeFiles/peter.dir/peter.c.s

tests/CMakeFiles/peter.dir/peter.c.o.requires:

.PHONY : tests/CMakeFiles/peter.dir/peter.c.o.requires

tests/CMakeFiles/peter.dir/peter.c.o.provides: tests/CMakeFiles/peter.dir/peter.c.o.requires
	$(MAKE) -f tests/CMakeFiles/peter.dir/build.make tests/CMakeFiles/peter.dir/peter.c.o.provides.build
.PHONY : tests/CMakeFiles/peter.dir/peter.c.o.provides

tests/CMakeFiles/peter.dir/peter.c.o.provides.build: tests/CMakeFiles/peter.dir/peter.c.o


# Object files for target peter
peter_OBJECTS = \
"CMakeFiles/peter.dir/peter.c.o"

# External object files for target peter
peter_EXTERNAL_OBJECTS =

tests/peter: tests/CMakeFiles/peter.dir/peter.c.o
tests/peter: tests/CMakeFiles/peter.dir/build.make
tests/peter: src/libglfw3.a
tests/peter: tests/CMakeFiles/peter.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/chen/Downloads/cs488/shared/glfw-3.1.1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable peter"
	cd /Users/chen/Downloads/cs488/shared/glfw-3.1.1/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/peter.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/peter.dir/build: tests/peter

.PHONY : tests/CMakeFiles/peter.dir/build

tests/CMakeFiles/peter.dir/requires: tests/CMakeFiles/peter.dir/peter.c.o.requires

.PHONY : tests/CMakeFiles/peter.dir/requires

tests/CMakeFiles/peter.dir/clean:
	cd /Users/chen/Downloads/cs488/shared/glfw-3.1.1/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/peter.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/peter.dir/clean

tests/CMakeFiles/peter.dir/depend:
	cd /Users/chen/Downloads/cs488/shared/glfw-3.1.1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/chen/Downloads/cs488/shared/glfw-3.1.1 /Users/chen/Downloads/cs488/shared/glfw-3.1.1/tests /Users/chen/Downloads/cs488/shared/glfw-3.1.1/build /Users/chen/Downloads/cs488/shared/glfw-3.1.1/build/tests /Users/chen/Downloads/cs488/shared/glfw-3.1.1/build/tests/CMakeFiles/peter.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/peter.dir/depend

