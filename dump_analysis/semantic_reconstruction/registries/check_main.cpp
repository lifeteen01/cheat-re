#include "registry_analysis.hpp"
#include "allocation_cache_analysis.hpp"
#include <iostream>
int main(){rust_internal_re::check_registry_reconstruction();rust_internal_re::check_allocation_cache_reconstruction();std::cout<<"[C] registry and allocation/cache fixtures passed\n";}
