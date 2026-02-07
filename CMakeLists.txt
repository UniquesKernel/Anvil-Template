cmake_minimum_required(VERSION 3.22)

project(TemplateProject VERSION 0.1.0 LANGUAGES C CXX)

option(BUILD_TESTING "Build Tests" ON)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")
include(CompilerStandards)

if(BUILD_TESTING)
  enable_testing()
  find_package(Python3 COMPONENTS Interpreter Development REQUIRED)
  message(STATUS "Using Python 3 Interpreter: ${Python3_EXECUTABLE}")
endif()

add_subdirectory(libs/sample)