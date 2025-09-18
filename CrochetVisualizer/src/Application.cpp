#include "Application.hpp"

namespace CV
{
    void Application::Update()
    {
        while(isRunning)
        {

        }
    }

    void Application::Start()
    {
        isRunning = true;
    }

    void Application::Exit()
    {
        isRunning = false;
    }
}
