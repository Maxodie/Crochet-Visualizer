#include "Application.hpp"

extern void InitEditor(CV::Application& ctx);

int main()
{
    CV::Application app{};
    app.Start();
    InitEditor(app);
    app.Update();
    app.Exit();
    return 0;
}