#pragma once
// Niels Lohmann's excellent JSON parser allows a few
// compile warnings that we don't.  Suppress the
// warnings for the JSON header.
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wswitch-enum"
#include "json.hpp"
#pragma GCC diagnostic pop

// Also, scope in the namespace for code cleanness.
// (Not sure this is such a good idea).
using json = nlohmann::json;
