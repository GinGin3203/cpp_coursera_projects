# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /opt/clion/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /opt/clion/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ginzburggeorgy/programming/c++_spec/yellow_belt/database_task

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ginzburggeorgy/programming/c++_spec/yellow_belt/database_task/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/database_task.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/database_task.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/database_task.dir/flags.make

CMakeFiles/database_task.dir/main.cpp.o: CMakeFiles/database_task.dir/flags.make
CMakeFiles/database_task.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ginzburggeorgy/programming/c++_spec/yellow_belt/database_task/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/database_task.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/database_task.dir/main.cpp.o -c /home/ginzburggeorgy/programming/c++_spec/yellow_belt/database_task/main.cpp

CMakeFiles/database_task.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/database_task.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ginzburggeorgy/programming/c++_spec/yellow_belt/database_task/main.cpp > CMakeFiles/database_task.dir/main.cpp.i

CMakeFiles/database_task.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/database_task.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ginzburggeorgy/programming/c++_spec/yellow_belt/database_task/main.cpp -o CMakeFiles/database_task.dir/main.cpp.s

CMakeFiles/database_task.dir/database.cpp.o: CMakeFiles/database_task.dir/flags.make
CMakeFiles/database_task.dir/database.cpp.o: ../database.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ginzburggeorgy/programming/c++_spec/yellow_belt/database_task/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/database_task.dir/database.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/database_task.dir/database.cpp.o -c /home/ginzburggeorgy/programming/c++_spec/yellow_belt/database_task/database.cpp

CMakeFiles/database_task.dir/database.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/database_task.dir/database.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ginzburggeorgy/programming/c++_spec/yellow_belt/database_task/database.cpp > CMakeFiles/database_task.dir/database.cpp.i

CMakeFiles/database_task.dir/database.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/database_task.dir/database.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ginzburggeorgy/programming/c++_spec/yellow_belt/database_task/database.cpp -o CMakeFiles/database_task.dir/database.cpp.s

CMakeFiles/database_task.dir/condition_parser.cpp.o: CMakeFiles/database_task.dir/flags.make
CMakeFiles/database_task.dir/condition_parser.cpp.o: ../condition_parser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ginzburggeorgy/programming/c++_spec/yellow_belt/database_task/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/database_task.dir/condition_parser.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/database_task.dir/condition_parser.cpp.o -c /home/ginzburggeorgy/programming/c++_spec/yellow_belt/database_task/condition_parser.cpp

CMakeFiles/database_task.dir/condition_parser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/database_task.dir/condition_parser.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ginzburggeorgy/programming/c++_spec/yellow_belt/database_task/condition_parser.cpp > CMakeFiles/database_task.dir/condition_parser.cpp.i

CMakeFiles/database_task.dir/condition_parser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/database_task.dir/condition_parser.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ginzburggeorgy/programming/c++_spec/yellow_belt/database_task/condition_parser.cpp -o CMakeFiles/database_task.dir/condition_parser.cpp.s

CMakeFiles/database_task.dir/condition_parser_test.cpp.o: CMakeFiles/database_task.dir/flags.make
CMakeFiles/database_task.dir/condition_parser_test.cpp.o: ../condition_parser_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ginzburggeorgy/programming/c++_spec/yellow_belt/database_task/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/database_task.dir/condition_parser_test.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/database_task.dir/condition_parser_test.cpp.o -c /home/ginzburggeorgy/programming/c++_spec/yellow_belt/database_task/condition_parser_test.cpp

CMakeFiles/database_task.dir/condition_parser_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/database_task.dir/condition_parser_test.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ginzburggeorgy/programming/c++_spec/yellow_belt/database_task/condition_parser_test.cpp > CMakeFiles/database_task.dir/condition_parser_test.cpp.i

CMakeFiles/database_task.dir/condition_parser_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/database_task.dir/condition_parser_test.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ginzburggeorgy/programming/c++_spec/yellow_belt/database_task/condition_parser_test.cpp -o CMakeFiles/database_task.dir/condition_parser_test.cpp.s

CMakeFiles/database_task.dir/token.cpp.o: CMakeFiles/database_task.dir/flags.make
CMakeFiles/database_task.dir/token.cpp.o: ../token.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ginzburggeorgy/programming/c++_spec/yellow_belt/database_task/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/database_task.dir/token.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/database_task.dir/token.cpp.o -c /home/ginzburggeorgy/programming/c++_spec/yellow_belt/database_task/token.cpp

CMakeFiles/database_task.dir/token.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/database_task.dir/token.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ginzburggeorgy/programming/c++_spec/yellow_belt/database_task/token.cpp > CMakeFiles/database_task.dir/token.cpp.i

CMakeFiles/database_task.dir/token.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/database_task.dir/token.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ginzburggeorgy/programming/c++_spec/yellow_belt/database_task/token.cpp -o CMakeFiles/database_task.dir/token.cpp.s

CMakeFiles/database_task.dir/test_runner.cpp.o: CMakeFiles/database_task.dir/flags.make
CMakeFiles/database_task.dir/test_runner.cpp.o: ../test_runner.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ginzburggeorgy/programming/c++_spec/yellow_belt/database_task/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/database_task.dir/test_runner.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/database_task.dir/test_runner.cpp.o -c /home/ginzburggeorgy/programming/c++_spec/yellow_belt/database_task/test_runner.cpp

CMakeFiles/database_task.dir/test_runner.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/database_task.dir/test_runner.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ginzburggeorgy/programming/c++_spec/yellow_belt/database_task/test_runner.cpp > CMakeFiles/database_task.dir/test_runner.cpp.i

CMakeFiles/database_task.dir/test_runner.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/database_task.dir/test_runner.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ginzburggeorgy/programming/c++_spec/yellow_belt/database_task/test_runner.cpp -o CMakeFiles/database_task.dir/test_runner.cpp.s

CMakeFiles/database_task.dir/node.cpp.o: CMakeFiles/database_task.dir/flags.make
CMakeFiles/database_task.dir/node.cpp.o: ../node.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ginzburggeorgy/programming/c++_spec/yellow_belt/database_task/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/database_task.dir/node.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/database_task.dir/node.cpp.o -c /home/ginzburggeorgy/programming/c++_spec/yellow_belt/database_task/node.cpp

CMakeFiles/database_task.dir/node.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/database_task.dir/node.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ginzburggeorgy/programming/c++_spec/yellow_belt/database_task/node.cpp > CMakeFiles/database_task.dir/node.cpp.i

CMakeFiles/database_task.dir/node.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/database_task.dir/node.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ginzburggeorgy/programming/c++_spec/yellow_belt/database_task/node.cpp -o CMakeFiles/database_task.dir/node.cpp.s

CMakeFiles/database_task.dir/date.cpp.o: CMakeFiles/database_task.dir/flags.make
CMakeFiles/database_task.dir/date.cpp.o: ../date.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ginzburggeorgy/programming/c++_spec/yellow_belt/database_task/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/database_task.dir/date.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/database_task.dir/date.cpp.o -c /home/ginzburggeorgy/programming/c++_spec/yellow_belt/database_task/date.cpp

CMakeFiles/database_task.dir/date.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/database_task.dir/date.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ginzburggeorgy/programming/c++_spec/yellow_belt/database_task/date.cpp > CMakeFiles/database_task.dir/date.cpp.i

CMakeFiles/database_task.dir/date.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/database_task.dir/date.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ginzburggeorgy/programming/c++_spec/yellow_belt/database_task/date.cpp -o CMakeFiles/database_task.dir/date.cpp.s

# Object files for target database_task
database_task_OBJECTS = \
"CMakeFiles/database_task.dir/main.cpp.o" \
"CMakeFiles/database_task.dir/database.cpp.o" \
"CMakeFiles/database_task.dir/condition_parser.cpp.o" \
"CMakeFiles/database_task.dir/condition_parser_test.cpp.o" \
"CMakeFiles/database_task.dir/token.cpp.o" \
"CMakeFiles/database_task.dir/test_runner.cpp.o" \
"CMakeFiles/database_task.dir/node.cpp.o" \
"CMakeFiles/database_task.dir/date.cpp.o"

# External object files for target database_task
database_task_EXTERNAL_OBJECTS =

database_task: CMakeFiles/database_task.dir/main.cpp.o
database_task: CMakeFiles/database_task.dir/database.cpp.o
database_task: CMakeFiles/database_task.dir/condition_parser.cpp.o
database_task: CMakeFiles/database_task.dir/condition_parser_test.cpp.o
database_task: CMakeFiles/database_task.dir/token.cpp.o
database_task: CMakeFiles/database_task.dir/test_runner.cpp.o
database_task: CMakeFiles/database_task.dir/node.cpp.o
database_task: CMakeFiles/database_task.dir/date.cpp.o
database_task: CMakeFiles/database_task.dir/build.make
database_task: CMakeFiles/database_task.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ginzburggeorgy/programming/c++_spec/yellow_belt/database_task/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable database_task"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/database_task.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/database_task.dir/build: database_task

.PHONY : CMakeFiles/database_task.dir/build

CMakeFiles/database_task.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/database_task.dir/cmake_clean.cmake
.PHONY : CMakeFiles/database_task.dir/clean

CMakeFiles/database_task.dir/depend:
	cd /home/ginzburggeorgy/programming/c++_spec/yellow_belt/database_task/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ginzburggeorgy/programming/c++_spec/yellow_belt/database_task /home/ginzburggeorgy/programming/c++_spec/yellow_belt/database_task /home/ginzburggeorgy/programming/c++_spec/yellow_belt/database_task/cmake-build-debug /home/ginzburggeorgy/programming/c++_spec/yellow_belt/database_task/cmake-build-debug /home/ginzburggeorgy/programming/c++_spec/yellow_belt/database_task/cmake-build-debug/CMakeFiles/database_task.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/database_task.dir/depend
