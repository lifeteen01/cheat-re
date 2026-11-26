#include "draw_shadows_analysis.hpp"
#include <iostream>
int main(){try{rust_internal_re::check_draw_shadows_reconstruction();std::cout<<"unexpected reversion pass\n";return 0;}catch(const std::exception& e){std::cout<<e.what()<<'\n';return 1;}}
