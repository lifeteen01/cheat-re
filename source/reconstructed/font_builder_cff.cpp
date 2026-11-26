#include "font_builder_internal.hpp"
// [I] Bounded buffer/Type2 translation. STB's public-domain source was used as a
// structural reference; native quirks and helper ranges are recorded separately.
namespace rust_internal_re::font_builder_detail {
namespace {
using Buffer = FontBuilderBuffer;
struct Runtime {
    Reader reader;
    const FontBuilderLimits &limits;
    ReUSize steps{};
    void step(Rva site) {
        if (steps++ >= limits.maximum_parser_steps)
            { __builtin_trap(); }
    }
    ReU8 get8(Buffer &b) {
        step(0x3aaf1c);
        if (b.cursor >= b.size)
            return 0;
        const auto value = reader.byte(b.offset + b.cursor, 0x3aaf2a);
        b.cursor = add(b.cursor, 1);
        return value;
    }
    ReU8 peek(const Buffer &b) {
        step(0x3aaf74);
        return b.cursor >= b.size ? 0 : reader.byte(b.offset + b.cursor, 0x3aaf74);
    }
    void seek(Buffer &b, ReI32 n) { b.cursor = n < 0 || n > b.size ? b.size : n; }
    void skip(Buffer &b, ReI32 n) { seek(b, add(b.cursor, n)); }
    ReU32 get(Buffer &b, int n) {
        ReU32 value = 0;
        for (int i = 0; i < n; ++i)
            value = (value << 8) | get8(b);
        return value;
    }
    Buffer range(const Buffer &b, int offset, int size) {
        if (offset < 0 || size < 0 || offset > b.size || size > b.size - offset)
            return {};
        return {b.offset + offset, 0, size};
    }
    Buffer index(Buffer &b) {
        const auto start = b.cursor;
        const auto count = get(b, 2);
        if (count) {
            const auto offsize = get8(b);
            skip(b, integer(ReU32(offsize) * count));
            skip(b, integer(get(b, offsize) - 1));
        }
        return range(b, start, add(b.cursor, -start));
    }
    ReU32 number(Buffer &b) {
        const auto v = get8(b);
        if (v >= 32 && v <= 246)
            return ReU32(int(v) - 139);
        if (v >= 247 && v <= 250)
            return ReU32(int(v) - 247) * 256 + get8(b) + 108;
        if (v >= 251 && v <= 254)
            return 0u - ReU32(int(v) - 251) * 256 - get8(b) - 108;
        if (v == 28)
            return get(b, 2);
        if (v == 29)
            return get(b, 4);
        return 0;
    }
    void operand(Buffer &b) {
        if (peek(b) == 30) {
            skip(b, 1);
            while (b.cursor < b.size) {
                const auto v = get8(b);
                if ((v & 15) == 15 || (v >> 4) == 15)
                    break;
            }
        } else
            (void)number(b);
    }
    Buffer dictionary(Buffer &b, int key) {
        seek(b, 0);
        while (b.cursor < b.size) {
            step(0x3ab5f0);
            const auto start = b.cursor;
            while (peek(b) >= 28)
                operand(b);
            const auto end = b.cursor;
            int op = get8(b);
            if (op == 12)
                op = get8(b) | 0x100;
            if (op == key)
                return range(b, start, add(end, -start));
        }
        return range(b, 0, 0);
    }
    void integers(Buffer &b, int key, re::ReSpan<ReU32> out) {
        auto operands = dictionary(b, key);
        for (auto &value : out) {
            if (operands.cursor >= operands.size)
                break;
            value = number(operands);
        }
    }
    int index_count(Buffer &b) {
        seek(b, 0);
        return int(get(b, 2));
    }
    Buffer index_get(Buffer b, int index_value) {
        seek(b, 0);
        const auto count = get(b, 2), offsize = ReU32(get8(b));
        skip(b, integer(ReU32(index_value) * offsize));
        const auto start = get(b, int(offsize)), end = get(b, int(offsize));
        return range(b, integer(2 + (count + 1) * offsize + start), integer(end - start));
    }
    Buffer subrs(Buffer cff, Buffer dict) {
        re::ReArray<ReU32, 2> location{};
        integers(dict, 18, location);
        if (!location[0] || !location[1])
            return {};
        auto private_dict = range(cff, integer(location[1]), integer(location[0]));
        re::ReArray<ReU32, 1> offset{};
        integers(private_dict, 19, offset);
        if (!offset[0])
            return {};
        seek(cff, integer(location[1] + offset[0]));
        return index(cff);
    }
    Buffer subr(Buffer idx, int n) {
        const auto count = index_count(idx);
        const auto bias = count >= 33900 ? 32768 : count >= 1240 ? 1131 : 107;
        n = add(n, bias);
        if (n < 0 || n >= count)
            return {};
        return index_get(idx, n);
    }
    Buffer cid_subrs(const FontBuilderInfo &info, int glyph) {
        auto select = info.cff_buffers.fdselect;
        seek(select, 0);
        const auto format = get8(select);
        int selector = -1;
        if (format == 0) {
            skip(select, glyph);
            selector = get8(select);
        } else if (format == 3) {
            const auto count = get(select, 2);
            auto start = get(select, 2);
            for (ReU32 i = 0; i < count; ++i) {
                const auto v = get8(select);
                const auto end = get(select, 2);
                if (glyph >= integer(start) && glyph < integer(end)) {
                    selector = v;
                    break;
                }
                start = end;
            }
        }
        // [C]3ab20c's selector==-1 path actually returns an empty buffer.
        if (selector == -1)
            return {};
        return subrs(info.cff_buffers.data, index_get(info.cff_buffers.fontdicts, selector));
    }
};
struct Context {
    bool bounds{}, started{};
    float first_x{}, first_y{}, x{}, y{};
    int min_x{}, min_y{}, max_x{}, max_y{};
    re::ReVector<FontBuilderVertex> vertices;
    ReUSize count{};
    const FontBuilderLimits *limits{};
};
void track(Context *c, int x, int y) {
    if (x > c->max_x || !c->started)
        c->max_x = x;
    if (y > c->max_y || !c->started)
        c->max_y = y;
    if (x < c->min_x || !c->started)
        c->min_x = x;
    if (y < c->min_y || !c->started)
        c->min_y = y;
    c->started = true;
}
void vertex(Context *c, ReU8 type, int x, int y, int cx, int cy, int cx1, int cy1) {
    if (c->count >= c->limits->maximum_vertices)
        { __builtin_trap(); }
    if (c->bounds) {
        track(c, x, y);
        if (type == 4) {
            track(c, cx, cy);
            track(c, cx1, cy1);
        }
    } else {
        auto short_value = [](int a) { return re::re_bit_cast<ReI16>(ReU16(a)); };
        c->vertices.push_back({short_value(x), short_value(y), short_value(cx), short_value(cy),
                               re::ReArray<ReI16, 2>{short_value(cx1), short_value(cy1)},
                               type});
    }
    ++c->count;
}
void close(Context *c) {
    if (c->first_x != c->x || c->first_y != c->y)
        vertex(c, 2, cvtt(c->first_x), cvtt(c->first_y), 0, 0, 0, 0);
}
void move(Context *c, float dx, float dy) {
    close(c);
    c->first_x = c->x = c->x + dx;
    c->first_y = c->y = c->y + dy;
    vertex(c, 1, cvtt(c->x), cvtt(c->y), 0, 0, 0, 0);
}
void line(Context *c, float dx, float dy) {
    c->x += dx;
    c->y += dy;
    vertex(c, 2, cvtt(c->x), cvtt(c->y), 0, 0, 0, 0);
}
void curve(Context *c, float dx1, float dy1, float dx2, float dy2, float dx3, float dy3) {
    const auto cx1 = c->x + dx1, cy1 = c->y + dy1, cx2 = cx1 + dx2, cy2 = cy1 + dy2;
    c->x = cx2 + dx3;
    c->y = cy2 + dy3;
    vertex(c, 4, cvtt(c->x), cvtt(c->y), cvtt(cx1), cvtt(cy1), cvtt(cx2), cvtt(cy2));
}
float absolute(float a) {
    return re::re_bit_cast<float>(re::re_bit_cast<ReU32>(a) & 0x7fffffffu);
}
static int run(const Snapshot &image, const FontBuilderInfo &info, int glyph_index, Context *c,
               const FontBuilderLimits &limits) {
    Runtime rt{{image, info.input}, limits};
    int in_header = 1, maskbits = 0, subr_stack_height = 0, sp = 0, v, i, b0;
    int has_subrs = 0, clear_stack;
    float s[48];
    Buffer subr_stack[10], subrs = info.cff_buffers.subrs, b;
    float f;
#define STBTT__CSERR(s) (0)
    b = rt.index_get(info.cff_buffers.charstrings, glyph_index);
    while (b.cursor < b.size) {
        rt.step(0x3ac84c);
        i = 0;
        clear_stack = 1;
        b0 = rt.get8(b);
        switch (b0) {
        case 0x13:
        case 0x14:
            if (in_header)
                maskbits += (sp / 2);
            in_header = 0;
            rt.skip(b, (maskbits + 7) / 8);
            break;
        case 0x01:
        case 0x03:
        case 0x12:
        case 0x17:
            maskbits += (sp / 2);
            break;
        case 0x15:
            in_header = 0;
            if (sp < 2)
                return STBTT__CSERR("rmoveto stack");
            move(c, s[sp - 2], s[sp - 1]);
            break;
        case 0x04:
            in_header = 0;
            if (sp < 1)
                return STBTT__CSERR("vmoveto stack");
            move(c, 0, s[sp - 1]);
            break;
        case 0x16:
            in_header = 0;
            if (sp < 1)
                return STBTT__CSERR("hmoveto stack");
            move(c, s[sp - 1], 0);
            break;
        case 0x05:
            if (sp < 2)
                return STBTT__CSERR("rlineto stack");
            for (; i + 1 < sp; i += 2)
                line(c, s[i], s[i + 1]);
            break;
        case 0x07:
            if (sp < 1)
                return STBTT__CSERR("vlineto stack");
            goto vlineto;
        case 0x06:
            if (sp < 1)
                return STBTT__CSERR("hlineto stack");
            for (;;) {
                if (i >= sp)
                    break;
                line(c, s[i], 0);
                i++;
            vlineto:
                if (i >= sp)
                    break;
                line(c, 0, s[i]);
                i++;
            }
            break;
        case 0x1F:
            if (sp < 4)
                return STBTT__CSERR("hvcurveto stack");
            goto hvcurveto;
        case 0x1E:
            if (sp < 4)
                return STBTT__CSERR("vhcurveto stack");
            for (;;) {
                if (i + 3 >= sp)
                    break;
                curve(c, 0, s[i], s[i + 1], s[i + 2], s[i + 3], (sp - i == 5) ? s[i + 4] : 0.0f);
                i += 4;
            hvcurveto:
                if (i + 3 >= sp)
                    break;
                curve(c, s[i], 0, s[i + 1], s[i + 2], (sp - i == 5) ? s[i + 4] : 0.0f, s[i + 3]);
                i += 4;
            }
            break;
        case 0x08:
            if (sp < 6)
                return STBTT__CSERR("rcurveline stack");
            for (; i + 5 < sp; i += 6)
                curve(c, s[i], s[i + 1], s[i + 2], s[i + 3], s[i + 4], s[i + 5]);
            break;
        case 0x18:
            if (sp < 8)
                return STBTT__CSERR("rcurveline stack");
            for (; i + 5 < sp - 2; i += 6)
                curve(c, s[i], s[i + 1], s[i + 2], s[i + 3], s[i + 4], s[i + 5]);
            if (i + 1 >= sp)
                return STBTT__CSERR("rcurveline stack");
            line(c, s[i], s[i + 1]);
            break;
        case 0x19:
            if (sp < 8)
                return STBTT__CSERR("rlinecurve stack");
            for (; i + 1 < sp - 6; i += 2)
                line(c, s[i], s[i + 1]);
            if (i + 5 >= sp)
                return STBTT__CSERR("rlinecurve stack");
            curve(c, s[i], s[i + 1], s[i + 2], s[i + 3], s[i + 4], s[i + 5]);
            break;
        case 0x1A:
        case 0x1B:
            if (sp < 4)
                return STBTT__CSERR("(vv|hh)curveto stack");
            f = 0.0;
            if (sp & 1) {
                f = s[i];
                i++;
            }
            for (; i + 3 < sp; i += 4) {
                if (b0 == 0x1B)
                    curve(c, s[i], f, s[i + 1], s[i + 2], s[i + 3], 0.0);
                else
                    curve(c, f, s[i], s[i + 1], s[i + 2], 0.0, s[i + 3]);
                f = 0.0;
            }
            break;
        case 0x0A:
            if (!has_subrs) {
                if (info.cff_buffers.fdselect.size)
                    subrs = rt.cid_subrs(info, glyph_index);
                has_subrs = 1;
            }
            [[fallthrough]];
        case 0x1D:
            if (sp < 1)
                return STBTT__CSERR("call(g|)subr stack");
            v = cvtt(s[--sp]);
            if (subr_stack_height >= 10)
                return STBTT__CSERR("recursion limit");
            subr_stack[subr_stack_height++] = b;
            b = rt.subr(b0 == 0x0A ? subrs : info.cff_buffers.global_subrs, v);
            if (b.size == 0)
                return STBTT__CSERR("subr not found");
            b.cursor = 0;
            clear_stack = 0;
            break;
        case 0x0B:
            if (subr_stack_height <= 0)
                return STBTT__CSERR("return outside subr");
            b = subr_stack[--subr_stack_height];
            clear_stack = 0;
            break;
        case 0x0E:
            close(c);
            return 1;
        case 0x0C: {
            float dx1, dx2, dx3, dx4, dx5, dx6, dy1, dy2, dy3, dy4, dy5, dy6;
            float dx, dy;
            int b1 = rt.get8(b);
            switch (b1) {
            case 0x22:
                if (sp < 7)
                    return STBTT__CSERR("hflex stack");
                dx1 = s[0];
                dx2 = s[1];
                dy2 = s[2];
                dx3 = s[3];
                dx4 = s[4];
                dx5 = s[5];
                dx6 = s[6];
                curve(c, dx1, 0, dx2, dy2, dx3, 0);
                curve(c, dx4, 0, dx5, -dy2, dx6, 0);
                break;
            case 0x23:
                if (sp < 13)
                    return STBTT__CSERR("flex stack");
                dx1 = s[0];
                dy1 = s[1];
                dx2 = s[2];
                dy2 = s[3];
                dx3 = s[4];
                dy3 = s[5];
                dx4 = s[6];
                dy4 = s[7];
                dx5 = s[8];
                dy5 = s[9];
                dx6 = s[10];
                dy6 = s[11];
                curve(c, dx1, dy1, dx2, dy2, dx3, dy3);
                curve(c, dx4, dy4, dx5, dy5, dx6, dy6);
                break;
            case 0x24:
                if (sp < 9)
                    return STBTT__CSERR("hflex1 stack");
                dx1 = s[0];
                dy1 = s[1];
                dx2 = s[2];
                dy2 = s[3];
                dx3 = s[4];
                dx4 = s[5];
                dx5 = s[6];
                dy5 = s[7];
                dx6 = s[8];
                curve(c, dx1, dy1, dx2, dy2, dx3, 0);
                curve(c, dx4, 0, dx5, dy5, dx6, -(dy1 + dy2 + dy5));
                break;
            case 0x25:
                if (sp < 11)
                    return STBTT__CSERR("flex1 stack");
                dx1 = s[0];
                dy1 = s[1];
                dx2 = s[2];
                dy2 = s[3];
                dx3 = s[4];
                dy3 = s[5];
                dx4 = s[6];
                dy4 = s[7];
                dx5 = s[8];
                dy5 = s[9];
                dx6 = dy6 = s[10];
                dx = dx1 + dx2 + dx3 + dx4 + dx5;
                dy = dy1 + dy2 + dy3 + dy4 + dy5;
                if (absolute(dx) > absolute(dy))
                    dy6 = -dy;
                else
                    dx6 = -dx;
                curve(c, dx1, dy1, dx2, dy2, dx3, dy3);
                curve(c, dx4, dy4, dx5, dy5, dx6, dy6);
                break;
            default:
                return STBTT__CSERR("unimplemented");
            }
        } break;
        default:
            if (b0 != 255 && b0 != 28 && b0 < 32)
                return STBTT__CSERR("reserved operator");
            if (b0 == 255) {
                f = (float)integer(rt.get(b, 4)) / 0x10000;
            } else {
                rt.skip(b, -1);
                f = (float)re::re_bit_cast<ReI16>(ReU16(rt.number(b)));
            }
            if (sp >= 48)
                return STBTT__CSERR("push stack overflow");
            s[sp++] = f;
            clear_stack = 0;
            break;
        }
        if (clear_stack)
            sp = 0;
    }
    return STBTT__CSERR("no endchar");
#undef STBTT__CSERR
}

} // namespace
bool cff_init(const Snapshot &image, FontBuilderInfo &info, int offset,
              const FontBuilderLimits &limits) {
    Runtime rt{{image, info.input}, limits};
    auto &f = info.cff_buffers;
    f = {};
    f.data = {offset, 0, 0x20000000};
    auto b = f.data;
    rt.skip(b, 2);
    rt.seek(b, rt.get8(b));
    (void)rt.index(b);
    auto top_index = rt.index(b);
    auto top = rt.index_get(top_index, 0);
    (void)rt.index(b);
    f.global_subrs = rt.index(b);
    re::ReArray<ReU32, 1> charstrings{}, type{2}, array{}, select{};
    rt.integers(top, 17, charstrings);
    rt.integers(top, 0x106, type);
    rt.integers(top, 0x124, array);
    rt.integers(top, 0x125, select);
    f.subrs = rt.subrs(b, top);
    if (type[0] != 2 || !charstrings[0])
        return false;
    if (array[0]) {
        if (!select[0])
            return false;
        rt.seek(b, integer(array[0]));
        f.fontdicts = rt.index(b);
        f.fdselect = rt.range(b, integer(select[0]), sub(b.size, integer(select[0])));
    }
    rt.seek(b, integer(charstrings[0]));
    f.charstrings = rt.index(b);
    return true;
}
FontBuilderBox cff_box(const Snapshot &image, const FontBuilderInfo &info, int glyph) {
    FontBuilderLimits limits;
    Context c;
    c.bounds = true;
    c.limits = &limits;
    if (!run(image, info, glyph, &c, limits))
        return {};
    return {c.min_x, c.min_y, c.max_x, c.max_y};
}
re::ReVector<FontBuilderVertex> cff_shape(const Snapshot &image, const FontBuilderInfo &info,
                                         int glyph, const FontBuilderLimits &limits) {
    Context count;
    count.bounds = true;
    count.limits = &limits;
    if (!run(image, info, glyph, &count, limits))
        return {};
    Context output;
    output.limits = &limits;
    output.vertices.reserve(count.count);
    if (!run(image, info, glyph, &output, limits))
        return {};
    return output.vertices;
}
} // namespace rust_internal_re::font_builder_detail
