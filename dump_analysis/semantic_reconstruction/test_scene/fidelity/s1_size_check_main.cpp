#include <exception>
#include <iostream>

namespace owned_scene {
void check_esp_label_size_fidelity();
}

int main() {
    try {
        owned_scene::check_esp_label_size_fidelity();
    } catch (const std::exception &error) {
        std::cerr << error.what() << '\n';
        return 1;
    }
}
