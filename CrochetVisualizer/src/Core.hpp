
#include <memory>
#include <typeindex>
#include <vector>
using TypeId = std::type_index;
template<typename t>
    TypeId GetType()
    {
        return typeid(t);
    }