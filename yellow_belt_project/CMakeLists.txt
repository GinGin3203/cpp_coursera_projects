cmake_minimum_required(VERSION 3.13)
project(database_task)

set(CMAKE_CXX_STANDARD 11)

include_directories(.)
#add_executable(database_task condition_parser_test.cpp condition_parser.cpp condition_parser.h main.cpp token.cpp token.h database.cpp database.h date.h date.cpp node.cpp node.h test_runner.cpp test_runner.h)
set(SOURCE_FILES main.cpp database.cpp condition_parser.cpp condition_parser_test.cpp token.cpp test_runner.cpp node.cpp date.cpp)
add_executable(database_task ${SOURCE_FILES})
