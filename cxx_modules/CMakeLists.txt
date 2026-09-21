cmake_minimum_required(VERSION 3.16)
project(room_manager LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

add_library(room_manager process.cpp)
