#include "frame.hpp"
#include <cstdio>
int main() {
    owned_scene::check_frame_lifecycle();
    std::puts("PASS: copied Client provenance, failure/zero/repeat, recovered IO routing and frame lifecycle");
}
