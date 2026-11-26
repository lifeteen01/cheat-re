#include "draw_meters_analysis.hpp"
#include <iostream>
int main(){try{rust_internal_re::check_draw_meters_reconstruction();std::cout<<"draw_meters checks passed\n";return 0;}catch(const std::exception& e){std::cerr<<e.what()<<'\n';return 1;}catch(...){std::cerr<<"typed analysis failure\n";return 2;}}
