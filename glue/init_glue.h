#pragma once
#include "include_pybind11.h"
namespace glue {
// Entry point to register all Python functions/objects
void init_glue(pybind11::module& module);

// Individual registration functions
void init_Pet(pybind11::module& module);
} // namespace glue
