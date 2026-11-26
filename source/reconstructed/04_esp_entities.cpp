#include "entities_analysis.hpp"
namespace rust_internal_re {
// [C] 0x2f8540 transforms each 32-bit half independently, preserving wrapping arithmetic.
Address decode_reference_words_2f8540(Address encoded) {
    auto decode=[](ReU32 x) {
        x=re::re_rotr(x,24);x^=0x5d4d9bffu;x-=0x747d482fu;return re::re_rotr(x,6);
    };
    return Address(decode(ReU32(encoded))) | (Address(decode(ReU32(encoded>>32)))<<32);
}
// [C] 0x314b80 second encoded-reference transformation.
Address decode_reference_words_314b80(Address encoded) {
    auto decode=[](ReU32 x) {
        x+=0x3c231fb8u;x^=0x62748682u;x=re::re_rotr(x,7);return ReU32(x+0x59a52333u);
    };
    return Address(decode(ReU32(encoded))) | (Address(decode(ReU32(encoded>>32)))<<32);
}
// [C] 0x315bd0..0x315c34: block tag, index bound, allocation bitmap, direct/complemented entry.
// [I] Missing snapshot bytes return nullopt; native invalid-reference branches return numeric zero.
re::ReOptional<Address> resolve_reference_315bd0(const Snapshot& im, Address reference) {
    const Address block=reference & ~Address(0x1fff);
    auto type=im.read<ReU8>(block+0x20);
    if(!type)return {};
    if(*type>=4)return Address(0);
    const auto index=ReU32(((reference&0x1fff)-0x28)>>3);
    auto count=im.read<ReU32>(block+0x1c);
    if(!count)return {};
    if(index>=*count)return Address(0);
    auto bitmap=im.read<Address>(block+0x10);if(!bitmap)return {};
    auto bits=im.read<ReU32>(*bitmap+4ULL*(index>>5));if(!bits)return {};
    if(((*bits>>(index&31))&1)==0)return Address(0);
    const auto offset=ReU32(index*8u+0x28u);
    if(*type>1)return im.read<Address>(block+offset);
    auto value=im.read<ReU32>(block+offset);
    if(!value)return {};
    return Address(ReU32(~*value));
}

// [C] Pointer-chain access sites: 0x2f803f..0x2f80af.
// [C] Nested values are decoded then resolved through 0x315bd0, not treated as plain pointers.
re::ReOptional<Address> collection_root_2f8034(const Snapshot& im, Address ga, const CollectionResolvers& r) {
    auto deref=[&](Address p)->re::ReOptional<Address>{
        auto x=im.read<Address>(p);if(!x||!sample_pointer_range(*x))return {};return x;
    };
    auto klass=deref(ga+0xf0ee490);if(!klass)return {};
    auto statics=deref(*klass+0xb8);if(!statics)return {};
    auto encoded=deref(*statics+0x18);if(!encoded)return {};
    auto decode_helper=[&](Address object,bool first_step)->re::ReOptional<Address> {
        auto value=im.read<Address>(object+0x18);if(!value)return {};
        return resolve_reference_315bd0(im,first_step?decode_reference_words_2f8540(*value):decode_reference_words_314b80(*value));
    };
    auto first=r.helper_2f9950?r.helper_2f9950(*encoded):decode_helper(*encoded,true);if(!first||!sample_pointer_range(*first))return {};
    auto next=deref(*first+0x18);if(!next)return {};
    auto second=r.helper_2f996c?r.helper_2f996c(*next):decode_helper(*next,false);if(!second||!sample_pointer_range(*second))return {};
    return im.read<Address>(*second+0x20);
}

// [C] 0x316504/+0x10, 0x316524/+0x18, 0x31ae1a array+0x20+index*8.
// [I] Input bounds and maximum count are defensive additions for malformed snapshots.
EntityCollections enumerate_array_31acd0(const Snapshot& im, Address collection, ReUSize maximum) {
    EntityCollections out;out.root=collection;
    auto array=im.read<Address>(collection+0x10);
    auto count=im.read<ReU32>(collection+0x18);
    if(!array||!count||*count>maximum)return out;
    out.array=*array;out.count=*count;
    for(ReU32 n=0;n<*count;++n) {
        auto p=im.read<Address>(*array+0x20+8ULL*n);
        if(!p){out.entities.clear();out.count=0;return out;}
        out.entities.push_back(*p);
    }
    return out;
}

// [C] 0x368c60 returns a bone Transform through model+0x50; 0x368be8 gets its position.
// [I] Reject negative indices and missing snapshot bytes rather than risk an out-of-bounds read.
re::ReOptional<Address> bone_transform_368c60(const Snapshot& im, Address entity, int bone) {
    // [C] Native index*8 is a signed 32-bit offset (0x368c96..0x368ca0).
    // [I] Reject negative/wrapping offsets rather than emulate an unsafe read.
    if(bone<0 || bone>INT32_MAX/8 || !sample_pointer_range(entity))return {};
    auto model=im.read<Address>(entity+0x1d0);if(!model||!sample_pointer_range(*model))return {};
    auto array=im.read<Address>(*model+0x50);if(!array||!sample_pointer_range(*array))return {};
    return im.read<Address>(*array+0x20+8ULL*unsigned(bone));
}

// [C] 0x3696e4 reads object+0x708; 0x2dee3c supplies the address.
re::ReOptional<ReU32> player_flags_3696e4(const Snapshot& im, Address player) {
    return im.read<ReU32>(player+0x708);
}

// [C] Complete native body of 0x2cd32c is xor eax,eax; ret.
ReU64 apparent_team_getter_2cd32c() { return 0; }

// [I] Readable subset of 0x31fb93..0x31fde4; input labels are inferred roles.
// [U] EnemyOptions overrides, helper-derived exemptions and full NPC handling are omitted.
bool visible_player_filter_model_31acd0(const PlayerFilterInput& p) {
    if(p.local)return false;
    if(p.wounded&&!p.show_wounded)return false;
    if(p.safe_zone&&!p.show_safe_zone)return false;
    if(p.npc?!p.show_npcs:!p.show_players)return false;
    if(p.sleeping&&!p.show_sleepers)return false;
    if(p.dead&&!p.show_dead)return false;
    if(p.friend_record&&!p.show_team)return false;
    // [C] Native distance rejection uses COMISS/JA, so unordered passes this gate.
    return !(p.distance>p.maximum_distance);
}

// [C] 0x2d6360..0x2d637b, iterative equivalent of recursive 0x2e5b4c.
ReU64 entity_name_hash_2d6354(re::ReStringView bytes, ReU64 seed) {
    for(unsigned char c:bytes) {
        if(c==0)break;
        const auto signed_byte=c<128?ReI64(c):ReI64(c)-256;
        seed=(seed^ReU64(signed_byte))*0x100000001b3ULL;
    }
    return seed;
}
namespace {
re::ReOptional<re::ReString> read_byte_string(const Snapshot& im, Address p, ReUSize maximum) {
    if(!sample_pointer_range(p)||!im.contains(p,1))return {};
    const auto available=im.size()-ReUSize(p-im.base());
    re::ReString out;
    for(ReUSize i=0;i<re::re_min(maximum,available);++i) {
        const auto c=*im.read<char>(p+i);
        if(c==0)return out;
        out.push_back(c);
    }
    return {};
}
re::ReOptional<Address> snapshot_pointer(const Snapshot& im, Address p) {
    auto value=im.read<Address>(p);
    if(!value||!sample_pointer_range(*value))return {};
    return value;
}
}
re::ReOptional<EntityIdentity> read_entity_identity_31acd0(const Snapshot& im, Address entity,
    bool helper_valid, ReUSize maximum) {
    if(!helper_valid||!sample_pointer_range(entity))return {};
    const auto native=snapshot_pointer(im,entity+0x10);if(!native)return {};
    const auto object=snapshot_pointer(im,*native+0x20);if(!object)return {};
    const auto prefab=snapshot_pointer(im,*object+0x50);if(!prefab)return {};
    const auto tag=im.read<ReU16>(*object+0x44);if(!tag)return {};
    const auto klass=snapshot_pointer(im,entity);if(!klass)return {};
    const auto name=snapshot_pointer(im,*klass+0x10);if(!name)return {};
    const auto class_name=read_byte_string(im,*name,maximum);if(!class_name)return {};
    const auto prefab_name=read_byte_string(im,*prefab,maximum);if(!prefab_name)return {};
    return EntityIdentity{entity,*object,*class_name,*prefab_name,*tag};
}
re::ReOptional<re::ReVector<ReU16>> read_utf16z_snapshot(const Snapshot& im, Address p, ReUSize maximum) {
    if(!sample_pointer_range(p)||!im.contains(p,2))return {};
    const auto available=(im.size()-ReUSize(p-im.base()))/2;
    re::ReVector<ReU16> out;
    for(ReUSize i=0;i<re::re_min(maximum,available);++i) {
        const auto c=*im.read<ReU16>(p+2*i);
        if(c==0)return out;
        out.push_back(c);
    }
    return {};
}
re::ReOptional<re::ReVector<ReU16>> player_display_name_369040(const Snapshot& im, Address player,
    bool npc, ReUSize maximum) {
    if(!sample_pointer_range(player))return {};
    if(npc){static const ReU16 sci[]={'S','c','i','e','n','t','i','s','t'};return re::ReVector<ReU16>(sci,sci+9);}
    auto string=snapshot_pointer(im,player+0x338);if(!string)return {};
    return read_utf16z_snapshot(im,*string+0x14,maximum);
}
re::ReOptional<ReU64> player_identifier_36af58(const Snapshot& im, Address player,
    ReUSize maximum) {
    if(!sample_pointer_range(player))return {};
    auto string=snapshot_pointer(im,player+0x640);if(!string)return {};
    auto text=read_utf16z_snapshot(im,*string+0x14,maximum);if(!text)return {};
    ReU64 value=0;
    for(char16_t c:*text) {
        if(c<u'0'||c>u'9')return ReU64(0);
        value=value*10+ReU64(c-u'0'); // [C] wraps in 64 bits, 0x36afcc..0x36afd8.
    }
    return value;
}
re::ReOptional<PlayerStateFields> read_player_state_31fb93(const Snapshot& im, Address player) {
    if(!sample_pointer_range(player))return {};
    const auto flags=player_flags_3696e4(im,player);
    const auto dead=im.read<ReU8>(player+0x2c0);
    const auto prefab=im.read<ReU32>(player+0x54);
    const auto model=im.read<Address>(player+0x350);
    if(!flags||!dead||!prefab||!model)return {};
    ReU32 model_flags=0;
    if(sample_pointer_range(*model)) {
        const auto value=im.read<ReU32>(*model+0x24);if(!value)return {};
        model_flags=*value;
    }
    return PlayerStateFields{*flags,model_flags,*prefab,*dead!=0,
        ((*flags&0x40)!=0)||((model_flags&0x1000)!=0),(*flags&0x20000)!=0,
        ((*flags&0x10)!=0)&&((*flags&0x100)==0),*prefab!=0xf4e1d514u};
}
PlayerRejection select_player_31acd0(const PlayerSelectionInput& p) {
    if(p.tag!=6||p.local)return PlayerRejection::local_or_tag;
    if(p.state.wounded&&!p.show_wounded)return PlayerRejection::wounded;
    if(p.state.safe_zone&&!p.show_safe_zone)return PlayerRejection::safe_zone;
    if(p.state.npc?!p.show_npcs:!p.show_players)return PlayerRejection::category_disabled;
    const bool enemy=p.record_kind==2;
    const bool allow_dead=p.show_dead||(enemy&&p.enemy_options[1]);
    const bool allow_sleepers=p.show_sleepers||(enemy&&p.enemy_options[0]);
    if(p.state.dead&&!allow_dead)return PlayerRejection::dead;
    if(p.state.sleeping&&!allow_sleepers)return PlayerRejection::sleeping;
    // [C] The other friend condition is nonzero team equality; 0x2cd32c always returns 0.
    if(p.record_kind==1&&!p.show_team)return PlayerRejection::friend_disabled;
    if(enemy&&!p.show_enemy)return PlayerRejection::enemy_disabled;
    const auto maximum=p.state.npc?p.npc_maximum_distance:p.player_maximum_distance;
    if(p.distance>float(maximum))return PlayerRejection::distance;
    return PlayerRejection::none;
}
re::ReVector<PlayerRecordPlan> classify_player_records_31fa70(const EntityIdentity& identity,
    const PlayerSelectionInput& p) {
    re::ReVector<PlayerRecordPlan> out;
    // [C] Unlike the tag-6 branch's COMISS/JA, 0x31fae2 uses max,distance / JB:
    // unordered values fail this earlier ScientistNPC2 gate.
    if(entity_name_hash_2d6354(identity.class_name)==entity_name_hash_2d6354("ScientistNPC2")&&
       float(p.npc_maximum_distance)>=p.distance)
        out.push_back({identity.entity,1,0x31faf2});
    auto input=p;input.tag=identity.tag;
    if(select_player_31acd0(input)==PlayerRejection::none)
        out.push_back({identity.entity,0,0x31fdf1});
    return out;
}

re::ReVector<WorldRecordPlan> classify_world_subset_31acd0(const EntityIdentity& e,
    const WorldClassifierOptions& o) {
    re::ReVector<WorldRecordPlan> out;
    const auto hash=entity_name_hash_2d6354(e.class_name);
    const auto is=[&](re::ReStringView name){return hash==entity_name_hash_2d6354(name);};
    auto prefab=re::ReStringView(e.prefab_name);
    prefab=prefab.substr(0,prefab.find('\0')); // [C] Native strstr stops at NUL.
    const auto has=[&](re::ReStringView text){return prefab.find(text)!=re::ReStringView::npos;};
    const auto append=[&](WorldCategory category,re::ReStringView label,Rva site){
        out.push_back({e.entity,category,re::ReString(label),site});
    };
    if(o.dropped_items&&o.dud_category_16&&is("DudTimedExplosive"))
        append(WorldCategory::dud_explosive,"DudTimedExplosive",0x31af68);
    if(o.wood_pile&&is("OreResourceEntity")&&has("wood_log_pile/wood-pile.prefab"))
        append(WorldCategory::wood_pile,"Wood Pile",0x31b293);
    if(o.hbhf_sensor&&is("HBHFSensor"))append(WorldCategory::hbhf_sensor,"HBHF",0x31b321);
    if(o.seismic_sensor&&is("SeismicSensor"))append(WorldCategory::seismic_sensor,"Seismic Sensor",0x31b3ab);
    if(o.large_battery&&is("ElectricBattery")&&has("large"))
        append(WorldCategory::large_battery,"Large Battery",0x31b468);
    // [C] Outer gate excludes NodePath. Within it, NodePath enables individual ores.
    // [C] Radtown ore paths are explicitly EXCLUDED (0x31b5bf/0x31b675/0x31b72b).
    if((o.stone_ore||o.metal_ore||o.sulfur_ore||o.hqm_ore)&&is("OreResourceEntity")) {
        if((o.hqm_ore||o.node_path)&&has("hqm"))append(WorldCategory::hqm_ore,"HQMOre",0x31b550);
        if((o.stone_ore||o.node_path)&&has("stone")&&!has("assets/bundled/prefabs/radtown/ore_stone.prefab"))
            append(WorldCategory::stone_ore,"StoneOre",0x31b606);
        if((o.metal_ore||o.node_path)&&has("metal")&&!has("assets/bundled/prefabs/radtown/ore_metal.prefab"))
            append(WorldCategory::metal_ore,"MetalOre",0x31b6bc);
        if((o.sulfur_ore||o.node_path)&&has("sulfur")&&!has("assets/bundled/prefabs/radtown/ore_sulfur.prefab"))
            append(WorldCategory::sulfur_ore,"SulfurOre",0x31b772);
    }
    if(o.car&&is("ModularCar"))append(WorldCategory::car,"Car",0x31b800);
    if(o.train&&is("TrainEngine"))append(WorldCategory::train,"Train",0x31b88a);
    if(o.drone&&is("Drone"))append(WorldCategory::drone,"Drones",0x31b918);
    if(o.patrol_helicopter) {
        if(is("PatrolHelicopter"))append(WorldCategory::patrol_helicopter,"PatrolHelicopter",0x31bb79);
        if(has("heli_crate.prefab"))append(WorldCategory::heli_crate,"heli_crate",0x31bbee);
    }
    if(o.recycler&&is("Recycler"))append(WorldCategory::recycler,"Recycler",0x31bc7c);
    if(o.bradley) {
        if(is("BradleyAPC"))append(WorldCategory::bradley,"BradleyAPC",0x31bd0a);
        if(has("bradley_crate"))append(WorldCategory::bradley_crate,"bradley_crate",0x31bd81);
    }
    if(o.submarine&&(is("SubmarineDuo")||is("BaseSubmarine")))
        append(WorldCategory::submarine,"Submarine",0x31be3a);
    if(o.scrap_helicopter&&is("ScrapTransportHelicopter"))
        append(WorldCategory::scrap_helicopter,"ScrapHelicopter",0x31bec2);
    if(o.minicopter&&is("Minicopter"))append(WorldCategory::minicopter,"Minicopter",0x31bf50);
    if(o.attack_helicopter&&is("AttackHelicopter"))append(WorldCategory::attack_helicopter,"AttackHelicopter",0x31bfd5);
    if(o.rhib&&is("RHIB"))append(WorldCategory::rhib,"RHIB",0x31c0ed);
    if(o.rowboat&&is("MotorRowboat"))append(WorldCategory::rowboat,"Rowboat",0x31c17b);
    if(o.cargo_ship&&is("CargoShip"))append(WorldCategory::cargo_ship,"Cargoship",0x31c205);
    return out;
}
// [C] 0x36821c..0x368241: validates entity pointer via sample_pointer_range (0x2caf08),
// [C] then tail-calls player_mask_369df4 with mask 0x100 (entity+0x708 flag test).
re::ReOptional<bool> entity_flag_check_36821c(const Snapshot& im, Address entity) {
    if (!sample_pointer_range(entity)) return {};
    // [C] 0x369df4 reads entity+0x708 and tests mask 0x100.
    auto flags = im.read<ReU32>(entity + 0x708);
    if (!flags) return {};
    return (*flags & 0x100) != 0;
}
} // namespace rust_internal_re
