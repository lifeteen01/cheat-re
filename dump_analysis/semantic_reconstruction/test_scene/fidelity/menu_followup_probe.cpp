#include "scene.hpp"
#include <iostream>
int main() {
    try {
        owned_scene::check_menu_lifecycle();
        return 0;
    } catch (const std::exception &failure) {
        std::cerr << failure.what() << '\n';
        return 1;
    }
}
