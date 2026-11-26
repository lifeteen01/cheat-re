#include "font_builder_internal.hpp"
namespace rust_internal_re {
using namespace font_builder_detail;
namespace {
ReI32 multiply(ReI32 a, ReI32 b) {
    return integer(ReU32(a) * ReU32(b));
}
FontBuilderPackNode &node(FontBuilderPack &pack, ReI32 n) {
    if (n < 0 || ReUSize(n) >= pack.nodes.size() || !pack.nodes[ReUSize(n)].initialized)
        { __builtin_trap(); }
    return pack.nodes[ReUSize(n)];
}
ReI32 &link(FontBuilderPack &pack, ReI32 previous) {
    if (previous == -1)
        return pack.active;
    return node(pack, previous).next;
}
re::RePair<ReI32, ReI32> minimum_y(FontBuilderPack &pack, ReI32 at,
                                                ReI32 x, ReI32 width,
                                                const FontBuilderLimits &limits) {
    const auto end = add(x, width);
    ReI32 y = 0, waste = 0, visited = 0;
    ReUSize steps = 0;
    while (node(pack, at).x < end) {
        if (steps++ >= limits.maximum_vertices)
            { __builtin_trap(); }
        const auto current = node(pack, at);
        const auto next = node(pack, current.next);
        if (current.y > y) {
            waste = add(waste, multiply(visited, add(current.y, -y)));
            y = current.y;
            visited = add(visited, add(next.x, current.x < x ? -x : -current.x));
        } else {
            auto under = add(next.x, -current.x);
            if (add(under, visited) > width)
                under = add(width, -visited);
            waste = add(waste, multiply(under, add(y, -current.y)));
            visited = add(visited, under);
        }
        at = current.next;
    }
    return {y, waste};
}
struct Position {
    ReI32 x{}, y{}, previous{-2};
};
Position best_position(FontBuilderPack &pack, ReI32 width, ReI32 height,
                       const FontBuilderLimits &limits) {
    if (!pack.alignment)
        { __builtin_trap(); }
    width = add(width, add(pack.alignment, -1));
    if (width == INT32_MIN && pack.alignment == -1)
        { __builtin_trap(); }
    width = add(width, -(width % pack.alignment));
    if (width > pack.width || height > pack.height)
        return {};
    ReI32 best_y = 0x40000000, best_waste = 0x40000000, best = -2, previous = -1,
                 at = pack.active;
    ReUSize steps = 0;
    while (add(node(pack, at).x, width) <= pack.width) {
        if (steps++ >= limits.maximum_vertices)
            { __builtin_trap(); }
        const auto current = node(pack, at);
        const auto [y, waste] = minimum_y(pack, at, current.x, width, limits);
        if (!pack.heuristic) {
            if (y < best_y) {
                best_y = y;
                best = previous;
            }
        } else if (add(y, height) <= pack.height &&
                   (y < best_y || (y == best_y && waste < best_waste))) {
            best_y = y;
            best_waste = waste;
            best = previous;
        }
        previous = at;
        at = current.next;
    }
    auto best_x = best == -2 ? 0 : node(pack, link(pack, best)).x;
    if (pack.heuristic == 1) {
        auto tail = pack.active;
        at = pack.active;
        previous = -1;
        while (node(pack, tail).x < width)
            tail = node(pack, tail).next;
        while (tail != -1) {
            const auto x = add(node(pack, tail).x, -width);
            while (node(pack, node(pack, at).next).x <= x) {
                previous = at;
                at = node(pack, at).next;
            }
            const auto [y, waste] = minimum_y(pack, at, x, width, limits);
            if (add(y, height) <= pack.height && y <= best_y &&
                (y < best_y || waste < best_waste || (waste == best_waste && x < best_x))) {
                best_x = x;
                best_y = y;
                best_waste = waste;
                best = previous;
            }
            tail = node(pack, tail).next;
        }
    }
    return {best_x, best_y, best};
}
Position place(FontBuilderPack &pack, ReI32 width, ReI32 height,
               const FontBuilderLimits &limits) {
    auto position = best_position(pack, width, height, limits);
    if (position.previous == -2 || add(position.y, height) > pack.height || pack.free == -1) {
        position.previous = -2;
        return position;
    }
    const auto allocated = pack.free;
    auto &fresh = pack.nodes.at(ReUSize(allocated));
    pack.free = fresh.next;
    fresh.x = position.x;
    fresh.y = add(position.y, height);
    fresh.initialized = true;
    auto current = link(pack, position.previous);
    if (node(pack, current).x < position.x) {
        const auto next = node(pack, current).next;
        node(pack, current).next = allocated;
        current = next;
    } else
        link(pack, position.previous) = allocated;
    const auto end = add(position.x, width);
    ReUSize steps = 0;
    while (node(pack, current).next != -1 && node(pack, node(pack, current).next).x <= end) {
        if (steps++ >= limits.maximum_vertices)
            { __builtin_trap(); }
        const auto next = node(pack, current).next;
        node(pack, current).next = pack.free;
        pack.free = current;
        current = next;
    }
    fresh.next = current;
    if (node(pack, current).x < end)
        node(pack, current).x = end;
    return position;
}
} // namespace
void font_builder_pack_init_3adda4(FontBuilderPack &pack, ReI32 width, ReI32 height,
                                   ReI32 count, const FontBuilderLimits &limits) {
    if (count <= 0 || ReUSize(count) > limits.maximum_vertices)
        __builtin_trap();
    pack.nodes.resize(ReUSize(count) + 2);
    for (ReI32 i = 0; i < count; ++i)
        pack.nodes[ReUSize(i)] = {0, 0, i + 1 == count ? -1 : i + 1, false};
    pack.width = width;
    pack.height = height;
    pack.alignment = add(width, add(count, -1)) / count;
    pack.heuristic = 0;
    pack.free = 0;
    pack.active = count;
    pack.nodes[ReUSize(count)] = {0, 0, count + 1, true};
    pack.nodes[ReUSize(count) + 1] = {width, 0x40000000, -1, true};
}
bool font_builder_pack_rects_3ade50(FontBuilderPack &pack, re::ReSpan<FontBuilderRect> rectangles,
                                    const FontBuilderLimits &limits) {
    if (rectangles.size() > limits.maximum_glyphs)
        { __builtin_trap(); }
    for (ReUSize i = 0; i < rectangles.size(); ++i)
        rectangles[i].packed = ReI32(i);
    // [C]39344c→3c7ee0→3c821c merges left on comparator equality: stable ties.
    re::re_sort(rectangles.begin(), rectangles.end(), [](const auto &a, const auto &b) {
        return a.height > b.height || (a.height == b.height && a.width > b.width);
    });
    for (auto &rect : rectangles) {
        if (!rect.width || !rect.height) {
            rect.x = rect.y = 0;
            continue;
        }
        if (rect.width < 0 || rect.height < 0)
            __builtin_trap();
        const auto found = place(pack, rect.width, rect.height, limits);
        if (found.previous == -2)
            rect.x = rect.y = INT32_MAX;
        else {
            rect.x = found.x;
            rect.y = found.y;
        }
    }
    re::re_sort(rectangles.begin(), rectangles.end(),
                     [](const auto &a, const auto &b) { return a.packed < b.packed; });
    bool all = true;
    for (auto &rect : rectangles) {
        rect.packed = !(rect.x == INT32_MAX && rect.y == INT32_MAX);
        all = all && rect.packed;
    }
    return all;
}
} // namespace rust_internal_re
