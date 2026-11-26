#include "renderer_helpers_analysis.hpp"
namespace rust_internal_re {
namespace {
template <class T> T get(const Snapshot &im, Address a, Rva site) {
    const auto v = im.read<T>(a);
    if (!v)
        { __builtin_trap(); }
    return *v;
}
ReU8 byte(re::ReStringView text, ReUSize at) {
    // [I] Text views carry the caller's known NUL terminator immediately after payload.
    if (at == text.size())
        return 0;
    if (at > text.size())
        { __builtin_trap(); }
    return ReU8(text[at]);
}
float advance(const RendererFont &f, ReU32 cp) {
    return cp < f.advances.size() ? f.advances[cp] : f.fallback;
}
float maxss(float a, float z) {
    return a > z ? a : z;
}
ReI32 cvtt(float x) {
    if (!re::re_isfinite(x) || x >= 2147483648.0f || x < -2147483648.0f)
        return INT32_MIN;
    return ReI32(x);
}
} // namespace
RendererUtf8 renderer_utf8_39357c(re::ReStringView text, ReUSize at,
                                  re::ReOptional<ReUSize> explicit_end) {
    constexpr re::ReArray<ReU8, 32> lengths{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
                                                   0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 3, 3, 4, 0};
    constexpr re::ReArray<ReU32, 5> masks{0, 127, 31, 15, 7},
        minimums{0x400000, 0, 128, 2048, 65536}, shifts{0, 18, 12, 6, 0},
        error_shifts{0, 6, 4, 2, 0};
    const auto len = lengths[byte(text, at) >> 3];
    ReUSize consumed = len ? len : 1;
    const auto end = explicit_end.value_or(at + consumed);
    if (end > text.size() + 1)
        { __builtin_trap(); }
    re::ReArray<ReU8, 4> s{};
    for (ReUSize i = 0; i < 4; ++i)
        if (at + i < end)
            s[i] = byte(text, at + i);
    ReU32 cp =
        (((ReU32(s[0]) & masks[len]) << 18) | ((ReU32(s[1]) & 63) << 12) |
         ((ReU32(s[2]) & 63) << 6) | (s[3] & 63)) >>
        shifts[len];
    ReU32 error = (cp < minimums[len] ? 64u : 0u) | ((cp >> 11) == 0x1b ? 128u : 0u) |
                          (cp > 0xffff ? 256u : 0u) | ((s[1] & 0xc0u) >> 2) |
                          ((s[2] & 0xc0u) >> 4) | (s[3] >> 6);
    error = (error ^ 0x2au) >> error_shifts[len];
    if (error) {
        consumed =
            re::re_min(consumed, ReUSize((s[0] != 0) + (s[1] != 0) + (s[2] != 0) + (s[3] != 0)));
        cp = 0xfffd;
    }
    return {cp, consumed};
}
bool renderer_blank_3a4b10(ReU32 cp) {
    return cp == 0x20 || cp == 9 || cp == 0x3000;
}
bool renderer_blank_37897c(ReU8 ch) {
    return ch == 0x20 || ch == 9;
}
RendererFont read_renderer_font(const Snapshot &im, Address font, ReUSize maximum) {
    RendererFont f;
    f.nominal = get<float>(im, font + 0x14, 0x3a38d3);
    f.fallback = get<float>(im, font + 0x10, 0x3a39e2);
    const auto count = get<ReI32>(im, font, 0x3a39d0);
    if (count > 0) {
        if (ReUSize(count) > maximum)
            { __builtin_trap(); }
        const auto values = get<Address>(im, font + 8, 0x3a39d7);
        f.advances.reserve(ReUSize(count));
        for (ReI32 i = 0; i < count; ++i)
            f.advances.push_back(get<float>(im, values + ReU64(i) * 4, 0x3a39db));
    }
    return f;
}
ReUSize renderer_next_line_3a3a70(re::ReStringView text, ReUSize at, ReUSize end) {
    while (at < end && renderer_blank_37897c(byte(text, at)))
        ++at;
    if (byte(text, at) == 10)
        ++at;
    return at;
}
ReUSize renderer_wrap_3a3aa4(const RendererFont &f, float scale, re::ReStringView text,
                                 ReUSize begin, ReUSize end, float width) {
    if (begin > end || end > text.size())
        { __builtin_trap(); }
    float line = 0, word = 0, blanks = 0;
    bool inside = true;
    ReUSize current = begin, word_end = begin;
    re::ReOptional<ReUSize> previous_word_end;
    width /= scale;
    while (current < end) {
        const auto lead = byte(text, current);
        RendererUtf8 decoded{lead, 1};
        if (lead >= 0x80)
            decoded = renderer_utf8_39357c(text, current, end);
        if (decoded.consumed == 0)
            { __builtin_trap(); }
        const auto next = current + decoded.consumed;
        const auto cp = decoded.codepoint;
        if (cp == 10) {
            line = word = blanks = 0;
            inside = true;
            current = next;
            continue;
        }
        if (cp == 13) {
            current = next;
            continue;
        }
        const float glyph = advance(f, cp);
        if (renderer_blank_3a4b10(cp)) {
            if (inside) {
                line += blanks;
                word_end = current;
                blanks = 0;
            }
            blanks += glyph;
            inside = false;
        } else {
            word += glyph;
            if (inside)
                word_end = next;
            else {
                word += blanks;
                previous_word_end = word_end;
                blanks = 0;
                line += word;
                word = 0;
            }
            constexpr ReU64 punctuation = 0x8800500600000000ull;
            inside = !(cp <= 0x3f && ((punctuation >> cp) & 1));
        }
        if (word + line > width) {
            if (width > word)
                current = previous_word_end.value_or(word_end);
            break;
        }
        current = next;
    }
    if (current == begin && begin < end)
        return current + 1;
    return current;
}
RendererTextMeasure renderer_measure_3a3874(const RendererFont &f, const RendererTextRequest &q) {
    const auto end = q.explicit_end.value_or(
        q.bytes.find('\0') == re::ReStringView::npos ? q.bytes.size() : q.bytes.find('\0'));
    if (end > q.bytes.size())
        { __builtin_trap(); }
    const float scale = q.size / f.nominal;
    RendererTextMeasure r;
    float width = 0;
    ReUSize current = 0;
    re::ReOptional<ReUSize> wrap;
    while (current < end) {
        if (q.wrap_width > 0) {
            if (!wrap)
                wrap = renderer_wrap_3a3aa4(f, scale, q.bytes, current, end, q.wrap_width - width);
            if (current >= *wrap) {
                if (width > r.size.x)
                    r.size.x = width;
                r.size.y += q.size;
                width = 0;
                wrap.reset();
                current = renderer_next_line_3a3a70(q.bytes, current, end);
                continue;
            }
        }
        const auto lead = byte(q.bytes, current);
        RendererUtf8 cp{lead, 1};
        if (lead >= 0x80)
            cp = renderer_utf8_39357c(q.bytes, current, end);
        if (cp.consumed == 0)
            { __builtin_trap(); }
        const auto next = current + cp.consumed;
        if (cp.codepoint == 10) {
            r.size.x = maxss(r.size.x, width);
            r.size.y += q.size;
            width = 0;
            current = next;
            continue;
        }
        if (cp.codepoint == 13) {
            current = next;
            continue;
        }
        const float candidate = advance(f, cp.codepoint) * scale + width;
        if (candidate >= q.maximum_width)
            break; // [C] excludes equal-width character; remaining points to its first byte.
        width = candidate;
        current = next;
    }
    if (width > r.size.x)
        r.size.x = width;
    if (width > 0 || r.size.y == 0)
        r.size.y += q.size;
    r.remaining = current;
    return r;
}
RendererTextMeasure renderer_measure_38f79c(const Snapshot &im, Address ctx, re::ReStringView text,
                                            re::ReOptional<ReUSize> end, bool hide, float wrap) {
    if (end && *end > text.size())
        { __builtin_trap(); }
    auto stop = end;
    if (hide) {
        const auto limit =
            end.value_or(text.find('\0') == re::ReStringView::npos ? text.size() : text.find('\0'));
        ReUSize i = 0;
        // [C]391c67 peeks the next character even when it lies past explicit end.
        while (i < limit && text[i] != 0 &&
               !(text[i] == '#' && i + 1 < text.size() && text[i + 1] == '#'))
            ++i;
        stop = i;
    }
    const float size = get<float>(im, ctx + 0x3c30, 0x38f7cb);
    if (stop && *stop == 0)
        return {{0, size}, 0};
    const auto font = get<Address>(im, ctx + 0x3c28, 0x38f7f8);
    auto result = renderer_measure_3a3874(
        read_renderer_font(im, font), {size, re::ReNumericLimits<float>::max(), wrap, text, stop});
    result.size.x = float(cvtt(result.size.x + 0.9999899864196777f));
    return result;
}
} // namespace rust_internal_re
