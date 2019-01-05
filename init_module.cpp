#include "glue/init_glue.h"

// Note that module name ('example') MUST match the
// PROJECT_NAME in CMakeLists.txt
PYBIND11_MODULE(example, module)
{
    module.doc() = R"pbdoc(
          Example pybind11 framework.
      )pbdoc";

    // Register and initialize all Python-accessible
    // objects and functions.
    glue::init_glue(module);

    module.attr("__version__") = pybind11::str("0.1");
}
