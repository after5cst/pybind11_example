cmake_minimum_required(VERSION 3.2)

#----------------------------------------------------------
# Step 1: Add pybind11 to the project.
add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/pybind11)

#----------------------------------------------------------
# Step 2: Setup the project with a project name, and
#         configure the output as a pybind11 project.
#
# Note that PROJECT_NAME is assumed to be defined in
# pyhelper.cmake, so it must be set first.  Also, it must
# match the value in init_module.cpp (see that file for
# a matching comment note).
#
set (PROJECT_NAME example)
include(pyhelper/pyhelper.cmake)

#----------------------------------------------------------
# Step 3: Add this directory (root of the project)
# to the include path.  This allows relative includes from
# base to be used.
#
# Also include the other cmake directories to add files.
#
include_directories(${CMAKE_CURRENT_LIST_DIR})
include(inc/inc.cmake)
include(glue/glue.cmake)
include(src/src.cmake)

#----------------------------------------------------------
# Step 4: Add the module initialization file.  There can
#         be only one, so it's not inheritable by a parent
#         project (like items in step 2 can be)
target_sources( ${PROJECT_NAME}
    PUBLIC
    "init_module.cpp"
    )

AddClangFormat(${PROJECT_NAME})
