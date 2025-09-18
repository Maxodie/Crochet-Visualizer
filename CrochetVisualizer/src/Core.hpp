#pragma once

#include <array>
#include <memory>
#include <typeindex>
#include <vector>
#include <iostream>

using TypeId = std::type_index;
template<typename t>
    TypeId GetType()
    {
        return typeid(t);
    }
