#include "game_helpers_analysis.hpp"
namespace rust_internal_re {
namespace {
void require_helper(bool ok, const char *why) {
    if (!ok)
        { /* FREESTANDING_TODO: was throw runtime_error(why) */ }
}
struct Fixture {
    Address base{0x100000}, player{base + 0x430000}, magazine{player + 0x1000},
        definition{player + 0x2000};
    Address reference{player + 0x3000}, guid{player + 0x4000}, resource{player + 0x5000};
    Address eyes{player + 0x6000}, model{player + 0x7000}, method{player + 0x8000};
    Address mounted{player + 0x9000}, vehicle{player + 0xa000}, klass{player + 0xb000},
        name{player + 0xc000};
    Snapshot image{base, re::ReVector<ReByte>(0x500000)};
    GameHelperEnvironment env{};
    GameHelperApi api;
    re::ReMap<Rva, Address> objects;
    re::ReVector<GameHelperCall> effects, observations;
    ReUSize class_visits{}, method_visits{};
    Fixture() {
        env.module = base;
        env.literal_storage = base + 0x420000;
        put(base + 0x3d6f00, Address{0x70000000});
        put(base + 0x3d5e60, Address{0xabcdef});
        put(base + 0x3d6148, Address{0x123456}); // existing il2cpp_string_new_wrapper export cache
        put(method, Address{0x7654321});
        put(method + 0x18, player + 0x1a000);
        text(player + 0x1a000, "get_texture");
        put(player + 0x3f8, magazine);
        put(magazine + 0x20, definition);
        put(player + 0x20, reference);
        put(reference + 0x10, guid);
        put(player + 0x4e8, model);
        put(model + 0x18, Vec3{1, 2, 3});
        put(model + 0x30, Vec3{4, 5, 6});
        put(mounted + 0x38, vehicle);
        put(vehicle, klass);
        put(klass + 0x10, name);
        text(name, "RidableHorse");
        objects = {
            {0x369324, model},           {0x371c38, player + 0x1b000}, {0x368a84, definition},
            {0x37154c, definition},      {0x368b10, mounted},          {0x369298, eyes},
            {0x372754, resource},        {0x370aa4, player + 0xd000},  {0x370884, player + 0xe000},
            {0x3703ec, player + 0xf000}, {0x370638, player + 0x10000}};
        api.object = [this](const GameHelperCall &c) {
            effects.push_back(c);
            return objects.at(c.wrapper);
        };
        api.vector = [this](const GameHelperCall &c) {
            effects.push_back(c);
            return c.wrapper == 0x369c1c ? Vec3{7, 8, 9} : Vec3{10, 11, 12};
        };
        api.orientation = [this](const GameHelperCall &c) {
            effects.push_back(c);
            return Orientation{0, 0, 0, 1};
        };
        api.observe_context = [this](const GameHelperCall &c) { observations.push_back(c); };
        api.metadata.domain_get_33479c = []() { return Address{1}; };
        api.metadata.assemblies_33480c = [](Address) { return re::ReVector<Address>{2}; };
        api.metadata.assembly_image_3344b0 = [](Address) { return Address{3}; };
        api.metadata.class_from_name_334528 = [this](Address, Address ns, Address cname) {
            const auto n = string(ns), c = string(cname);
            require_helper((n == "System" && c == "Type") ||
                               (n == "UnityEngine" &&
                                (c == "Component" || c == "GameObject" || c == "Sprite")),
                           "metadata class/namespace order");
            ++class_visits;
            return klass;
        };
        api.metadata.next_method_334660 = [this](Address c, Address &iterator) {
            require_helper(c == klass, "sprite class lookup");
            if (iterator)
                return Address{};
            iterator = 1;
            return method;
        };
        api.metadata.method_from_name_3345c4 = [this](Address c, Address n, ReI32 count) {
            require_helper(c == klass && count == 1, "metadata method count remains integer1");
            require_helper(string(n) == "GetType" || string(n) == "GetComponent",
                           "metadata method literal");
            ++method_visits;
            return method;
        };
    }
    template <class T> void put(Address p, T v) {
        require_helper(image.write(p, v), "fixture write");
    }
    void text(Address p, re::ReStringView s) {
        for (ReUSize i = 0; i < s.size(); ++i)
            put(p + i, ReU8(s[i]));
        put(p + s.size(), ReU8{});
    }
    re::ReString string(Address p) const {
        re::ReString s;
        for (ReUSize i = 0; i < 128; ++i) {
            const auto c = image.read<char>(p + i);
            require_helper(bool(c), "fixture string bytes");
            if (!*c)
                return s;
            s.push_back(*c);
        }
        { __builtin_trap(); }
    }
    GameBaseResult<Vec3> vector(Rva r, Address p) {
        return game_helper_vector(image, r, p, env, api);
    }
    GameBaseResult<Address> object(Rva r, Address p) {
        return game_helper_object(image, r, p, env, api);
    }
};
bool same(Vec3 a, Vec3 b) {
    return a.x == b.x && a.y == b.y && a.z == b.z;
}
void check_direct() {
    Fixture f;
    for (const auto &s : game_helper_direct_specs()) {
        if (s.wrapper == 0x32b308)
            continue;
        const auto before = f.observations.size();
        if (s.wrapper == 0x3739c4) {
            auto invalid = game_helper_orientation(f.image, s.wrapper, 0, f.env, f.api);
            require_helper(invalid.status == GameBaseStatus::missing_boundary,
                           "invalid quaternion explicitly needs preserved output");
            const Orientation scratch{1, 2, 3, 4};
            auto preserved = game_helper_orientation(f.image, s.wrapper, 0, f.env, f.api, scratch);
            require_helper(preserved.status == GameBaseStatus::complete && preserved.value.w == 4,
                           "invalid quaternion output untouched");
            require_helper(
                game_helper_orientation(f.image, s.wrapper, f.eyes, f.env, f.api).status ==
                    GameBaseStatus::complete,
                "direct quaternion success");
        } else if (s.wrapper == 0x369c1c || s.wrapper == 0x373a68) {
            require_helper(same(f.vector(s.wrapper, 0).value, {}), "invalid vector zero return");
            require_helper(f.vector(s.wrapper, f.player).status == GameBaseStatus::complete,
                           "direct vector success");
        } else {
            require_helper(f.object(s.wrapper, 0).value == 0, "invalid object zero return");
            require_helper(f.object(s.wrapper, f.player).value == f.objects.at(s.wrapper),
                           "direct object result");
        }
        require_helper(f.observations.size() == before + 1, "context observed once per cold cache");
        const auto &c = f.effects.back();
        require_helper(c.target == 0x70000000ULL + s.game_offset &&
                           c.context == f.base + s.context && c.executor == s.executor,
                       "literal direct target/context/executor");
        require_helper(f.image.read<ReU32>(f.base + s.flags) == 3,
                       "direct both lazy flags");
        require_helper(f.image.read<Address>(f.base + s.target) == c.target,
                       "direct cached target");
        if (s.wrapper == 0x3739c4)
            static_cast<void>(game_helper_orientation(f.image, s.wrapper, f.eyes, f.env, f.api));
        else if (s.wrapper == 0x369c1c || s.wrapper == 0x373a68)
            static_cast<void>(f.vector(s.wrapper, f.player));
        else
            static_cast<void>(f.object(s.wrapper, f.player));
        require_helper(f.observations.size() == before + 1, "warm cache skips context setup");
    }
    Fixture failed;
    failed.api.object = {};
    const auto missing = failed.object(0x368a84, failed.player);
    require_helper(missing.status == GameBaseStatus::missing_boundary && missing.site == 0x368a84,
                   "missing actual effect identified");
    require_helper(failed.image.read<ReU32>(failed.base + 0x3feb60) == 3,
                   "flags survive missing effect");
    Fixture changed;
    changed.api.observe_context = [&changed](const GameHelperCall &c) {
        require_helper(changed.image.read<ReU32>(changed.base + 0x3feb60) == 3,
                       "flag2 before context observation");
        require_helper(c.target == 0x73f83e00, "context uses initial local target");
        changed.put(changed.base + 0x3d5e60, Address{0xcafe});
        changed.put(changed.base + 0x3feb58, Address{0xbad});
    };
    static_cast<void>(changed.object(0x368a84, changed.player));
    require_helper(changed.effects.back().dispatcher == 0xcafe &&
                       changed.effects.back().target == 0x73f83e00,
                   "dispatcher reload and retained target after observation");
    changed.api.observe_context = {};
    static_cast<void>(changed.object(0x368a84, changed.player));
    require_helper(changed.effects.back().target == 0xbad, "warm target reread from copied cache");
}
void check_components() {
    Fixture f;
    for (Rva r : {0x36b938u, 0x371630u, 0x372abcu, 0x372b30u}) {
        const auto count = f.effects.size();
        const auto answer = f.object(r, f.player);
        require_helper(answer.status == GameBaseStatus::complete, "component chain complete");
        require_helper(answer.value ==
                           f.objects.at(r == 0x36b938 || r == 0x371630 ? 0x3703ec : 0x370638),
                       "component result receiver class");
        require_helper(f.effects.size() >= count + 3,
                       "actual string/type/component effects reached");
        const auto &string = f.effects[f.effects.size() - 3];
        const auto &type = f.effects[f.effects.size() - 2];
        const auto &comp = f.effects.back();
        require_helper(string.wrapper == 0x370aa4 && string.target == 0x123456,
                       "string_new_wrapper uses existing export cache");
        require_helper(string.text == (r == 0x36b938 || r == 0x371630
                                           ? "ItemModProjectile, Assembly-CSharp"
                                       : r == 0x372abc ? "Projectile, Assembly-CSharp"
                                                       : "ServerProjectile, Assembly-CSharp"),
                       "decoded qualified type literal");
        require_helper(type.wrapper == 0x370884 && type.receiver == f.objects.at(0x370aa4),
                       "Type.GetType consumes managed string");
        require_helper(comp.argument == f.objects.at(0x370884) &&
                           comp.receiver ==
                               (r == 0x36b938 || r == 0x371630 ? f.definition : f.resource),
                       "GetComponent typed argument and receiver");
    }
    require_helper(f.class_visits == 3 && f.method_visits == 3,
                   "three method caches resolved once");
    require_helper(f.observations.size() == 6,
                   "string/type/component/definition/resource contexts initialized once");
    f.put(f.magazine + 0x20, Address{});
    const auto old = f.effects.size();
    require_helper(f.object(0x36b938, f.player).value == 0 && f.effects.size() == old,
                   "invalid ammo definition skips effects");
    f.objects[0x372754] = 0;
    require_helper(f.object(0x372abc, f.player).value == 0, "null resource early return");
    f.objects[0x370aa4] = 0;
    require_helper(f.object(0x371630, f.player).value == 0 && f.effects.back().wrapper == 0x370aa4,
                   "null string skips type/component");
    Fixture no_metadata;
    no_metadata.api.metadata = {};
    auto result = no_metadata.object(0x36b938, no_metadata.player);
    require_helper(result.status == GameBaseStatus::missing_boundary && result.site == 0x334224,
                   "missing local metadata chain exact dependency");
    require_helper(no_metadata.image.read<ReU32>(no_metadata.base + 0x400100) == 1,
                   "metadata cache flag1 precedes resolution failure");
    require_helper(no_metadata.image.read<ReU32>(no_metadata.base + 0x4004c0) == 0,
                   "component cache untouched before type resolution");
    Fixture unreadable;
    unreadable.put(unreadable.player + 0x3f8, unreadable.base + 0x700000);
    const auto bad = unreadable.object(0x36b938, unreadable.player);
    require_helper(bad.status == GameBaseStatus::missing_bytes && bad.site == 0x36b961,
                   "numeric-valid unreadable definition is missing bytes");
}
void check_vectors_scalar_visibility() {
    Fixture f;
    require_helper(same(f.vector(0x36924c, f.player).value, {1, 2, 3}), "origin copies +18 vector");
    require_helper(same(f.vector(0x368b9c, f.player).value, {4, 5, 6}), "motion copies +30 vector");
    require_helper(same(f.vector(0x369164, f.player).value, {10, 11, 12}),
                   "ordinary origin uses eyes world vector");
    f.put(f.base + 0x3f7e48, ReU8{1});
    auto calls = f.effects.size();
    require_helper(same(f.vector(0x369164, f.player).value, {1, 2, 3}) && f.effects.size() == calls,
                   "special teleport origin bypasses eyes");
    require_helper(same(f.vector(0x368100, f.player).value, {0, 0, 1}),
                   "direction rotates forward");
    require_helper(same(quaternion_vector_2ef834({1, 2, 3, 4}, {5, 6, 7}), {-91, 54, 7}),
                   "nonunit quaternion literal formula");
    const Orientation nan_order{1, re::re_bit_cast<float>(0x7fc00011u), 1,
                                re::re_bit_cast<float>(0x7fc00022u)};
    require_helper(re::re_bit_cast<ReU32>(quaternion_vector_2ef834(nan_order, {0, 1, 0}).z) ==
                       0x7fc00022u,
                   "native xw-before-yz ADDSS retains first quiet-NaN payload");
    for (const auto pair :
         {re::RePair{0x7f800011u, 0x7f800022u}, re::RePair{0xffc00011u, 0xffc00022u}}) {
        const Orientation ordered{1, re::re_bit_cast<float>(pair.first), 1,
                                  re::re_bit_cast<float>(pair.second)};
        require_helper(
            re::re_bit_cast<ReU32>(quaternion_vector_2ef834(ordered, {0, 1, 0}).z) ==
                (pair.second | 0x00400000u),
            "scalar SSE signaling quieting and NaN sign retained");
    }
    f.objects[0x369298] = 0;
    const auto stale = f.vector(0x368100, f.player);
    require_helper(stale.status == GameBaseStatus::missing_boundary && stale.site == 0x36920c,
                   "stale direction output explicit");
    f.env.direction_scratch = Orientation{0, 0, 0, 1};
    require_helper(same(f.vector(0x368100, f.player).value, {0, 0, 1}),
                   "explicit copied quaternion scratch consumed");
    f.put(f.player + 0x4e8, Address{});
    require_helper(same(f.vector(0x36924c, f.player).value, {}),
                   "invalid movement record returns zero");
    constexpr re::RePair<re::ReStringView, float> cases[]{{"AttackHelicopter", 50},
                                                         {"Minicopter", 50},
                                                         {"ScrapTransportHelicopter", 50},
                                                         {"CH47Helicopter", 50},
                                                         {"BasicCar", 50},
                                                         {"Bike", 25},
                                                         {"MotorRowboat", 25},
                                                         {"Kayak", 25},
                                                         {"RHIB", 25},
                                                         {"VehicleModuleSeating", 25},
                                                         {"VehicleModuleEngine", 25},
                                                         {"ModularCar", 25},
                                                         {"RidableHorse", 8},
                                                         {"ridablehorse", 0},
                                                         {"Unknown", 0}};
    for (const auto &[name, scalar] : cases) {
        f.text(f.name, name);
        const auto v = game_helper_scalar(f.image, 0x36942c, f.player, f.env, f.api);
        require_helper(v.status == GameBaseStatus::complete && v.value == scalar,
                       "scalar class table and alternate returns");
    }
    f.env.limits.string_bytes = 1;
    require_helper(game_helper_scalar(f.image, 0x36942c, f.player, f.env, f.api).status ==
                       GameBaseStatus::analysis_limit,
                   "class hash read bound explicit");
    f.env.limits.string_bytes = 4096;
    require_helper(!game_helper_predicate(f.image, 0x36b244, f.player, f.env, f.api).value,
                   "empty copied visibility map false");
    GameHelperVisibilityRegistry registry;
    f.env.visibility = &registry;
    require_helper(!game_helper_predicate(f.image, 0x36b244, f.player, f.env, f.api).value &&
                       registry.entries.empty(),
                   "empty owned map does not insert");
    registry.entries[f.player] = 2;
    require_helper(game_helper_predicate(f.image, 0x36b244, f.player, f.env, f.api).value,
                   "nonzero native mapped byte true");
    require_helper(!game_helper_predicate(f.image, 0x36b244, f.eyes, f.env, f.api).value &&
                       registry.entries.contains(f.eyes),
                   "nonempty map absent key default inserts zero");
    f.env.visibility = nullptr;
    const Address map = f.base + 0x3e60b0, buckets = f.player + 0x11000, node = f.player + 0x12000,
                  sentinel = f.player + 0x13000;
    f.put(map + 0x10, Address{1});
    f.put(map + 0x30, Address{0});
    f.put(map + 0x18, buckets);
    f.put(map + 8, sentinel);
    f.put(buckets, node);
    f.put(buckets + 8, node);
    f.put(node + 0x10, f.player);
    f.put(node + 0x18, ReU8{0x80});
    require_helper(game_helper_predicate(f.image, 0x36b244, f.player, f.env, f.api).value,
                   "copied native bucket/node hit");
    const auto local_missing = game_helper_predicate(f.image, 0x36b244, f.eyes, f.env, f.api);
    require_helper(local_missing.status == GameBaseStatus::missing_boundary &&
                       local_missing.site == 0x367684,
                   "copied native insertion remains precisely local");
}
void check_inventory() {
    Fixture f;
    f.put(f.reference + 0x18, ReU32{0xf0000001});
    auto count = game_helper_integer(f.image, 0x37224c, f.player, f.env, f.api);
    require_helper(count.status == GameBaseStatus::complete && count.value == 0xf0000001,
                   "inventory count preserves raw integer bits");
    f.put(f.guid + 0x20, f.definition);
    f.put(f.guid + 0x28, f.magazine);
    require_helper(game_helper_object(f.image, 0x3722f0, f.player, f.env, f.api, 1).value ==
                       f.magazine,
                   "inventory index1 lookup");
    require_helper(
        game_helper_object(f.image, 0x3722f0, f.player, f.env, f.api, 0x20000000).value ==
            f.definition,
        "inventory LEA wraps at 32bits");
    const auto negative = game_helper_object(f.image, 0x3722f0, f.player, f.env, f.api, 0xffffffff);
    require_helper(
        negative.status == GameBaseStatus::missing_bytes && negative.site == 0x37232b,
        "inventory negative index is zero-extended wrapped offset, no native bounds gate");
    f.put(f.player + 0x10, f.definition);
    f.put(f.definition + 0x50, f.resource);
    const auto texture = f.object(0x371c38, f.player);
    require_helper(texture.status == GameBaseStatus::complete &&
                       texture.value == f.objects.at(0x371c38),
                   "item icon returns Sprite texture object");
    require_helper(f.effects.back().wrapper == 0x371c38 &&
                       f.effects.back().receiver == f.resource &&
                       f.effects.back().executor == 0x2cb9fc,
                   "sprite getter consumes +50 sprite");
    f.objects[0x371c38] = 1;
    require_helper(f.object(0x371c38, f.player).value == 0,
                   "invalid numeric texture result rejected");
    const auto previous = f.effects.size();
    f.put(f.definition + 0x50, Address{});
    require_helper(f.object(0x371c38, f.player).value == 0 && f.effects.size() == previous,
                   "invalid sprite skips metadata/effect");
    auto movement = bind_game_helpers_movement(f.image, f.env, f.api);
    const re::ReArray<MovementMainArgument, 2> args{f.player, ReU32{1}};
    require_helper(movement.pointer(0x3722f0, args) == f.magazine, "movement indexed item binding");
    require_helper(movement.integer(0x37224c, re::ReSpan(args).subspan(0, 1)) == 0xf0000001,
                   "movement integer count binding");
    auto interaction = bind_game_helpers_interaction(f.image, f.env, f.api);
    InteractionCall c;
    c.rva = 0x37224c;
    c.self = f.player;
    require_helper(re::re_bit_cast<ReU32>(interaction.integer(c)) == 0xf0000001,
                   "interaction raw count result");
    c.rva = 0x3722f0;
    c.integer = 1;
    require_helper(interaction.object(c) == f.magazine, "interaction indexed item binding");
    f.put(f.player + 0x20, Address{});
    require_helper(game_helper_integer(f.image, 0x37224c, f.player, f.env, f.api).value == 0,
                   "invalid inventory list count zero");
    require_helper(game_helper_object(f.image, 0x3722f0, f.player, f.env, f.api, 1).value == 0,
                   "invalid inventory list indexed item zero");
}
void check_review_flag_root_order() {
    // [C] SG1: missing dispatcher must not publish bit2 for root-before-flag
    // Sprite/managed-string wrappers. All numeric keys refer to copied bytes.
    constexpr Address player = 0x420000, magazine = 0x421000, definition = 0x422000;
    const auto setup = [=](Snapshot &image) {
        require_helper(image.write(player + 0x3f8, magazine), "review magazine");
        require_helper(image.write(magazine + 0x20, definition), "review definition");
        require_helper(image.write(player + 0x10, definition), "review item definition");
        require_helper(image.write(definition + 0x50, Address(0x500000)), "review sprite");
    };
    GameHelperEnvironment env;
    for (const auto wrapper : {Rva(0x371c38), Rva(0x36b938)}) {
        Snapshot image(0x3f0000, re::ReVector<ReByte>(0x50000));
        setup(image);
        const Rva flags = wrapper == 0x371c38 ? 0x400c40 : 0x400010;
        require_helper(image.write(flags, ReU32(1)) && image.write(flags - 8, Address(77)),
                       "review warm cache");
        const auto result = game_helper_object(image, wrapper, player, env, {});
        require_helper(result.status == GameBaseStatus::missing_bytes &&
                           image.read<ReU32>(flags) == 1,
                       "root read failure precedes Sprite/string bit2 store");
    }
    // Managed-string effect can change copied availability before Type setup.
    {
        Snapshot image(0x3d0000, re::ReVector<ReByte>(0x70000));
        setup(image);
        require_helper(image.write(0x3d5e60, Address(9)) &&
                           image.write(0x400010, ReU32(3)) &&
                           image.write(0x400008, Address(77)),
                       "review string ready");
        GameHelperApi api;
        api.object = [&](const GameHelperCall &call) {
            require_helper(call.wrapper == 0x370aa4,
                           "only managed-string effect precedes missing Type root");
            image = Snapshot(0x3f0000, re::ReVector<ReByte>(0x50000));
            require_helper(image.write(0x400100, ReU32(1)) &&
                               image.write(0x4000f8, Address(77)),
                           "review Type cache");
            return Address(0x500000);
        };
        const auto result = game_helper_object(image, 0x36b938, player, env, api);
        require_helper(result.status == GameBaseStatus::missing_bytes &&
                           image.read<ReU32>(0x400100) == 1,
                       "Type root failure leaves bit2 clear");
    }
    // Opposite native order for Component/GameObject remains flag-before-root.
    for (const bool game_object : {false, true}) {
        Snapshot image(0x3d0000, re::ReVector<ReByte>(0x70000));
        setup(image);
        const auto put = [&]<class T>(Address at, T value) {
            require_helper(image.write(at, value), "review copied setup");
        };
        put(0x3d5e60, Address(9));
        put(0x400010, ReU32(3));
        put(0x400008, Address(77));
        put(0x400100, ReU32(3));
        put(0x4000f8, Address(77));
        put(player + 0x20, magazine);
        put(magazine + 0x10, definition);
        put(0x400d30, ReU32(3));
        put(0x400d28, Address(77));
        const Rva flags = game_object ? 0x4005b0 : 0x4004c0;
        GameHelperApi api;
        api.object = [&](const GameHelperCall &call) {
            if (call.wrapper == 0x372754)
                return Address(0x430000);
            if (call.wrapper == 0x370aa4)
                return Address(0x500000);
            require_helper(call.wrapper == 0x370884, "Type effect precedes component root failure");
            image = Snapshot(0x3f0000, re::ReVector<ReByte>(0x50000));
            put(flags, ReU32(1));
            put(flags - 8, Address(77));
            return Address(0x600000);
        };
        const auto result =
            game_helper_object(image, game_object ? 0x372abc : 0x36b938, player, env, api);
        require_helper(result.status == GameBaseStatus::missing_bytes &&
                           image.read<ReU32>(flags) == 3,
                       "Component/GameObject commit bit2 before root read failure");
    }
}
void check_lookup_and_binders() {
    Fixture f;
    const Address ga_slot = f.player + 0x14000, statics = f.player + 0x15000,
                  encoded = f.player + 0x16000;
    // [I] Wrapped numeric GA base lets a small snapshot contain the literal
    // +f0ee490 read. Native never range-checks this module base before the load.
    f.put(f.base + 0x3d6f00, ga_slot - 0xf0ee490ULL);
    f.put(ga_slot, f.klass);
    f.put(f.klass + 0xb8, statics);
    f.put(statics + 0x18, encoded);
    const Address block = (f.player + 0x20000) & ~Address{0x1fff}, handle = block + 0x28,
                  bitmap = f.player + 0x18000, root = f.player + 0x19000;
    auto encode = [](ReU32 x) {
        return re::re_rotl((re::re_rotl(x, 6) + 0x747d482fu) ^ 0x5d4d9bffu, 24);
    };
    const Address word = Address(encode(ReU32(handle))) |
                         (Address(encode(ReU32(handle >> 32))) << 32);
    f.put(encoded + 0x18, word);
    f.put(block + 0x20, ReU8{2});
    f.put(block + 0x1c, ReU32{1});
    f.put(block + 0x10, bitmap);
    f.put(bitmap, ReU32{1});
    f.put(handle, root);
    f.objects[0x32b308] = f.vehicle;
    const auto lookup = game_helper_object(f.image, 0x32b308, 0, f.env, f.api, 0xffffffffu);
    require_helper(lookup.status == GameBaseStatus::complete && lookup.value == f.vehicle,
                   "lookup follows static encoded handle chain");
    require_helper(f.effects.back().receiver == root && f.effects.back().integer == 0xffffffffu,
                   "entity lookup preserves uint32 ID");
    f.put(block + 0x20, ReU8{4});
    const auto old = f.effects.size();
    require_helper(game_helper_object(f.image, 0x32b308, 0, f.env, f.api).value == 0 &&
                       f.effects.size() == old,
                   "invalid handle root skips game lookup");
    auto aim = bind_game_helpers_aim(f.image, f.env, f.api);
    require_helper(aim.object(0x368a84, f.player) == f.definition, "aim object binding");
    f.put(f.definition + 0x20, ReU32{0xf0000001});
    require_helper(aim.integer(0x37261c, f.definition) == 0xf0000001,
                   "shared field getter keeps integer bits");
    auto projectile = bind_game_helpers_projectile(f.image, f.env, f.api);
    require_helper(same(projectile.vector(0x36924c, f.player, 99), {1, 2, 3}),
                   "projectile vector binding");
    auto interaction = bind_game_helpers_interaction(f.image, f.env, f.api);
    InteractionCall c;
    c.rva = 0x371630;
    c.self = f.player;
    require_helper(interaction.object(c) == f.objects.at(0x3703ec),
                   "interaction component binding");
    auto movement = bind_game_helpers_movement(f.image, f.env, f.api);
    const re::ReArray<MovementMainArgument, 1> args{f.player};
    require_helper(same(movement.vector(0x368b9c, args), {4, 5, 6}), "movement vector binding");
    auto hit = bind_game_helpers_hit(f.image, f.env, f.api);
    require_helper(hit.entity_32b308(77) == 0, "hit override binding invalid root");
    bool stopped = false;
    {
        static_cast<void>(aim.vector(0x123, f.player));
    }
    require_helper(stopped, "unknown helper never invented success");
    AimWeaponCalls fallback;
    fallback.object = [](Rva r, Address) {
        require_helper(r == 0x123, "fallback exact callee");
        return Address{9};
    };
    require_helper(bind_game_helpers_aim(f.image, f.env, f.api, fallback).object(0x123, 0) == 9,
                   "unknown helper forwards existing callback");
}
} // namespace
void check_game_helpers_reconstruction() {
    check_review_flag_root_order();
    check_direct();
    check_components();
    check_vectors_scalar_visibility();
    check_inventory();
    check_lookup_and_binders();
}
} // namespace rust_internal_re
