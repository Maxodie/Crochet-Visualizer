#pragma once
#include <iostream>
#include <cstdio>

namespace CV
{
    class Application
    {
    private:
        bool isRunning;
    public:
        void Update();
        void Start();
        void Exit();
    };
}
