#include "draw_shadows_analysis.hpp"
#include <cmath>
#include <iostream>
#include <random>
using namespace rust_internal_re;
namespace {
struct P {
    float x, y;
    std::uint8_t code;
};
std::uint8_t flag(float x, float y, Vec2 a, Vec2 b) {
    unsigned r = 0;
    if (a.y > y)
        r |= 4;
    if (y > b.y)
        r |= 8;
    if (a.x > x)
        r |= 1;
    if (x > b.x)
        r |= 2;
    return std::uint8_t(r);
}
int literal(std::span<const Vec2> input, Vec2 a, Vec2 b, std::span<Vec2> output) {
    // [C]3a3eee/3a3f08 JAE; parity does not exit on unordered.
    if (a.x >= b.x || a.y >= b.y || input.size() < 3)
        return 0;
    std::vector<P> in;
    std::uint8_t common = 255, united = 0;
    for (const auto &p : input) {
        auto c = flag(p.x, p.y, a, b);
        in.push_back({p.x, p.y, c});
        common &= c;
        united |= c;
    }
    if (common)
        return 0;
    if (!united) {
        if (output.size() < input.size())
            return -1;
        auto *from = reinterpret_cast<const unsigned char *>(input.data());
        auto *to = reinterpret_cast<unsigned char *>(output.data());
        for (std::size_t i = 0; i < input.size_bytes(); ++i)
            to[i] = from[i];
        return int(input.size());
    }
    // [I]Two native alternating point/flag buffers become owned records; caller ensures
    // initial points fit one native buffer, so this oracle makes no stack-overrun claim.
    for (unsigned plane = 0; plane != 4; ++plane) {
        unsigned mask = 1u << plane;
        if (!(united & mask))
            continue;
        std::vector<P> next;
        next.reserve(output.size());
        if (in.empty())
            continue;
        P previous = in.back();
        for (const P current : in) {
            if ((previous.code ^ current.code) & mask) {
                float ix = 0, iy = 0;
                switch (plane) {
                case 0:
                    ix = a.x;
                    iy =
                        ((a.x - previous.x) / (current.x - previous.x)) * (current.y - previous.y) +
                        previous.y;
                    break;
                case 1:
                    ix = b.x;
                    iy =
                        ((b.x - previous.x) / (current.x - previous.x)) * (current.y - previous.y) +
                        previous.y;
                    break;
                case 2:
                    iy = a.y;
                    ix =
                        ((a.y - previous.y) / (current.y - previous.y)) * (current.x - previous.x) +
                        previous.x;
                    break;
                case 3:
                    iy = b.y;
                    ix =
                        ((b.y - previous.y) / (current.y - previous.y)) * (current.x - previous.x) +
                        previous.x;
                    break;
                }
                if (next.size() >= output.size())
                    return -1;
                next.push_back({ix, iy, flag(ix, iy, a, b)});
                if (!(current.code & mask)) {
                    if (next.size() >= output.size())
                        return -1;
                    next.push_back(current);
                }
            } else if (!(current.code & mask)) {
                if (next.size() >= output.size())
                    return -1;
                next.push_back(current);
            }
            previous = current;
        }
        in = std::move(next);
    }
    if (in.size() < 3)
        return 0;
    auto previous = in.back();
    int n = 0;
    for (const auto p : in) {
        const float x = p.x - previous.x, y = p.y - previous.y;
        const float squared = x * x + y * y;
        if (!(std::bit_cast<float>(0x3727c5acu) >= squared)) {
            output[std::size_t(n++)] = {p.x, p.y};
            previous = p;
        }
    }
    return n > 2 ? n : 0;
}
bool same(float a, float b) {
    return std::bit_cast<std::uint32_t>(a) == std::bit_cast<std::uint32_t>(b) ||
           (std::isnan(a) && std::isnan(b));
}
} // namespace
int main() {
    try {
        std::mt19937 rng(0x3a3ea4);
        for (int test = 0; test < 20000; ++test) {
            std::vector<Vec2> input(3 + rng() % 8);
            for (auto &p : input) {
                p.x = float(int(rng() % 81) - 40) * .25f;
                p.y = float(int(rng() % 81) - 40) * .25f;
            }
            if (test % 7 == 0)
                input[rng() % input.size()].x = std::numeric_limits<float>::quiet_NaN();
            if (test % 11 == 0)
                input[rng() % input.size()].y = std::numeric_limits<float>::infinity();
            const Vec2 a{float(int(rng() % 13) - 8), float(int(rng() % 13) - 8)},
                b{a.x + float(1 + rng() % 12), a.y + float(1 + rng() % 12)};
            const std::size_t capacity = input.size() + rng() % 5;
            std::vector<Vec2> actual(capacity, {71, 72}), expected = actual;
            const auto x = draw_shadows_clip_3a3ea4(input, a, b, actual),
                       y = literal(input, a, b, expected);
            if (x != y)
                throw std::runtime_error("count mismatch case=" + std::to_string(test));
            if (x > 0) {
                for (int i = 0; i < x; ++i)
                    if (!same(actual[std::size_t(i)].x, expected[std::size_t(i)].x) ||
                        !same(actual[std::size_t(i)].y, expected[std::size_t(i)].y))
                        throw std::runtime_error("point mismatch case=" + std::to_string(test));
            }
            if (x <= 0)
                for (std::size_t i = 0; i < capacity; ++i)
                    if (!same(actual[i].x, expected[i].x) || !same(actual[i].y, expected[i].y))
                        throw std::runtime_error("failure prefix mismatch");
        }
        std::cout << "20000 fresh-assembly clipping oracle cases PASS (including NaN/Inf, "
                     "capacities n..n+4)\n";
        return 0;
    } catch (const std::exception &e) {
        std::cerr << e.what() << '\n';
        return 1;
    }
}
