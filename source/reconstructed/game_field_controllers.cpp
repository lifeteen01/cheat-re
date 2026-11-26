#include "game_field_controllers.hpp"

namespace rust_internal_re {
namespace {
template <class T> T read(const Snapshot &im, Address p, Rva site) {
    const auto value = im.read<T>(p);
    if (!value)
        { (void)(GameBaseStatus::missing_bytes, site); __builtin_trap(); }
    return *value;
}
template <class T> void write(Snapshot &im, Address p, T value, Rva site) {
    if (!im.write(p, value))
        { (void)(GameBaseStatus::missing_bytes, site); __builtin_trap(); }
}
template <class T> T require(GameBaseResult<T> result) {
    if (result.status != GameBaseStatus::complete)
        { (void)(result.status, result.site); __builtin_trap(); }
    return result.value;
}
template <class T, class F> GameBaseResult<T> protect(F &&f) {
    {
        return {f()};
    }
}
} // namespace
GameBaseResult<bool> game_field_predicate(const Snapshot &im, Rva role, Address receiver,
                                          ReU32 mask) {
    return protect<bool>([&] {
        if (role != 0x368244 && role != 0x368468 && role != 0x36a1e4 && role != 0x372ba4 &&
            role != 0x372bf4)
            { (void)(GameBaseStatus::missing_boundary, role); __builtin_trap(); }
        if (!sample_pointer_range(receiver))
            return false;
        if (role == 0x36a1e4)
            return (require(read_u32_getter(im, 0x3696e4, receiver)) & 0x10000000u) != 0;
        if (role == 0x368244 || role == 0x368468) {
            receiver = require(read_pointer_getter(im, 0x369400, receiver));
            if (!sample_pointer_range(receiver))
                return false;
            mask = role == 0x368244 ? 0x1000u : 1u;
        } else if (role == 0x372ba4)
            mask = 0x1000;
        return (require(read_u32_getter(im, 0x372bcc, receiver)) & mask) != 0;
    });
}
GameBaseResult<Address> game_field_weapon(Snapshot &im, Rva role, Address receiver,
                                          const GameHelperEnvironment &env,
                                          const GameHelperApi &api) {
    return protect<Address>([&]() -> Address {
        if (role != 0x3714c4 && role != 0x371688 && role != 0x3717c0 && role != 0x371df4)
            { (void)(GameBaseStatus::missing_boundary, role); __builtin_trap(); }
        if (!sample_pointer_range(receiver))
            return 0;
        const auto definition = require(game_helper_object(im, 0x37154c, receiver, env, api));
        if (!sample_pointer_range(definition))
            return 0;
        const auto id = require(read_u32_getter(im, 0x37261c, definition));
        if (role == 0x371688)
            return id == 0x2f6656f8u || id == 0xb9ece859u || id == 0x6e10f78cu ? receiver : 0;
        if (role == 0x3717c0) {
            if (id != 0x05ef97b9u && id != 0xc652dc60u)
                return 0;
            return require(read_u32_getter(im, 0x37236c, definition)) == 1 ? receiver : 0;
        }
        if (role == 0x371df4) {
            if (id != 0x40547fdeu && id != 0x847b9bf0u)
                return 0;
            return require(read_u32_getter(im, 0x37236c, definition)) == 6 ? receiver : 0;
        }
        if (!projectile_id_3719e8(id) && !melee_id_371828(id))
            return 0;
        // [C] Native rereads category after a nonzero first result.
        if (require(read_u32_getter(im, 0x37236c, definition)) == 0)
            return receiver;
        return require(read_u32_getter(im, 0x37236c, definition)) == 5 ? receiver : 0;
    });
}
GameBaseResult<Vec3> game_field_direction_3691c0(Snapshot &im, Address receiver,
                                                 const GameHelperEnvironment &env,
                                                 const GameHelperApi &api) {
    return protect<Vec3>([&] {
        if (!sample_pointer_range(receiver))
            return Vec3{};
        const auto eyes = require(game_helper_object(im, 0x369298, receiver, env, api));
        return sample_pointer_range(eyes)
                   ? require(game_helper_vector(im, 0x373a68, eyes, env, api))
                   : Vec3{};
    });
}
GameBaseResult<bool> game_field_backup_373eb4(Snapshot &globals, Snapshot &game, Address receiver,
                                              ReU8 restore, Address module) {
    return protect<bool>([&] {
        if (!sample_pointer_range(receiver))
            return false;
        auto first = read<ReU32>(globals, module + 0x401c28, 0x373ec4);
        if (!first) {
            first = read<ReU32>(game, receiver + 0x210, 0x373ece);
            write(globals, module + 0x401c28, first, 0x373ed5);
        }
        auto second = read<ReU32>(globals, module + 0x401c2c, 0x373edb);
        if (!second) {
            second = read<ReU32>(game, receiver + 0x200, 0x373ee5);
            write(globals, module + 0x401c2c, second, 0x373eec);
        }
        if (restore) {
            write(game, receiver + 0x210, first, 0x373ef6);
            write(game, receiver + 0x200, second, 0x373efd);
        }
        return true;
    });
}
GameBaseResult<bool> game_field_hook_32308c(Snapshot &im, Address record, Address slot,
                                            Address replacement) {
    return protect<bool>([&] {
        if (read<ReU32>(im, record + 0x30, 0x3164fc))
            return true;
        const auto previous = read<Address>(im, slot, 0x3230ad);
        write(im, record, previous, 0x3230b0);
        write(im, slot, replacement, 0x3230b3);
        write(im, record + 0x30, ReU32(4), 0x3230b6);
        return true;
    });
}
} // namespace rust_internal_re
