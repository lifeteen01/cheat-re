#include "projectile_analysis.hpp"
#include "aim_weapon_analysis.hpp"
#include "helicopter_aim_analysis.hpp"
#include "allocation_cache_analysis.hpp"
#include <iostream>
int main(){try{rust_internal_re::check_projectile_reconstruction();rust_internal_re::check_aim_weapon_reconstruction();rust_internal_re::check_helicopter_aim_reconstruction();rust_internal_re::check_allocation_cache_reconstruction();std::cout<<"projectile/aim/cache checks passed\n";}catch(const std::exception& e){std::cerr<<e.what()<<'\n';return 1;}}
