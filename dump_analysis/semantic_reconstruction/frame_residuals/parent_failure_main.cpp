#include "frame_preview_analysis.hpp"
#include "frame_failure.hpp"
#include <iostream>
int main(){try{rust_internal_re::check_frame_residuals_reconstruction();rust_internal_re::check_frame_preview_reconstruction();rust_internal_re::check_frame_failure_propagation();std::cout<<"PASS: frame residuals, preview and nested failures\n";}catch(const std::exception& e){std::cerr<<e.what()<<"\n";return 1;}}
