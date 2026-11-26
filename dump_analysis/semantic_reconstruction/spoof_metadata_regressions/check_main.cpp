#include "hooks_analysis.hpp"
#include "native_pe_analysis.hpp"
#include <iostream>
int main() {
    rust_internal_re::check_hook_reconstruction();
    rust_internal_re::check_native_pe_reconstruction();
    std::cout << "owned hook/native PE metadata checks passed\n";
}
