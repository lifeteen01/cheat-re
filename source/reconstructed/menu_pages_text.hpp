#pragma once
#include "internal_analysis.hpp"
namespace rust_internal_re {
struct MenuPageTextFailure {};
// [I] Owned byte storage models literal char buffers and overlapping stack
// slots. Offsets are data keys, not executable addresses or host stack pointers.
struct MenuPageTextPool {
    re::ReString *wide{};
    re::ReMap<ReISize, ReU8> bytes;
    explicit MenuPageTextPool(re::ReString &shared) : wide(&shared) {}
    void put(ReISize at, re::ReStringView value) {
        for (ReUSize i = 0; i < value.size(); ++i)
            bytes[at + static_cast<ReISize>(i)] = static_cast<ReU8>(value[i]);
    }
    re::ReString read(ReISize at) const {
        re::ReString result;
        for (;; ++at) {
            auto p = bytes.find(at);
            if (!p)
                __builtin_trap();
            if (!(**p))
                return result;
            result += static_cast<char>(**p);
        }
    }
};
struct MenuPageTextRef {
    MenuPageTextPool *pool{};
    ReISize offset{};
    bool wide{};
    operator re::ReString() const {
        if (!pool)
            __builtin_trap();
        return wide ? *pool->wide : pool->read(offset);
    }
};
} // namespace rust_internal_re
