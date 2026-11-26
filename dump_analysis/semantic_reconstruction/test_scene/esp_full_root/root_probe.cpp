#include "scene.hpp"
#include <iostream>

int main() {
    try {
        owned_scene::check_esp_root_boundary();
        return 0;
    } catch (const std::exception &error) {
        std::cerr << error.what() << '\n';
        return 1;
    }
}
