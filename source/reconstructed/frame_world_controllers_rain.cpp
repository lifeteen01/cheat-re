#include "re_compat.h"
#include "frame_world_controllers_internal.hpp"
namespace rust_internal_re {
using namespace frame_world_detail;
GameBaseResult<bool> frame_world_rain_3096c4(Snapshot &im, const Snapshot &io, Address p,
                                             float alpha, const FrameWorldEnvironment &e,
                                             const FrameWorldRainApi &a) {
    return protect<bool>([&] {
        const Address draw = call(0x392198, a.background_392198);
        const bool initialized = flag(im, e.module, 0x3f1710, 0x309707);
        const float height = read<float>(io, p + 0xc, 0x309715);
        if (!initialized) {
            for (unsigned i = 0; i < 256; ++i) {
                const float y = call(0x2e3d5c, a.random_2e3d5c, 0.0f, height);
                write(im, e.module + 0x3f1310 + i * 4, y, 0x309730);
            }
            write(im, e.module + 0x3f1710, ReU8(1), 0x309742);
        }
        const float bottom = height + read<float>(im, e.module + 0x293230, 0x309749);
        for (unsigned i = 0; i < 256; ++i) {
            const Address cell = e.module + 0x3f1310 + i * 4;
            const float saved_y = read<float>(im, cell, 0x309753);
            const float x = float(i) * read<float>(im, e.module + 0x28db1c, 0x309765);
            for (unsigned j = 0; j < 20; ++j) {
                const float y = saved_y - float(j) * read<float>(im, e.module + 0x28db20, 0x30977a);
                if (0.0f > y)
                    break;
                // [C] high operand is read before low, then one low-byte character is built.
                const float high = read<float>(im, e.module + 0x29321c, 0x309790),
                            low = read<float>(im, e.module + 0x2931e4, 0x309798);
                const auto code = cvtt(call(0x2e3d5c, a.random_2e3d5c, low, high));
                const char c = re::re_bit_cast<char>(ReU8(ReU32(code)));
                const re::ReString text = c ? re::re_string_fill(1, c) : re::ReString{};
                const auto opacity = ReU32(cvtt(float(255u - j * 10u) * alpha));
                // [C]3a31f8 returns before reading fonts on transparent/empty text.
                if (text.empty() || ((opacity << 24) == 0))
                    continue;
                if (!a.fonts || !a.sink)
                    { (void)(GameBaseStatus::missing_boundary, 0x3a31bc); __builtin_trap(); }
                FontTextRequest q;
                q.draw_list = draw;
                q.position = {x, y};
                q.color = (opacity << 24) | 0x46ff00u;
                q.bytes = text;
                font_text_draw_3a31f8(*a.fonts, *a.sink, q);
            }
            const float speed = read<float>(im, e.module + 0x248e90, 0x309834);
            const float dt = read<float>(io, p + 0x10, 0x30983c);
            const float next = speed * dt + read<float>(im, cell, 0x309841);
            write(im, cell, next, 0x30984a);
            if (next > bottom)
                write(im, cell, re::re_bit_cast<float>(0xc3480000u), 0x309852);
        }
        return true;
    });
}
} // namespace rust_internal_re
