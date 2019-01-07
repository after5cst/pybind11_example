#pragma once
// pybind11 has some warnings that this project checks.
// Suppress those warnings for the pybind11 headers.
#ifdef __linux__
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Weffc++"
#endif // __linux__
#include "pybind11/pybind11.h"
#ifdef __linux__
#pragma GCC diagnostic pop
#endif // __linux__
