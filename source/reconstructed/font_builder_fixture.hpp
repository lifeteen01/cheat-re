#pragma once
#include "font_builder_analysis.hpp"
namespace rust_internal_re::font_builder_fixture {
inline void require(bool ok, const char *text) {
    if (!ok)
        { /* FREESTANDING_TODO: was throw runtime_error(text) */ }
}
struct FontFixture {
    static constexpr Address data = 0x10000;
    Snapshot image{0, re::ReVector<ReByte>(0x100000)};
    FontBuilderInput input{data, 0x1000};
    void byte(ReU32 p, ReU8 v) {
        require(image.write(data + p, v), "fixture byte write");
    }
    void word(ReU32 p, ReU16 v) {
        byte(p, ReU8(v >> 8));
        byte(p + 1, ReU8(v));
    }
    void dword(ReU32 p, ReU32 v) {
        word(p, ReU16(v >> 16));
        word(p + 2, ReU16(v));
    }
    void table(int index, re::ReStringView tag, ReU32 offset) {
        const auto p = 12 + ReU32(index) * 16;
        for (ReUSize k = 0; k < 4; ++k)
            byte(p + ReU32(k), ReU8(tag[k]));
        dword(p + 8, offset);
    }
    FontFixture() {
        dword(0, 0x10000);
        word(4, 7);
        table(0, "cmap", 0x100);
        table(1, "loca", 0x300);
        table(2, "head", 0x320);
        table(3, "glyf", 0x380);
        table(4, "hhea", 0x400);
        table(5, "hmtx", 0x440);
        table(6, "maxp", 0x460);
        word(0x102, 1);
        word(0x104, 3);
        word(0x106, 1);
        dword(0x108, 12);
        word(0x10c, 0);
        word(0x10e, 262);
        byte(0x112 + 65, 1);
        byte(0x112 + 66, 2);
        word(0x300, 0);
        word(0x302, 0);
        word(0x304, 15);
        word(0x306, 15);
        word(0x332, 1000);
        word(0x352, 0);
        word(0x464, 3);
        word(0x404, 800);
        word(0x406, ReU16(-200));
        word(0x408, 50);
        word(0x422, 2);
        word(0x440, 300);
        word(0x442, 0);
        word(0x444, 600);
        word(0x446, 10);
        word(0x448, ReU16(-5));
        word(0x380, 1);
        word(0x382, 0);
        word(0x384, 0);
        word(0x386, 500);
        word(0x388, 700);
        word(0x38a, 2);
        word(0x38c, 0);
        byte(0x38e, 1);
        byte(0x38f, 1);
        byte(0x390, 1);
        word(0x391, 0);
        word(0x393, 500);
        word(0x395, ReU16(-500));
        word(0x397, 0);
        word(0x399, 0);
        word(0x39b, 700);
    }
};
} // namespace rust_internal_re::font_builder_fixture
