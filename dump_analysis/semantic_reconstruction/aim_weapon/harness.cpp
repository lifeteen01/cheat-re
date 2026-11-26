#include "aim_weapon_analysis.hpp"
#include <iostream>
int main() {
    try { rust_internal_re::check_aim_weapon_reconstruction(); }
    catch(const std::exception& e) { std::cerr << e.what() << '\n';return 1; }
    std::cout << "aim/weapon offline checks passed\n";
}
