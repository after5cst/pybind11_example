# Set current directory for adding sources
set (HERE ${CMAKE_CURRENT_LIST_DIR})

target_sources("${PROJECT_NAME}"
    PRIVATE
    ${HERE}/pet.cpp
    )

