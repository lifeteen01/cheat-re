#include "world_esp_analysis.hpp"
#include <iostream>
namespace rust_internal_re { void check_world_esp_output(); }
int main(){try{rust_internal_re::check_world_esp_output();std::cout<<"PASS: immediate world output\n";}catch(const std::exception& e){std::cerr<<e.what()<<'\n';return 1;}}
