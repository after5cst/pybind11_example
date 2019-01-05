include(${CMAKE_CURRENT_LIST_DIR}/Pet/Pet.cmake)

# Set current directory for adding sources
set (HERE ${CMAKE_CURRENT_LIST_DIR})

target_sources("${PROJECT_NAME}"
    PRIVATE
    ${HERE}/init_glue.cpp
    ${HERE}/init_glue.h
    )

