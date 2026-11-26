#include "frame.hpp"
#include <cstdio>
int main() {
    owned_scene::check_frame_lifecycle();
    std::puts("owned frame lifecycle checks passed");
}
