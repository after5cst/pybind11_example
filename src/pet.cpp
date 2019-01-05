// This is a contrived example: the pet class could easily just be
// done header-only.  This is provided just so there is an example
// where source code might live for a more complicated class.
#include "pet.h"

pet::pet(const std::string& name, int hunger)
    : m_name(name)
    , m_hunger(hunger)
{
}

void pet::walk() { ++m_hunger; }

void pet::feed() { m_hunger = 0; }

const std::string& pet::get_name() const { return m_name; }

int pet::get_hunger() const { return m_hunger; }
