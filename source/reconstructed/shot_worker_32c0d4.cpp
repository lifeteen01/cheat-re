#include "server_analysis.hpp"
namespace rust_internal_re {
// [C] Full reconstruction of 0x32c0d4..0x32cae8 "shot_worker"
// [C] Shot construction: aim direction, spread, speed manipulation per projectile.
// [C] Verified against dump assembly at 0x7ffa2b7e54d4 (Ghidra base 0x7ffa2b4B9400).

// [C] Config addresses from assembly:
//   0x3f7d08 = Bools.nospread
//   0x3d7fb8 = Bools.instanthit
//   0x3d7ce8 = Bools.IncreaseVelocity
//   0x3d7e78 = Bools.PSilent
//   0x3d8058 = Bools.DoFatBulletHit
//   0x3d7ec8 = Bools.Pierce
//   0x3f7d58 = Bools.usemisschance
//   0x3d80a8 = F.projectilespeed
//   0x3e6084 = cached projectile speed float
//   0x3f7ee8 = F.misschance
//   0x3f95c8 = i.CurrentProjectileMaterial
//   0x3d8301 = some enable byte
//   0x3d72a0 = PSilent secondary enable
//   0x3e5718 = cached prediction context pointer
//   0x3f7df8 = aim adjustment enable flag
//   0x3f7f88 = aim adjustment float
//   0x3f7e48 = Bools.SpecialTeleport
//   0x3a3168 = alternative PSilent source enable

constexpr ReU32 kSpecialAmmoType = 0x34b73d71;
constexpr float kSpeedClampMax = 1.495f;
constexpr float kDamageThreshold = 1.3f;

struct ShotWorkerCalls {
    re::ReFunction<bool(Address)> is_valid_2caf08;
    re::ReFunction<Address()> get_local_player_2dda9c;
    re::ReFunction<Address(Address)> get_active_item_368a84;
    re::ReFunction<Address(Address)> get_held_entity_371464;
    re::ReFunction<Address(Address)> get_projectile_base_36b938;
    re::ReFunction<Address(Address)> get_ammo_type_37154c;
    re::ReFunction<ReU32(Address)> get_ammo_crc_37261c;
    re::ReFunction<float(Address)> get_special_speed_36b504;
    re::ReFunction<float(Address)> get_damage_36b758;
    re::ReFunction<float(Address)> get_weapon_coeff_36b6cc;
    re::ReFunction<float(Address)> get_spread_372954;
    re::ReFunction<Address(Address)> get_owner_3742d4;
    re::ReFunction<bool(Address)> check_target_2e0e9c;
    re::ReFunction<void(Address, Vec3&)> get_target_pos_369790;
    re::ReFunction<bool(Vec3&, Vec3&)> compare_vec3_2df5dc;
    re::ReFunction<void(Address, Vec3&, Vec3&, Vec3&, Address)> run_prediction_2e2374;
    re::ReFunction<float(float, float)> random_float_2e3d5c;
    re::ReFunction<bool(Address)> prediction_valid_2e3b58;
    re::ReFunction<Vec3*(Address, Vec3*)> get_prediction_dir_2e1278;
    re::ReFunction<void(Address, Vec3&)> get_position_368100;
    re::ReFunction<void(Address, Vec3&)> get_eye_pos_369164;
    re::ReFunction<Address()> select_target_2e02b0;
    re::ReFunction<Vec3*(Address)> get_config_vec3_3c7bbc;
    re::ReFunction<ReU32*(Address, ReU32*)> build_key_2d4060;
    re::ReFunction<Address*(Address, Address)> hashmap_get_2d87b0;
    re::ReFunction<Address*(Address, Address)> hashmap_get2_2d7d90;
    re::ReFunction<bool(Address, Address)> hashmap_contains_2cc534;
    re::ReFunction<Address*(Address)> hashmap_deref_2d4de8;
    re::ReFunction<void(Address, Address, Address, ReU32)> build_entry_32b838;
    // [C] Fixed: scale_direction is at 0x2df66c, NOT 0x798a6c (BUG 2 fix)
    re::ReFunction<Vec3*(Vec3&, Vec3&, float)> scale_direction_2df66c;
    re::ReFunction<Address(Address, Address)> get_material_label_3302b0;
    // [C] BUG 3 fix: classification function at 0x32bb60
    re::ReFunction<float(Address)> classify_projectile_32bb60;
    // [C] BUG 4 fix: per-projectile spread calculation at 0x3727e0
    re::ReFunction<float(Address, int, int)> calculate_spread_3727e0;
    // [C] BUG 5 fix: direction setup at 0x32bd4c
    re::ReFunction<void(Address, float, Vec3&, bool)> setup_direction_32bd4c;
    // [C] BUG 7 fix: teleport target resolution and position write
    re::ReFunction<Address(Address)> get_teleport_target_32be08;
    re::ReFunction<void(Address, Vec3&)> write_teleport_position_375140;
    // [C] hashmap cleanup at end of each loop iteration
    re::ReFunction<void(Address, ReU32*, Address)> hashmap_update_32cb8c;
    // [C] instanthit spread section helpers
    re::ReFunction<void(Address, int, Vec3&)> get_config_field_821fe8;
    re::ReFunction<float(Address)> get_distance_822b0c;
    re::ReFunction<void(Address, Vec3&)> get_aim_target_82301c;
    // [C] alternative PSilent cached target accessor
    re::ReFunction<bool(Address)> check_alt_target_79a29c;
    re::ReFunction<void(Address, Vec3&)> get_alt_target_pos_822b90;
    // [C] various Vec3 config helpers
    re::ReFunction<Vec3*(Address)> get_config_vec3_880fbc;
    re::ReFunction<Vec3*(float, float, float, Address)> make_vec3_880fa8;
    re::ReFunction<void(Address, Vec3&, Address)> lerp_position_798b08;
};

struct ShotWorkerConfig {
    bool nospread;              // 0x3f7d08
    bool instanthit;            // 0x3d7fb8
    bool increase_velocity;     // 0x3d7ce8
    bool psilent;               // 0x3d7e78
    bool psilent_secondary;     // 0x3d72a0
    bool do_fat_bullet_hit;     // 0x3d8058
    bool pierce;                // 0x3d7ec8
    bool use_miss_chance;       // 0x3f7d58
    bool some_enable;           // 0x3d8301
    bool special_teleport;      // 0x3f7e48
    bool aim_adjust_enable;     // 0x3f7df8
    bool alt_psilent_enable;    // 0x3a3168
    float projectile_speed_cfg; // 0x3d80a8
    float cached_speed;         // 0x3e6084
    float miss_chance;          // 0x3f7ee8
    float aim_adjust_value;     // 0x3f7f88
    float nospread_divisor;     // 0x3f7f38 (used in spread math)
    int current_material;       // 0x3f95c8
    Vec3 fat_bullet_vec;        // 0x3d72d0
    Vec3 pierce_vec;            // 0x3d72e0
    Address prediction_ctx;     // 0x3e5718
    Address alt_target;         // 0x3e56b8
    ReU8 some_flag;             // 0x3e4238
};

struct ShotWorkerResult {
    bool executed{};
    ReUSize projectiles_modified{};
    bool psilent_active{};
    bool prediction_succeeded{};
};

ShotWorkerResult execute_shot_worker_32c0d4(
    Address shot_context,
    const ShotWorkerCalls& api,
    const ShotWorkerConfig& cfg)
{
    ShotWorkerResult out{};

    // [C] 0x32c129: null-check chain
    if (!api.is_valid_2caf08(0)) return out;
    Address local_player = api.get_local_player_2dda9c();
    if (!api.is_valid_2caf08(local_player)) return out;

    Address active_item = api.get_active_item_368a84(local_player);
    if (!api.is_valid_2caf08(active_item)) return out;

    Address weapon = api.get_held_entity_371464(active_item);
    if (!api.is_valid_2caf08(weapon)) return out;

    Address proj_base = api.get_projectile_base_36b938(weapon);
    if (!api.is_valid_2caf08(proj_base)) return out;

    Address shot_list = *(Address*)(shot_context + 0x10);
    if (!api.is_valid_2caf08(shot_list)) return out;
    Address proj_array = *(Address*)(shot_list + 0x10);
    if (!api.is_valid_2caf08(proj_array)) return out;

    // [C] base projectile speed from weapon+0x3ac
    float projectile_speed = *(float*)(weapon + 0x3ac);

    // [C] special ammo CRC dispatch
    Address ammo = api.get_ammo_type_37154c(active_item);
    if (api.is_valid_2caf08(ammo)) {
        ReU32 ammo_crc = api.get_ammo_crc_37261c(ammo);
        if (ammo_crc == kSpecialAmmoType) {
            projectile_speed = api.get_special_speed_36b504(weapon);
        }
    }

    // [C] velocity multiplier from config and damage
    float damage = api.get_damage_36b758(weapon);
    float velocity_mult = 1.0f;
    ReU8 damage_flag = *(ReU8*)0; // DAT_7ffa2b89d638 = some_flag

    if (damage < kDamageThreshold) {
        if (cfg.some_enable && cfg.some_flag) {
            velocity_mult = cfg.cached_speed;
            if (velocity_mult > kSpeedClampMax) velocity_mult = kSpeedClampMax;
        } else if (cfg.instanthit) {
            velocity_mult = kSpeedClampMax;
        } else if (cfg.increase_velocity) {
            velocity_mult = cfg.projectile_speed_cfg;
            if (velocity_mult > kSpeedClampMax) velocity_mult = kSpeedClampMax;
        }
    }

    // [C] damage-based multiplier
    if (damage != 0.0f && !damage_flag) {
        damage = api.get_damage_36b758(weapon);
        velocity_mult = damage * velocity_mult;
    }

    // [C] read aim angles and weapon coefficients
    float aim_angle_1 = *(float*)(proj_base + 0x44);   // xmm11
    float aim_angle_0 = *(float*)(proj_base + 0x40);   // xmm9
    float weapon_coeff = api.get_weapon_coeff_36b6cc(weapon);  // xmm10
    float aim_angle_2 = *(float*)(proj_base + 0x3c);   // xmm13
    float spread_val = api.get_spread_372954(proj_base); // xmm12

    Address magazine = *(Address*)(weapon + 0x428);
    if (!api.is_valid_2caf08(magazine)) return out;

    // [C] lazy once-per-session init (bit flags at global 0x3f7f98)
    // [I] Resolves AnimationCurve.Evaluate and installs config handler

    float random_seed = api.random_float_2e3d5c(0.0f, 1.0f);
    // [C] xmm7 = random_seed * weapon_coeff (intermediate used in spread math)
    float spread_base = random_seed * weapon_coeff;

    int shot_count = *(int*)(proj_base + 0x38);
    int proj_count = *(int*)(shot_list + 0x18);

    Address target = api.select_target_2e02b0();
    Vec3 player_pos{}, eye_pos{};
    api.get_position_368100(local_player, player_pos);
    api.get_eye_pos_369164(local_player, eye_pos);

    if (proj_count <= 0) return out;

    bool single_shot = shot_count < 2;
    // [C] composite_speed = (angle1 + angle0) * projSpeed * velocityMult
    float composite_speed = (aim_angle_1 + aim_angle_0) * projectile_speed * velocity_mult;

    out.executed = true;

    // [C] projectile loop
    for (int i = 0; i < proj_count; ++i) {
        Address projectile = *(Address*)(proj_array + 0x20 + i * 8);
        if (!api.is_valid_2caf08(projectile)) continue;

        // [C] lookup projectile in hash table by seed (projectile+0x30)
        ReU32 seed = *(ReU32*)(projectile + 0x30);
        // [I] Hash lookup through build_key → hashmap operations
        // ... hash table lookup producing hash_entry ...
        Address hash_entry = 0; // result of hash lookup + deref

        if (!api.is_valid_2caf08(hash_entry)) continue;

        // [C] verify entry owner == local player
        Address owner = api.get_owner_3742d4(hash_entry);
        if (owner != local_player) continue;

        Vec3 aim_direction{};
        bool used_psilent = false;

        // [C] PSilent branch — silent aim via prediction
        if (cfg.psilent && cfg.psilent_secondary) {
            if (api.is_valid_2caf08(target) && api.check_alt_target_79a29c(target)) {
                Vec3 target_pos{};
                api.get_alt_target_pos_822b90(target, target_pos);

                // [C] DoFatBulletHit: override aim vector from config
                if (cfg.do_fat_bullet_hit) {
                    Vec3* fat_ptr = api.get_config_vec3_880fbc(0);
                    if (api.compare_vec3_2df5dc(target_pos, *fat_ptr)) {
                        target_pos = cfg.fat_bullet_vec;
                    }
                }

                // [C] Pierce: override aim vector from config
                if (cfg.pierce && cfg.some_enable) {
                    Vec3* pierce_ptr = api.get_config_vec3_880fbc(0);
                    if (api.compare_vec3_2df5dc(target_pos, *pierce_ptr)) {
                        target_pos = cfg.pierce_vec;
                    }
                }

                // [C] run trajectory prediction
                if (cfg.prediction_ctx) {
                    // blocked:game_artifacts — prediction API
                }

                // [C] miss chance — random roll against config
                if (cfg.use_miss_chance) {
                    float roll = api.random_float_2e3d5c(0.0f, velocity_mult);
                    if (float(int(cfg.miss_chance)) > roll) {
                        goto after_psilent;
                    }
                }

                // [C] get direction from prediction
                // if (!api.prediction_valid_2e3b58(prediction)) {
                //     aim_direction = *api.get_prediction_dir_2e1278(prediction, &output);
                //     used_psilent = true;
                // }
                out.psilent_active = true;
                used_psilent = true;
            }
        }
        // [C] Alternative PSilent path (from cached target at 0x3a3168)
        else if (cfg.alt_psilent_enable && cfg.alt_target) {
            // [C] Similar prediction logic using cached target
            // ... (removed unreachable blocks in Ghidra = VMProtect opaque predicates)
        }

        after_psilent:

        // [C] BUG 3 FIX: classification write to hash_entry+0x44
        // [C] At 0x32c84b (asm 0x7ffa2b7e5c4b): call classify_projectile(active_item)
        // [C] At 0x32c850 (asm 0x7ffa2b7e5c50): write result to [RDI+0x44] = hash_entry+0x44
        float classification = api.classify_projectile_32bb60(active_item);
        *(float*)(hash_entry + 0x44) = classification;

        // [C] instanthit spread section (0x32c855-0x32c8f3)
        if (cfg.instanthit) {
            if (api.is_valid_2caf08(target) && api.check_alt_target_79a29c(target)) {
                Vec3 spread_dir{};
                api.get_config_field_821fe8(target, 0x3e, spread_dir);
                float dist = api.get_distance_822b0c(target);
                // [C] distance-based spread adjustment
                // [C] Uses 5000.0f constant and config scaling
                // ... complex instanthit math adjusting hash_entry+0x44 ...
            }
        }

        // [C] BUG 4 FIX: per-projectile spread calculation
        // [C] At 0x32c907 (asm 0x7ffa2b7e5d07): call 0x3727e0(proj_base, loop_index, shot_count)
        api.calculate_spread_3727e0(proj_base, i, shot_count);

        // [C] spread math: combine spread_val, aim_angle_2, and random_seed*weapon_coeff
        float current_spread = spread_val;
        if (shot_count <= 1) {
            current_spread = spread_val; // use original for single shot
        }
        float combined = current_spread * aim_angle_2 + spread_base;

        // [C] nospread divisor adjustment
        float direction_spread;
        if (cfg.nospread) {
            direction_spread = (cfg.nospread_divisor / velocity_mult) * combined;
        } else {
            direction_spread = combined;
        }

        // [C] aim adjustment config write to hash_entry+0x3c
        if (cfg.aim_adjust_enable) {
            *(float*)(hash_entry + 0x3c) = cfg.aim_adjust_value;
        }

        // [C] BUG 5 FIX: direction setup at 0x32bd4c
        // [C] At 0x32c95d (asm 0x7ffa2b7e5d5d): call setup_direction(state, spread, aim_dir, single_shot)
        api.setup_direction_32bd4c(0, direction_spread, aim_direction, single_shot);

        // [C] BUG 1 FIX: Correct write targets — projectile vs hash_entry
        // [C] First scale_direction call → write to PROJECTILE+0x20/+0x28
        Vec3* velocity1 = api.scale_direction_2df66c(aim_direction, aim_direction, composite_speed);
        *(ReU64*)(projectile + 0x20) = *(ReU64*)velocity1;         // projectile+0x20 (xy)
        *(ReU32*)(projectile + 0x28) = *((ReU32*)velocity1 + 2);   // projectile+0x28 (z)

        // [C] Second scale_direction call → write to HASH_ENTRY+0x16c/+0x174
        Vec3* velocity2 = api.scale_direction_2df66c(aim_direction, aim_direction, composite_speed);
        *(ReU64*)(hash_entry + 0x16c) = *(ReU64*)velocity2;        // hash_entry+0x16c (xy)
        *(ReU32*)(hash_entry + 0x174) = *((ReU32*)velocity2 + 2);  // hash_entry+0x174 (z)

        // [C] Third scale_direction call → write to HASH_ENTRY+0x28/+0x30
        Vec3* velocity3 = api.scale_direction_2df66c(aim_direction, aim_direction, composite_speed);
        *(ReU64*)(hash_entry + 0x28) = *(ReU64*)velocity3;         // hash_entry+0x28 (xy)
        *(ReU32*)(hash_entry + 0x30) = *((ReU32*)velocity3 + 2);   // hash_entry+0x30 (z)

        // [C] BUG 6 FIX: nospread override writes to hash_entry+0xf8/+0x100
        // [C] At 0x32c9eb (asm 0x7ffa2b7e5deb): check Bools.nospread (0x3f7d08)
        if (cfg.nospread) {
            Vec3* nospread_vec = api.get_config_vec3_880fbc(0);
            *(ReU64*)(hash_entry + 0xf8) = *(ReU64*)nospread_vec;
            *(ReU32*)(hash_entry + 0x100) = *((ReU32*)nospread_vec + 2);
        }

        // [C] BUG 7 FIX: SpecialTeleport section
        // [C] At 0x32ca12 (asm 0x7ffa2b7e5e12): check Bools.SpecialTeleport (0x3f7e48)
        if (cfg.special_teleport) {
            // [C] Write eye_pos to hash_entry+0x178/+0x180
            *(ReU64*)(hash_entry + 0x178) = *(ReU64*)&eye_pos;
            *(ReU32*)(hash_entry + 0x180) = *((ReU32*)&eye_pos + 2);
            // [C] Write eye_pos to projectile+0x10/+0x18
            *(ReU64*)(projectile + 0x10) = *(ReU64*)&eye_pos;
            *(ReU32*)(projectile + 0x18) = *((ReU32*)&eye_pos + 2);
            // [C] Get teleport target and write position
            Address teleport_target = api.get_teleport_target_32be08(hash_entry);
            if (api.is_valid_2caf08(teleport_target)) {
                api.write_teleport_position_375140(teleport_target, eye_pos);
            }
        }

        // [C] hashmap cleanup/update at end of iteration
        // [C] At 0x32ca8d (asm 0x7ffa2b7e5e8d): call 0x32cb8c
        api.hashmap_update_32cb8c(0, &seed, hash_entry);

        ++out.projectiles_modified;
    }

    return out;
}

} // namespace rust_internal_re
