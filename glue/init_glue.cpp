#include "glue/init_glue.h"

/**
 * @brief Register all Python functions/objects
 * @param module  Module provided from init_module().
 */
void glue::init_glue(pybind11::module& module) { glue::init_Pet(module); }
