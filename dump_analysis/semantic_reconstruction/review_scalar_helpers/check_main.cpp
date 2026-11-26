#include "game_helpers_analysis.hpp"
#include "projectile_leaf_helpers.hpp"
#include "unity_math_analysis.hpp"
#include "font_builder_support.hpp"
int main() {
    rust_internal_re::check_game_helpers_reconstruction();
    rust_internal_re::check_projectile_leaf_helpers();
    rust_internal_re::check_unity_math_reconstruction();
    rust_internal_re::check_font_producer_reconstruction();
    rust_internal_re::check_font_builder_support();
}
