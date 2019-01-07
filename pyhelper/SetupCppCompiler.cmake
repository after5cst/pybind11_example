cmake_minimum_required(VERSION 3.2)

# Require C++14 or newer.  It's now > 2018.
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

option(
    ENABLE_CPP_WARNINGS
   "Enable more verbose C++ warnings?"
    ON
)
message(STATUS "option ENABLE_CPP_WARNINGS=" ${ENABLE_CPP_WARNINGS})

if("${ENABLE_CPP_WARNINGS}" MATCHES "ON")
    if(CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
        set(GNU_CXX_FLAGS "-pipe -g")
        set(GNU_CXX_FLAGS "${GNU_CXX_FLAGS} -Wall -Wpedantic -Wunused-value -Wunused -Wcast-qual -Wpointer-arith")
        set(GNU_CXX_FLAGS "${GNU_CXX_FLAGS} -Wextra -Wcast-align -Wdisabled-optimization -Wformat-y2k")
        set(GNU_CXX_FLAGS "${GNU_CXX_FLAGS} -Wno-format-extra-args -Wformat-nonliteral -Wformat=2 -Winit-self")
        set(GNU_CXX_FLAGS "${GNU_CXX_FLAGS} -Winvalid-pch -Wunsafe-loop-optimizations -Wmissing-include-dirs")
        set(GNU_CXX_FLAGS "${GNU_CXX_FLAGS} -Wmissing-braces -Wpacked -Wredundant-decls -Wstack-protector")
        set(GNU_CXX_FLAGS "${GNU_CXX_FLAGS} -Wswitch-enum -Wuninitialized -Weffc++ -Wformat-security")
        set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${GNU_CXX_FLAGS} -pthread")
    endif(CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
		
	if(MSVC)
		add_compile_options(${PROJECT_NAME} /WX)
		if(CMAKE_CXX_FLAGS MATCHES "/W[0-4]")
			string(REGEX REPLACE "/W[0-4]" "/W4" CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}")
		else()
			set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /W4")
		endif()
	endif(MSVC)	
endif("${ENABLE_CPP_WARNINGS}" MATCHES "ON")
