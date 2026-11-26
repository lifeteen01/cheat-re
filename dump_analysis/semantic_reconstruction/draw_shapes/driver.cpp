#include "draw_shapes_analysis.hpp"
#include <iostream>
int main(){try{rust_internal_re::check_draw_shapes_reconstruction();std::cout<<"draw_shapes checks passed\n";}catch(const std::exception& e){std::cerr<<e.what()<<'\n';return 1;}}
