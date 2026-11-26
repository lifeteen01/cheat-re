#include "draw_shadows_analysis.hpp"
#include <iostream>
using namespace rust_internal_re;
int main() {
    std::array<Vec2, 5> actual{{{0, 0}, {1, 0}, {1, 1}, {0, 1}, {77, 88}}};
    auto expected = actual;
    const auto input = std::span<const Vec2>(actual).first(4);
    auto output = std::span<Vec2>(actual).subspan(1, 4);
    const auto n = draw_shadows_clip_3a3ea4(input, {-2, -2}, {2, 2}, output);
    // [C]3a3fe1 calls3c8d4c REP MOVSB. Read/write one byte at a time forward.
    auto *raw = reinterpret_cast<unsigned char *>(expected.data());
    for (std::size_t i = 0; i < 4 * sizeof(Vec2); ++i)
        raw[sizeof(Vec2) + i] = raw[i];
    std::cout << "count=" << n << "\n";
    bool equal = true;
    for (std::size_t i = 1; i < 5; ++i) {
        const auto a = actual[i], b = expected[i];
        std::cout << "output[" << i - 1 << "] actual=(" << a.x << ',' << a.y << ") native-forward=("
                  << b.x << ',' << b.y << ")\n";
        equal = equal && a.x == b.x && a.y == b.y;
    }
    return equal ? 0 : 2;
}
