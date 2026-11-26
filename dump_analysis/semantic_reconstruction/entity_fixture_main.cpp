#include "entities_analysis.hpp"
#include <iostream>
int main(){try{rust_internal_re::check_entity_reconstruction();std::cout<<"PASS: entity reconstruction and render commands\n";}catch(const std::exception& e){std::cerr<<e.what()<<"\n";return 1;}}
