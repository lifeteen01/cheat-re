#include "font_builder_analysis.hpp"
#include <iostream>
int main(){try{rust_internal_re::check_font_builder_reconstruction();std::cout<<"font_builder SFNT checks passed\n";return 0;}catch(const std::exception& e){std::cerr<<e.what()<<'\n';return 1;}}
