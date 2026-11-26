#include "game_input_physics_fixture.hpp"

namespace rust_internal_re::game_input_fixture {
Fixture::Fixture() {
    literal_sources(image);
    env.literal_storage = 0x4e0000;
    env.literal_capacity = 1024;
    set(0x3d5e60, Address(0x11112222));
    set(0x3d6f00, Address(0x180000000));
    set(0x405b28, io_context);
    for (Rva f : {0x3e4260, 0x3e4620, 0x3e4710, 0x3e4350, 0x3e4530, 0x3e4440, 0x3e3ea0, 0x3e4cf0,
                  0x3f2840, 0x3f2930})
        set(f, ReU32(0));
    for (Address i = 0; i < 5; ++i)
        set(io_context + 8 + 0xe08 + i, ReU8(0));
    set(array + 0x18, ReI32(600));
    for (Address i = 0; i < 600; ++i)
        set(array + 0x20 + i * 8, button);
    const re::ReArray<re::RePair<Address, re::ReStringView>, 6> method_names{
        {{cursor_class, "get_visible"},
         {keyboard_class, "get_current"},
         {keyboard_class, "get_keys"},
         {button_class, "get_isPressed"},
         {button_class, "get_wasReleasedThisFrame"},
         {button_class, "get_wasPressedThisFrame"}}};
    for (ReUSize i = 0; i < method_names.size(); ++i) {
        const Address method = 0x150000 + i * 0x100, name = 0x160000 + i * 0x100;
        methods[method_names[i].first].push_back(method);
        set(method, Address(0x70000000 + i * 0x100));
        set(method + 0x18, name);
        text(name, method_names[i].second);
    }
    effects.metadata.domain_get_33479c = [] { return Address(0x110000); };
    effects.metadata.assemblies_33480c = [](Address) { return re::ReVector<Address>{0x120000}; };
    effects.metadata.assembly_image_3344b0 = [](Address) { return Address(0x130000); };
    effects.metadata.class_from_name_334528 = [&](Address, Address ns, Address name) {
        const auto nspace = string(ns), klass = string(name);
        classes.emplace_back(nspace, klass);
        if (on_class)
            on_class();
        if (nspace == "UnityEngine" && klass == "Cursor")
            return cursor_class;
        if (nspace == "UnityEngine.InputSystem" && klass == "Keyboard")
            return keyboard_class;
        if (nspace == "UnityEngine.InputSystem.Controls" && klass == "ButtonControl")
            return button_class;
        return Address(0);
    };
    effects.metadata.next_method_334660 = [&](Address klass, Address &cursor) {
        const auto &list = methods[klass];
        return cursor < list.size() ? list[ReUSize(cursor++)] : Address(0);
    };
    effects.observe_context = [&](const GameInputCall &c) {
        observations.push_back(c.wrapper);
        if (on_observe)
            on_observe(c);
    };
    effects.object = [&](const GameInputCall &c, Address receiver) {
        calls.push_back(c.wrapper);
        if (c.wrapper == 0x2e5eec) {
            require(c.argument_count == 0 && c.packer == 0x2dda18,
                    "keyboard zero-argument packaging");
            return keyboard_result;
        }
        require(c.wrapper == 0x2e5ff8 && receiver == keyboard_result && c.argument_count == 1,
                "keyboard get_keys typed receiver");
        return array_result;
    };
    effects.predicate = [&](const GameInputCall &c, Address receiver) -> ReU64 {
        calls.push_back(c.wrapper);
        if (on_predicate)
            on_predicate(c.wrapper);
        if (c.wrapper == 0x2e6744) {
            require(receiver == 0 && c.argument_count == 0 && c.packer == 0x2e49ec,
                    "cursor no-argument packaging");
            return cursor_word;
        }
        require(receiver == button && c.argument_count == 1 && c.unmaterialized_type_bytes == 0xe,
                "button typed receiver and unmaterialized type bytes");
        if (c.wrapper == 0x2e68b8)
            return held_word;
        if (c.wrapper == 0x2e90d8)
            return released_word;
        require(c.wrapper == 0x2e8e88, "button predicate wrapper");
        return pressed_word;
    };
}
void Fixture::loader() {
    constexpr Address teb = 0x1b0000, peb = 0x1b0100, ldr = 0x1b0200, entry = 0x1b0300,
                      name = 0x1c0000, module = 0x1d0000;
    env.copied_gs30 = teb;
    set(teb + 0x60, peb);
    set(peb + 0x18, ldr);
    set(ldr + 0x20, entry);
    set(entry, ldr + 0x20);
    set(entry + 0x20, module);
    set(entry + 0x50, name);
    wide(name, "GAMEASSEMBLY.DLL.extra");
    set(module, ReU32(0x12345678)); // [I]Deliberately no MZ/PE signature.
    set(module + 0x3c, ReI32(-0x40));
    set(module + 0x48, ReU32(0x200));
    set(module + 0x200 + 0x18, ReU32(1));
    set(module + 0x200 + 0x24, ReU32(0x300));
    set(module + 0x200 + 0x20, ReU32(0x320));
    set(module + 0x200 + 0x1c, ReU32(0x340));
    set(module + 0x300, ReU16(0));
    set(module + 0x320, ReU32(0x400));
    set(module + 0x340, ReU32(0x210)); // [I]Forwarder-looking numeric result retained.
    text(module + 0x400, "il2cpp_resolve_icall");
    effects.resolve_icall = [&](const GameInputCall &c, re::ReStringView requested) {
        calls.push_back(c.wrapper);
        require(c.target == module + 0x210 && c.argument_count == 1 &&
                    c.unmaterialized_argument_bytes[0] == 0xff &&
                    requested == "UnityEngine.Physics::IgnoreLayerCollision()",
                "copied module/export and owned icall name reach typed effect");
        return Address(0x71caffee);
    };
    effects.ignore_layer = [&](const GameInputCall &c, ReI32 first, ReI32 second,
                               ReU8 value) {
        calls.push_back(c.wrapper);
        require(c.target == 0x71caffee && c.argument_count == 3 && first == 12 && second == 11 &&
                    value == 0x80 && c.unmaterialized_argument_bytes[0] == 0xf0 &&
                    c.unmaterialized_argument_bytes[1] == 0xf0 &&
                    c.unmaterialized_argument_bytes[2] == 0xfe && c.unmaterialized_type_bytes == 8,
                "layer typed values and literal int/int/byte packaging");
    };
}
} // namespace rust_internal_re::game_input_fixture
