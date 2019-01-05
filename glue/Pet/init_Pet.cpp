#include "glue/init_glue.h"
#include "pet.h"

namespace {
auto hunger_help =
#include "hunger.help"
    ;
auto name_help =
#include "name.help"
    ;
} // namespace

/**
 * @brief Register Python objects and functions.
 * @param module  Module provided from init_module().
 */
void glue::init_Pet(pybind11::module& module)
{
    pybind11::class_<pet>(module, "Pet")
        .def(pybind11::init<const std::string&, int>(), pybind11::arg("name"),
            pybind11::arg("hunger") = 0)
        .def("walk", &pet::walk, "Take the pet for a walk")
        .def("feed", &pet::feed, "Feed the pet")
        .def_property_readonly("hunger", &pet::get_hunger, hunger_help)
        .def_property_readonly("name", &pet::get_name, name_help);
}
