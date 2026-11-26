#include "frame_preview_detail.hpp"
namespace rust_internal_re {
using namespace frame_preview_detail;
FrameDependencyResult frame_preview_corners_37d7b0(FrameMenuState &state,
                                                   const FrameMainMenuApi &api) {
    return protect([&] {
        if (!flag(state, 0x3e9d18))
            return;
        const auto draw = get<Address>(api, 0x392ecc);
        const auto low = add(position(api), center(state));
        const auto high = add(add(position(api), center(state)), pair(state, 0x248f20));
        const float width = high.x - low.x, height = high.y - low.y;
        const float dx = width * number(state, 0x402d68), dy = height * number(state, 0x402d68);
        // [C] Eight calls/colors remain ordered; width1.2, not skeleton1.25.
        const auto emit = [&](Vec2 p, Vec2 q) { line(api, draw, p, q, color(api, 1), 1.2f); };
        emit(low, add(low, {0, dy}));
        emit(low, add(low, {dx, 0}));
        emit(add(low, {width - dx, 0}), add(low, {width, 0}));
        emit(add(low, {width, dy}), add(low, {width, 0}));
        emit(add(low, {width, height - dy}), high);
        emit(high, sub(high, {dx, 0}));
        emit(add(low, {0, height}), add(low, {dx, height}));
        emit(add(low, {0, height - dy}), add(low, {0, height}));
    });
}
FrameDependencyResult frame_preview_skeleton_37db8c(FrameMenuState &state,
                                                    const FrameMainMenuApi &api) {
    return protect([&] {
        const auto draw = get<Address>(api, 0x392ecc);
        const auto origin = add(position(api), center(state));
        // [C] Immutable DLL27f9b0..27fa10; edges follow11 native calls.
        constexpr re::ReArray<Vec2, 12> points = {{{60, 27},
                                                  {60, 50},
                                                  {22, 65},
                                                  {6, 90},
                                                  {96, 65},
                                                  {111, 90},
                                                  {60, 90},
                                                  {58, 122},
                                                  {40, 164},
                                                  {36, 201},
                                                  {78, 164},
                                                  {82, 201}}};
        constexpr re::ReArray<re::ReArray<unsigned, 2>, 11> edges = {{{0, 1},
                                                                    {1, 2},
                                                                    {2, 3},
                                                                    {1, 4},
                                                                    {4, 5},
                                                                    {1, 6},
                                                                    {6, 7},
                                                                    {7, 8},
                                                                    {8, 9},
                                                                    {7, 10},
                                                                    {10, 11}}};
        for (const auto &edge : edges) {
            const auto c = color(api, 1);
            line(api, draw, add(origin, points[edge[0]]), add(origin, points[edge[1]]), c, 1.25f);
        }
    });
}
} // namespace rust_internal_re
