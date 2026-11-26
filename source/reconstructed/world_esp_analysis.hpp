#pragma once
#include "entities_analysis.hpp"
#include "server_analysis.hpp"

namespace rust_internal_re {
// [I] Owned offline inputs and commands, never declarations of a Unity/game ABI.
// Numeric keys are sample RVAs, including config VALUE addresses (not config objects).
struct WorldEspConfig {
    re::ReMap<Rva, bool> booleans;
    re::ReMap<Rva, ReI32> integers;
    re::ReMap<Rva, float> floats;
    re::ReMap<Rva, re::ReArray<float, 4>> colors;
    re::ReMap<re::RePair<Rva, ReUSize>, bool> vector_booleans;
    // [I] An explicitly requested zero fixture image; production snapshots should fill all keys.
    bool zero_unspecified{};
    bool boolean(Rva) const;
    ReI32 integer(Rva) const;
    float real(Rva) const;
    re::ReArray<float, 4> color(Rva) const;
    bool option(Rva, ReUSize) const;
};
struct WorldEspMissingInput {
    Rva site{}, dependency{};
    re::ReString reason;
    WorldEspMissingInput(Rva s, Rva d, re::ReStringView r) : site(s), dependency(d), reason(r) {}
};
ReI32 world_cvttss2si(float);       // [C] indefinite INT_MIN for unordered/out-of-range.
bool vector_inequality_2df5dc(Vec3, Vec3); // [C] unordered is unequal.

struct WorldClassifierRule {
    ReU32 category{};
    Rva site{};
    re::ReStringView classes; // [I] '|' separates literal class alternatives.
    re::ReStringView prefab_any, prefab_excluded;
    re::ReStringView label;
    re::ReArray<Rva, 4> any_config{};
    Rva all_config{};
    ReI32 berry_option{-1};
    enum class Extra {
        none,
        ore_outer,
        stone,
        metal,
        sulfur,
        dud,
        pedal,
        pedal_trike,
        motor,
        motor_sidecar,
        workbench2,
        workbench3,
        candy,
        egg,
        sam_uncached
    } extra{};
};
re::ReSpan<const WorldClassifierRule> world_classifier_rules_31acd0();
struct WorldEspRecord {
    Address entity{};
    ReU32 category{};
    re::ReString label;
    Rva site{};
};
struct WorldEspPlayerRecord {
    Address entity{};
    ReU8 category_byte{};
};
struct WorldEspRecords {
    re::ReVector<WorldEspRecord> world;
    re::ReVector<WorldEspPlayerRecord> players, tracked;
};
struct WorldRecordValidation {
    bool blocked{}, camera_valid{}, local_valid{}, entity_valid{};
    bool restore_collider_enabled{}, collider_marked{};
    Address stored_collider{};
};
// [C] The game call returns 0x50 copied bytes. Only observed center/extents/axes are named.
struct WorldBoundsData {
    re::ReArray<float, 20> words{};
    Vec3 center() const {
        return {words[4], words[5], words[6]};
    }
    Vec3 extents() const {
        return {words[7], words[8], words[9]};
    }
};
Vec3 closest_world_bounds_365f90(const WorldBoundsData &, Vec3);
struct WorldClassifierBackend {
    // [U] These are actual Unity/game boundaries; an absent required callback throws.
    re::ReFunction<re::ReOptional<WorldBoundsData>(Address)> bounds_query_3664cc;
    re::ReFunction<re::ReOptional<Address>(Address)> box_collider_370508_372efc;
    re::ReFunction<void(Address, Vec3)> set_box_size_370968;
    re::ReFunction<void(Address, bool)> set_collider_enabled_375d30;
    re::ReFunction<re::ReOptional<Vec3>(Address)> bone53_368be8;
    re::ReFunction<bool(Address)> preferred_36a0e0;
    re::ReFunction<re::ReOptional<Vec3>(Address)> position_3747d4, transform_position_3747d4;
    re::ReFunction<re::ReOptional<ReU32>()> world_seed_317bec;
    re::ReFunction<void()> persist_sam_2dc1a0, persist_stash_2dc590;
    re::ReFunction<void(re::ReStringView)> notification_37f918;
};
re::ReOptional<float> entity_bounds_distance_3666b0(Address, Vec3, const WorldClassifierBackend &);
struct CachedWorldObject {
    Address entity{};
    Vec3 position{};
    ReU32 network_id{};
    ReU32 world_seed{};
    re::ReString label;
};
struct WorldClassifierState {
    Address ore_3d72c8{}, tree_3e4248{}, lock_3e5f00{}, lock_3e5f08{}, melee_3d72c0{};
    re::ReMap<Address, Address> collider_3e6170, collider_3e61b0;
    re::ReMap<Address, bool> collider_active_3e61f0;
    re::ReVector<CachedWorldObject> sam_218780, stash_218768;
    struct LockCache {
        Vec3 position{};
        ReU32 network_id{};
    };
    re::ReVector<LockCache> lock_218838;
};
struct WorldClassifierFrame {
    Address nearest_lock_2f8db0{}, nearest_lock_2f8f74{}, nearest_other_2f94ac{};
    Address nearest_tree_2f96f4{}, nearest_ore_2f9138{};
    bool local_dead_3693b0{};
    Vec3 local_position_369164{};
};
// [C] Independent append predicates across 0x31aeca..0x31fa76, with native numeric IDs.
re::ReVector<WorldEspRecord> classify_world_31acd0(const EntityIdentity &, const WorldEspConfig &);
// [C] Nearest assignments/clears, trap collider creation/restoration and SAM dedup/cache.
// [I] Entity identity/frame are copied inputs; Unity dependencies are typed above.
void classifier_side_effects_31acd0(const Snapshot &, const EntityIdentity &,
                                    const WorldEspConfig &, const WorldClassifierFrame &,
                                    WorldClassifierState &, WorldClassifierBackend &,
                                    re::ReVector<WorldEspRecord> &);
bool insert_world_record_3176bc(WorldEspRecords &, WorldEspRecord, WorldRecordValidation &,
                                const re::ReFunction<void(Address, bool)> &restore_collider);
bool insert_player_record_3177b4(WorldEspRecords &, WorldEspPlayerRecord,
                                 const WorldRecordValidation &);

struct WorldClassifierRun {
    bool blocked{}, camera_valid{}, local_valid{};
    Address local_entity{};
    Vec3 camera_position{};
    re::ReMap<Address, WorldRecordValidation> validations;
    re::ReMap<Address, ReU32> player_record_kind;
    WorldClassifierFrame nearest;
};
// [C] Per-entity append/side-effect/player order across the entire classifier.
// [I] Collection/identity/metadata results are copied inputs; scalar fields use Snapshot.
void replay_classifier_31acd0(const Snapshot &, re::ReSpan<const EntityIdentity>,
                              const WorldEspConfig &, WorldClassifierRun &, WorldClassifierState &,
                              WorldClassifierBackend &, WorldEspRecords &);

struct NearestWorldCandidate {
    EntityIdentity identity;
    bool pointer_valid{}, transform_valid{};
    bool entity_valid{}, model_valid{}, sleeping{}, dead{}, wounded{}, friend_record{},
        preferred_36a0e0{};
    ReU8 player_record_byte{};
    Vec3 bone_53{};
    ReU16 word_1d8{};
    ReU8 byte_298{};
    float distance_3666b0{};
};
// [C] Integer truncation and <= replacement preserve native ties/later candidate preference.
Address nearest_world_object(Rva helper, re::ReSpan<const NearestWorldCandidate>, bool enabled,
                             const WorldEspConfig *config = nullptr);

struct WorldDrawRoute {
    ReU32 category{};
    Rva begin{}, end{};
    Rva toggle{}, color{}, maximum_distance{}, chams{}, chams_index{};
    Rva icons{}, icon_multiplier{};
    re::ReStringView label;
    ReI32 battle_option{-1}, collect_option{-1}, berry_option{-1};
    bool radar_allowed{true}, require_positive_health{}, special_local_body{};
};
re::ReSpan<const WorldDrawRoute> world_draw_routes_2fb72c();
Vec2 rotate_world_radar_317b1c(Vec2, float degrees);
struct WorldDrawData {
    WorldEspRecord record;
    Address local_entity{};
    ProjectionBounds projection_bounds{};
    Vec3 position{}, camera_position{}, local_position{};
    Vec2 screen{}, ingame_screen{};
    bool projected{}, ingame_projected{}, visible_2f8180{}, visible_2f81e8{}, map_open{};
    float health{}, maximum_health{};
    float distance{}; // [C] camera distance computed by caller/shared sample root.
    ReU32 flags_1d8{};
};
struct WorldDrawStyle {
    re::ReString label;
    re::ReArray<float, 4> color{};
    ReI32 maximum_distance{}, chams_index{};
    bool world{}, radar{}, chams{}, icons{};
    float icon_multiplier{1};
    ReI32 icon_width{}, icon_height{};
    Rva route{};
};
WorldDrawStyle route_world_draw_2fb72c(const WorldDrawData &, const WorldEspConfig &);
float world_item_font_height_2fd04b(ReI32 item_font, ReI32 font);
struct WorldTextDraw {
    Rva site{};
    Vec2 position{};
    re::ReString text;
    re::ReArray<float, 4> color{};
    ReU32 flags{};
    float font_size{};
    Rva helper{0x36135c};
    Address font{};
    Vec2 rectangle_max{};
    re::ReOptional<Address> draw_list{};
};
struct WorldCircleDraw {
    Rva site{};
    Vec2 position{};
    float radius{};
    re::ReArray<float, 4> color{};
    bool filled{};
    float thickness{1};
    re::ReOptional<Address> draw_list{};
};
struct WorldIconDraw {
    Rva site{};
    Vec2 position{}, size{};
    re::ReString key;
    re::ReOptional<Address> draw_list{};
};
struct WorldTriangleDraw {
    Rva site{};
    Vec2 first{}, second{}, third{};
    re::ReArray<float, 4> color{};
    re::ReOptional<Address> draw_list{};
};
struct WorldLineDraw {
    Rva site{};
    Vec2 from{}, to{};
    re::ReArray<float, 4> color{};
    float thickness{};
    re::ReOptional<Address> draw_list{};
};
struct WorldImageDraw {
    Rva site{};
    Vec2 min{}, max{};
    Address texture{};
    re::ReArray<float, 4> tint{};
    re::ReOptional<Address> draw_list{};
};
struct WorldBarDraw {
    Rva site{};
    ReI32 x{}, y{}, width{}, height{};
    float value{}, maximum{};
    re::ReOptional<Address> draw_list{};
};
struct WorldFloatRectangleDraw {
    Rva site{};
    Vec2 position{}, size{};
    re::ReArray<float, 4> color{};
    re::ReOptional<Address> draw_list{};
};
struct WorldRectangleDraw {
    Rva site{};
    Vec2 min{}, max{};
    ReU32 color{};
    float rounding{}, thickness{};
    bool filled{};
    re::ReOptional<Address> draw_list{};
};
struct WorldGlowLineDraw {
    Rva site{};
    Vec2 from{}, to{};
    re::ReArray<float, 4> color{}, glow{};
    float thickness{}, glow_radius{}, smoothness{};
    bool argument28{}, argument30{};
    re::ReOptional<Address> draw_list{};
};
struct WorldNativeMeterDraw {
    Rva site{}, helper{};
    Vec2 position{};
    float value{}, maximum{}, width{}, height{};
    ReI32 segments{};
    re::ReOptional<Address> draw_list{};
    re::ReOptional<re::ReArray<ReI32, 4>> integer_geometry{};
};
struct WorldViolationCircleDraw {
    Rva site{}, helper{};
    Vec2 center{};
    float first{}, first_max{}, second{}, second_max{}, third{}, third_max{};
    re::ReOptional<Address> draw_list{};
};
// [C] Legacy field "filled" is native35ac38's HSV/rainbow override, not fill mode.
struct WorldRingMeterDraw {
    Rva site{};
    Vec2 center{};
    float value{}, maximum{}, outer{}, inner{};
    re::ReArray<float, 4> color{};
    bool filled{};
    re::ReOptional<Address> draw_list{};
};
struct WorldPolygonDraw {
    Rva site{};
    re::ReVector<Vec2> points;
    re::ReArray<float, 4> color{};
    float count_argument{};
    re::ReOptional<Address> draw_list{};
};
struct WorldColoredMeterDraw {
    Rva site{}, helper{};
    Vec2 position{};
    float value{}, maximum{}, width{}, height{};
    re::ReArray<float, 4> color{};
    re::ReOptional<Address> draw_list{};
};
struct WorldDirectionMarkerDraw {
    Rva site{};
    Vec2 position{};
    float radius{};
    re::ReArray<float, 4> color{};
    bool direction{};
    float yaw{};
    re::ReOptional<Address> draw_list{};
};
using WorldDrawCommand =
    re::ReVariant<WorldTextDraw, WorldCircleDraw, WorldIconDraw, WorldLineDraw, WorldImageDraw,
                 WorldRectangleDraw, WorldBarDraw, WorldFloatRectangleDraw, WorldTriangleDraw,
                 WorldGlowLineDraw, WorldNativeMeterDraw, WorldViolationCircleDraw,
                 WorldRingMeterDraw, WorldPolygonDraw, WorldColoredMeterDraw,
                 WorldDirectionMarkerDraw>;
// [I] A value handle keeps one ordered record stream and, when supplied, consumes
// each native draw immediately. Copies retain the same callbacks and output.
// Record-only callers may omit background data; geometry consumers must supply it.
class WorldDrawOutput {
    struct Shared {
        re::ReVector<WorldDrawCommand> *records;
        re::ReFunction<void(const WorldDrawCommand &)> consume;
        re::ReFunction<Address(Rva)> background;
    };
    Shared *shared_;
    bool owns_;
    re::ReOptional<Address> draw_list_;

  public:
    WorldDrawOutput(re::ReVector<WorldDrawCommand> &records,
                    re::ReFunction<void(const WorldDrawCommand &)> consume = {},
                    re::ReFunction<Address(Rva)> background = {})
        : shared_(static_cast<Shared*>(re::mem_alloc(sizeof(Shared)))),
          owns_(true) {
        new(shared_) Shared{&records, re::re_move(consume), re::re_move(background)};
    }
    WorldDrawOutput(const WorldDrawOutput &o)
        : shared_(o.shared_), owns_(false), draw_list_(o.draw_list_) {}
    WorldDrawOutput &operator=(const WorldDrawOutput &o) {
        if (this != &o) {
            if (owns_ && shared_) { shared_->~Shared(); re::mem_free(shared_); }
            shared_ = o.shared_; owns_ = false; draw_list_ = o.draw_list_;
        }
        return *this;
    }
    WorldDrawOutput(WorldDrawOutput &&o) noexcept
        : shared_(o.shared_), owns_(o.owns_), draw_list_(o.draw_list_) { o.owns_ = false; o.shared_ = nullptr; }
    WorldDrawOutput &operator=(WorldDrawOutput &&o) noexcept {
        if (this != &o) {
            if (owns_ && shared_) { shared_->~Shared(); re::mem_free(shared_); }
            shared_ = o.shared_; owns_ = o.owns_; draw_list_ = o.draw_list_;
            o.owns_ = false; o.shared_ = nullptr;
        }
        return *this;
    }
    ~WorldDrawOutput() { if (owns_ && shared_) { shared_->~Shared(); re::mem_free(shared_); } }
    void record(WorldDrawCommand command) const {
        if (draw_list_)
            re::re_visit([&](auto &q) { q.draw_list = draw_list_; }, command);
        shared_->records->push_back(re::re_move(command));
    }
    void emplace_back(WorldDrawCommand command) const {
        if (draw_list_)
            re::re_visit([&](auto &q) { q.draw_list = draw_list_; }, command);
        shared_->records->push_back(command);
        if (shared_->consume)
            shared_->consume(command);
    }
    WorldDrawOutput capture_background(Rva accessor_site) const {
        auto captured = *this;
        if (shared_->background)
            captured.draw_list_ = shared_->background(accessor_site);
        /* FREESTANDING: was throw WorldEspMissingInput */
        return captured;
    }
};
// [C] Exact argument domains for distinct native glow/meter helpers. Their raster backends remain separate.
struct WorldRaycastResult {
    bool hit{};
    Vec3 point{}, normal{};
    float distance{};
};
re::ReStringView world_item_name_316574(ReU32);
struct WorldDrawBackend {
    re::ReFunction<Vec2(Vec3)> ingame_projection_314f08;
    re::ReFunction<re::ReOptional<Vec2>(Vec3, ProjectionBounds)> world_projection_36cd20;
    re::ReFunction<Vec2(Vec2, float)> rotate_317b1c;
    re::ReFunction<float()> scale_315778;
    re::ReFunction<Vec2(re::ReStringView)> measure_38f79c;
    re::ReFunction<float(Address)> yaw_31530c;
    re::ReFunction<WorldRaycastResult(Vec3, Vec3, float, ReU32, ReI32)>
        raycast_2e8fac;
};
struct WorldRadarFeedback {
    bool ingame_marker{};
    Vec2 position{};
    float radius{};
};
// [C] Shared radar math and in-game category icon/distance draw, 0x305c1e..0x306085.
void draw_world_radar_305c1e(const WorldDrawData &, const WorldDrawStyle &, const WorldEspConfig &,
                             Vec2 radar_position, Vec2 mouse, WorldDrawBackend &, WorldDrawOutput,
                             WorldRadarFeedback *feedback = nullptr);
// [C] Tooltip layout/clamping at 0x3060ab..0x3066bb.
void draw_world_tooltip_3060ab(Vec2 mouse, Vec2 viewport, re::ReStringView title,
                               re::ReStringView body, bool centered, WorldDrawBackend &,
                               WorldDrawOutput);
struct WorldLabelRows {
    re::ReArray<re::ReString, 5> rows;
    re::ReString tooltip_title, tooltip_body;
    re::ReArray<ReI32, 3> values{}, maximums{};
    bool on_fire_icon{}, suppress_distance{}, draw_line{};
    Vec2 line_from{}, line_to{};
};
struct WorldInteraction {
    Rva site{};
    Address entity{}, local{};
    Vec3 position{};
    ReU32 mode{};
    bool argument_20{}, argument_28{};
};
struct WorldInteractionState {
    bool loot_requested_3e40b8{};
    float deadline_3f0970{};
};
struct WorldInteractionBackend {
    re::ReFunction<float()> time_2e6240;
    re::ReFunction<bool(Vec3, Vec3, ReU32, float, float)> visibility_2e2320;
    re::ReFunction<void(Address, re::ReStringView)> rpc_366c30;
};
bool replay_world_interaction_317928(const Snapshot &, const WorldInteraction &, Vec3,
                                     WorldInteractionState &, WorldInteractionBackend &,
                                     const WorldClassifierBackend &);
re::ReOptional<WorldInteraction> plan_collectable_interaction_2ff529(const WorldDrawData &,
                                                                    const WorldEspConfig &);
struct WorldLocalEffects {
    Address helicopter_3d72b8{};
    re::ReString helicopter_alert;
    re::ReVector<WorldInteraction> interactions;
    re::ReVector<WorldDrawCommand> drawings;
    re::ReFunction<void(const WorldInteraction &)> on_interaction;
    void emit(WorldInteraction action) {
        interactions.push_back(action);
        if (on_interaction)
            on_interaction(action);
    }
};
struct WorldDroppedItem {
    re::ReString short_name, display_name;
    ReU16 category{0xffff};
    ReI32 amount{};
};
WorldDroppedItem read_world_dropped_366724_36679c(const Snapshot &, Address);
WorldDrawStyle decode_world_dropped_303718(const Snapshot &, const WorldDrawData &,
                                           const WorldEspConfig &, WorldLabelRows &,
                                           WorldLocalEffects &);
struct WorldFishingFrame {
    Address local{};
    Vec3 local_position{}, camera_position{};
    ProjectionBounds projection_bounds{};
    bool key96_edge{};
    re::ReOptional<EntityIdentity> looked_at;
};
struct WorldFishingState {
    struct Box {
        Address entity{};
        Vec3 position{};
        ReU32 network_id{};
    };
    re::ReVector<Box> boxes_218820;
    re::ReMap<ReU32, ReI32> counts_3e5f50;
    re::ReMap<ReU32, bool> rods_3e5f90, bait_3e5fd0;
    bool rods_ready_3e5e7a{}, bait_ready_3e5e7b{};
    Vec3 throw_position_3e6070{};
    ReI32 status_3e60a0{};
};
re::ReStringView fishing_status_318bb8(ReI32);
void replay_world_fishing_2fb7fc(const Snapshot &, const WorldEspConfig &,
                                 const WorldFishingFrame &, WorldFishingState &,
                                 WorldInteractionState &, WorldInteractionBackend &,
                                 WorldClassifierBackend &, WorldDrawBackend &, WorldDrawOutput);
struct WorldNameState {
    re::ReMap<re::ReString, re::ReString> substitutions_3fdad0;
};
struct WorldNameBackend {
    re::ReFunction<float(float, float)> random_2e3d5c;
};
re::ReString encode_world_name_393c38(re::ReSpan<const ReU16>, ReUSize capacity = 512);
re::ReString streamer_world_name_3661ac(re::ReStringView, WorldNameState &, WorldNameBackend &);
re::ReOptional<re::ReString> world_owner_name_3663d4_3665b8(const Snapshot &, Address, bool corpse,
                                                          const WorldEspConfig &, WorldNameState &,
                                                          WorldNameBackend &);
WorldDrawStyle decode_world_owner_category_3024e7(const Snapshot &, const WorldDrawData &,
                                                  const WorldEspConfig &, WorldLabelRows &,
                                                  WorldLocalEffects &, WorldNameState &,
                                                  WorldNameBackend &, WorldDrawBackend &,
                                                  WorldClassifierBackend &);
WorldDrawStyle decode_world_turret_3012f9(const Snapshot &, const WorldDrawData &,
                                          const WorldEspConfig &, WorldLabelRows &,
                                          WorldDrawBackend &, WorldClassifierBackend &);
re::ReOptional<re::ReString> crate_timer_366a60(const Snapshot &, Address);
// [C] Snapshot field/flag decoding for 12/15/16/22/50/75/76/84/85 and animal routes; other rich routes stop.
WorldDrawStyle decode_world_category_2fb72c(const Snapshot &, const WorldDrawData &,
                                            const WorldEspConfig &, WorldLabelRows &,
                                            WorldLocalEffects &);
bool world_screen_gate_317130(Vec2 point, Vec2 viewport);
// [C] Full shared visible-label layout and numeric bar arguments, 0x306752..0x306ebe.
void draw_world_label_306752(const WorldDrawData &, const WorldDrawStyle &, const WorldLabelRows &,
                             const WorldEspConfig &, Vec2 viewport, WorldDrawOutput);
bool world_renderer_selected_306f4c(re::ReStringView record_label, ReU32 index);
struct WorldShaderState {
    re::ReArray<Address, 7> bundles_3e5e88{}, shaders_3e5ec0{};
};
struct WorldShaderBackend {
    re::ReFunction<Address(Address)> material_370fac;
    re::ReFunction<Address(Address)> shader_370e84;
    re::ReFunction<Address(Address, re::ReStringView, re::ReStringView, re::ReStringView)>
        load_375abc;
    re::ReFunction<void(Address, Address)> assign_shader_3710dc;
    re::ReFunction<void(Address, re::ReStringView, re::ReArray<float, 4>)> set_color_370d64;
};
// [C] Shader choice/cache and property order; unresolved Unity resource calls are typed.
void apply_world_chams_306ebe(re::ReStringView label, re::ReSpan<const Address> renderers,
                              const WorldEspConfig &, WorldShaderState &, WorldShaderBackend &);

// [C] FOV and radar decorations at 0x309994..0x309f47; layout/drag IO is a separate input.
void draw_world_overlay_geometry_309994(const WorldEspConfig &, ReI32 width,
                                        ReI32 height, Vec2 radar_position, bool map_open,
                                        WorldDrawOutput);

struct CachedWorldFrame {
    ReU32 world_seed{};
    Vec3 camera_position{}, local_position{};
    ProjectionBounds projection_bounds{};
    bool local_369fac{}, map_open{};
};
// [C] Cached SAM/stash seed, map, distinct distance and radar-label rules.
void draw_cached_world_2fc460(re::ReSpan<const CachedWorldObject>, bool sam,
                              const CachedWorldFrame &, const WorldEspConfig &, WorldDrawBackend &,
                              WorldDrawOutput);
// [C] Looked-at stash/lock cache ID dedup and stash persistence/notification.
void cache_looked_at_world_2fc2c6(const Snapshot &, const EntityIdentity &, const WorldEspConfig &,
                                  WorldClassifierState &, WorldClassifierBackend &);

struct WorldWorkerFrame {
    Address camera{}, local{};
    Vec3 camera_position{}, local_position{};
    ProjectionBounds projection_bounds{};
    Vec2 viewport{}, mouse{}, radar_position{};
    bool map_open{}, local_369fac{}, local_2f8180{}, local_2f81e8{};
    ReU32 world_seed{};
    re::ReOptional<EntityIdentity> looked_at;
    WorldFishingFrame fishing;
};
struct WorldWorkerState {
    WorldClassifierState classifier;
    WorldFishingState fishing;
    WorldInteractionState interaction;
    WorldNameState names;
    WorldShaderState shaders;
    Address helicopter_3d72b8{};
    re::ReString helicopter_alert;
};
struct WorldWorkerBackend {
    WorldClassifierBackend game;
    WorldDrawBackend draw;
    WorldNameBackend names;
    WorldShaderBackend shaders;
    WorldInteractionBackend interaction;
    re::ReFunction<bool(Address)> entity_valid_2e0e9c;
    re::ReFunction<re::ReOptional<re::ReVector<Address>>(Address, re::ReStringView, re::ReStringView)>
        renderers_334204_3151bc;
};
void replay_world_worker_2fb72c(const Snapshot &, re::ReSpan<const WorldEspRecord>,
                                const WorldEspConfig &, const WorldWorkerFrame &,
                                WorldWorkerState &, WorldWorkerBackend &, WorldDrawOutput);
struct WorldOverlayState {
    float rotation_3fdac0{};
    bool battle_3e5cb8{};
    Vec3 house_3f0038{}, saved_3effd8{}, marker_3e6050{};
};
struct WorldOverlayFrame {
    Vec3 camera_position{}, local_position{};
    ProjectionBounds projection_bounds{};
};
struct WorldOverlayBackend {
    WorldDrawBackend draw;
    re::ReFunction<float()> delta_time_3926ac;
    re::ReFunction<float(float)> atan_35cb40, sin_2e0198, cos_2dff68, round_314a68;
    re::ReFunction<bool(Rva, bool)> key_edge_2e89e4;
};
void draw_world_crosshair_3643b4(ReI32, ReI32, re::ReArray<float, 4>,
                                 const WorldEspConfig &, WorldOverlayState &, WorldOverlayBackend &,
                                 WorldDrawOutput);
void update_world_overlay_controls_309ff4(const WorldEspConfig &, const WorldOverlayFrame &,
                                          WorldOverlayState &, WorldOverlayBackend &,
                                          WorldDrawOutput);
void draw_world_saved_positions_30a7ce(const WorldEspConfig &, const WorldOverlayFrame &,
                                       const WorldOverlayState &, WorldOverlayBackend &,
                                       WorldDrawOutput);
struct WorldSkeletonBone {
    ReI32 bone{};
    Rva query{}, projection{};
};
struct WorldSkeletonEdge {
    ReUSize first{}, second{};
    Rva site{};
};
re::ReSpan<const WorldSkeletonBone> world_skeleton_bones(bool npc);
re::ReSpan<const WorldSkeletonEdge> world_skeleton_edges(bool npc);
struct WorldPlayerInputs {
    ReU32 registry_kind{};
    float distance{};
    re::ReOptional<bool> visible_36b244, outside_36a1a0;
};
struct WorldPlayerSelection {
    bool selected{}, npc{}, sleeping{}, dead{}, friend_record{}, visible{}, outside{};
    re::ReArray<float, 4> color{};
};
WorldPlayerSelection select_world_overlay_player_3106c9(const PlayerStateFields &,
                                                        const WorldPlayerInputs &,
                                                        const WorldEspConfig &);
// [I] Copied font/global state; these names identify observed offsets, not an ImGui ABI.
struct WorldLabelFont {
    float nominal_14{}, scale_64{};
};
struct WorldLabelFonts {
    Address current_405b28_3c28{};
    re::ReMap<Address, WorldLabelFont> fonts;
    float current_size_248ed0{16.0f};
};
struct WorldFontMeasureRequest {
    Address font{};
    re::ReStringView text;
    float size{}, maximum_width{}, wrap_width{};
};
struct WorldPlayerBackend {
    WorldDrawBackend draw;
    re::ReFunction<re::ReOptional<Vec3>(Address, ReI32)> bone_368be8;
    WorldLabelFonts *label_fonts{};
    // [C] 392198 prepares the first viewport's background DRAW LIST; 37bcfa
    // ignores its return. The subsequent context+3c28 read supplies current font.
    re::ReFunction<void(WorldLabelFonts &)> background_draw_list_392198;
    re::ReFunction<Vec2(const WorldFontMeasureRequest &)> measure_font_3a3874;
    re::ReFunction<bool(re::ReStringView, Vec2, float)> icon_2cc8d0;
};
bool draw_world_skeleton_30f089_31336a(Address, bool npc, ProjectionBounds, re::ReArray<float, 4>,
                                       const WorldEspConfig &, WorldPlayerBackend &,
                                       WorldDrawOutput);
struct WorldFacingQuad {
    Vec3 center{}, forward{}, right{}, up{};
    re::ReArray<Vec3, 4> corners;
};
WorldFacingQuad world_facing_quad_30ec65(Vec3 position, Vec3 camera);
Vec3 rotate_world_vector_320db4(Vec3, re::ReArray<float, 4>);
Vec2 world_oof_point_2f986c(float, float, ReI32, ReI32, ReI32,
                            WorldOverlayBackend &);
struct WorldPlayerRadarData {
    Vec3 position{}, camera_position{};
    float camera_yaw{}, distance{};
    re::ReArray<float, 4> rotation{};
    Vec2 viewport{}, radar_position{};
    ProjectionBounds projection_bounds{};
    bool map_open{}, flag_100{};
};
void draw_world_player_radar_311ce4(const WorldPlayerRadarData &, const WorldPlayerSelection &,
                                    const WorldEspConfig &, WorldOverlayBackend &, WorldDrawOutput);
void draw_world_corner_box_37b724(const re::ReArray<Vec2, 4> &, re::ReArray<float, 4>, float,
                                  WorldDrawOutput);
struct WorldPlayerLabel {
    re::ReString key, text;
    ReI32 side{};
    ReU32 icon_id{};
};
// [I] Exact-six copied-widget adaptation. Full native vectors use the backend
// preparers below, since a first matching key can lie beyond the first six.
re::ReArray<WorldPlayerLabel, 6>
prepare_copied_world_labels(re::ReArray<WorldPlayerLabel, 6>, const re::ReArray<re::ReString, 6> &,
                            re::ReOptional<ReU32> held_identifier = {});
struct WorldPlayerLabelState {
    re::ReArray<ReI32, 5> counters_3e5cc8{};
};
struct WorldPlayerLabelLayout {
    Vec2 position{}, measured{};
    bool icon{};
};
WorldPlayerLabelLayout draw_world_player_label_37bc98(const re::ReArray<Vec2, 4> &,
                                                      const WorldPlayerLabel &,
                                                      re::ReArray<float, 4>, const WorldEspConfig &,
                                                      WorldPlayerLabelState &, WorldPlayerBackend &,
                                                      WorldDrawOutput);
struct WorldPlayerLabelData {
    bool npc{}, special_npc{}, dead{}, friend_record{}, outside{}, flag_100{}, wounded{},
        model_wounded{};
    float distance{};
    re::ReString name, held_name;
};
re::ReArray<re::ReString, 6> world_player_label_texts_31265f(const WorldPlayerLabelData &,
                                                           const WorldEspConfig &);
struct WorldTracePoint {
    Vec3 position{};
    float time{};
};
void draw_world_tracers_30ab62(re::ReVector<re::ReVector<WorldTracePoint>> &, float, ProjectionBounds,
                               const WorldEspConfig &, WorldDrawBackend &, WorldDrawOutput);
struct WorldViolationValues {
    float value_3e6090{}, value_3e6094{}, value_3e6098{};
};
Vec2 draw_world_violation_bars_30c3e0(Vec2 window, Vec2 center, const WorldViolationValues &,
                                      const WorldEspConfig &, WorldDrawOutput);
float world_floor_320c2c(float);
struct WorldSimulationRequest {
    Vec3 position{}, velocity{}, gravity{};
    float duration{};
    re::ReOptional<float> drag;
    ReU32 mask{};
};
struct WorldSimulationResult {
    Vec3 position{}, velocity{}, normal{};
    re::ReVector<Vec3> points;
    bool hit{};
};
WorldSimulationResult simulate_world_31885c_3185a0(WorldSimulationRequest, WorldDrawBackend &);
void draw_world_simulation_30d207(const WorldSimulationResult &, ReUSize branch,
                                  ProjectionBounds, const WorldEspConfig &, WorldOverlayBackend &,
                                  WorldDrawOutput);
struct WorldHandcuffCandidate {
    Address entity{};
    bool valid{}, wounded{}, flag_10000000{};
    float distance{};
};
struct WorldRegistryCandidate {
    Address entity{};
    bool valid{}, model_valid{}, player_model_valid{}, npc{};
    ReU64 identifier{};
    re::ReString identifier_text, name;
    Vec3 bone_53{};
};
struct WorldOverlayTailState {
    ReI32 index_3f12f8{};
    float deadline_3f12fc{}, deadline_3f1300{}, deadline_3f1304{};
    struct Registry {
        re::ReString name;
        ReI32 kind{};
    };
    struct History {
        re::ReString previous_name, current_name, identifier_text, grid;
        ReU64 identifier{}, team{};
    };
    re::ReMap<re::ReString, Registry> registry_3d7260;
    re::ReVector<History> history_218850;
};
struct WorldGridData {
    Vec3 position_3743b4{}, size_3743f8{}, inverse_374370{};
};
re::ReString world_grid_315518(Vec3, const re::ReOptional<WorldGridData> &);
struct WorldRegistryBackend {
    re::ReFunction<re::ReOptional<WorldGridData>()> terrain_315a24;
    re::ReFunction<bool(Vec3, Vec3, ReU32, float, float)> visibility_2e2320;
};
void replay_world_handcuff_tail_3141bb(re::ReSpan<const WorldHandcuffCandidate>,
                                       const WorldEspConfig &, WorldOverlayTailState &,
                                       WorldInteractionBackend &,
                                       const re::ReFunction<bool(Address)> &hood_369cdc);
void refresh_world_registry_3143c7(re::ReSpan<const WorldRegistryCandidate>, Address local,
                                   WorldOverlayTailState &, WorldInteractionBackend &,
                                   WorldRegistryBackend &);
re::ReString world_two_decimals_30ae4a(float, WorldOverlayBackend &);
void draw_world_time_30ae1d(float, const WorldEspConfig &, WorldOverlayBackend &, WorldDrawOutput);
struct WorldCodeStatusState {
    re::ReMap<ReU32, float> times_3e5df0;
    re::ReMap<ReU32, ReI32> counts_3e5e30;
};
void draw_world_code_status_30a1c3(re::ReSpan<const WorldClassifierState::LockCache>, Vec3,
                                   ProjectionBounds, const WorldEspConfig &, WorldCodeStatusState &,
                                   WorldDrawBackend &,
                                   const re::ReFunction<float()> &realtime_31581c, WorldDrawOutput);
struct WorldWindowFrame {
    ReI32 width{}, height{};
    bool map_open{}, busy_218818{}, battle_3e5cb8{}, fishing_3e607c{};
    float tension_3e6080{};
};
struct WorldWindowState {
    Vec2 radar_3efda8{}, fishing_3efcb8{}, violation_3efd58{}, warning_3efd08{};
    bool radar_reset_3e5cb9{}, fishing_reset_3e5cba{}, violation_reset_3e5cbe{},
        warning_reset_3e5cbf{};
};
// [U] Sample-local ImGui primitive implementations remain explicit unresolved dependencies.
struct WorldWindowBackend {
    re::ReFunction<void(Vec2, ReI32, Vec2)> position_39b734;
    re::ReFunction<void(Vec2, ReI32)> size_39b770;
    re::ReFunction<void(ReUSize, re::ReArray<float, 4>)> style_392ca4;
    re::ReFunction<void(re::ReStringView, ReU32)> begin_38cfa4;
    re::ReFunction<Vec2()> current_position_39246c;
    re::ReFunction<void()> end_390994;
};
void layout_world_radar_window_309a27(const WorldEspConfig &, const WorldWindowFrame &,
                                      WorldWindowState &, WorldWindowBackend &);
void layout_world_fishing_window_30a5dd(const WorldEspConfig &, const WorldWindowFrame &,
                                        WorldWindowState &, WorldWindowBackend &, WorldDrawOutput);
Vec2 layout_world_violation_window_30c25c(const WorldWindowFrame &, WorldWindowState &,
                                          WorldWindowBackend &);
void end_world_violation_window_30c6e6(WorldWindowBackend &);
Vec2 layout_world_warning_window_30cd4e(const WorldEspConfig &, const WorldWindowFrame &,
                                        WorldWindowState &, WorldWindowBackend &);
Vec2 draw_world_status_flags_30b140(Vec2 half_screen, const WorldEspConfig &, WorldDrawOutput);
struct WorldSignInput {
    EntityIdentity identity;
    re::ReOptional<re::ReString> component_name_37361c;
};
Vec2 draw_world_sign_status_30b6b3(const Snapshot &, const re::ReOptional<WorldSignInput> &, Vec2,
                                   const WorldEspConfig &, WorldDrawOutput);
Vec2 draw_world_authorization_status_30bce7(Vec2, const re::ReOptional<re::ReString> &found_code,
                                            const WorldEspConfig &, WorldDrawOutput);
Vec2 draw_world_teleport_panel_30c8d0(Vec2, re::ReSpan<const Vec3>, ProjectionBounds,
                                      const WorldEspConfig &, WorldOverlayBackend &,
                                      WorldDrawOutput);
struct WorldLookingData {
    bool npc{}, sleeping{}, wounded{}, dead{}, friend_record{}, looking_36a320{}, aiming_369f6c{};
    re::ReString name, held_name;
};
Vec2 draw_world_looking_alert_310832(const WorldLookingData &, Vec2, const WorldEspConfig &,
                                     WorldDrawOutput);
struct WorldFriendKeyInput {
    Address entity{}, target{};
    bool target_valid{}, dead{}, npc{};
    Vec3 position{};
    Vec2 viewport{};
    ProjectionBounds projection_bounds{};
    re::ReString identifier_text;
};
bool replay_world_friend_keys_31236d(const WorldFriendKeyInput &, const WorldEspConfig &,
                                     WorldOverlayTailState &, WorldPlayerBackend &,
                                     const re::ReFunction<bool(ReI32, bool)> &key_2e8910);
struct WorldPlayerViewData {
    Address entity{}, target{};
    bool target_valid{}, dead{}, sleeping{}, flag_100{};
    Vec3 head_53_offset_02{};
    Vec2 half_screen{};
    ProjectionBounds projection_bounds{};
    re::ReArray<float, 4> rotation{}, color{};
};
void draw_world_player_view_313020(const WorldPlayerViewData &, const WorldEspConfig &,
                                   WorldPlayerBackend &, WorldDrawOutput);
struct WorldInventoryItem {
    bool definition_valid{}, has_condition{};
    Address texture{};
    ReI32 amount{};
    float maximum_condition{}, condition{};
};
struct WorldInventoryLists {
    re::ReVector<re::ReOptional<WorldInventoryItem>> hotbar, clothing;
};
bool draw_world_inventory_tooltip_310f94(const WorldInventoryLists &, Vec2 mouse, Vec2 viewport,
                                         const WorldEspConfig &, WorldDrawBackend &,
                                         WorldDrawOutput);
struct WorldIngamePlayerData {
    Address entity{};
    bool npc{};
    Vec3 position{};
    Vec2 mouse{}, viewport{};
    float distance{}, yaw{};
    re::ReArray<float, 4> color{};
    bool yaw_valid{};
};
void draw_world_ingame_player_310d4c(
    const WorldIngamePlayerData &, const WorldEspConfig &, WorldDrawBackend &,
    const re::ReFunction<re::ReOptional<WorldInventoryLists>(Address)> &, bool &tooltip_drawn,
    WorldDrawOutput);
struct WorldHeldName {
    re::ReString name;
    ReU32 identifier{};
};
struct WorldPlayerFrame {
    Vec3 camera_position{}, local_position{};
    ProjectionBounds projection_bounds{};
    Vec2 half_screen{}, viewport{}, mouse{}, radar_position{};
    float camera_yaw{};
    bool map_open{};
    Address target_2e02b0{}, friend_target_314bb4{};
    bool target_valid{}, friend_target_valid{};
    re::ReOptional<re::ReArray<WorldPlayerLabel, 6>> npc_labels, player_labels;
};
struct WorldPlayerRunState {
    WorldNameState names;
    WorldOverlayTailState tail;
    re::ReVector<WorldHandcuffCandidate> handcuffs;
    Vec2 warning_cursor{};
    bool tooltip_drawn{};
};
struct WorldPlayerRunBackend {
    WorldPlayerBackend player;
    WorldClassifierBackend game;
    WorldNameBackend names;
    WorldOverlayBackend overlay;
    re::ReFunction<Address(Address)> component_transform_315a54;
    re::ReFunction<bool(Address)> entity_valid_2e0e9c, visible_36b244, outside_36a1a0,
        looking_36a320, aiming_369f6c;
    re::ReFunction<re::ReArray<float, 4>(Address)> rotation_36920c;
    re::ReFunction<WorldHeldName(Address)> held_name_368a84_37154c_372398;
    re::ReFunction<re::ReOptional<WorldInventoryLists>(Address)> inventory;
    re::ReFunction<bool(ReI32, bool)> key_2e8910;
    re::ReFunction<re::ReArray<WorldPlayerLabel, 6>(const re::ReArray<re::ReString, 6> &,
                                                  re::ReOptional<ReU32>)>
        prepare_npc_labels, prepare_player_labels;
};
void replay_world_player_overlay_30ea17(const Snapshot &, re::ReSpan<const WorldEspPlayerRecord>,
                                        const WorldEspConfig &, const WorldPlayerFrame &,
                                        WorldPlayerRunState &, WorldPlayerRunBackend &,
                                        WorldDrawOutput);
struct WorldSimulationCacheEntry {
    TrajectoryParameters parameters;
    re::ReVector<TrajectoryTable> tables;
};
struct WorldSimulationState {
    re::ReMap<ReU64, WorldSimulationCacheEntry> cache;
    re::ReOptional<ReU64> active_key_3e5718;
    Vec3 motion_3e6060{};
    re::ReOptional<double> branch1_fourth_vararg;
    re::ReOptional<re::ReArray<double, 3>> branch3_varargs;
};
struct WorldSimulationBackend {
    WorldOverlayBackend overlay;
    re::ReFunction<Vec3(Address)> direction_368100, local_position_369164;
    re::ReFunction<Address(Address)> held_368a84, object_3716e0, object_371eb8, object_3721b4,
        object_371464, magazine_371630, projectile_372abc, modification_36b938,
        thrown_projectile_372b30, held_item_37154c;
    re::ReFunction<ReU32(Address)> item_identifier_37261c;
    re::ReFunction<float(Address)> charge_speed_36b504, attachments_36b758;
    re::ReFunction<re::ReOptional<re::ReString>(Address)> class_name_2e5a54;
};
void replay_world_simulation_worker_30cf87(const Snapshot &, Address local, ProjectionBounds,
                                           const WorldEspConfig &, WorldSimulationState &,
                                           WorldSimulationBackend &, WorldDrawOutput);
struct WorldFullOverlayFrame {
    ReI32 width{}, height{};
    Address local{}, camera{};
    bool camera_transform_valid{}, map_open{}, busy_218818{}, input_captured_2e6844{},
        fishing_3e607c{};
    float tension_3e6080{};
    Vec3 camera_position{}, local_position{};
    ProjectionBounds projection_bounds{};
    re::ReSpan<const WorldClassifierState::LockCache> locks;
    re::ReOptional<WorldSignInput> looked_sign;
    re::ReOptional<re::ReString> found_code_218868;
    WorldViolationValues violations;
    re::ReSpan<const Vec3> teleport_positions_218960;
    WorldPlayerFrame players;
    re::ReSpan<const WorldEspPlayerRecord> player_records;
    re::ReSpan<const WorldRegistryCandidate> registry_candidates;
};
struct WorldFullOverlayState {
    WorldOverlayState controls;
    WorldWindowState windows;
    WorldCodeStatusState codes;
    re::ReVector<re::ReVector<WorldTracePoint>> traces_3e6010;
    WorldSimulationState simulation;
    WorldPlayerRunState players;
};
struct WorldFullOverlayBackend {
    WorldOverlayBackend overlay;
    WorldWindowBackend windows;
    WorldSimulationBackend simulation;
    WorldPlayerRunBackend players;
    WorldInteractionBackend interaction;
    WorldRegistryBackend registry;
    re::ReFunction<float()> realtime_31581c;
    re::ReFunction<bool(Address)> hood_369cdc;
};
void replay_world_overlay_3098a4(const Snapshot &, const WorldEspConfig &,
                                 const WorldFullOverlayFrame &, WorldFullOverlayState &,
                                 WorldFullOverlayBackend &, WorldDrawOutput);
struct WorldCoverageRange {
    Rva begin{}, end{};
    re::ReStringView disposition;
};
re::ReSpan<const WorldCoverageRange> world_esp_coverage();
void check_world_esp_reconstruction();
} // namespace rust_internal_re
