cmake_minimum_required(VERSION 3.16)
project(ex6_galbah)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(ex6_galbah
        HashMap.hpp
        Dictionary.hpp
        test_ex6.cpp)
