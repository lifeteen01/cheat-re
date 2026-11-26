#include "drawlist_core_analysis.hpp"
#include <iostream>
int main(){try{rust_internal_re::check_drawlist_core_reconstruction();std::cout<<"draw-list core fixtures passed\n";}catch(const std::exception& e){std::cerr<<e.what()<<'\n';return 1;}}
