#pragma once
// pybind11 has some warnings that this project checks.
// Suppress those warnings for the pybind11 headers.
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Weffc++"
#include "pybind11/pybind11.h"
#pragma GCC diagnostic pop
