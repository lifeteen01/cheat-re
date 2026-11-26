#include "font_text_analysis.hpp"
#include <iostream>
int main(){try{rust_internal_re::check_font_text_reconstruction();std::cout<<"font_text checks passed\n";}catch(const std::exception& e){std::cerr<<e.what()<<'\n';return 1;}}
