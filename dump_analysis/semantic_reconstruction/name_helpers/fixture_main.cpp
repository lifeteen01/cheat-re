#include "name_helpers_analysis.hpp"
#include <iostream>
int main() {
    try { rust_internal_re::check_name_helpers_reconstruction(); }
    catch(const std::exception& e) { std::cerr<<e.what()<<'\n';return 1; }
    std::cout<<"PASS: concrete player/item name fixtures\n";
}
