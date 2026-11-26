#include "world_esp_analysis.hpp"
#include <iostream>
int main(){try{rust_internal_re::check_world_esp_reconstruction();std::cout<<"world ESP fixtures passed\n";}catch(const std::exception& e){std::cerr<<e.what()<<'\n';return 1;}}
