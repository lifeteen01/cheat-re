#include "scene.hpp"
#include <iostream>
int main() {
    try {
        owned_scene::Resources resources;
        owned_scene::InternalMenu menu(resources);
        owned_scene::Settings settings;
        owned_scene::Input input;
        for (unsigned index=0; index<3; ++index) {
            resources.reset(input.width,input.height);
            const auto telemetry=menu.frame(input,settings);
            std::cout << "frame " << index << " controls " << telemetry.controls.size() << " lists " << resources.draw.lists.size() << '\n';
        }
        return 0;
    } catch(const std::exception &failure) { std::cerr<<failure.what()<<'\n'; return 1; }
}
