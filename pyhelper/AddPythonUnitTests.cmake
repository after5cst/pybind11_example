option(
    ENABLE_ADD_PYTHON_UNIT_TESTS
    "Use ctest with python unit tests to build a make_test target?"
    ON
)
message(STATUS "option ENABLE_ADD_PYTHON_UNIT_TESTS=" ${ENABLE_ADD_PYTHON_UNIT_TESTS})

if(${ENABLE_ADD_PYTHON_UNIT_TESTS})
    execute_process(COMMAND python3 -m pytest --version
      OUTPUT_VARIABLE PYTEST_output
      ERROR_VARIABLE  PYTEST_error
      RESULT_VARIABLE PYTEST_result)
    if(NOT ${PYTEST_result} MATCHES "0")
      message(SEND_ERROR "Pytest package not available: ${PYTEST_error}")
    endif()
endif()

function(AddPythonUnitTests UNIT_TEST_LABEL SOURCE_DIR TARGET_DIR)
    find_package( PythonInterp 3 REQUIRED )
    if(${ENABLE_ADD_PYTHON_UNIT_TESTS})
        add_test(NAME "${UNIT_TEST_LABEL}_test" COMMAND "${PYTHON_EXECUTABLE}"
            -m pytest -vvv "${SOURCE_DIR}" "--ignore=${SOURCE_DIR}/pybind11"
            WORKING_DIRECTORY "${TARGET_DIR}")
    endif(${ENABLE_ADD_PYTHON_UNIT_TESTS})
endfunction(AddPythonUnitTests)

