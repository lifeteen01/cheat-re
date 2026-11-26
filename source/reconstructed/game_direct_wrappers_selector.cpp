#include "game_direct_wrappers_internal.hpp"
namespace rust_internal_re {
namespace {
bool substring(const Snapshot &game, Address name, re::ReStringView needle, ReUSize maximum) {
    using namespace direct_detail;
    needle = needle.substr(0, needle.find('\0'));
    if (needle.empty())
        return true;
    ReUSize at = 0;
    for (;;) {
        bool equal = true;
        for (ReUSize i = 0; i < needle.size(); ++i) {
            if (at >= maximum || i >= maximum - at)
                { (void)(GameBaseStatus::analysis_limit, 0x3ca91f); __builtin_trap(); }
            if (read<ReU8>(game, name + at + i, 0x3ca91f) != ReU8(needle[i])) {
                equal = false;
                break;
            }
        }
        if (equal)
            return true;
        // [C]3ca960 compares the initial prefix before searching from name+1.
        // A match does not require reading a terminating byte beyond its prefix.
        ++at;
        for (;;) {
            if (at >= maximum)
                { (void)(GameBaseStatus::analysis_limit, 0x3ca878); __builtin_trap(); }
            const auto c = read<ReU8>(game, name + at, 0x3ca878);
            if (!c)
                return false;
            if (c == ReU8(needle[0]))
                break;
            ++at;
        }
    }
}
} // namespace

GameBaseResult<Address> game_direct_find_322f30(Snapshot &im, Snapshot &game, Address receiver,
                                                re::ReStringView needle, Address cache,
                                                ReUSize maximum,
                                                re::ReOptional<Address> needle_address) {
    using namespace direct_detail;
    {
        if (!receiver)
            return {Address(0)};
        needle = needle.substr(0, needle.find('\0'));
        if (needle_address) {
            if (!*needle_address || !read<ReU8>(game, *needle_address, 0x322f57))
                return {Address(0)};
        } else if (needle.empty())
            return {Address(0)};
        auto list = read<Address>(game, receiver + 0x10, 0x322f60);
        if (!list)
            return {Address(0)};
        list = read<Address>(game, list + 0x20, 0x322f6d);
        if (!list)
            return {Address(0)};
        const auto data = read<Address>(game, list + 0x20, 0x322f76);
        if (!data)
            return {Address(0)};
        const auto count = read<ReU32>(game, list + 0x30, 0x322f7f);
        if (count - 1u > 255u)
            return {Address(0)};
        for (ReU32 i = 0; i < count; ++i) {
            auto object = read<Address>(game, data + Address(i) * 16 + 8, 0x322f99);
            if (!object)
                continue;
            object = read<Address>(game, object + 0x18, 0x322fa3);
            if (!object || (object & 1))
                continue;
            object = read<Address>(game, object, 0x322fb1);
            if (!object)
                continue;
            const auto klass = read<Address>(game, object, 0x322fb9);
            if (!klass)
                continue;
            if (read<Address>(im, cache, 0x322fc1)) {
                if (read<Address>(im, cache, 0x322fc8) == klass)
                    return {object};
                continue;
            }
            const auto name = read<Address>(game, klass + 0x10, 0x322fd3);
            if (!name)
                continue;
            // [I] Owned C-string adaptation of3ca960/strstr, no pointer execution.
            // [C] strlen(needle) is deferred until3ca960 is actually reached;
            // cached class hits only read the root's first needle byte.
            const auto actual_needle = needle_address
                                           ? text(game, *needle_address, maximum, 0x3ca904)
                                           : re::ReString(needle);
            if (substring(game, name, actual_needle, maximum)) {
                write(im, cache, klass, 0x323000);
                return {object};
            }
        }
        return {Address(0)};
    }
}
} // namespace rust_internal_re
