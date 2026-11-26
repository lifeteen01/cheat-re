#include "game_input_physics_analysis.hpp"
#include <iostream>
int main() {
    try {
        rust_internal_re::check_game_input_physics_reconstruction();
        std::cout << "game_input_physics checks PASS\n";
    } catch (const std::exception &e) {
        std::cerr << e.what() << '\n';
        return 1;
    }
}
