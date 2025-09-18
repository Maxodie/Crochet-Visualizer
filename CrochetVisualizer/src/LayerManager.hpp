#include "Core.hpp"
#include <algorithm>

namespace CV
{
    class Layer
    {
    private:
        TypeId _typeId;
    public:
        void Start(){}
        void Update(){}
        void Render(){}
        void Exit(){}
        TypeId GetType()
        {
            return _typeId;
        }
        void SetId(TypeId typeId)
        {
            _typeId = typeId;
        }
    };

    class LayerManager
    {
    public:
    template<typename TLayer>
        void Attach()
        {
            // since it is a unique pointer (we only want one type of layer at a time)
            // check if the layer exists
            const auto foundLayer = std::find_if(_layers.begin(), _layers.end(), [&](const auto& layer){ return layer.GetType() == GetType<TLayer>();});
            if(foundLayer != _layers.end())
            {
                // layer already exists
                return;
            }
            else
            {
                // create layer
                std::unique_ptr<Layer> newLayer = std::make_unique<TLayer>();
                newLayer->SetId(GetType<TLayer>());
                newLayer->Start();
                _layers.emplace_back(std::move(newLayer));
            }
        }

    template<typename TLayer>
        void Detach()
        {

        }

    private:
        std::vector<std::unique_ptr<Layer>> _layers;
    };

}