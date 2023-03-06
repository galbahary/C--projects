cmake_minimum_required(VERSION 3.16)
project(ex4_galbah)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(ex4_galbah
        Activation.h
        Activation.cpp
        Dense.cpp
        Dense.h
        main.cpp
        Matrix.cpp
        Matrix.h
        MlpNetwork.h
        MlpNetwork.cpp)
