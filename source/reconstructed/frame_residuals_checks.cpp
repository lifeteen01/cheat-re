#include "frame_preview_detail.hpp"

namespace rust_internal_re {
namespace {
using namespace frame_residual_detail;
void expect(bool value, re::ReStringView why) {
    if (!value)
        __builtin_trap();
}
void scalar(FrameMenuState &s, Rva r, float v) {
    s.values[r] = re::re_bit_cast<ReU32>(v);
}
ReU32 rgba_bits(ClipRect c) {
    const auto byte = [](float x) {
        const float value = (x < 0 ? 0 : x > 1 ? 1 : x) * 255.0f + .5f;
        return static_cast<ReU32>(truncate(value));
    };
    return byte(c.x) | (byte(c.y) << 8) | (byte(c.z) << 16) | (byte(c.w) << 24);
}
struct Fixture {
    Snapshot image{0, re::ReVector<ReByte>(0x40000)};
    FrameMenuState config;
    FrameMainMenuApi api;
    re::ReVector<re::RePair<Rva, re::ReVector<UnityValue>>> calls;
    bool click{}, release{}, hovered{};
    Fixture() {
        api.imgui = &image;
        api.context = 0x1000;
        image.write<float>(api.context + 0x37d0, 1);
        image.write<float>(api.context + 0x37e0, 4);
        image.write<float>(api.context + 0x3814, 3);
        image.write<Vec2>(api.context + 0x380c, {4, 4});
        image.write<Address>(api.context + 0x3c28, 0x10000);
        image.write<float>(api.context + 0x3c30, 16);
        image.write<ReU32>(0x10000, 0);
        image.write<Address>(0x10008, 0);
        image.write<float>(0x10010, 8);
        image.write<float>(0x10014, 16);
        image.write<float>(0x20010, 1.0f / 15.0f);
        image.write<Vec2>(0x20e00, {200, 300});
        image.write<Address>(0x8298, 10);
        image.write<Vec2>(0x8100, {100, 300});
        image.write<Address>(0x9010, 0x10000);
        scalar(config, 0x248ee8, 1);
        scalar(config, 0x248f0c, 580);
        scalar(config, 0x248f20, 120);
        scalar(config, 0x248f24, 228.462f);
        scalar(config, 0x248ed0, 16);
        scalar(config, 0x248ed4, 16);
        scalar(config, 0x248ed8, 16);
        scalar(config, 0x402d68, .2f);
        config.font_buckets[2].fonts[16] = 0x10000;
        api.effects.unity.external =
            [this](Rva role, re::ReSpan<const UnityValue> args) -> re::ReOptional<UnityValue> {
            calls.emplace_back(role, re::ReVector<UnityValue>(args.begin(), args.end()));
            switch (role) {
            case 0x35d31c:
                return UnityValue{Address(0x9000)};
            case 0x35d200:
                return UnityValue{Address(0x8000)};
            case 0x392ecc:
            case 0x3925a4:
                return UnityValue{Address(10)};
            case 0x3926ac:
                return UnityValue{Address(0x20000)};
            case 0x392ef8:
                return UnityValue{Vec2{100, 200}};
            case 0x392f14:
                return UnityValue{Vec2{300, 580}};
            case 0x392f34:
                return UnityValue{300.0f};
            case 0x392ee4:
                return UnityValue{580.0f};
            case 0x2e0af0:
                return UnityValue{ReI32(800)};
            case 0x2e09f0:
                return UnityValue{ReI32(600)};
            case 0x392298:
                return UnityValue{ReI32(-1)};
            case 0x2ef80c:
                return UnityValue{
                    re::re_bit_cast<ReI32>(rgba_bits(re::re_get<ClipRect>(args[0])))};
            case 0x38cfa4:
            case 0x3948dc:
                return UnityValue{true};
            case 0x3944ac:
                return UnityValue{hovered};
            case 0x3943e4:
                return UnityValue{click};
            case 0x394588:
                return UnityValue{release};
            default:
                return UnityValue{re::ReMonostate{}};
            }
        };
    }
    re::ReVector<re::ReVector<UnityValue>> arguments(Rva role) const {
        re::ReVector<re::ReVector<UnityValue>> out;
        for (const auto &c : calls)
            if (c.first == role)
                out.push_back(c.second);
        return out;
    }
};
} // namespace
void check_frame_residuals_reconstruction() {
    FrameClearHash clear;
    clear.buckets.resize(8, {123, 456});
    clear.nodes = {{1, 7, {ReByte(1)}}, {2, 8, {ReByte(2)}}};
    const auto capacity = clear.buckets.capacity();
    expect(frame_clear_hash_31aa90(clear).status == UnityStatus::complete, "dense hash clear");
    expect(!clear.used_bucket_erase && clear.nodes.empty() &&
               clear.destroyed == re::ReVector<ReU64>({1, 2}),
           "forward payload destruction");
    expect(clear.buckets.capacity() == capacity &&
               re::re_all_of(clear.buckets.begin(), clear.buckets.end(),
                           [](const auto &b) { return b[0] == 0 && b[1] == 0; }),
           "bucket sentinel fill keeps allocation");
    clear = {};
    clear.buckets.resize(256);
    clear.nodes = {{3, 4, {}}, {4, 7, {}}};
    for (const auto &node : clear.nodes) {
        const auto bytes = re::re_bit_cast<re::ReArray<ReByte, 8>>(node.key);
        clear.buckets[registry_hash_2d7078(bytes) & 255] = {node.token, node.token};
    }
    expect(frame_clear_hash_31ab60(clear).status == UnityStatus::complete &&
               clear.used_bucket_erase,
           "sparse threshold chooses bucket erase");
    expect(re::re_all_of(clear.buckets.begin(), clear.buckets.end(),
                       [](const auto &b) { return b[0] == 0 && b[1] == 0; }),
           "sparse endpoints repaired");
    FrameClearHash boundary;
    boundary.buckets.resize(8);
    boundary.nodes = {{9, 1, {}}};
    expect(frame_clear_hash_31aa90(boundary).status == UnityStatus::complete &&
               !boundary.used_bucket_erase,
           "equal bucket-count/8 threshold takes bulk path");
    FrameClearVectors vectors;
    vectors.trivial_18 = {1, 2};
    vectors.records_30.resize(2);
    const auto records_capacity = vectors.records_30.capacity();
    frame_clear_vectors_31acb0(vectors);
    expect(vectors.destroyed_records == 2 && vectors.trivial_18.empty() &&
               vectors.records_30.empty() && vectors.records_30.capacity() == records_capacity,
           "nested vector destruction/capacity");
    FrameTransitionState transition;
    transition.icons.cache["A"] = {true, 1, 2, 3};
    expect(frame_transition_2cce78(transition, true).status == UnityStatus::complete &&
               transition.icons.cache.size() == 1,
           "enable retains icon tree");
    transition.icons.attempted_3d6161 = true;
    transition.value_3d6180 = 42;
    expect(frame_transition_2cce78(transition, false).status ==
                   UnityStatus::indeterminate_native_data &&
               transition.icons.cache.empty() && transition.icons.enabled_3d6160 &&
               transition.value_3d6180 == 42,
           "indeterminate copy stops after tree clear");
    transition.native_stack_tail = re::ReArray<ReByte, 7>{ReByte(1), ReByte(2)};
    expect(frame_transition_2cce78(transition, false).status == UnityStatus::complete &&
               !transition.icons.enabled_3d6160 && !transition.icons.attempted_3d6161 &&
               transition.value_3d6180 == 0 && transition.bytes_3d6179[1] == ReByte(2),
           "disconnect explicit stack bits/reset");
    FrameDependencyResult last;
    auto bound = bind_frame_residual_transition(transition, last);
    const re::ReArray<UnityValue, 1> enabled = {true};
    expect(bound.domain(0x2cce78, enabled).has_value() && transition.icons.enabled_3d6160,
           "frame transition binder");
    Fixture f;
    FrameRaidApi raid;
    raid.frame = f.api;
    raid.camera_2e069c = [] { return re::ReOptional<Address>(0x200000); };
    raid.player_2dda9c = [] { return re::ReOptional<Address>(0x300000); };
    raid.bone_368be8 = [](Address, ReI32 bone) {
        expect(bone == 52, "raid bone52");
        return re::ReOptional<Vec3>({0, 0, 0});
    };
    re::ReVector<Vec3> projected;
    int visible = 0;
    raid.project_36cd20 = [&](Vec3 p, Vec2 &out) {
        projected.push_back(p);
        out = {p.x, 100};
        return re::ReOptional<bool>(true);
    };
    raid.on_screen_317130 = [&](Vec2) { return re::ReOptional<bool>(visible++ != 0); };
    raid.radar_314f08 = [](Vec3 p) {
        expect(p.x == 40, "radar uses last recognized location");
        return re::ReOptional<Vec2>({200, 200});
    };
    raid.radar_size_315778 = [] { return re::ReOptional<float>(4); };
    raid.bool_vector = [](Rva key, ReUSize i) {
        expect(key == 0x3f0538 && i == 0, "battle-mode bit0");
        return re::ReOptional<bool>(false);
    };
    raid.grid_315518 = [](Vec3 p) {
        expect(p.x == 30, "grid uses selected first visible location");
        return re::ReOptional<re::ReString>("A1");
    };
    f.config.values[0x3f3c48] = f.config.values[0x3f3d88] = f.config.values[0x3e9ae8] = 1;
    FrameRaidInput input{
        {{9, {20, 0, 0}, {}}, {15, {999, 0, 0}, {}}, {4, {30, 0, 0}, {}}, {9, {40, 0, 0}, {}}},
        125};
    const auto result = frame_render_raid_36e55c(f.config, input, raid);
    expect(result.status == UnityStatus::complete && projected.size() == 3,
           "raid location selection and reprojection");
    const auto texts = f.arguments(0x36135c);
    bool radar_title = false, world_title = false, count = false, time = false;
    for (const auto &args : texts) {
        const auto &value = re::re_get<re::ReString>(args[2]);
        radar_title |= value == "Raid(40m)";
        world_title |= value == "Raid(30m)";
        count |= value == "C4s x2";
        time |= value == "[2m:5s]";
    }
    expect(radar_title && world_title && count && time, "raid grouping/distance/time text");
    expect(re::re_get<re::ReString>(texts.front()[2]) == "YOUR HOUSE IS GETTING RAIDED!!!",
           "last location alert branch");
    FrameDependencyResult raid_last;
    auto effect = bind_frame_raid_renderer(f.config, raid, {}, raid_last);
    expect(!effect.update_raid_36e55c({}, 0) && raid_last.stopped_at == 0x3701ac,
           "raid record acquisition has no successful default");
    f.image.write<Address>(0x300, 0x400);
    f.image.write<Address>(0x308, 0x430);
    f.image.write<ReI32>(0x400, 9);
    f.image.write<Vec3>(0x404, {1, 2, 3});
    f.image.write<ReI32>(0x418, 4);
    FrameRaidInput copied_input;
    expect(copy_frame_raid_events(f.image, 0x300, copied_input, 7).status ==
                   UnityStatus::complete &&
               copied_input.events.size() == 2 && copied_input.events[0].position.z == 3 &&
               copied_input.elapsed_400000 == 7,
           "native24-byte raid vector acquisition");
    expect(copy_frame_raid_events(f.image, 0x300, copied_input, 8, 1).status ==
                   UnityStatus::analysis_limit &&
               copied_input.elapsed_400000 == 7,
           "copied vector analysis bound retains previous output");
    FrameRaidCollection collection{true, {{{}, 0}, {{}, 1}, {{}, 5}}};
    FrameRaidApi expires = raid;
    expires.frame.effects.disconnected_2e0e4c = [] { return re::ReOptional<bool>(false); };
    expires.frame.effects.time = [](Rva) { return re::ReOptional<float>(10); };
    expires.camera_2e069c = [] { return re::ReOptional<Address>(0x200000); };
    expires.player_2dda9c = [] { return re::ReOptional<Address>(0); };
    scalar(f.config, 0x3fcb48, 5);
    expect(frame_update_raid_collection_36f788(f.config, collection, expires).status ==
                   UnityStatus::complete &&
               collection.records.size() == 1 && collection.records[0].last_time == 5 &&
               number(f.config, 0x400000) == 5,
           "raid expiration visits shifted successor and keeps equality boundary");
    collection.records = {{{}, 9}};
    expires.player_2dda9c = [&] {
        scalar(f.config, 0x3fcb48, 0);
        return re::ReOptional<Address>(0);
    };
    expect(frame_update_raid_collection_36f788(f.config, collection, expires).status ==
                   UnityStatus::complete &&
               collection.records.empty(),
           "raid lifetime reread after renderer effects");
    FrameClearBindings clear_bindings;
    clear_bindings.vectors[0x2187d0] = &vectors;
    auto clear_api = bind_frame_residual_clears(clear_bindings, last);
    const re::ReArray<UnityValue, 1> clear_key = {Address(0x2187d0)};
    expect(clear_api.domain(0x31acb0, clear_key).has_value(), "owned nested-clear binder");
    FrameRaidApi all_kinds = raid;
    all_kinds.radar_314f08 = [](Vec3 at) {
        expect(at.x == 16, "last supported kind location");
        return re::ReOptional<Vec2>({10, 10});
    };
    all_kinds.on_screen_317130 = [](Vec2) { return re::ReOptional<bool>(false); };
    f.config.values[0x3e9ae8] = 0;
    f.calls.clear();
    FrameRaidInput kinds;
    for (ReI32 kind = 0; kind < 17; ++kind)
        kinds.events.push_back({kind, {static_cast<float>(kind), 0, 0}, {}});
    kinds.elapsed_400000 = -61;
    expect(frame_render_raid_36e55c(f.config, kinds, all_kinds).status == UnityStatus::complete,
           "all16 kinds and hash growth render");
    const auto all_text = f.arguments(0x36135c);
    expect(all_text.size() == 18 && re::re_get<re::ReString>(all_text.back()[2]) == "[-1m:-1s]",
           "sixteen grouped rows and signed time division");
    raid.camera_2e069c = [] { return re::ReOptional<Address>(0); };
    raid.player_2dda9c = {};
    expect(frame_render_raid_36e55c(f.config, input, raid).status == UnityStatus::complete,
           "invalid camera early exit");
}
void check_frame_preview_reconstruction() {
    {
        Fixture f;
        FramePreviewState preview;
        f.api.effects.unity.external =
            [&](Rva, re::ReSpan<const UnityValue>) -> re::ReOptional<UnityValue> {
            f.image.write<ReU32>(0x9000, 123);
            __builtin_trap();
        };
        auto result = frame_preview_365038(preview, f.config, f.api);
        expect(result.status == UnityStatus::unreadable_snapshot && result.stopped_at == 0xabc123 &&
                   f.image.read<ReU32>(0x9000) == 123,
               "preview propagates typed snapshot failure and prior writes");
        f.api.effects.unity.external =
            [](Rva, re::ReSpan<const UnityValue>) -> re::ReOptional<UnityValue> {
            { __builtin_trap(); }
        };
        result = frame_preview_365038(preview, f.config, f.api);
        expect(result.status == UnityStatus::missing_dependency && result.stopped_at == 0xabc456,
               "preview preserves renderer failure site rather than losing nested dependency "
               "evidence");
    }
    using namespace frame_preview_detail;
    Fixture f;
    FramePreviewState preview;
    for (int i = 0; i < 6; ++i)
        preview.widgets.push_back({"Key" + re::re_to_string(i), "A", 0, {}, {}, {}, {}, 42});
    preview.counters_3e5cc8.fill(9);
    f.hovered = true;
    f.config.values[0x3e9d18] = 1;
    auto result = frame_preview_365038(preview, f.config, f.api);
    expect(result.status == UnityStatus::complete, "preview palette root complete");
    expect(f.arguments(0x3a01f4).size() == 19, "eight corner and eleven skeleton edges");
    expect(integer(f.config, 0x248f10) == 4 &&
               re::re_all_of(preview.hovered_3fc120.begin(), preview.hovered_3fc120.end(),
                           [](bool b) { return b; }),
           "last overlapping hover region wins");
    expect(preview.counters_3e5cc8[5] == 0 && preview.regions_3fc130[0].y == 515,
           "six counter fill and panel geometry");
    expect(f.calls.back().first == 0x390994, "preview tail End call");
    expect(number(f.config, 0x248f18) == 90 &&
               re::re_fabs(number(f.config, 0x248f1c) - 175.769f) < .001f,
           "preview center stores");
    f.calls.clear();
    f.hovered = false;
    for (auto &widget : preview.widgets)
        widget.side = 1;
    result = frame_preview_365038(preview, f.config, f.api);
    expect(result.status == UnityStatus::complete && preview.counters_3e5cc8[1] == 6,
           "six placed labels share side counter");
    expect(f.arguments(0x361bcc).size() == 6 && f.image.read<float>(0x10064) == 1,
           "plain label output/font scale restoration");
    expect(offset(preview.widgets[0]).x == 72 &&
               re::re_fabs(offset(preview.widgets[1]).y - 191) < .001f,
           "truncated placement targets and row spacing");
    // [C] Native swap mutates both records without ending vector traversal.
    preview.widgets.resize(2);
    preview.widgets[0].key = "First";
    preview.widgets[1].key = "Second";
    preview.widgets[0].byte_2c = 1;
    preview.widgets[1].byte_2c = 0;
    preview.widgets[0].byte_60 = preview.widgets[1].byte_60 = 0;
    preview.widgets[0].icon_64 = 17;
    preview.widgets[1].icon_64 = 18;
    f.hovered = true;
    f.release = false;
    result = frame_preview_widget_37df58(preview, 0, f.config, f.api, {1, 1, 1, 1});
    expect(result.status == UnityStatus::complete && preview.widgets[0].key == "Second" &&
               preview.widgets[1].key == "First",
           "drag swap copies both keys");
    expect(!preview.widgets[0].byte_2c && preview.widgets[1].byte_2c &&
               preview.widgets[0].byte_60 && preview.widgets[1].byte_60 &&
               preview.widgets[1].icon_64 == 0,
           "drag swap flags and icon clearing");
    preview.widgets[0].key = preview.widgets[1].key = "Duplicate";
    preview.widgets[0].text = "First text";
    preview.widgets[1].text = "Second text";
    preview.widgets[0].byte_2c = 1;
    preview.widgets[0].byte_60 = preview.widgets[1].byte_60 = 0;
    result = frame_preview_widget_37df58(preview, 0, f.config, f.api, {});
    expect(result.status == UnityStatus::complete && preview.widgets[0].text == "First text",
           "duplicate key records skip swap despite different identities");
    preview.widgets[0].side = 0;
    preview.widgets[0].byte_2c = 1;
    f.release = true;
    f.config.values[0x248f10] = 3;
    result = frame_preview_widget_37df58(preview, 0, f.config, f.api, {});
    expect(result.status == UnityStatus::complete && preview.widgets[0].side == 3 &&
               !preview.widgets[0].byte_2c,
           "palette drag release assigns selected side");
    f.calls.clear();
    f.click = f.release = f.hovered = false;
    preview.widgets[0].key = "Indicator0";
    preview.widgets[0].side = 1;
    f.config.values[0x3eed38] = 2;
    result = frame_preview_widget_37df58(preview, 0, f.config, f.api, {});
    expect(result.status == UnityStatus::complete &&
               re::re_get<ReI32>(f.arguments(0x361bcc).back()[5]) == 4,
           "family2 indicator uses special ten-unit font style4");
    preview.widgets[0].side = 5;
    result = frame_preview_widget_37df58(preview, 0, f.config, f.api, {});
    expect(result.status == UnityStatus::indeterminate_native_data && result.stopped_at == 0x37e39f,
           "sixth counter exists but sixth placement target is uninitialized");
    auto bound = bind_frame_preview(preview, f.api);
    expect(bool(bound.preview_365038), "menu preview binding supplied");
    preview.widgets.clear();
    result = frame_preview_365038(preview, f.config, f.api);
    expect(result.status == UnityStatus::malformed_input && result.stopped_at == 0x2ef7c8,
           "short preview collection stops after preceding geometry");
}
} // namespace rust_internal_re
