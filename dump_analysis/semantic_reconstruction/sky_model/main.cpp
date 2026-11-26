#include "sky_model_analysis.hpp"
#include <iostream>
int main(){try{rust_internal_re::check_sky_model_reconstruction();std::cout<<"sky/model checks passed\n";}catch(const std::exception& e){std::cerr<<e.what()<<'\n';return 1;}}
