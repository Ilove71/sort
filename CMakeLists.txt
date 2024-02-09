cmake_minimum_required(VERSION 3.5)
project(test)

set(CMAKE_CXX_STANDARD 11)

find_package(Threads REQUIRED)

include_directories(src)

add_executable(bubble src/bubble.cpp)
add_executable(insert src/insert.cpp)
add_executable(counting src/counting.cpp)
add_executable(selection src/selection.cpp)
add_executable(radix src/radix.cpp)
