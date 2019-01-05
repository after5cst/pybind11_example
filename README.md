# pybind11_example
Sample project using pybind11, CMake, clang-format, and Python unit tests.

## Quick Start

```
git clone https://github.com/after5cst/pybind11_example.git --recurse-submodules -j8
cd pybind11_example
python3 -m venv venv
source venv/bin/activate
pip install pytest
mkdir build
cd build
cmake ..
make -j8
make test
```
