#include "movement_analysis.hpp"
#include <iostream>
int main() {
    try {rust_internal_re::check_movement_reconstruction();std::cout<<"movement fixtures passed\n";}
    catch(const std::exception& e) {std::cerr<<e.what()<<'\n';return 1;}
}
