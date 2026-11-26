#include "server_analysis.hpp"
#include <iostream>
int main() {
    try { rust_internal_re::check_server_reconstruction(); std::cout << "server reconstruction fixtures passed\n"; }
    catch(const std::exception& e) { std::cerr << e.what() << '\n'; return 1; }
}
