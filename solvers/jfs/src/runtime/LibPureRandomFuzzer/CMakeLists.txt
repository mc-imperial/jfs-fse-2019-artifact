#===------------------------------------------------------------------------===#
#
#                         JFS - The JIT Fuzzing Solver
#
# Copyright 2018-2019 REDACTED
#
# This file is distributed under the MIT license.
# See LICENSE.txt for details.
#
#===------------------------------------------------------------------------===#
project(LibPureRandomFuzzer CXX C)

###############################################################################
# Minimum CMake version and policies
###############################################################################
cmake_minimum_required(VERSION 2.8.12)

###############################################################################
# Language version
###############################################################################
include(CheckCXXCompilerFlag)
CHECK_CXX_COMPILER_FLAG("-std=c++11" HAS_CXX_11_FLAG)

# We should use C++11
if (HAS_CXX_11_FLAG)
  string(APPEND CMAKE_CXX_FLAGS " -std=c++11")
else()
  message(FATAL_ERROR "Compiler does not support C++11")
endif()

###############################################################################
# Compiler info
###############################################################################
message(STATUS "Using CXX compiler : ${CMAKE_CXX_COMPILER}")
message(STATUS "Global CXX flags : \"${CMAKE_CXX_FLAGS}\"")

###############################################################################
# Sanitizer support
###############################################################################
OPTION(USE_UBSAN "Build with UBSan" OFF)
if (USE_UBSAN)
  message(STATUS "Building with UBSan")
  string(APPEND CMAKE_CXX_FLAGS " -fsanitize=undefined -fno-omit-frame-pointer")
else()
  message(STATUS "Not building with UBSan")
endif()

OPTION(USE_ASAN "Build with ASan" OFF)
if (USE_ASAN)
  message(STATUS "Building with ASan")
  string(APPEND CMAKE_CXX_FLAGS " -fsanitize=address -fno-omit-frame-pointer")
else()
  message(STATUS "Not building with ASan")
endif()

###############################################################################
# LibPureRandomFuzzer
###############################################################################
add_library(PureRandomFuzzer STATIC
  API.cpp
  Driver.cpp
  Main.cpp
  Signals.cpp
  TestInput.cpp
)
