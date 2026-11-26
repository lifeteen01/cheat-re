#include <exception>
#include <iostream>
namespace rust_internal_re { void check_metadata_reconstruction(); }
int main() {
    try { rust_internal_re::check_metadata_reconstruction(); std::cout << "PASS: metadata fixtures\n"; }
    catch (const std::exception& error) { std::cerr << error.what() << '\n'; return 1; }
}
