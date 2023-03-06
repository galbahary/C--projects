cmake_minimum_required(VERSION 3.16)
project(ex5_galbah)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(ex5_galbah
        Movie.cpp
        Movie.h
        RecommenderSystem.h
        RecommenderSystem.cpp
        RecommenderSystemLoader.h
        RSUser.cpp
        RSUser.h
        RSUsersLoader.h
        RecommenderSystemLoader.cpp
        RSUsersLoader.cpp
        newtest.cpp)
