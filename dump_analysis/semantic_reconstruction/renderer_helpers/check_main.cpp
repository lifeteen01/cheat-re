#include "renderer_helpers_analysis.hpp"
#include <iostream>
int main(){try{rust_internal_re::check_renderer_helpers_reconstruction();std::cout<<"renderer helper fixtures passed\n";}catch(const std::exception& e){std::cerr<<e.what()<<'\n';return 1;}}
