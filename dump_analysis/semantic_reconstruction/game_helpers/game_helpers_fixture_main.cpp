#include "game_helpers_analysis.hpp"
#include <iostream>
int main() {
    try {rust_internal_re::check_game_helpers_reconstruction();std::cout<<"game_helpers checks passed\n";}
    catch(const std::exception& e){std::cerr<<e.what()<<'\n';return 1;}
}
