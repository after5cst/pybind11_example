#pragma once
// Sample C++ class that is our "real" object.  Note that this
// class doesn't know about Python/PyBind11 : the glue layer
// takes care of the translation.  This just does the C++ work
// for the object.

#include <string>

class pet {
public:
    pet(const std::string& name, int hunger);
    ~pet() = default;

    void walk();
    void feed();
    const std::string& get_name() const;
    int get_hunger() const;

private:
    std::string m_name;
    int m_hunger;
};
