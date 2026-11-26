#include "frame_world_controllers_analysis.hpp"
#include "snapshot_bindings.hpp"
namespace rust_internal_re {
namespace {
void expect(bool v, const char *why) {
    if (!v)
        { __builtin_trap(); }
}
template <class T> T get(const Snapshot &s, Address p) {
    auto v = s.read<T>(p);
    expect(bool(v), "controller fixture read");
    return *v;
}
template <class T> void put(Snapshot &s, Address p, T v) {
    expect(s.write(p, v), "controller fixture write");
}
struct Fixture {
    static constexpr Address p = 0x1000000, camera = p + 0x1000, other = p + 0x2000,
                             third = p + 0x3000;
    Snapshot im{0, re::ReVector<ReByte>(0x410000)}, game{p, re::ReVector<ReByte>(0x20000)};
    FrameWorldEnvironment env;
    FrameWorldApi api;
    Fixture() {
        api.camera_2e069c = [] { return camera; };
        api.local_2dda9c = [] { return p; };
        api.gate_2e0e4c = [] { return ReU8(0); };
        api.game.valid_2e0e9c = [](Address) { return true; };
        api.game.predicate = [](Rva, Address, ReU8) { return false; };
        api.game.vector = [](Rva, Address) { return Vec3{1, 2, 3}; };
        put(im, 0x293178, 4.0f);
        put(im, 0x2932a0, 0x80000000u);
        put(im, 0x293230, 200.0f);
        put(im, 0x28db1c, 10.0f);
        put(im, 0x28db20, 20.0f);
        put(im, 0x2931e4, 33.0f);
        put(im, 0x29321c, 126.0f);
        put(im, 0x248e90, 50.0f);
        put(im, 0x293098, 0.05f);
        put(im, 0x28db44, 100.0f);
        put(im, 0x2a8260, 500.0f);
    }
};
void collections() {
    Fixture f;
    FrameWorldCollections s;
    FrameWorldSmallRecord r;
    r.entity = f.p;
    r.tail.fill(ReByte(0xa5));
    s.first = {r};
    r.entity = f.other;
    s.second = {r, r};
    r.entity = f.third;
    s.second.push_back(r);
    re::ReVector<Address> order;
    f.api.game.valid_2e0e9c = [&](Address p) {
        order.push_back(p);
        return p != f.other;
    };
    const auto capacity = s.second.capacity();
    auto result = frame_world_collect_3211f0(f.im, s, f.env, f.api);
    expect(result.status == GameBaseStatus::complete && s.second.size() == 1 &&
               s.second[0].entity == f.third && s.second[0].tail[0] == ReByte(0xa5),
           "stable second-first compaction retains payload");
    expect(order == re::ReVector<Address>{f.other, f.other, f.third, f.p} &&
               s.second.capacity() == capacity,
           "native second-before-first validation and capacity retention");
    s.third.push_back({});
    s.third[0].entity = f.other;
    s.marked_3e61f0[f.other] = 1;
    s.colliders_3e6170[f.other] = f.third;
    put(f.im, 0x3e9818, ReU8(1));
    f.api.resolve_target = [](const UnityCacheSpec &s) {
        expect(s.wrapper == 0x375d30 && s.method == "set_enabled", "collider method descriptor");
        return MetadataResult{0xabc};
    };
    f.api.enabled_effect_375d30 = [&](const FrameWorldNativeCall &, Address p,
                                      ReU8 enabled) {
        expect(p == f.third && !enabled, "disable collider args");
        s.third[0].entity = f.p;
    };
    expect(frame_world_collect_3211f0(f.im, s, f.env, f.api).status == GameBaseStatus::complete &&
               s.third.empty() && s.marked_3e61f0[f.other] == 1 && s.marked_3e61f0[f.p] == 0,
           "wide invalid cleanup rereads mutated record key after callback");
    FrameWorldWideRecord bad, good;
    bad.entity = f.other;
    bad.padding.fill(ReByte(0x33));
    bad.padding_34.fill(ReByte(0x44));
    good.entity = f.p;
    good.padding.fill(ReByte(0xaa));
    good.padding_34.fill(ReByte(0xbb));
    good.label = "survivor";
    good.value_30 = 7;
    good.value_38 = 9;
    s.third = {bad, good};
    f.api.enabled_effect_375d30 = [](const FrameWorldNativeCall &, Address, ReU8) {};
    expect(frame_world_collect_3211f0(f.im, s, f.env, f.api).status == GameBaseStatus::complete &&
               s.third.size() == 1 && s.third[0].entity == f.p && s.third[0].label == "survivor" &&
               s.third[0].value_30 == 7 && s.third[0].value_38 == 9 &&
               s.third[0].padding[0] == ReByte(0x33) &&
               s.third[0].padding_34[0] == ReByte(0x44),
           "wide survivor assignment copies fields while retaining destination padding");
    s.first.push_back(r);
    s.second.push_back(r);
    s.third.push_back({});
    f.api.camera_2e069c = [] { return Address(0); };
    f.api.gate_2e0e4c = {};
    expect(frame_world_collect_3211f0(f.im, s, f.env, f.api).status == GameBaseStatus::complete &&
               s.first.empty() && s.second.empty() && s.third.empty(),
           "invalid camera short-circuits gate and clears all three");
    s.first = {r};
    s.second = {r, r};
    int calls = 0;
    f.api.camera_2e069c = [] { return Fixture::camera; };
    f.api.gate_2e0e4c = [] { return ReU8(0); };
    f.api.game.valid_2e0e9c = [&](Address) {
        if (++calls == 2)
            { (void)(GameBaseStatus::missing_boundary, 0x123); __builtin_trap(); }
        return true;
    };
    result = frame_world_collect_3211f0(f.im, s, f.env, f.api);
    expect(result.status == GameBaseStatus::missing_boundary && result.site == 0x123 &&
               s.second.size() == 2 && s.second[0].tail[1] == ReByte(1) &&
               s.first[0].tail[1] == ReByte(0xa5),
           "failure retains prior per-record writes before compaction");
    Fixture setter;
    for (Address p = 0x402a50; p < 0x402b50; ++p)
        put(setter.im, p, ReU8(0x55));
    setter.api.resolve_target = [&](const UnityCacheSpec &) {
        put(setter.im, 0x402a40, ReU32(0x41));
        return MetadataResult{0xabc};
    };
    setter.api.observe_context = [&](const FrameWorldNativeCall &) {
        put(setter.im, 0x3d5e60, Address(0x777));
    };
    setter.api.enabled_effect_375d30 = [&](const FrameWorldNativeCall &c, Address receiver,
                                           ReU8 value) {
        expect(receiver == setter.p && value == 0x80 && c.target == 0xabc &&
                   c.dispatcher == 0x777 && c.unmaterialized_arguments[1] == 0xfe &&
                   get<ReU8>(setter.im, c.context + 0x90) == 0x80 &&
                   get<ReU8>(setter.im, c.context + 0x91) == 0x55,
               "collider setter uses low byte, retained unknown bytes and reread dispatcher");
    };
    expect(frame_world_enabled_375d30(setter.im, setter.p, 0x80, setter.env, setter.api).status ==
                   GameBaseStatus::complete &&
               get<ReU32>(setter.im, 0x402a40) == 0x43,
           "collider selector callback flags reread before bit2 commit");
    put(setter.im, 0x402a40, ReU32(0));
    setter.api.resolve_target = {};
    expect(frame_world_enabled_375d30(setter.im, setter.p, 0, setter.env, setter.api).status ==
                   GameBaseStatus::missing_boundary &&
               get<ReU32>(setter.im, 0x402a40) == 1,
           "collider missing method resolver retains bit1 before stop");
}
void offset() {
    Fixture f;
    put(f.im, 0x3e9f98, ReU8(1));
    put(f.im, 0x3edc58, 10.0f);
    put(f.im, 0x3edcf8, 2.5f);
    put(f.im, 0x3edca8, 7.0f);
    put(f.im, 0x3ef8f8, ReI32(11));
    put(f.im, 0x3ef958, ReI32(22));
    re::ReVector<int> keys;
    f.api.game.key_2e5e4c = [&](int k, bool mode) {
        expect(mode, "offset key mode");
        keys.push_back(k);
        return k == 11;
    };
    expect(frame_world_offset_318f34(f.im, f.game, f.p, f.env, f.api).status ==
                   GameBaseStatus::complete &&
               get<float>(f.game, f.p + 0x7f8) == -2.5f && keys == re::ReVector<int>{11, 22},
           "offset key order and final XOR negation");
    f.api.game.key_2e5e4c = [](int, bool) { return true; };
    expect(frame_world_offset_318f34(f.im, f.game, f.p, f.env, f.api).status ==
                   GameBaseStatus::complete &&
               get<float>(f.game, f.p + 0x7f8) == 7.0f,
           "second key double XOR overrides first");
    f.api.game.key_2e5e4c = [](int, bool) { return false; };
    expect(frame_world_offset_318f34(f.im, f.game, f.p, f.env, f.api).status ==
                   GameBaseStatus::complete &&
               get<ReU32>(f.game, f.p + 0x7f8) == 0x80000000u,
           "inactive keys write negative zero");
    put(f.im, 0x3edc58, re::ReNumericLimits<float>::quiet_NaN());
    f.api.game.object = [](Rva, Address) { return Address(0); };
    expect(frame_world_offset_318f34(f.im, f.game, f.p, f.env, f.api).status ==
                   GameBaseStatus::complete &&
               get<float>(f.game, f.p + 0x7f8) == 0 && get<ReU8>(f.im, 0x3f0978) == 0,
           "NaN active comparison takes reset and clears latch");
    put(f.im, 0x3edc58, 10.0f);
    put(f.im, 0x3f0978, ReU8(0));
    Snapshot short_game(f.p, re::ReVector<ReByte>(0x100));
    expect(frame_world_offset_318f34(f.im, short_game, f.p, f.env, f.api).status ==
                   GameBaseStatus::missing_bytes &&
               get<ReU8>(f.im, 0x3f0978) == 1,
           "latch committed before missing target write");
}
void inventory() {
    Fixture f;
    const Address inv = f.p + 0x4000, list = f.p + 0x5000, inner = f.p + 0x6000,
                  array = f.p + 0x7000, item = f.p + 0x8000, definition = f.p + 0x9000,
                  component = f.p + 0xa000, modifier = f.p + 0xb000;
    f.api.game.object = [&](Rva r, Address) { return r == 0x369324 ? inv : list; };
    f.api.game.integer = [](Rva, Address) { return ReU32(2); };
    put(f.game, list + 0x20, inner);
    put(f.game, inner + 0x10, array);
    put(f.game, array + 0x20, item);
    put(f.game, array + 0x28, item);
    put(f.game, item + 0x10, definition);
    put(f.game, definition + 0x1b8, component);
    put(f.game, component + 0x50, modifier);
    put(f.game, modifier + 0x18, 3.25f);
    auto r = frame_world_inventory_368f50(f.game, f.api);
    expect(r.status == GameBaseStatus::complete && r.value == 6.5f,
           "inventory scalar accumulates duplicate item twice");
    put(f.game, modifier + 0x18, -2.0f);
    expect(frame_world_inventory_368f50(f.game, f.api).value == 0,
           "inventory MAXSS negative clamp");
    put(f.game, modifier + 0x18, re::re_bit_cast<float>(0x7fc12345u));
    expect(re::re_isnan(frame_world_inventory_368f50(f.game, f.api).value),
           "inventory MAXSS preserves unordered second operand");
    put(f.game, array + 0x28, Address(0));
    expect(frame_world_inventory_368f50(f.game, f.api).value == 0,
           "late invalid item discards partial accumulated sum");
}
void rain() {
    Fixture f;
    put(f.game, f.p + 0xc, 100.0f);
    put(f.game, f.p + 0x10, 1.0f);
    FrameWorldRainApi a;
    a.background_392198 = [] { return Address(8); };
    int initialized = 0, characters = 0;
    a.random_2e3d5c = [&](float low, float high) {
        if (low == 0) {
            ++initialized;
            expect(high == 100, "rain captured height");
            return 1.0f;
        }
        ++characters;
        expect(low == 33 && high == 126, "rain literal character range");
        return 65.9f;
    };
    expect(frame_world_rain_3096c4(f.im, f.game, f.p, 0, f.env, a).status ==
                   GameBaseStatus::complete &&
               initialized == 256 && characters == 256 && get<float>(f.im, 0x3f1310) == 51.0f,
           "rain transparent early text return still advances random/state");
    expect(get<ReU8>(f.im, 0x3f1710) == 1,
           "rain commits once flag after all initialization");
    for (unsigned i = 0; i < 256; ++i)
        put(f.im, 0x3f1310 + i * 4, -1.0f);
    put(f.im, 0x3f1310, 300.0f);
    put(f.game, f.p + 0x10, 1.0f);
    expect(frame_world_rain_3096c4(f.im, f.game, f.p, 0, f.env, a).status ==
                   GameBaseStatus::complete &&
               initialized == 256 && get<float>(f.im, 0x3f1310) == -200,
           "rain ordered bottom reset");
    put(f.im, 0x3f1710, ReU8(0));
    int n = 0;
    a.random_2e3d5c = [&](float, float) {
        if (++n == 3)
            { (void)(GameBaseStatus::missing_boundary, 0x2e3d5c); __builtin_trap(); }
        return float(n);
    };
    expect(frame_world_rain_3096c4(f.im, f.game, f.p, 1, f.env, a).status ==
                   GameBaseStatus::missing_boundary &&
               get<ReU8>(f.im, 0x3f1710) == 0 && get<float>(f.im, 0x3f1314) == 2,
           "rain initialization failure retains prefix and retries next pass");
    // [I] A supplied real owned glyph/metrics fixture, no fabricated production glyphs.
    FontTextStore fonts;
    FontTextFont font;
    font.measure.nominal = 10;
    font.lookup.resize(66, 0xffff);
    font.lookup[65] = 0;
    font.glyphs.push_back({65u * 4u + 2u, 5, 0, 0, 4, 6, 0, 0, 1, 1});
    fonts.fonts.insert(9, re::re_move(font));
    FontTextSink sink;
    sink.shared = [](Address) { return FontTextShared{9, 10}; };
    sink.clip = [](Address) { return re::ReArray<float, 4>{-100, -100, 3000, 1000}; };
    int vertices = 0;
    ReU32 tint = 0;
    sink.reserve = [](Address, int i, int v) {
        expect(i == 6 && v == 4, "single-character font reservation");
    };
    sink.unreserve = [](Address, int i, int v) {
        expect(i == 0 && v == 0, "single-character font commit");
    };
    sink.write = [&](Address, re::ReSpan<const DrawVertex> v, re::ReSpan<const ReU16> i) {
        expect(v.size() == 4 && i.size() == 6, "rain emits glyph geometry");
        vertices += int(v.size());
        re::re_memcpy(&tint, v[0].data() + 16, 4);
    };
    a.fonts = &fonts;
    a.sink = &sink;
    a.random_2e3d5c = [](float, float) { return 65.9f; };
    put(f.im, 0x3f1710, ReU8(1));
    for (unsigned i = 0; i < 256; ++i)
        put(f.im, 0x3f1310 + i * 4, -100.0f);
    put(f.im, 0x3f1310, 0.0f);
    put(f.game, f.p + 0x10, 0.0f);
    expect(frame_world_rain_3096c4(f.im, f.game, f.p, .5f, f.env, a).status ==
                   GameBaseStatus::complete &&
               vertices == 4 && tint == 0x7f46ff00u,
           "rain one character truncation alpha and geometry sink");
}
void visibility() {
    Fixture f;
    Snapshot arena(0x2000000, re::ReVector<ReByte>(0x10000));
    OwnedSnapshotAllocator alloc(arena, arena.base(), arena.size());
    RegistryStore registry(alloc);
    FrameWorldVisibility s;
    s.identity = &registry;
    s.entities_2187d0.push_back({f.other, {}});
    put(f.im, 0x3e9f48, ReU8(1));
    put(f.im, 0x3e7298, ReU8(1));
    re::ReVector<int> bones;
    f.api.game.bone_368be8 = [&](Address, int n) {
        bones.push_back(n);
        if (n == 55)
            return Vec3{10, 20, 30};
        if (n == 54)
            return Vec3{4, 8, 9};
        return bones.size() == 3 ? Vec3{1, 2, 3} : Vec3{4, 5, 6};
    };
    f.api.mask_2e6a6c = [] { return ReU32(0x55); };
    int queries = 0;
    f.api.query_2e2320 = [&](Vec3 origin, Vec3 point, ReU32 mask, float radius,
                             float distance) {
        expect(radius == 0 && distance == 0, "visibility query zero parameters");
        if (++queries == 1) {
            expect(origin.x == 1 && point.x == 10 && point.y == 8.05f && point.z == 30 &&
                       mask == 0x55,
                   "mixed bone point and captured camera");
            s.entities_2187d0.push_back({f.third, {}});
        } else
            expect(origin.x == 4 && origin.y == 105 && point.x == 1 && point.y == 2 &&
                       mask == 0x200000,
                   "outside query reverses adjusted second/original first");
        return queries == 1;
    };
    auto r = frame_world_visibility_3684e0(f.im, f.game, f.p, s, f.env, f.api);
    expect(r.status == GameBaseStatus::complete && queries == 2 &&
               bones == re::ReVector<int>{55, 54, 53, 53} &&
               s.visible_3e60b0.entries[f.other] == 1 && s.outside_3e60f0[f.other] == 0 &&
               s.targeting_3e6130.size() == 1,
           "visibility copied vector, repeated bones, independent byte maps");
    auto entry = registry.identity_2df608("");
    put(arena, entry.value + 0x24, ReU32(1));
    s.targeting_3e6130.clear();
    s.entities_2187d0.resize(1);
    expect(frame_world_visibility_3684e0(f.im, f.game, f.p, s, f.env, f.api).status ==
                   GameBaseStatus::complete &&
               s.targeting_3e6130.empty(),
           "friend gate precedes targeting default insertion");
    put(arena, entry.value + 0x24, ReU32(0));
    put(f.im, 0x3e9f48, ReU8(0));
    put(f.im, 0x3e7298, ReU8(0));
    put(f.im, 0x3e9548, ReU8(1));
    put(f.im, 0x3ed708, 12.0f);
    put(f.im, 0x3d6f00, Address(0x800000));
    put(f.im, 0x3d5e60, Address(0x111));
    for (Address p = 0x3fe5d0; p < 0x3fe5d0 + 0x100; ++p)
        put(f.im, p, ReU8(0x5a));
    f.api.observe_context = [&](const FrameWorldNativeCall &) {
        put(f.im, 0x3d5e60, Address(0x222));
    };
    f.api.raycast_36b0c8 = [&](const FrameWorldNativeCall &c, FrameWorldRayRequest &q) {
        expect(c.dispatcher == 0x222 && c.target == 0x800000 + 0x311d680 &&
                   c.unmaterialized_arguments[0] == 0xff && c.unmaterialized_arguments[1] == 0xf0,
               "ray cache concrete target and unknown byte masks");
        expect(q.ray.origin.x == 1 && q.ray.direction.y == 2 && q.distance == 500 &&
                   q.radius == 12 && q.mask == 0x20000 && q.mode == 1 && !q.hit.bytes20,
               "typed ray known parameters and stale hit bytes");
        expect(get<ReU64>(f.im, c.context + 0x80) == 7 &&
                   get<ReU32>(f.im, c.context + 0xd0) == 0x01000100 &&
                   get<ReU32>(f.im, c.context + 0x94) == 0x5a5a5a5au,
               "ray known pack stores retain unknown upper scalar bits");
        q.hit.word18 = ReU64(0x7fc00000u) << 32;
        return ReU8(1);
    };
    f.api.hit_transform_329920 = [&](const FrameWorldHit &h) {
        expect(re::re_isnan(re::re_bit_cast<float>(ReU32(h.word18 >> 32))),
               "NaN hit discriminator reaches transform");
        return f.third;
    };
    f.api.object_3687bb = [&](const FrameWorldNativeCall &c, Address transform) {
        expect(transform == f.third && c.target == 0x800000 + 0x597e7b0 &&
                   get<Address>(f.im, c.context + 0x88) == transform,
               "direct targeting pack consumes transform");
        return f.p;
    };
    r = frame_world_visibility_3684e0(f.im, f.game, f.p, s, f.env, f.api);
    expect(r.status == GameBaseStatus::complete && s.targeting_3e6130[f.other] == 1,
           "rayhit NaN branch and local identity set targeting");
    f.api.raycast_36b0c8 = {};
    s.targeting_3e6130[f.other] = 1;
    r = frame_world_visibility_3684e0(f.im, f.game, f.p, s, f.env, f.api);
    expect(r.status == GameBaseStatus::missing_boundary && r.site == 0x36b0c8 &&
               s.targeting_3e6130[f.other] == 0,
           "missing ray effect preserves default map write");
}
void configuration() {
    FrameDependencyState s;
    s.directory = "copied";
    s.selected_config = "old.bin";
    FrameConfigurationState settings;
    FrameWorldConfigApi a;
    re::ReVector<re::ReString> deleted;
    a.frame.unity.resolve_target = [](const UnityCacheSpec &) { return MetadataResult{0x123}; };
    a.frame.unity.detect_context = [](const UnityCacheSpec &, Address) { return true; };
    a.frame.attributes_2d5cd8 = [](re::ReStringView) {
        return re::ReOptional<FrameAttributeResult>{{0, 0x10}};
    };
    a.frame.files_2d5e90 = [](re::ReStringView, re::ReStringView) {
        return re::ReOptional<re::ReVector<re::ReOptional<re::ReString>>>{
            {"copied/z.bin", "copied/a.bin", "copied/SamSitelist.bin"}};
    };
    a.frame.exists_2d5be4 = [](re::ReStringView) { return re::ReOptional<bool>(false); };
    re::ReString managed_text;
    a.managed_string_2ce5dc = [&](re::ReStringView text) {
        managed_text = text;
        return Address(0x987);
    };
    a.delete_file_2d5a18 = [&](Address path) {
        expect(path == 0x987, "delete consumes managed string object");
        deleted.push_back(managed_text);
    };
    re::ReVector<FrameWorldFileCommand> queue{{0, "  new?.BIN. "}, {2, "new.BIN"}, {19, "ignored"}};
    auto r = frame_world_commands_2d60d0(queue, s, settings, a);
    expect(r.status == UnityStatus::complete && queue.empty() &&
               deleted == re::ReVector<re::ReString>{"copied\\new.BIN"} &&
               s.selected_config == "a.bin",
           "load/delete queue normalization sorted fallback and final clear");
    queue = {{2, "a.bin"}, {0, "b.bin"}};
    a.delete_file_2d5a18 = [](Address) {
        { (void)(GameBaseStatus::missing_boundary, 0x2d5a18); __builtin_trap(); }
    };
    r = frame_world_commands_2d60d0(queue, s, settings, a);
    expect(r.status == UnityStatus::missing_dependency && queue.size() == 2 &&
               s.selected_config == "a.bin",
           "failed dispatch keeps full original operation queue");
    settings.windows = {{"w", 3, {1.25f, -2.0f}, true}};
    settings.objects = {{0x3d6e60, "window", FrameSettingKind::texts, re::ReVector<re::ReString>{}},
                        {1, "boolean", FrameSettingKind::boolean, true},
                        {2, "key", FrameSettingKind::key, FrameConfigKey{7, 2, 1, 3, {}}},
                        {3, "bits", FrameSettingKind::booleans, re::ReVector<bool>{}}};
    FrameWorldSaveState save;
    a.save = &save;
    re::ReVector<ReI32> order;
    for (const auto &o : settings.objects)
        order.push_back(
            re::re_bit_cast<ReI32>(ReU32(entity_name_hash_2d6354(o.lookup_name))));
    re::re_reverse(order.begin(), order.end());
    save.native_key_order = order;
    re::ReString output;
    Address written_array = 0;
    Snapshot managed(0x100000, re::ReVector<ReByte>(0x10000));
    a.managed_bytes = &managed;
    a.frame.unity.resolve_class = [](re::ReStringView ns, re::ReStringView klass) {
        expect(ns == "System" && klass == "Byte", "managed array class selection");
        return MetadataResult{0x999};
    };
    ReUSize allocated_bytes = 0;
    a.array_new_2d8d74 = [&](Address klass, ReUSize count) {
        expect(klass == 0x999, "array allocation consumes class");
        allocated_bytes = count;
        return Address(0x100000);
    };
    a.write_bytes_2d65dc = [&](Address path, Address array) {
        expect(path == 0x987 && managed_text == "copied\\a.bin", "save exact managed current path");
        for (ReUSize i = 0; i < allocated_bytes; ++i)
            output.push_back(char(get<ReU8>(managed, array + 0x20 + i)));
        written_array = array;
    };
    r = frame_world_save_2dd634(s, settings, a);
    expect(r.status == UnityStatus::complete &&
               settings.saved_windows == re::ReVector<re::ReString>{"w|3|1|1.250000|-2.000000"} &&
               written_array == 0x100000 && !s.settings.changed,
           "window and known virtual type serialization consumed by file effect");
    const auto bits = order[0], key = order[1];
    expect(output.starts_with(re::re_to_string(re::re_bit_cast<ReU32>(bits)) + "=\n" +
                              re::re_to_string(re::re_bit_cast<ReU32>(key)) + "=7|1|2|3\n"),
           "copied native key order unsigned key output empty bool vector and key wire order");
    const auto old_hash = s.settings.hash;
    a.array_new_2d8d74 = [](Address, ReUSize) { return Address(0); };
    written_array = 0;
    expect(frame_world_save_2dd634(s, settings, a).status == UnityStatus::complete &&
               written_array == 0 && s.settings.hash == old_hash,
           "managed array allocation zero skips write/hash update");
    save.native_key_order = re::ReVector<int>{};
    r = frame_world_save_2dd634(s, settings, a);
    expect(r.status == UnityStatus::unreadable_snapshot && r.stopped_at == 0x2d9123 &&
               s.settings.bytes.empty() && !settings.saved_windows.empty(),
           "missing native iteration data stops after earlier local mutations");
}
void materials() {
    Fixture f;
    FrameWorldMaterialApi a;
    a.base = f.api;
    re::ReVector<ReU8> friend_options{1, 1};
    a.friend_options_3f0148 = &friend_options;
    put(f.im, 0x3e7158, ReU8(1));
    put(f.im, 0x3eefb8, ReI32(0));
    put(f.im, 0x3e5e88, Address(0x777));
    put(f.im, 0x3ecc98, re::ReArray<float, 4>{1, 2, 3, 4});
    put(f.im, 0x3eccf8, re::ReArray<float, 4>{5, 6, 7, 8});
    const Address model = f.p + 0x4000, renderers = f.p + 0x5000, renderer = f.p + 0x6000,
                  material = f.p + 0x7000, name = f.p + 0x8000;
    a.view_model_effect_3150ac = [&](const FrameWorldNativeCall &c) {
        expect(c.target == 0x2bfaec0 && get<Address>(f.im, c.context + 0x80) == 0,
               "viewmodel direct cache and zero-argument pack");
        return model;
    };
    a.renderers_334204_3151bc = [&](Address p, re::ReStringView klass, re::ReStringView ns) {
        expect(p == model && klass == "SkinnedMeshRenderer" && ns == "UnityEngine" &&
                   get<ReU8>(f.game, model + 0x40) == 0,
               "viewmodel byte committed before type/render query");
        return renderers;
    };
    put(f.game, renderers + 0x18, ReI32(1));
    put(f.game, renderers + 0x20, renderer);
    a.base.game.object = [&](Rva r, Address) {
        return r == 0x370fac ? material : r == 0x370e84 ? renderer : name;
    };
    int loads = 0, assigns = 0;
    re::ReVector<re::ReString> colors;
    a.load_375abc = [&](Address bundle, re::ReStringView key, re::ReStringView klass,
                        re::ReStringView ns) {
        ++loads;
        expect(bundle == 0x777 && key == "0" && klass == "Shader" && ns == "UnityEngine",
               "literal material load arguments");
        return f.third;
    };
    a.assign_shader_3710dc = [&](Address p, Address shader) {
        expect(p == material && shader == f.third, "material shader consumed");
        ++assigns;
    };
    a.color_370d64 = [&](Address p, re::ReStringView key, re::ReArray<float, 4> v) {
        expect(p == material && v[0] == (key == "_b" ? 1 : 5), "ordered material color data");
        colors.emplace_back(key);
    };
    auto r = frame_world_view_materials_2fb2f4(f.im, f.game, f.env, a);
    expect(r.status == GameBaseStatus::complete && loads == 1 && assigns == 1 &&
               colors == re::ReVector<re::ReString>{"_b", "_a"},
           "concrete view material loop caches shader and supplies both colors");
    r = frame_world_view_materials_2fb2f4(f.im, f.game, f.env, a);
    expect(r.status == GameBaseStatus::complete && loads == 1 && assigns == 2,
           "view material warm shared cache");
    put(f.im, 0x3e7158, ReU8(0));
    a.collection_2f8034 = {};
    expect(frame_world_player_316540(f.im, f.game, f.p, f.env, a).status ==
               GameBaseStatus::complete,
           "player wrapper dispatches both independently disabled workers");
    // Full entity material path, using copied list/model/managed-name fields.
    Snapshot arena(0x2000000, re::ReVector<ReByte>(0x10000));
    OwnedSnapshotAllocator alloc(arena, arena.base(), arena.size());
    RegistryStore registry(alloc);
    a.identity = &registry;
    const Address collection = f.p + 0x9000, array = f.p + 0xa000, go = f.p + 0xb000,
                  tag = f.p + 0xc000, modelstate = f.p + 0xd000, renderlist = f.p + 0xe000;
    put(f.im, 0x3e9868, ReU8(1));
    put(f.im, 0x293144, 1.0f);
    put(f.im, 0x3eed88, ReI32(0));
    put(f.im, 0x3ecc38, re::ReArray<float, 4>{1, 2, 3, 4});
    put(f.im, 0x3ecbd8, re::ReArray<float, 4>{5, 6, 7, 8});
    a.collection_2f8034 = [&] { return collection; };
    a.timer_2e5b7c = [&](Address cell, float interval) {
        expect(cell == 0x3f0974 && interval == 1, "material timer inputs");
        return true;
    };
    put(f.game, collection + 0x18, ReI32(2));
    put(f.game, collection + 0x10, array);
    put(f.game, array + 0x20, f.p);
    put(f.game, array + 0x28, f.other);
    put(f.game, f.other + 0x10, go);
    put(f.game, go + 0x20, tag);
    put(f.game, tag + 0x44, ReU16(6));
    put(f.game, model + 0x600, modelstate);
    put(f.game, modelstate + 0x58, renderlist);
    put(f.game, renderlist + 0x18, ReI32(1));
    put(f.game, renderlist + 0x10, renderers);
    a.base.game.predicate = [](Rva r, Address, ReU8) { return r == 0x36b1a0; };
    a.base.game.object = [&](Rva r, Address) {
        return r == 0x369764 ? model : r == 0x370fac ? material : r == 0x370e84 ? renderer : name;
    };
    put(f.game, name + 0x14, ReU16('x'));
    put(f.game, name + 0x16, ReU16(0));
    assigns = 0;
    r = frame_world_materials_2fabf8(f.im, f.game, f.p, f.env, a);
    expect(r.status == GameBaseStatus::complete && assigns == 1,
           "entity material list skips local then updates eligible entity");
    const char16_t excluded_arr[] = u"hat.miner";
    const re::ReVector<char16_t> excluded(excluded_arr, excluded_arr + 9);
    for (ReUSize i = 0; i < excluded.size(); ++i)
        put(f.game, name + 0x14 + i * 2, ReU16(excluded[i]));
    put(f.game, name + 0x14 + excluded.size() * 2, ReU16(0));
    assigns = 0;
    expect(frame_world_materials_2fabf8(f.im, f.game, f.p, f.env, a).status ==
                   GameBaseStatus::complete &&
               assigns == 0,
           "entity material managed low-byte substring exclusion");
}
void binder() {
    Fixture f;
    FrameWorldBindingState s;
    FrameWorldBindingApi a;
    a.game = f.api;
    FrameDependencyResult last;
    FrameWorldCollections collection;
    s.collections = &collection;
    UnityFrameApi old;
    old.domain = [](Rva, re::ReSpan<const UnityValue>) -> re::ReOptional<UnityValue> {
        return ReI32(9);
    };
    auto bound = bind_frame_world_controllers(f.im, f.game, f.game, s, f.env, a, last, old);
    re::ReArray<UnityValue, 1> args{Address(0x2187d0)};
    auto value = bound.domain(0x3211f0, args);
    expect(value && re::re_holds_alternative<re::ReMonostate>(*value) &&
               last.status == UnityStatus::complete,
           "frame role binder consumes owned collection");
    expect(re::re_get<ReI32>(*bound.domain(0x123, {})) == 9, "frame role fallback preserved");
    bool threw = false;
    {
        (void)bound.domain(0x3684e0, args);
    }
    expect(threw && last.status == UnityStatus::missing_dependency,
           "binder missing required owned state stops explicitly");
}
} // namespace
void check_frame_world_controllers_reconstruction() {
    collections();
    offset();
    inventory();
    rain();
    visibility();
    configuration();
    materials();
    binder();
    /* std::cout unavailable in freestanding */
}
} // namespace rust_internal_re
