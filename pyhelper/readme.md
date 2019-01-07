pyhelper repository
===================
This module contains helpers for cmake.

This can reduce the amount of boilerplate text required in cmake,
and provide some standardization on how to structure code.

Visual Studio CMake hack notes:
===================
In order to get this work from Visual Studio 2017, the following
command line stuff is necessary:
mkdir build
cd build
cmake -G "Visual Studio 15 2017 Win64" ..
cmake --build .
ctest -V -C "Debug"
