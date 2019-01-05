cmake_minimum_required(VERSION 3.1)

# Add this directory to the include path.  This allows
# includes like the following:
#    #include "pet.h"
#
set (HERE ${CMAKE_CURRENT_LIST_DIR})
include_directories(${HERE})

target_sources("${PROJECT_NAME}"
    PUBLIC
        "${HERE}/include_json.h"
        "${HERE}/include_pybind11.h"
        "${HERE}/json.hpp"
        "${HERE}/pet.h"
    )

