#include "movement_main_analysis.hpp"
#include "analysis_failure.hpp"
#include <cstdio>

namespace rust_internal_re {
namespace {
struct Stop { MovementMainStatus status; Rva boundary; Address address{}; };
void binding_failure(MovementMainResult& out,GameBaseStatus status,Rva site) {
    out.status=status==GameBaseStatus::missing_bytes?MovementMainStatus::missing_bytes:
        status==GameBaseStatus::missing_boundary?MovementMainStatus::missing_boundary:MovementMainStatus::iteration_limit;
    out.boundary=site;
}
template<class T> T load(const Snapshot& image,Address a,Rva r) {
    const auto v=image.read<T>(a); if(!v)throw Stop{MovementMainStatus::missing_bytes,r,a}; return *v;
}
bool different(Vec3 a,Vec3 b) { return a.x!=b.x||a.y!=b.y||a.z!=b.z; } // [C] 2df5dc
bool zero(Vec3 v) { return !different(v,{}); } // [C] 2e3b58
float magnitude(Vec3 v) { return sample_sqrt_2e3c88((v.x*v.x+v.y*v.y)+v.z*v.z); }
float distance(Vec3 a,Vec3 b) {
    const Vec3 d=a-b; return sample_sqrt_2e3c88((d.y*d.y+d.x*d.x)+d.z*d.z);
}
float minss(float a,float b) {return a<b?a:b;}
float maxss(float a,float b) {return a>b?a:b;}
Vec3 normalized(Vec3 v) {const float n=magnitude(v);return n>0?Vec3{v.x/n,v.y/n,v.z/n}:Vec3{};}
// [C] 320db4..320f56, scalar multiply/add order retained.
Vec3 rotate(Vec3 v,const std::array<float,4>& q) {
    const float x=q[0]+q[0],y=q[1]+q[1],z=q[2]+q[2];
    const float xx=x*q[0],yy=y*q[1],zz=z*q[2];
    const float xy=y*q[0],xz=z*q[0],yz=z*q[1];
    const float xw=x*q[3],yw=y*q[3],zw=z*q[3];
    return {((1.0f-(zz+yy))*v.x+(xy-zw)*v.y)+(yw+xz)*v.z,
            ((1.0f-(zz+xx))*v.y+(zw+xy)*v.x)+(yz-xw)*v.z,
            ((xw+yz)*v.y+(xz-yw)*v.x)+(1.0f-(yy+xx))*v.z};
}
struct Replay {
    Snapshot& image; MovementMainState& state; const MovementMainInput& input;
    const MovementMainCalls& calls; MovementMainResult result{};
    template<class T> T global(Rva a) const {return load<T>(state.globals,a,a);}
    bool flag(Rva a) const {return global<std::uint8_t>(a)!=0;}
    float number(Rva a) const {return global<float>(a);}
    Address address(Rva a) const {return global<Address>(a);}
    std::int32_t integer(Rva a) const {return global<std::int32_t>(a);}
    template<class T> void global(Rva a,T value) {
        if(!state.globals.write(a,value))throw Stop{MovementMainStatus::missing_bytes,a,a};
        ++result.global_stores;
    }
    void flag(Rva a,bool v) {global(a,static_cast<std::uint8_t>(v));}
    template<class T> T field(Address a,Rva at) const {return load<T>(image,a,at);}
    template<class T> void store(Address a,T value,Rva at) {
        if(!image.write(a,value))throw Stop{MovementMainStatus::missing_bytes,at,a};
        ++result.snapshot_stores;
    }
    // [C] Store order remains qword XY then dword Z (e.g. 32856d/328573).
    void store_vector(Address a,Vec3 value,Rva at) {
        const auto v=std::bit_cast<std::array<std::uint32_t,3>>(value);
        store(a,std::uint64_t(v[0])|(std::uint64_t(v[1])<<32),at);store(a+8,v[2],at);
    }
    void global_vector(Rva a,Vec3 value) {
        const auto v=std::bit_cast<std::array<std::uint32_t,3>>(value);
        global(a,std::uint64_t(v[0])|(std::uint64_t(v[1])<<32));global(a+8,v[2]);
    }
    Vec3 vector_global(Rva a) const {return global<Vec3>(a);}
    void step(Rva at) {if(++result.iterations>input.iteration_limit)throw Stop{MovementMainStatus::iteration_limit,at};}
    template<class F,class... A> auto invoke(Rva r,const F& f,A&&... a) {
        if(!f)throw Stop{MovementMainStatus::missing_boundary,r};
        ++result.calls; return f(std::forward<A>(a)...);
    }
    Address ptr(Rva r,std::initializer_list<MovementMainArgument> a={}) {return invoke(r,calls.pointer,r,MovementMainArguments{a.begin(),a.size()});}
    std::uint32_t uint(Rva r,std::initializer_list<MovementMainArgument> a={}) {return invoke(r,calls.integer,r,MovementMainArguments{a.begin(),a.size()});}
    float scalar(Rva r,std::initializer_list<MovementMainArgument> a={}) {return invoke(r,calls.scalar,r,MovementMainArguments{a.begin(),a.size()});}
    bool pred(Rva r,std::initializer_list<MovementMainArgument> a={}) {return invoke(r,calls.predicate,r,MovementMainArguments{a.begin(),a.size()});}
    Vec3 vec(Rva r,std::initializer_list<MovementMainArgument> a={}) {return invoke(r,calls.vector,r,MovementMainArguments{a.begin(),a.size()});}
    std::array<float,4> quat(Rva r,std::initializer_list<MovementMainArgument> a={}) {return invoke(r,calls.quaternion,r,MovementMainArguments{a.begin(),a.size()});}
    std::string string(Rva r,std::initializer_list<MovementMainArgument> a={}) {return invoke(r,calls.string,r,MovementMainArguments{a.begin(),a.size()});}
    void effect(Rva r,std::initializer_list<MovementMainArgument> a={}) {invoke(r,calls.effect,r,MovementMainArguments{a.begin(),a.size()});}
    bool key(std::int32_t k,bool b=true) {return pred(0x2e5e4c,{k,b});}
    bool valid(Address a) {return sample_pointer_range(a)&&field<Address>(a+0x48,0x2e0e9c)!=0;}
    // [C] 2e5a54/2d6354: numeric pointer tests, class->+10 C string,
    // signed-byte FNV hash. No callback substituting a fabricated type identity.
    std::optional<std::uint64_t> class_hash(Address a) {
        if(!sample_pointer_range(a))return {};
        const auto klass=field<Address>(a,0x2e5a54);
        if(!sample_pointer_range(klass))return {};
        Address name=field<Address>(klass+0x10,0x2e5a54);
        if(!sample_pointer_range(name))return {};
        std::string text;
        for(;;++name) {step(0x2d6354);const auto b=field<char>(name,0x2d6354);if(!b)break;text.push_back(b);}
        return entity_name_hash_2d6354(text);
    }
    bool type(Address a,std::string_view name) {const auto h=class_hash(a);return h&&*h==entity_name_hash_2d6354(name);}
    bool enabled(Rva config_object) const {return flag(config_object+0x48);} // [C] 2ef7fc
    // [C] 329754 mode/latch algorithm; menu-blocked early return does NOT clear
    // either byte. Calls 2e5e4c with false, unlike the top-level aim keys.
    bool update_key(Rva record,bool enabled_value,bool menu_gate=true) {
        if(pred(0x2e6744)&&menu_gate)return false;
        const bool down=key(integer(record),false); const auto mode=integer(record+4);
        if(mode==2&&enabled_value)flag(record+9,true);
        else if(down&&enabled_value) {
            if(mode==1) {
                if(!flag(record+8)) {flag(record+8,true);flag(record+9,!flag(record+9));}
            } else flag(record+9,true);
        } else {
            if(mode==0)flag(record+9,false);
            if(!enabled_value)flag(record+9,false);
            flag(record+8,false);
        }
        return flag(record+9);
    }
    // [C] 2e5b7c takes TWO time samples only when first is strictly greater.
    bool cooldown(Rva timer,float interval) {
        const float saved=number(timer); if(!(scalar(0x2e6240)>saved))return false;
        global(timer,scalar(0x2e6240)+interval);return true;
    }
    std::uint32_t mask() const {return flag(0x3e5228)?0x48a10101u:0x48a12101u;}
    bool visible(Vec3 a,Vec3 b) {return pred(0x2e2320,{a,b,mask(),0.0f,0.0f});}
    void model_flag(Address a,std::int32_t f) {effect(0x372c1c,{a,f});}
    void rpc(Address a,std::string name) {effect(0x366c30,{a,std::move(name)});}
    Address held(Address player) {return ptr(0x368a84,{player});}
    Address transform(Address a) {return ptr(0x3297f0,{a});}
    float parameter(Address table,std::size_t offset,Rva at) const {
        const auto found=state.prediction_tables.find(table);
        if(found==state.prediction_tables.end())return field<float>(table+offset,at);
        const auto& p=found->second.parameters;
        switch(offset) {case 0:return p.speed;case 4:return p.drag;case 8:return p.gravity_scale;default:return p.qualification_distance;}
    }
    Address lookup_table(std::uint64_t hash) const {
        for(std::uint32_t i=0;i<1000;++i) {
            const Rva slot=0x3d8310+i*0x30;
            if(global<std::uint64_t>(slot)==hash)return slot+8;
        }
        return 0;
    }
    Address create_table(std::uint64_t hash,float speed,float drag,float gravity,float fourth) {
        // [C] 2dfe64 scans exactly 1000 hash+record slots at stride 0x30.
        for(std::uint32_t i=0;i<1000;++i) {
            const Rva slot=0x3d8310+i*0x30;
            if(global<std::uint64_t>(slot)!=0)continue;
            global(slot,hash);const Address table=slot+8;
            global(slot+8,speed);global(slot+12,drag);global(slot+16,gravity);global(slot+20,fourth);
            global(slot+24,Address{});global(slot+32,Address{});global(slot+40,Address{});
            state.prediction_tables[table]={{speed,drag,gravity,fourth},{}};
            return table;
        }
        return 0;
    }
    void prepare_table(Address key) {
        auto found=state.prediction_tables.find(key);
        if(found==state.prediction_tables.end()) {
            const bool pool=key>=0x3d8318&&key<0x3e3e90;
            const auto get=[&](std::size_t offset) {return pool?load<float>(state.globals,key+offset,0x2e3a70):field<float>(key+offset,0x2e3a70);};
            const Address backing=pool?load<Address>(state.globals,key+0x10,0x2e3a70):field<Address>(key+0x10,0x2e3a70);
            if(backing)throw Stop{MovementMainStatus::missing_bytes,0x2e3a70,backing};
            found=state.prediction_tables.emplace(key,MovementMainPredictionTable{{get(0),get(4),get(8),get(12)},{}}).first;
        }
        if(found->second.candidates.empty())found->second.candidates=build_candidate_tables_2e3aa4(found->second.parameters);
    }
    Vec3 predict(Address table,Vec3 from,Vec3 to,Vec3 velocity) {
        if(calls.prediction_2e2374)return invoke(0x2e2374,calls.prediction_2e2374,table,from,to,velocity);
        prepare_table(table);
        const auto& candidates=state.prediction_tables.at(table).candidates;
        auto result_value=predict_2e2474(to-from,velocity,0,candidates,false,false);
        if(result_value.selection.status==CandidateSearchStatus::zero_stride||
           result_value.selection.status==CandidateSearchStatus::invalid_boundary)
            throw Stop{MovementMainStatus::invalid_size,0x2e2474};
        if(result_value.selection.status==CandidateSearchStatus::matched&&pred(0x2f824c)&&flag(0x3d7fb8))
            result_value=predict_2e2474(to-from,velocity,0,candidates,true,true);
        const auto value=result_value.direction;
        if(0.0001f>std::fabs(value.x)&&0.0001f>std::fabs(value.y)&&0.0001f>std::fabs(value.z))return {};
        return normalized(value);
    }
    Address prepare(std::uint32_t bit,Rva target,Rva cache,Address proposed,
                    std::string_view ns={},std::string_view klass={},std::string_view method={},Rva bits_rva=0x3f6f38) {
        auto bits=global<std::uint32_t>(bits_rva);
        if(!(bits&bit)) {
            global(bits_rva,bits|bit);
            if(!method.empty()) {
                const auto info=invoke(0x3349ac,calls.method_info_3349ac,ns,klass,method,-1,-1);
                proposed=field<Address>(info,0x3349ac);
            }
            global(target,proposed);
        }
        const auto value=address(target);bits=global<std::uint32_t>(bits_rva);
        if(!(bits&(bit<<1))) {
            global(bits_rva,bits|(bit<<1));effect(0x2cbd24,{Address(cache),value});
        }
        return value;
    }
    // [I] std::string models observed constructor/data/destructor folds. Native
    // allocation addresses are not exposed; game string conversion is a boundary.
    void console(Rva bit,Rva target,Rva cache,std::string text) {
        const auto method=prepare(bit,target,cache,0,"","RunConsoleCommand","ClientRun");
        effect(0x2d2094,{method,address(0x3e4240),std::move(text)});
    }
    void console_separate(Rva bits,Rva target,Rva cache,std::string text) {
        const auto method=prepare(1,target,cache,0,"","RunConsoleCommand","ClientRun",bits);
        effect(0x2d2094,{method,address(0x3e4240),std::move(text)});
    }
    void craft_tasks(bool);
    Address handcuff_target_329120();
    void update_target_velocity_318724();
    bool restrained_state(Address p) { // [C] 326df8..326e1c, conjunction only.
        return pred(0x36b288,{p})&&pred(0x3693b0,{p})&&pred(0x36a20c,{p,std::int32_t{0}});
    }
    bool trajectory_329b50(Vec3&,Vec3,Vec3,Vec3,Address);
    bool trajectory_32a4f0(Vec3,Vec3,Vec3,Address,Vec3);
    Vec3 grenade_trace_32a16c(Vec3&,Vec3&,float&,float,Vec3,float,std::uint32_t);
    MovementMainGrenadeSolution grenade_317194(Vec3,Vec3,Vec3,float);
    std::array<float,4> euler_quaternion(Vec3);
    std::array<float,4> look_quaternion(Vec3);
    void launch_aim_317c3c(Address,Address);
    void write_orientation(Address,const std::array<float,4>&);
    Vec3 direction_angles(Vec3);
    void low_velocity(Address player);
    void grenades(Address player);
    void interactions(Address player);
    void debug_interaction(Address player,Address context);
    void debug_position(Address player,Address context);
    void camera_layers();
    void noclip(Address player,bool flying);
    void fat_bullet(Address player);
    void omni_sprint(Address player);
    void end_collisions(Address player);
    void run();
};

void Replay::run() {
    const auto movement=input.movement,model=input.model_state;
    // [C] 324bb4..324bd5 short-circuit aim key OR.
    const bool aim=key(integer(0x3f4438))||key(integer(0x3f4498));flag(0x3d72a0,aim);
    // [C] 324bd5..324d11, order is observable to menu/key callbacks.
    constexpr std::array<std::pair<Rva,Rva>,15> bindings{{
        {0x3ef838,0x3f2488},{0x3efb38,0x3f3838},{0x3ef658,0x3f3ab8},
        {0x3efb98,0x3f3a68},{0x3e5468,0x3f38d8},{0x3f4258,0x3f3928},
        {0x3d8298,0x3f3b08},{0x3efa78,0x3f35b8},{0x3ef478,0x3e9958},
        {0x3d82f8,0x3f3108},{0x3ef5f8,0x3f2e88},{0x3efad8,0x3f3248},
        {0x3ef598,0x3f3b58},{0x3ef778,0x3f3568},{0x3efbf8,0x3f31f8}}};
    for(const auto [record,option]:bindings)update_key(record,flag(option));
    if(state.interactive_positions_218960.size()>=0x42) {
        flag(0x3efb41,false);state.interactive_positions_218960.clear();
    }
    if(!enabled(0x3f3570))flag(0x3efa81,false);
    if(flag(0x3f3068)||flag(0x3efa81)||flag(0x3efb41)) {
        const auto related=field<Address>(movement+0x30,0x324d72);
        if(sample_pointer_range(related))store(related+0x140,Address{},0x324d82);
    }
    const bool flying=flag(0x3efa81)||flag(0x3d82a1);
    if(flag(0x3f3a18)||flag(0x3efba1)) {
        flag(0x3f6f28,true);store(movement+0x20,Address{0xb4bbe47a},0x324dd9);
    } else if(flag(0x3f6f28)) {
        flag(0x3f6f28,false);store(movement+0x20,Address{0xb4bbe47a},0x324dd9);
    }
    if(flying)model_flag(model,4);
    // [C] 324def..324e5f, bit written before resolution; original once.
    auto bits=global<std::uint32_t>(0x3f6f38);
    if(!(bits&1)) {global(0x3f6f38,bits|1u);global(0x3f6f30,ptr(0x2ce5d8,{Address{0x3e68a8}}));}
    bits=global<std::uint32_t>(0x3f6f38);
    if(!(bits&2)) {global(0x3f6f38,bits|2u);effect(0x2cbd24,{Address{0x3f6f40},address(0x3f6f30)});}
    effect(0x2cba50,{address(0x3f6f30),movement,input.second,model});result.original_called=true;
    if(flag(0x3ef661))model_flag(model,1);
    if(flying)model_flag(model,4);
    if(enabled(0x3f39d0)||flag(0x3efba1))store(movement+0x20,Address{0xb4bbe67a},0x324ea8);
    // [C] 324eac..324f75 installs are once-only, and happen before player lookup.
    const auto install=[&](bool request,Rva latch,Rva record,Rva game_cell,Rva detour) {
        if(request&&!flag(latch)) {effect(0x32308c,{Address(record),address(0x3d6f00)+game_cell,Address(detour)});flag(latch,true);}
    };
    install(flag(0x3d7ec8)||flag(0x3f3ba8),0x3f7018,0x3f4a50,0xf6b67b8,0x330638);
    install(flag(0x3e5228)||flag(0x3f1d58),0x3f7019,0x3f4a88,0xf6b8c60,0x321d60);
    install(flag(0x3f3c48)||flag(0x3f3d88),0x3f701a,0x3f4a18,0xf6b6d68,0x32e9b4);
    const auto player=ptr(0x2dda9c);
    if(valid(player)) {
        update_key(0x3ef538,flag(0x3f2f28));
        if(flag(0x3ef541))craft_tasks(true);
        if(flag(0x3f2f78)&&pred(0x2e89e4,{Address{0x3f4318},false}))craft_tasks(false);
        if(address(0x3e4240)==0) {
            const auto context=ptr(0x2e069c);
            if(sample_pointer_range(context)) {
                const auto object=ptr(0x370508,{context});
                if(sample_pointer_range(object))global(0x3e4240,ptr(0x372efc,{object,std::string("RunConsoleCommand"),std::string("")}));
            }
        }
        if(flag(0x3f37e8)&&key(0x12)) {
            const auto entity=ptr(0x36a2f4,{player});
            if(sample_pointer_range(entity)&&type(entity,"FreeableLootContainer")&&
               !(field<std::uint8_t>(entity+0x1d8,0x3250f5)&8))rpc(entity,"RPC_OpenLoot");
        }
        if(flag(0x3f3798)) {
            const auto entity=ptr(0x36a2f4,{player});
            if(sample_pointer_range(entity)&&type(entity,"Door")&&cooldown(0x3f701c,0.1f)) {
                rpc(entity,"RPC_OpenDoor");rpc(entity,"RPC_KnockDoor");
            }
        }
        if(flag(0x3f3c98)&&pred(0x2e8910,{std::int32_t{0x12},true})&&pred(0x368244,{player})) {
            const auto entity=ptr(0x36a2f4,{player});
            if(sample_pointer_range(entity)) {
                const auto hash=class_hash(entity);
                if(hash) {
                    const auto flags=field<std::uint16_t>(entity+0x1d8,0x32526e);
                    if(*hash==entity_name_hash_2d6354("Door")&&(flags&8)) {
                        rpc(entity,"Server_NotifyWoundedClose");rpc(entity,"RPC_CloseDoor");
                    }
                }
            }
        }
        if(flag(0x218818)&&flag(0x3f2e38)) {
            const auto klass=field<Address>(address(0x3d6f00)+0xf0a7480,0x325307);
            if(sample_pointer_range(klass)) {
                const auto fields=field<Address>(klass+0xb8,0x32531a);
                if(sample_pointer_range(fields))store(fields,std::uint32_t{1},0x32532d);
            }
        }
        const bool crouch=(flag(0x3f7020)&&flag(0x3e5e71))?true:pred(0x368468,{player});
        flag(0x3f7020,crouch);
        if(flag(0x3ea5d8)&&flag(0x3d72a0))store_vector(movement+0x44,{},0x325375);
        if(pred(0x2f7dd0)&&flag(0x3d72a0)&&flag(0x3e4ff8)) {
            flag(0x3ea628,true);store_vector(movement+0x44,{},0x3253b2);
        } else flag(0x3ea628,false);
        if(flag(0x3f2fc8)) {
            const auto item=held(player);
            if(sample_pointer_range(item)) {
                const auto component=ptr(0x371df4,{item});
                if(sample_pointer_range(component))effect(0x36ba2c,{component,scalar(0x36970c,{player})});
            }
        }
        low_velocity(player);grenades(player);
        if(flag(0x3e5098)&&flag(0x3e5e78)) {
            const auto item=held(player);
            if(sample_pointer_range(item)&&sample_pointer_range(ptr(0x3716e0,{item}))&&cooldown(0x3f7024,0.05f))
                launch_aim_317c3c(ptr(0x35d31c),player);
        }
        interactions(player);
        update_target_velocity_318724();
        // [C] 3273cc..327537 admin enable, toggle and disable restoration.
        if(flag(0x3f3298)) {
            const auto klass=field<Address>(address(0x3d6f00)+0xf0c90b0,0x3273e0);
            if(sample_pointer_range(klass)) {
                const auto fields=field<Address>(klass+0xb8,0x3273f3);
                if(sample_pointer_range(fields)) {store(fields+0x58,0x3f800000u,0x32740b);store(fields+0x3c4,0x3f800000u,0x32740e);}
            }
            if(pred(0x2e89e4,{Address{0x3f44f8},!pred(0x3693b0,{player})})) {
                const auto debug=ptr(0x32957c);
                if(sample_pointer_range(debug)) {
                    if(!pred(0x3247cc)) {flag(0x3e5e71,true);effect(0x370b50,{debug});}
                    else {
                        const auto other=ptr(0x329714);
                        if(sample_pointer_range(other)) {flag(0x3e5e71,false);effect(0x36ce18,{other,std::int32_t{0}});}
                    }
                    effect(0x36817c,{player});
                }
            }
        } else if(flag(0x3e5e71)) {
            if(pred(0x3247cc)) {
                const auto other=ptr(0x329714);
                if(sample_pointer_range(other)) {effect(0x36ce18,{other,std::int32_t{0}});effect(0x36817c,{player});}
            }
            flag(0x3e5e71,false);
        }
        const auto context=ptr(0x2e069c);
        if(flag(0x3e5e71)&&flag(0x3f3608)&&sample_pointer_range(context))debug_interaction(player,context);
        debug_position(player,context);
        // [C] 327ec9..327f37: BL eligibility differs from DL sent to 36ae90.
        const bool eligible=(flag(0x3e5e71)&&flag(0x3f3298))||(flag(0x3f3b08)&&flag(0x3d82a1));
        bool state_value=false;
        if(eligible&&pred(0x3693b0,{player}))state_value=!pred(0x36a20c,{player,std::int32_t{0}});
        effect(0x36ae90,{player,state_value});
        if(flag(0x3f7020)&&eligible)model_flag(model,1);
        camera_layers();noclip(player,flying);fat_bullet(player);
    }
    // [C] Invalid local player jumps to 328d66, not to the epilogue.
    omni_sprint(player);end_collisions(player);
}

// [C] SSE CVTTSS2SI indefinite on unordered or out-of-range inputs.
std::int32_t truncate_int(float f) {
    if(!std::isfinite(f)||f>=2147483648.0f||f< -2147483648.0f)return std::numeric_limits<std::int32_t>::min();
    return static_cast<std::int32_t>(f);
}
void Replay::craft_tasks(bool fast) {
    // [C] Full 324904..324b30 / 329328..32957b; fasttrack only list index 1.
    if(fast&&!cooldown(0x3f4928,1.2000000476837158f))return;
    Address object=field<Address>(address(0x3d6f00)+0xf1fc098,fast?0x329362:0x324922);
    if(!sample_pointer_range(object))return;
    object=field<Address>(object+0xb8,fast?0x329379:0x324939);if(!sample_pointer_range(object))return;
    object=field<Address>(object+0x20,fast?0x329390:0x324950);if(!sample_pointer_range(object))return;
    const auto list=field<Address>(object+0x30,fast?0x3293a4:0x324964);if(!sample_pointer_range(list))return;
    const auto count=field<std::int32_t>(list+0x18,fast?0x3293b8:0x324978);
    for(std::int32_t i=0;i<count;++i) {
        step(fast?0x3293c8:0x324988);const auto array=field<Address>(list+0x10,fast?0x3293c8:0x324988);
        if(!sample_pointer_range(array))continue;
        const auto offset=std::bit_cast<std::int32_t>(static_cast<std::uint32_t>(i)*8u);
        const auto task=field<Address>(array+0x20+static_cast<Address>(static_cast<std::int64_t>(offset)),fast?0x3293e7:0x3249a7);
        if(!sample_pointer_range(task)||(fast&&i!=1)||address(0x3e4240)==0)continue;
        const auto id=field<std::int32_t>(task+0x58,fast?0x329414:0x3249ca);
        const std::string command=(fast?"craft.fasttracktask ":"craft.canceltask ")+std::to_string(id);
        if(fast)console_separate(0x3f4938,0x3f4930,0x3f4940,command);
        else console_separate(0x3f4840,0x3f4838,0x3f4850,command);
    }
}
Address Replay::handcuff_target_329120() {
    if(!flag(0x3f36f8))return 0;
    const auto player=ptr(0x2dda9c);if(!sample_pointer_range(player))return 0;
    const auto records=state.entities_2187d0;
    Address selected=0;std::int32_t nearest=0;
    for(const auto& record:records) {
        step(0x3291a0);const auto entity=record.entity;
        if(!sample_pointer_range(entity)||record.byte8||!valid(entity))continue;
        const auto point=vec(0x368be8,{entity,std::int32_t{53}});if(zero(point))continue;
        if(!sample_pointer_range(ptr(0x369764,{entity})))continue;
        if(pred(0x36a20c,{entity,std::int32_t{0}})||pred(0x3693b0,{entity}))continue;
        // [C] Both 2cd32c returns are literal zero; only map kind 1 excludes.
        (void)apparent_team_getter_2cd32c();(void)apparent_team_getter_2cd32c();
        if(state.player_kind_3d7260[string(0x369e70,{entity,std::int32_t{0}})]==1)continue;
        const auto own_position=vec(0x369164,{player});const auto d=truncate_int(distance(own_position,point));
        if(!selected||d<=nearest) {selected=entity;nearest=d;}
    }
    return selected;
}
void Replay::update_target_velocity_318724() {
    const auto target=ptr(0x2e02b0);if(!valid(target))return;
    const float factor=scalar(0x2e071c)*10.0f;
    const auto velocity=vec(0x369c1c,{target});
    const auto smoothed=vector_global(0x3e5dd8)*(1.0f-factor)+velocity*factor;
    global_vector(0x3e5dd8,smoothed);
    // [U] Vector3.Lerp resolved through 31492c is a matching-game export.
    const auto lerped=vec(0x31492c,{vector_global(0x3e5dc8),smoothed,factor});
    global_vector(0x3d7248,lerped);global_vector(0x3e5dc8,lerped);
}

void Replay::low_velocity(Address player) {
    // [C] 325412..325a05, including exits that deliberately retain old state.
    const auto clear=[&]() {global_vector(0x3d72e0,{});flag(0x3e4238,false);};
    if(!flag(0x3d8301)) {clear();return;}
    const auto item=held(player);if(!sample_pointer_range(item)) {clear();return;}
    const auto weapon=ptr(0x371464,{item});if(!sample_pointer_range(weapon)) {clear();return;}
    const auto definition=ptr(0x37154c,{item});if(!sample_pointer_range(definition))return;
    const auto magazine=ptr(0x36b938,{weapon});if(!sample_pointer_range(magazine))return;
    const auto projectile=ptr(0x372abc,{magazine});if(!sample_pointer_range(projectile))return;
    float velocity_scale=field<float>(weapon+0x3ac,0x3254a6);
    if(uint(0x37261c,{definition})==0x34b73d71u)velocity_scale=field<float>(weapon+0x3ac,0x36b519)+1.0f;
    constexpr float scale_cap=std::bit_cast<float>(std::uint32_t{0x3fbf5c29}); // [C] 28daf8, 1.495f.
    const float prior_scale=minss(number(0x3e6084),scale_cap);
    effect(0x36b758,{weapon});
    const float random=field<float>(magazine+0x44,0x3254e2);
    const float base=field<float>(magazine+0x40,0x3254ec);
    const float initial_speed=((random+base)*velocity_scale)*prior_scale;
    const auto initial_direction=vec(0x368100,{player})*initial_speed;
    (void)initial_direction; // [C] Native stores c0/c8 but never uses this local.
    const auto from=vec(0x369164,{player});
    const auto target=ptr(0x2e02b0);if(!valid(target)) {clear();return;}
    const auto h=class_hash(target);if(!h)return;
    const bool npc=*h==entity_name_hash_2d6354("ScientistNPC2");
    const Vec3 head=vec(0x368be8,{target,std::int32_t{npc?11:55}});
    const Vec3 neck=vec(0x368be8,{target,std::int32_t{npc?15:54}});
    const Vec3 position=vec(0x369790,{target});
    const Vec3 eye=Vec3{head.x,neck.y,head.z}+Vec3{0,0.05f,0};
    const Vec3 to=flag(0x3d7ec8)?eye+Vec3{0,2,0}:position;
    // [C] 325815/325820 pass +34 in xmm3 and +38 in xmm2;
    // 2df2e8 stores those at table+4 (drag) and table+8 (gravity).
    const float gravity=field<float>(projectile+0x38,0x32567d);
    const float drag=field<float>(projectile+0x34,0x325683);
    const float fourth=field<float>(projectile+0x44,0x325689);
    const float r=field<float>(magazine+0x44,0x32568f);
    const float b=field<float>(magazine+0x40,0x325695);
    if(!visible(to,eye)) {global_vector(0x3d72e0,{});global(0x3e6084,1.0f);flag(0x3e4238,false);return;}
    const auto counter=integer(0x3f2b18);
    // [C] COMISS/JB skips on unordered too; do not negate a >= test incorrectly.
    if(!(static_cast<float>(counter)>=number(0x3f4058))) {global(0x3f2b18,std::uint32_t(counter)+1u);return;}
    const float speed=(r+b)*velocity_scale;
    const auto option=integer(0x3f4148);
    const int count=option==1?15:option==2?25:option==3?35:5;
    const float increment=1.0f/static_cast<float>(count-1);
    for(int i=0;i<count;++i) {
        step(0x325769);
        const float scale=1.5f-static_cast<float>(i)*increment;
        const float candidate_speed=minss(scale,scale_cap)*speed;
        std::array<char,32> buffer{};
        const int n=std::snprintf(buffer.data(),buffer.size(),"%.2f/%.2f/%.2f/%.2f",
            static_cast<double>(candidate_speed),static_cast<double>(drag),static_cast<double>(gravity),static_cast<double>(fourth));
        if(n<0||static_cast<std::size_t>(n)>=buffer.size())throw Stop{MovementMainStatus::invalid_size,0x2ee714};
        const std::string table_key=buffer.data();
        const auto table_hash=entity_name_hash_2d6354(table_key);
        Address table=lookup_table(table_hash);
        if(!table) {
            table=create_table(table_hash,candidate_speed,drag,gravity,fourth);
            if(!table) {flag(0x3e4238,false);break;}
            state.low_velocity_tables[table_hash]=table;prepare_table(table);
        }
        const auto solved=predict(table,from,to,vector_global(0x3d7248));
        if(!zero(solved)) {
            Vec3 mutable_from=from;
            if(trajectory_329b50(mutable_from,to,neck,solved,table)) {
                // [C] 325962 writes Z first, scale, then XY, then validity latch.
                global(0x3d72e8,std::bit_cast<std::uint32_t>(to.z));
                global(0x3e6084,scale);
                const auto xy=std::bit_cast<std::array<std::uint32_t,3>>(to);
                global(0x3d72e0,std::uint64_t(xy[0])|(std::uint64_t(xy[1])<<32));
                flag(0x3e4238,true);break;
            }
        }
        global(0x3e6084,1.0f);flag(0x3e4238,false);global_vector(0x3d72e0,{});
    }
    global(0x3f2b18,std::uint32_t{1});
}

void Replay::grenades(Address player) {
    // [C] 325a05..3261af. The trap search precedes the target search and shares
    // 3e6088/3e5e78. A failed held-item lookup preserves the previous scan state.
    if(!flag(0x3e7018)||!flag(0x3d7e78)||!flag(0x3d72a0)) {
        global(0x3e6088,149.0f);flag(0x3e5e78,false);return;
    }
    const auto item=held(player);if(!sample_pointer_range(item))return;
    const auto weapon=ptr(0x3716e0,{item});
    if(!sample_pointer_range(weapon)) {global(0x3e6088,149.0f);flag(0x3e5e78,false);return;}
    const auto target=ptr(0x2e02b0);
    const auto scan=[&](Vec3 target_point,bool trap) {
        const auto origin=vec(0x369164,{player});
        const auto forward=vec(0x368100,{player});
        const Vec3 start=origin+forward*0.25f;
        const float speed=field<float>(weapon+0x3f8,trap?0x325b26:0x325ec9);
        auto solution=grenade_317194(start,target_point,Vec3{},0.125f);
        Vec3 velocity{};
        const Rva failure=trap?0x3f7021:0x3f7022;
        if(solution.solved) {
            solution.direction.y+=number(0x3e6088);
            // [C] f64 subtraction at 325bf6/325f9d; 293110 literal below.
            constexpr double speed_subtraction=std::bit_cast<double>(std::uint64_t{0x3fdd000010000000}); // [C] 293110
            const float adjusted=static_cast<float>(static_cast<double>(speed)-speed_subtraction);
            velocity=normalized(solution.direction)*adjusted-vector_global(0x3e6060)*0.5f;
        } else {flag(failure,true);flag(0x3e5e78,false);}
        bool scan_failed=flag(failure);
        if(different(velocity,{})) {
            const auto hash=class_hash(item);
            if(hash) {
                const float duration=*hash==entity_name_hash_2d6354("GrenadeWeapon")?2.5625f:8.0f;
                auto trace_start=start;float flight_time=0;
                const auto hit=grenade_trace_32a16c(trace_start,velocity,flight_time,duration,{0,-9.81f,0},0.0f,0x48a16001u);
                const float miss=distance(hit,target_point);
                if(1.0f>=miss&&!zero(hit)) {flag(failure,false);flag(0x3e5e78,true);scan_failed=false;}
                else {flag(failure,true);flag(0x3e5e78,false);scan_failed=true;}
            }
        } else {flag(failure,true);flag(0x3e5e78,false);scan_failed=true;}
        float angle=number(0x3e6088);
        if(scan_failed&&angle>=0) {
            const int count=trap?20:40; const float delta=trap?0.05f:-0.05f;
            for(int i=0;i<count;++i)angle+=delta;
            global(0x3e6088,angle);
        }
        if(trap) {
            if(angle>=150.0f)global(0x3e6088,std::uint32_t{});
        } else if(angle<=0.0f) {
            // [C] 326136 COMISS zero,angle / JB skips the store on unordered.
            global(0x3e6088,150.0f);
        }
    };
    if(flag(0x3e72e8)&&!sample_pointer_range(target)) {
        const auto saved=vector_global(0x3effd8);if(!zero(saved))scan(saved,true);
    }
    if(!valid(target))return;
    const auto h=class_hash(target);if(!h)return;
    const auto point=vec(0x368be8,{target,std::int32_t{*h==entity_name_hash_2d6354("ScientistNPC2")?47:53}});
    scan(point,false);
}

void Replay::interactions(Address player) {
    // [C] 326214..3263f3: sign command construction, paired console calls,
    // admin setters and destructor folds in observed order.
    if(flag(0x3e9fe8)&&pred(0x2e89e4,{Address{0x3f4198},true})&&address(0x3e4240)!=0) {
        effect(0x36ad68,{player,true});
        console(4,0x3f7028,0x3f7030,"uploadsign Image.png");
        console(4,0x3f7028,0x3f7030,"console.clear");
        effect(0x36ad68,{player,false});
    }
    // [C] 3263f3..3266e4: missing console object + active latch still takes stop.
    if(flag(0x3f31a8)) {
        if(pred(0x2e89e4,{Address{0x3f41f8},true})) {
            if(address(0x3e4240)!=0&&!flag(0x3f7108)) {
                effect(0x36ad68,{player,true});
                console(0x10,0x3f7110,0x3f7120,"demo.record "+state.demo_name_3f45b8);
                flag(0x3f7108,true);effect(0x36ad68,{player,false});
            } else if(flag(0x3f7108)) {
                console(0x40,0x3f71f8,0x3f7200,"demo.stop");flag(0x3f7108,false);
            }
        }
    } else flag(0x3f7108,false);
    if(flag(0x3f36a8)&&pred(0x36a1e4,{player})&&cooldown(0x3f72d8,0.02f))rpc(player,"RPC_ReqRemoveCuffs");
    if(flag(0x3f36f8)&&!flag(0x3e98b8)) {
        const auto other=handcuff_target_329120();
        if(valid(other)&&!pred(0x36b288,{other})) {
            const auto pos=vec(0x369164,{player});
            const float d=scalar(0x3666b0,{other,pos});
            if(pred(0x36a1e4,{other})) {
                if(2.9f>=d&&cooldown(0x3f72dc,0.02f))rpc(other,"RPC_ReqForceMountNearest");
                if(pred(0x2e8910,{std::int32_t{0x13},true}))rpc(other,"RPC_ReqDoRestrainedPush");
            }
        }
    }
    if(flag(0x3f3658)&&cooldown(0x3f72e0,0.02f)) {
        const auto item=held(player);
        if(sample_pointer_range(item)) {
            const auto definition=ptr(0x37154c,{item});
            if(sample_pointer_range(definition)&&uint(0x37261c,{definition})==0xcdf51354u)rpc(item,"RPC_ReqCompleteUnlockMiniGame");
        }
    }
    if(flag(0x3f33d8)) {
        // [C] Binary64 0.15 arithmetic then binary32 round at each key update.
        constexpr std::array<std::pair<int,Rva>,4> keys{{{0x3c,0x3f72e4},{0x3d,0x3f72e4},{0x3e,0x3f72e8},{0x3f,0x3f72e8}}};
        for(std::size_t i=0;i<keys.size();++i)if(key(keys[i].first))
            global(keys[i].second,static_cast<float>(static_cast<double>(number(keys[i].second))+(i%2?-0.15:0.15)));
        const auto item=held(player);
        if(sample_pointer_range(item)) {
            const std::string expected="Planner"; // [C] 323bac + 2e3400 XOR bytes.
            if(type(item,expected)) {
                flag(0x3f72ec,true);store_vector(item+0x300,{number(0x3f72e8),number(0x3f72e4),0},0x326a0d);
            }
        }
    }
    if(flag(0x3f72ec)&&!flag(0x3f33d8)) {
        const auto item=held(player);
        if(sample_pointer_range(item)) {
            const std::string expected="Planner"; // [C] 323bac
            if(type(item,expected)) {
                global(0x3f72e4,0.0f);global(0x3f72e8,0.0f);flag(0x3f72ec,false);store_vector(item+0x300,{},0x326ad9);
            }
        }
    }
    if(flag(0x3f2ed8)) {
        const auto item=held(player);
        if(sample_pointer_range(item)) {
            const auto component=ptr(0x3717c0,{item});
            if(sample_pointer_range(component)) {
                const auto object=field<Address>(component+0x348,0x326b2e);
                if(sample_pointer_range(object))store(object+0x170,1.0f,0x326b3d);
            }
        }
    }
    if(flag(0x3f3748)) {
        const auto item=held(player);
        if(sample_pointer_range(item)) {
            const auto torch=ptr(0x371688,{item});
            if(sample_pointer_range(torch)&&cooldown(0x3f72f0,0.005f)) {
                const auto flags=field<std::uint16_t>(torch+0x1d8,0x326bb3);
                if(flags==0x400)rpc(torch,"Ignite");else if(flags==0x402)rpc(torch,"Extinguish");
            }
        }
    }
    if(flag(0x3f3388)) {
        if(key(0x12)) {
            const auto other=ptr(0x36a2f4,{player});
            if(sample_pointer_range(other)&&type(other,"BasePlayer")) {
                const auto own_team=apparent_team_getter_2cd32c();
                const auto other_team=apparent_team_getter_2cd32c();
                const bool wounded=pred(0x36b288,{other});
                const auto id=string(0x369e70,{other,std::int32_t{0}});
                // [I] Owned map models 2df608's default-inserting lookup.
                const bool friendly=(other_team!=0&&other_team==own_team)||state.player_kind_3d7260[id]==1;
                const auto mode=integer(0x3f40a8);
                if(wounded&&((mode==1&&friendly)||(mode==0&&cooldown(0x3f72f4,0.21f)))) {
                    rpc(other,"RPC_KeepAlive");rpc(other,"RPC_Assist");
                }
            }
        } else global(0x3f72f4,scalar(0x2e6240)+0.2f);
    }
    if(flag(0x3ef5a1)&&cooldown(0x3f72f8,0.5f)&&!restrained_state(player)) {
        const auto lock=address(0x3e5f08);
        if(valid(lock)) {
            const float d=scalar(0x3666b0,{lock,vec(0x369164,{player})});
            if(2.9f>d&&field<std::uint16_t>(lock+0x1d8,0x326e8f)==0x10&&
               field<std::uint8_t>(lock+0x298,0x326ea1)==0&&state.unlock_code_3f4628.size()==4)
                effect(0x366d7c,{lock,std::string("UnlockWithCode"),state.unlock_code_3f4628});
        }
    }
    if(flag(0x3e9db8)&&!restrained_state(player)) {
        const auto lock=address(0x3e5f00);
        if(valid(lock)) {
            if(cooldown(0x3f72fc,0.1f)) {
                const float d=scalar(0x3666b0,{lock,vec(0x369164,{player})});
                if(6.0f>d) {
                    const bool has_code=field<std::uint8_t>(lock+0x288,0x326fba)!=0;
                    if(field<std::uint16_t>(lock+0x1d8,0x326fc2)!=0x10&&state.lock_code_3f4698.size()==4) {
                        if(!has_code)effect(0x366e38,{lock,std::string("RPC_ChangeCode"),state.lock_code_3f4698,std::int32_t{0}});
                        const bool replacing=key(integer(0x3e54c8))&&flag(0x3e51d8);
                        if(has_code&&flag(0x3f3158)&&!replacing) {
                            effect(0x366e38,{lock,std::string("RPC_ChangeCode"),state.lock_code_3f4698,std::int32_t{0}});
                            // [C] 323fac + 2e3400 decodes TryLock.
                            rpc(lock,"TryLock");
                        }
                    }
                }
            }
        } else global(0x3f72fc,scalar(0x2e6240)+0.1f);
    }
    if(flag(0x3f3978)&&pred(0x3693b0,{player})&&cooldown(0x3f7300,0.5f)&&address(0x3e4240)!=0)
        console_separate(0x3f2b28,0x3f2b20,0x3f2b30,"respawn");
    if(flag(0x3f39c8)&&key(integer(0x3f42b8))&&cooldown(0x3f7304,0.005f))effect(0x36b004,{player});
    // [C] 32711d..3274bb: code iterator, per-ID attempt/time maps and tried list.
    if(!flag(0x3e9598)) {flag(0x3e5de4,false);return;}
    const auto lock=ptr(0x36a2f4,{player});if(!valid(lock))return;
    const auto h=class_hash(lock);
    if(!h||(*h!=entity_name_hash_2d6354("CodeLock")&&*h!=entity_name_hash_2d6354("DigitSendCodeLock")))return;
    const auto network=field<Address>(lock+0x48,0x3271d6);if(!sample_pointer_range(network))return;
    const auto id=field<std::uint32_t>(network+0x38,0x3271ea);
    const bool locked=field<std::uint16_t>(lock+0x1d8,0x327202)==0x10;
    if(!locked) {
        if(pred(0x3693b0,{player})||pred(0x36a20c,{player,std::int32_t{0}}))return;
        global(0x3e5de8,std::uint32_t{});flag(0x3e5de4,true);return;
    }
    const bool code=field<std::uint8_t>(lock+0x298,0x32720e)!=0;
    if(pred(0x3693b0,{player})||pred(0x36a20c,{player,std::int32_t{0}})||pred(0x36b288,{player})||code)return;
    if(!(scalar(0x2e6240)>number(0x3f7308)))return;
    global(0x3f7308,scalar(0x2e6240)+1.0f);
    const auto start=integer(0x3f2b0c);if(start>10000)return;
    // [C] MOVSXD then unsigned min; negative index clamps to size, skipping loop.
    const auto unsigned_start=static_cast<std::uint64_t>(static_cast<std::int64_t>(start));
    const auto begin=std::min<std::uint64_t>(unsigned_start,state.codes_218888.size());
    for(std::size_t i=static_cast<std::size_t>(begin);i<state.codes_218888.size();++i) {
        step(0x3272bf);const auto candidate=state.codes_218888[i];
        if(std::find(state.tried_248e98.begin(),state.tried_248e98.end(),candidate)!=state.tried_248e98.end())continue;
        ++state.attempts_3e5e30[id];state.attempt_time_3e5df0[id]=scalar(0x31581c);
        state.last_code_218868=candidate;flag(0x3e5de4,false);
        effect(0x366d7c,{lock,std::string("UnlockWithCode"),candidate});rpc(lock,"TryUnlock");
        global(0x3e5de8,global<std::uint32_t>(0x3e5de8)+1u);state.tried_248e98.push_back(candidate);break;
    }
}

void Replay::debug_interaction(Address player,Address context) {
    // [C] 32754f..327ca7, raycast and independent type/action comparisons.
    const auto t=transform(context);if(!sample_pointer_range(t))return;
    const Vec3 position=vec(0x3747d4,{t});
    const auto rotation=quat(0x374aa4,{t});
    const Vec3 endpoint=position+rotate({0,0,10},rotation);
    const auto hit=invoke(0x2e8fac,calls.raycast_2e8fac,position,endpoint-position,5.0f,mask()|0x48a30900u,0);
    if(!hit.hit)return;
    const auto collider=ptr(0x329920,{hit.collider});if(!sample_pointer_range(collider))return;
    const auto getter=prepare(0x100,0x3f7310,0x3f7320,address(0x3d6f00)+0x597e7b0);
    const auto entity=ptr(0x2cb9fc,{getter,collider});if(!sample_pointer_range(entity))return;
    const auto hash=class_hash(entity);if(!hash)return;
    const auto is=[&](std::string_view v) {return *hash==entity_name_hash_2d6354(v);};
    const auto nearby=[&]() {const auto p=vec(0x36924c,{player});return 7.0f>scalar(0x3666b0,{entity,p});};
    const auto hammer=[&](bool missing_definition_passes) {
        const auto item=held(player);if(!sample_pointer_range(item))return false;
        const auto definition=ptr(0x37154c,{item});
        if(!sample_pointer_range(definition))return missing_definition_passes;
        if(uint(0x37261c,{definition})==0xbf78eacu)return true;
        return uint(0x37261c,{definition})==0x6b8447f6u;
    };
    if(is("Door")&&pred(0x2e8910,{std::int32_t{0x13},true})) {
        const auto flags=field<std::uint16_t>(entity+0x1d8,0x32779d);
        if(nearby()) {if(flags==0)rpc(entity,"RPC_OpenDoor");else if(flags==8)rpc(entity,"RPC_CloseDoor");}
    }
    if(flag(0x3f4261)&&(!flag(0x3e5138)||hammer(true))&&is("BuildingBlock")) {
        const auto tier=integer(0x3e5368);
        if(tier>0) {
            const auto grade=field<Address>(entity+0x340,0x3278cf);
            if(sample_pointer_range(grade)&&sample_pointer_range(field<Address>(grade+0x1f8,0x3278e2))) {
                const auto current=field<std::int16_t>(entity+0x370,0x327903);
                if(current==integer(0x3e53b8)&&current!=tier&&cooldown(0x3f73f8,0.005f)) {
                    const auto method=prepare(0x400,0x3f7400,0x3f7410,address(0x3d6f00)+0x395f0a0);
                    effect(0x2e480c,{method,entity,std::int32_t{0},std::string("DoUpgradeToGrade"),
                        std::int32_t{0},integer(0x3e5368),std::int32_t{0}});
                }
            }
        }
    }
    if(pred(0x2e8910,{std::int32_t{0x13},true})&&hammer(false)&&nearby())rpc(entity,"RPC_PickupStart");
    if(is("BaseOven")&&pred(0x2e8910,{std::int32_t{0x13},true})) {
        const auto flags=field<std::uint16_t>(entity+0x1d8,0x327ae9);
        if(nearby())effect(0x366ccc,{entity,std::string("SVSwitch"),flags==0});
    }
    if(is("LootableCorpse")&&pred(0x2e8910,{std::int32_t{0x13},true})&&nearby())rpc(entity,"RPC_LootCorpse");
    if(is("BuildingBlock")&&nearby()) {
        if(pred(0x2e8910,{integer(0x3f4378),true})&&flag(0x3f32e8))rpc(entity,"DoDemolish");
        if(pred(0x2e8910,{integer(0x3f43d8),true})&&flag(0x3f3338))rpc(entity,"DoRotation");
    }
}

void Replay::debug_position(Address player,Address context) {
    // [C] 327ca7..327ec9. Timer refresh short-circuits 3247cc.
    if(flag(0x3e5e71)||flag(0x3d82a1)||pred(0x3247cc))global(0x3f74e8,scalar(0x2e6240)+1.5f);
    if(!(global<std::uint32_t>(0x3f6f38)&0x1000)) {
        global(0x3f6f38,global<std::uint32_t>(0x3f6f38)|0x1000u);global_vector(0x3f74f0,{});
    }
    const float time=scalar(0x2e6240);
    if(!(number(0x3f74e8)>time)) {global_vector(0x3f74f0,{});flag(0x3f2b08,false);return;}
    if(!sample_pointer_range(context))return;
    const auto t=transform(context);if(!sample_pointer_range(t))return;
    const auto record=field<Address>(player+0x4e8,0x327d3e);if(!sample_pointer_range(record))return;
    const auto saved_flags=field<std::uint32_t>(record+0x28,0x327d60);
    const Vec3 anchor=field<Vec3>(record+0x30,0x327d97)+Vec3{0,flag(0x3f7020)?0.9f:1.5f,0};
    (void)vec(0x3691c0,{player}); // [C] unconditional getter before flags test.
    if(saved_flags==0&&!pred(0x36a0e0,{player})&&!pred(0x36a20c,{player,std::int32_t{0}})&&flag(0x3d82a1)) {
        if(zero(vector_global(0x3f74f0)))global_vector(0x3f74f0,anchor);
        effect(0x375140,{t,anchor});flag(0x3f2b08,true);
    } else if(flag(0x3f2b08)) {
        store_vector(input.movement+0x44,{},0x327e3d);
        effect(0x375140,{t,vector_global(0x3f74f0)});
        // [C] 327e67 bypasses 327ec2 only; latch remains set until timer expires.
    } else effect(0x375140,{t,vec(0x3691c0,{player})});
}

void Replay::camera_layers() {
    // [C] 327f37..32810a, XOR toggles, not masks forced on/off.
    if(flag(0x3f30b8)) {
        if(!flag(0x3e5e70)) {
            const auto camera=ptr(0x315924);
            if(sample_pointer_range(camera)) {
                const auto mask_value=uint(0x36c79c,{camera});effect(0x36cbe4,{camera,mask_value^0x2000000u});flag(0x3e5e70,true);
            }
        }
    } else if(flag(0x3e5e70)) {
        const auto camera=ptr(0x315924);
        if(sample_pointer_range(camera)) {const auto m=uint(0x36c79c,{camera});effect(0x36cbe4,{camera,m^0x2000000u});}
        flag(0x3e5e70,false);
    }
    if(flag(0x3f3d38)&&pred(0x2e89e4,{Address{0x3f4558},true})) {
        const auto camera=ptr(0x315924);
        if(sample_pointer_range(camera)) {
            auto m=uint(0x36c79c,{camera});
            constexpr std::array<std::pair<int,int>,5> toggles{{{4,21},{5,30},{3,23},{2,4},{1,16}}};
            for(const auto [option,bit]:toggles)if(state.layers_3f4728[option])m^=1u<<bit;
            if(!flag(0x3f30b8)&&state.layers_3f4728[0])m^=1u<<25;
            effect(0x36cbe4,{camera,m});
        }
    }
    // [C] 32810a..3282e7: alpha cache and class-only noflash lookup.
    if(flag(0x3f3bf8)) {
        const auto klass=ptr(0x334224,{std::string("UIFogOverlay"),std::string("")});
        if(sample_pointer_range(klass)) {
            const auto fields=field<Address>(klass+0xb8,0x328165);
            if(sample_pointer_range(fields)) {
                const auto overlay=field<Address>(fields+0x10,0x32817c);
                if(sample_pointer_range(overlay)) {
                    const auto canvas=field<Address>(overlay+0x20,0x328190);
                    if(sample_pointer_range(canvas)) {
                        const auto method=prepare(0x2000,0x3f7500,0x3f7510,0,"UnityEngine","CanvasGroup","set_alpha");
                        effect(0x32225c,{method,canvas,0.0f});
                    }
                }
            }
        }
    }
    if(flag(0x3f3ce8))(void)ptr(0x334224,{std::string("FlashbangOverlay"),std::string("")});
}

void Replay::noclip(Address player,bool flying) {
    // [C] 3282e7..3286a2: movement state capture before fly writes.
    const auto movement=input.movement;
    if(integer(0x3f75ec)==0)global(0x3f75ec,field<std::uint32_t>(movement+0xb8,0x3282f0));
    if(flying&&!pred(0x36a0e0,{player})&&!flag(0x3f34c8)) {
        const auto related=ptr(0x369298,{player});
        if(sample_pointer_range(related)) {
            Vec3 motion{};const auto rotation=quat(0x3739c4,{related});
            effect(0x373f0c,{movement,0.5f});flag(0x3e4250,true);
            const auto gate=[&](int code) {return key(code,flag(0x3d82a1))&&!flag(0x3e5e71);};
            if(gate(0x24))motion=motion+rotate(vector_global(0x3f4ac0),rotation);
            if(gate(0x20))motion=motion-rotate(vector_global(0x3f4ac0),rotation);
            if(gate(0x0e))motion=motion-rotate(vector_global(0x3f4ad0),rotation);
            if(gate(0x11))motion=motion+rotate(vector_global(0x3f4ad0),rotation);
            if(gate(0))motion.y+=1.0f;
            float speed=number(flag(0x3d82a1)?0x3f3f18:0x3f3e28);
            if(gate(0x36))speed=number(flag(0x3d82a1)?0x3f3f68:0x3f3e78);
            if(gate(0x32))speed=number(flag(0x3d82a1)?0x3f3fb8:0x3f3ec8);
            flag(0x3f75e8,true);
            if(different(motion,{}))store_vector(movement+0x44,motion*speed,0x32856d);
        }
    } else if(flag(0x3f75e8)) {
        effect(0x373f0c,{movement,0.0f});
        // [C] MOVSXD dword -> qword, not restoring only the original low dword.
        store(movement+0xb8,static_cast<Address>(static_cast<std::int64_t>(integer(0x3f75ec))),0x328594);
        flag(0x3e4250,false);flag(0x3f75e8,false);
    }
    if(flag(0x3efae1)) {
        const auto bits=std::bit_cast<std::uint32_t>(0.0f);
        const auto encoded=std::rotr((bits+0xe563546eu)^0xc6bab1aeu,4)^0x76bc58f6u;
        store(movement+0x118,encoded,0x329a7e);
    }
    auto capture=address(0x3f75f0);
    if(!capture) {capture=field<std::uint32_t>(movement+0x128,0x3285c9);global(0x3f75f0,capture);}
    if(!flying&&flag(0x3ef781)) {
        store(movement+0x128,static_cast<std::uint32_t>(capture),0x3285f0);
        const auto encoded=std::rotr(std::rotr(std::bit_cast<std::uint32_t>(10000.0f),25)^0x6f74331fu,6);
        store(movement+0x120,encoded,0x329a97);
    }
    const bool nofall=flag(0x3d8241)||flag(0x3ef4e1)||flag(0x3f3428);
    effect(0x373eb4,{movement,nofall});
    const auto related=field<Address>(movement+0xe8,0x32861f);
    if(sample_pointer_range(related))store(related+0x50,std::uint32_t(flag(0x3f3018)),0x32863f);
    if(flag(0x3efba1))model_flag(input.model_state,0x20);
    if(enabled(0x3e9f50)||flying||flag(0x3d8241)||flag(0x3ef4e1)||flag(0x3efb41))model_flag(input.model_state,0x10);
}

void Replay::fat_bullet(Address player) {
    // [C] 3286a2..328d66. The target flags have deliberately asymmetric resets.
    const auto clear=[&]() {global_vector(0x3d72d0,{});flag(0x3e5e79,false);flag(0x3e4239,false);};
    if(!flag(0x3d7ec8)||!flag(0x3d8058)||!flag(0x3d7e78)||!flag(0x3d72a0)) {
        global(0x248eb0,number(0x3f3dd8));clear();return;
    }
    const auto counter=integer(0x3f2b14);
    if(!(static_cast<float>(counter)>=number(0x3f4008))) {global(0x3f2b14,std::uint32_t(counter)+1u);return;}
    const auto finish=[&]() {global(0x3f2b14,std::uint32_t{1});};
    const auto target=ptr(0x2e02b0);
    if(!sample_pointer_range(target)) {global(0x248eb0,number(0x3f3dd8));clear();finish();return;}
    if(field<Address>(target+0x48,0x2e0e9c)==0) {clear();finish();return;}
    const auto hash=class_hash(target);if(!hash) {finish();return;}
    const auto t=transform(target);if(!sample_pointer_range(t)) {finish();return;}
    const auto item=held(player);if(!sample_pointer_range(item)) {finish();return;}
    effect(0x3721b4,{item});
    const auto origin=vec(0x369164,{player});
    const bool npc=*hash==entity_name_hash_2d6354("ScientistNPC2");
    const auto head=vec(0x368be8,{target,std::int32_t{npc?11:55}});
    const auto neck=vec(0x368be8,{target,std::int32_t{npc?15:54}});
    const Vec3 eye=Vec3{head.x,neck.y,head.z}+Vec3{0,0.05f,0};
    (void)vec(0x3747d4,{t});
    float radius=number(0x248eb0);
    if(!flag(0x3f2b10)) {radius+=-0.1f;global(0x248eb0,radius);}
    if(radius<=0.0f) {radius=number(0x3f3dd8);global(0x248eb0,radius);}
    const Vec3 raised=eye+Vec3{0,2,0};(void)raised;
    const auto count=integer(0x3f40f8);
    if(count<0||static_cast<std::size_t>(count)>input.iteration_limit)throw Stop{MovementMainStatus::invalid_size,0x32a92c};
    state.directions_3f4af0.resize(static_cast<std::size_t>(count));
    state.points_3f4b08.resize(static_cast<std::size_t>(count));
    if(integer(0x248eb4)!=count) {
        global(0x248eb4,count);
        // [C] 3295bc: golden-angle points, literal root and matching-game
        // Mathf.Cos/Sin callbacks (2dff68 / 2e0198), no std::sqrt substitution.
        const float root=sample_sqrt_2e3c88(5.0f);
        const float angle=(3.0f-root)*std::bit_cast<float>(std::uint32_t{0x40490fdb});
        const float stride=2.0f/static_cast<float>(count);
        const float half=stride*0.5f;
        for(int i=0;i<count;++i) {
            step(0x329645);const float fi=static_cast<float>(i);
            const float y=1.0f-(fi*stride+half);
            const float radial=sample_sqrt_2e3c88(1.0f-y*y);
            const float theta=fi*angle;
            const float x=scalar(0x2dff68,{theta})*radial;
            const float z=scalar(0x2e0198,{theta})*radial;
            state.directions_3f4af0[static_cast<std::size_t>(i)]={x,y,z};
        }
    }
    // [C] 32a454 multiply each component first then add target neck.
    for(std::size_t i=0;i<state.points_3f4b08.size();++i)state.points_3f4b08[i]=state.directions_3f4af0[i]*radius+neck;
    if(visible(eye,origin)&&visible(origin,eye)) {
        const auto direction=predict(address(0x3e5718),origin,eye,vector_global(0x3d7248));
        if(!zero(direction)) { // [C] 328a59: Z before XY.
            global(0x3d72d8,std::bit_cast<std::uint32_t>(eye.z));
            const auto xy=std::bit_cast<std::array<std::uint32_t,3>>(eye);
            global(0x3d72d0,std::uint64_t(xy[0])|(std::uint64_t(xy[1])<<32));
            flag(0x3e5e79,true);flag(0x3e4239,true);
        } else clear();
        flag(0x3f2b10,false);finish();return;
    }
    // [C] 328ac0/328aca: native i==0 uses neck; later iterations read i+1,
    // including two past logical size. Copied backing-tail bytes are explicit.
    for(std::size_t i=0;i<state.points_3f4b08.size()+1;++i) {
        step(0x328ac0);Vec3 candidate=neck;
        if(i!=0) {
            const auto index=i+1;
            if(index<state.points_3f4b08.size())candidate=state.points_3f4b08[index];
            else {
                const auto spill=index-state.points_3f4b08.size();
                if(spill>=state.candidate_backing_tail.size())throw Stop{MovementMainStatus::missing_bytes,0x2ef7d0};
                candidate=state.candidate_backing_tail[spill];
            }
        }
        if(!visible(origin,candidate)||!visible(candidate,origin)||!visible(candidate,eye)||!visible(eye,candidate)) {
            clear();flag(0x3f2b10,false);continue;
        }
        // [C] 32a770 returns integer 2 for zero prediction, 1 for failed
        // trajectory, 0 for success; stop/continue directions match 328c73.
        const auto direction=predict(address(0x3e5718),origin,candidate,vector_global(0x3d7248));
        if(zero(direction))break;
        const bool trajectory=trajectory_32a4f0(origin,candidate,direction,address(0x3e5718),neck);
        if(!trajectory) {clear();flag(0x3f2b10,false);continue;}
        global_vector(0x3d72d0,candidate);flag(0x3e4239,true);flag(0x3e5e79,true);flag(0x3f2b10,true);break;
    }
    finish();
}

void Replay::omni_sprint(Address player) {
    // [C] 328d66..328ebb, including unordered comparisons and maxss source order.
    if(!flag(0x3f3888)||pred(0x36a0e0,{player})||pred(0x36b288,{player}))return;
    const auto movement=input.movement;
    float speed;
    if(field<float>(movement+0x58,0x328d93)>0.5f||pred(0x36a238,{player})||
       field<float>(movement+0x54,0x328dc5)>0.5f)speed=1.7f;
    else speed=pred(0x372bf4,{input.model_state,std::int32_t{2}})?2.8f:5.5f;
    const float penalty=field<float>(player+0x7f8,0x328df1);
    if(penalty>0.0f) {
        if(speed==5.5f)speed-=penalty*5.5f;
        else if(speed==2.8f)speed-=penalty*2.8f;
        else if(speed==1.7f)speed-=penalty*1.7f;
    }
    if(pred(0x36a238,{player}))speed+=field<float>(player+0x7d1,0x328e39)*1.7f;
    const Vec3 motion=field<Vec3>(movement+0x44,0x328e4a);
    const float n=magnitude(motion);model_flag(input.model_state,0x10);
    if(n>0.0f) {
        speed=maxss(speed,n);
        const Vec3 replacement{(motion.x/n)*speed,motion.y,(motion.z/n)*speed};
        store_vector(movement+0x44,replacement,0x328eb1);
    }
}

void Replay::end_collisions(Address player) {
    // [C] 328ebb..328ff3: create one box once; scale X/Z in f64, Y=0.001.
    if(!sample_pointer_range(address(0x3e5e80))) {
        const auto root=ptr(0x329a38);
        if(sample_pointer_range(root)) {
            const auto component=ptr(0x37628c,{root});
            if(sample_pointer_range(component)) {
                const auto object=ptr(0x370508,{component});
                if(sample_pointer_range(object)) {
                    const auto collider=ptr(0x372efc,{object,std::string("BoxCollider"),std::string("UnityEngine")});
                    global(0x3e5e80,collider);
                    if(sample_pointer_range(collider)) {
                        const auto other=ptr(0x315a24);
                        if(sample_pointer_range(other)) {
                            const auto size=vec(0x3743f8,{other});
                            const Vec3 resized{static_cast<float>(static_cast<double>(size.x)*1.5),0.001f,
                                static_cast<float>(static_cast<double>(size.z)*1.5)};
                            effect(0x370968,{collider,resized});
                        }
                    }
                }
            }
        }
    }
    const auto t=transform(player);
    if(sample_pointer_range(t)) {
        const auto a=vec(0x368b9c,{player});const auto b=vec(0x3747d4,{t});
        const auto midpoint=(a+b)*0.5f;
        (void)uint(0x322580,{midpoint,0.01f});
        effect(0x329aa0,{std::int32_t{12},std::int32_t{4},!flag(0x3f3478)});
    }
    // [C] 329119 is a tail call after restores, not an ordinary RET.
    effect(0x329aa0,{std::int32_t{12},std::int32_t{11},flag(0x3f3518)||flag(0x3efb41)});
    result.collision_tail_called=true;
}
// [C] 2e5a80 segment projection: normalize using literal magnitude; dot Y,X,Z.
Vec3 closest(Vec3 start,Vec3 end,Vec3 point) {
    const Vec3 delta=end-start;const float n=magnitude(delta);if(n==0)return start;
    const Vec3 direction{delta.x/n,delta.y/n,delta.z/n};const Vec3 offset=point-start;
    const float projection=(offset.y*direction.y+offset.x*direction.x)+offset.z*direction.z;
    const float t=0.0f>projection?0.0f:minss(n,projection);
    return start+direction*t;
}

bool Replay::trajectory_32a4f0(Vec3 origin,Vec3 candidate,Vec3 direction,Address parameters,Vec3 neck) {
    // [C] Full 32a4f0..32a76e: closest-point radius/visibility search.
    if(zero(direction))return false;
    Vec3 velocity=direction*parameter(parameters,0,0x32a549);
    const Vec3 gravity{0,parameter(parameters,8,0x32a552)*-9.81f,0};
    const float drag=parameter(parameters,4,0x32a575);
    float elapsed=0;
    do {
        step(0x32a58b);const auto next=origin+velocity*0.03125f;
        const auto projection=closest(origin,next,neck);
        if(number(0x3f3dd8)>=distance(neck,projection)&&visible(projection,neck)&&visible(origin,projection))return true;
        origin=next;velocity=velocity+gravity*0.03125f;velocity=velocity-(velocity*drag)*0.03125f;
        elapsed+=0.03125f;
    } while(8.0f>elapsed);
    (void)candidate;return false;
}

bool Replay::trajectory_329b50(Vec3& origin,Vec3 target,Vec3 neck,Vec3 direction,Address parameters) {
    // [C] 329b50..32a011, including the unusual no-advance-on-improvement branch.
    if(zero(direction))return false;
    Vec3 velocity=direction*parameter(parameters,0,0x329bdc);
    const auto ray_mask=mask();
    Vec3 closest_point{},checkpoint=origin;
    float best=std::numeric_limits<float>::max(),previous=1000.0f;
    float accumulated=0,elapsed=0;
    unsigned increments=0,away=0;
    for(;;) {
        step(0x329c3d);const float dt=increments==0?0.001f:0.03125f;
        const Vec3 old=origin,next=origin+velocity*dt;
        const float segment_length=magnitude(next-old);
        const float miss=distance(target,closest(old,next,target));
        if(miss>previous&&++away>=2)break;
        accumulated+=segment_length;
        if(accumulated>=(increments==0?0.0f:10.6f)) {
            const float distance_ray=distance(checkpoint,next);
            const auto hit=invoke(0x2e8fac,calls.raycast_2e8fac,checkpoint,next-checkpoint,distance_ray,ray_mask,0);
            if(hit.hit)return false;
            const auto projection=closest(checkpoint,next,target);
            const float candidate=distance(target,projection);
            if(best>candidate) {
                best=candidate;closest_point=projection;
                // [C] 329e45 -> 329f00 skips origin, velocity, timer, increment.
                previous=miss;
                if(!(8.0f>elapsed))break;
                continue;
            }
            checkpoint=next;accumulated=0;
        }
        origin=next;
        const Vec3 gravity{0,parameter(parameters,8,0x329e8c)*-9.81f,0};
        velocity=velocity+gravity*dt;
        velocity=velocity-(velocity*parameter(parameters,4,0x329ecf))*dt;
        ++increments;elapsed+=dt;previous=miss;
        if(!(8.0f>elapsed))break;
    }
    if(zero(closest_point))return false;
    return visible(closest_point,target)&&visible(closest_point,neck);
}

Vec3 Replay::grenade_trace_32a16c(Vec3& position,Vec3& velocity,float& flight_time,float duration,
                                 Vec3 gravity,float drag,std::uint32_t ray_mask) {
    // [C] 32a16c..32a451. floor-like 320c2c is finite bounded on fixture inputs;
    // [I] reject nonfinite/extreme loop counts instead of native nonprogress.
    const float steps=duration*32.0f;
    if(!std::isfinite(steps)||steps<static_cast<float>(std::numeric_limits<std::int32_t>::min())||
       steps>=2147483648.0f)throw Stop{MovementMainStatus::invalid_size,0x320c2c};
    const auto count=static_cast<std::int32_t>(std::floor(steps));
    Vec3 previous=position;
    for(std::int32_t i=0;i<count;++i) {
        step(0x32a1d1);
        const auto hit=invoke(0x2e8fac,calls.raycast_2e8fac,previous,position-previous,distance(previous,position),ray_mask,0);
        if(!hit.hit) {
            previous=position;position=position+velocity*0.03125f;
            velocity=velocity+gravity*0.03125f;velocity=velocity-(velocity*drag)*0.03125f;
        } else if(hit.distance!=0.0f) {
            const auto collider=ptr(0x329920,{hit.collider});
            if(sample_pointer_range(collider)) {
                // [C] 32a313..369 uses a separate bitfield/cache from 327697.
                auto bits=global<std::uint32_t>(0x3f4750);
                if(!(bits&1)) {global(0x3f4750,bits|1u);global(0x3f4748,address(0x3d6f00)+0x597e7b0);}
                bits=global<std::uint32_t>(0x3f4750);
                if(!(bits&2)) {global(0x3f4750,bits|2u);effect(0x2cbd24,{Address{0x3f4760},address(0x3f4748)});}
                const auto entity=ptr(0x2cb9fc,{address(0x3f4748),collider});
                if(sample_pointer_range(entity)) {
                    const auto h=class_hash(entity);
                    if(h) {
                        if(*h==entity_name_hash_2d6354("BasePlayer")) {flight_time=static_cast<float>(i)*0.03125f;return hit.point;}
                        return {};
                    }
                }
            }
        }
    }
    return previous;
}
// [C] 2dfed0 cross product uses Y*Z-Z*Y, Z*X-X*Z, X*Y-Y*X.
Vec3 cross(Vec3 a,Vec3 b) {return {a.y*b.z-a.z*b.y,a.z*b.x-a.x*b.z,a.x*b.y-a.y*b.x};}
std::array<float,4> Replay::look_quaternion(Vec3 forward) {
    // [C] 2e0ff0, including its discarded first normalization output.
    const Vec3 right=normalized(cross({0,1,0},forward));
    const Vec3 up=cross(forward,right);
    const float trace=(up.y+right.x)+forward.z;
    std::array<float,4> q{};
    if(trace>0) {
        const float root=sample_sqrt_2e3c88(trace+1.0f),factor=0.5f/root;
        q={(up.z-forward.y)*factor,(forward.x-right.z)*factor,(right.y-up.x)*factor,root*0.5f};
    } else if(right.x>=up.y&&right.x>=forward.z) {
        const float root=sample_sqrt_2e3c88(((right.x+1.0f)-up.y)-forward.z),factor=0.5f/root;
        q={root*0.5f,(up.x+right.y)*factor,(forward.x+right.z)*factor,(up.z-forward.y)*factor};
    } else if(up.y>forward.z) {
        const float root=sample_sqrt_2e3c88(((up.y+1.0f)-right.x)-forward.z),factor=0.5f/root;
        q={(up.x+right.y)*factor,root*0.5f,(forward.y+up.z)*factor,(forward.x-right.z)*factor};
    } else {
        const float root=sample_sqrt_2e3c88(((forward.z+1.0f)-right.x)-up.y),factor=0.5f/root;
        q={(forward.x+right.z)*factor,(forward.y+up.z)*factor,root*0.5f,(right.y-up.x)*factor};
    }
    return q;
}
Vec3 Replay::direction_angles(Vec3 forward) {
    const auto q=look_quaternion(forward);
    // [C] 31530c/31a8e4, using the existing recovered scalar polynomials.
    const float xx=q[0]*q[0],yy=q[1]*q[1],zz=q[2]*q[2],ww=q[3]*q[3];
    const float sum=(((yy+xx)+zz)+ww),test=q[0]*q[3]-q[2]*q[1];
    constexpr float threshold=std::bit_cast<float>(std::uint32_t{0x3effbe77});
    Vec3 angles{};
    if(test>sum*threshold)angles={std::bit_cast<float>(std::uint32_t{0x3fc90fdb}),
        approximate_atan2_3c86ac(q[1],q[0])*2.0f,0};
    else if(sum*(-threshold)>test)angles={std::bit_cast<float>(std::uint32_t{0xbfc90fdb}),
        approximate_atan2_3c86ac(q[1],q[0])*(-2.0f),0};
    else angles={approximate_asin_3c85e8(test+test),
        approximate_atan2_3c86ac((q[2]+q[2])*q[0]+(q[3]+q[3])*q[1],1.0f-((yy+xx)+(yy+xx))),
        approximate_atan2_3c86ac((q[0]+q[0])*q[1]+(q[3]+q[3])*q[2],1.0f-((zz+xx)+(zz+xx)))};
    angles=angles*std::bit_cast<float>(std::uint32_t{0x42652ee6});
    const auto wrap=[&](float x) {
        while(x>360.0f) {step(0x320cda);const auto next=x-360.0f;if(next==x)throw Stop{MovementMainStatus::iteration_limit,0x320cda};x=next;}
        while(0.0f>x) {step(0x320cec);const auto next=x+360.0f;if(next==x)throw Stop{MovementMainStatus::iteration_limit,0x320cec};x=next;}
        return x;
    };
    return {wrap(angles.x),wrap(angles.y),wrap(angles.z)};
}
std::array<float,4> Replay::euler_quaternion(Vec3 a) {
    // [C] 318a14: f64 degree conversion and half-angle; game Sin/Cos
    // return binary32, widened before the quaternion products.
    const auto trig=[&](float degrees) {
        const double rad=static_cast<double>(degrees)*std::bit_cast<double>(std::uint64_t{0x3f91df46a0000000});
        const float half=static_cast<float>(rad*0.5);
        const double c=scalar(0x2dff68,{half}),sn=scalar(0x2e0198,{half});
        return std::array<double,2>{c,sn};
    };
    const auto x=trig(a.x),y=trig(a.y),z=trig(a.z);
    const double cycx=y[0]*x[0],sycx=y[1]*x[0],sysx=y[1]*x[1],cysx=y[0]*x[1];
    return {static_cast<float>(sycx*z[1]+cysx*z[0]),
        static_cast<float>(sycx*z[0]-cysx*z[1]),
        static_cast<float>(cycx*z[1]+sysx*z[0])*(-1.0f),
        static_cast<float>(cycx*z[0]-sysx*z[1])};
}
struct Flight {
    bool active{};Vec3 closest{},at_closest_velocity{},velocity{};
    float time{},miss{std::numeric_limits<float>::max()};
};
MovementMainGrenadeSolution Replay::grenade_317194(Vec3 start,Vec3 target,Vec3 motion,float tolerance) {
    // [C] 317194..3176b9 and 315690, with owned values replacing local records.
    MovementMainGrenadeSolution out{false,target-start};
    const auto player=ptr(0x2dda9c);if(!valid(player))return out;
    const auto player_again=ptr(0x2dda9c);if(!valid(player_again))return out;
    const auto item=held(player_again);if(!sample_pointer_range(item))return out;
    const auto weapon=ptr(0x3716e0,{item});if(!sample_pointer_range(weapon))return out;
    const float speed=static_cast<float>(static_cast<double>(field<float>(weapon+0x3f8,0x315701))-
        std::bit_cast<double>(std::uint64_t{0x3fdd000010000000}));
    constexpr Vec3 gravity{0,-9.81f,0};constexpr float drag=0;
    out.direction=normalized(target-start)*speed;
    target=target+motion*number(0x3e4254);
    const auto angles=direction_angles(normalized(target-start));
    float pitch=angles.x;if(pitch>180.0f)pitch+=-360.0f;
    float increment=30.0f,previous_pitch=-180.0f;
    Flight best{},window{};Vec3 best_initial_velocity{};unsigned iterations=0;
    // [C] 320f88 local flight integration; the nearest segment is retained
    // through the first strict increase, which occurs before velocity updates.
    const auto simulate=[&](Vec3 velocity) {
        Vec3 position=start,segment_start=start,segment_end=start;
        float best_miss=std::numeric_limits<float>::max(),time=0;
        Vec3 last_velocity=velocity;
        do {
            step(0x32103b);const auto old=position;position=position+velocity*0.03125f;
            const auto projection=closest(old,position,target);const float miss=distance(projection,target);
            if(miss>best_miss)break;
            best_miss=miss;segment_start=old;segment_end=position;
            velocity=velocity+gravity*0.03125f;velocity=velocity-(velocity*drag)*0.03125f;
            last_velocity=velocity;time+=0.03125f;
        } while(8.0f>time);
        const auto projection=closest(segment_start,segment_end,target);
        return Flight{true,projection,last_velocity,velocity,time-0.03125f,distance(projection,target)};
    };
    if(180.0f>pitch)do {
        step(0x3173cd);const auto rotation=euler_quaternion({pitch,angles.y,0});
        const auto rotated=rotate({0,0,1},rotation);const auto velocity=rotated*speed;
        const auto current=simulate(velocity);++iterations;
        if(current.active&&(!best.active||best.miss>current.miss)) {
            best=current;
            // [C] 317500..317526 inserts the trial's INITIAL velocity into
            // the saved best record. 317628/31762d returns it at output+10.
            best_initial_velocity=velocity;
        }
        const float improve_threshold=current.miss-0.001f;
        const bool advance=!window.active||(window.miss>=improve_threshold);
        if(iterations>=100||(best.active&&tolerance>=best.miss))break;
        if(advance) {window=current;previous_pitch=pitch;pitch+=increment;}
        else {
            pitch=previous_pitch;window.active=false;pitch-=increment;increment/=3.6700000762939453f;
            pitch=maxss(pitch,-180.0f);increment=maxss(increment,0.05f);pitch+=0.05f;
        }
    } while(180.0f>pitch);
    if(best.active) {
        if(tolerance>=best.miss)global(0x3e4254,best.time);
        out.direction=best_initial_velocity;
    }
    out.solved=tolerance>=best.miss;return out;
}

void Replay::write_orientation(Address related,const std::array<float,4>& q) {
    // [C] Reuse the existing complete 373d04 analysis helper. Both matching-game
    // rotation and Quaternion.Inverse remain required callbacks.
    OrientationApi api;
    api.rotation_373c60=[&](Address a) {
        const auto v=quat(0x373c60,{a});return Orientation{v[0],v[1],v[2],v[3]};
    };
    api.inverse_3738cc=[&](Orientation a) {
        const auto v=quat(0x3738cc,{std::array<float,4>{a.x,a.y,a.z,a.w}});
        return Orientation{v[0],v[1],v[2],v[3]};
    };
    const auto out=write_orientation_373d04(image,related,{q[0],q[1],q[2],q[3]},api);
    if(out.status!=LauncherStatus::complete)throw Stop{MovementMainStatus::missing_bytes,out.stopped_at,related+0x5c};
    if(out.orientation_written)++result.snapshot_stores;
}
void Replay::launch_aim_317c3c(Address instance,Address player) {
    // [C] 317c3c..3185a0: RCX instance is never used after the prologue.
    (void)instance;
    if(!valid(player)||!flag(0x3d7e78)||!flag(0x3d72a0))return;
    const auto item=held(player);if(!sample_pointer_range(item))return;
    const auto related=ptr(0x369298,{player});if(!sample_pointer_range(related))return;
    const auto origin=vec(0x369164,{player});const auto forward=vec(0x368100,{player});
    const auto grenade=ptr(0x3716e0,{item});const auto target=ptr(0x2e02b0);
    constexpr float rpc_scalar=std::bit_cast<float>(std::uint32_t{0x4e7e0000}); // [C] 293254 is NOT float 1.
    const auto grenade_direction=[&](Vec3 start,Vec3 point,float speed) -> std::optional<Vec3> {
        const auto solution=grenade_317194(start,point,vector_global(0x3d7248),0.125f);
        if(!solution.solved)return {};
        const float adjusted=static_cast<float>(static_cast<double>(speed)-std::bit_cast<double>(std::uint64_t{0x3fdd000010000000}));
        Vec3 endpoint=(normalized(solution.direction)*adjusted+start)-vector_global(0x3e6060)*0.5f;
        if(flag(0x3e7018))endpoint.y+=number(0x3e6088);
        return normalized(endpoint-start);
    };
    if(flag(0x3e72e8)&&sample_pointer_range(grenade)&&!sample_pointer_range(target)) {
        const auto saved=vector_global(0x3effd8);
        if(!zero(saved)) {
            const auto start=origin+forward*0.25f;
            const float speed=field<float>(grenade+0x3f8,0x317dcd);
            const auto direction=grenade_direction(start,saved,speed);
            if(direction) {
                const auto rotation=look_quaternion(*direction);
                if(flag(0x3e5098))effect(0x366ef0,{grenade,player,origin,*direction,rpc_scalar});
                else write_orientation(related,rotation);
            }
        }
    }
    if(!valid(target))return;
    auto point=vec(0x369790,{target});const auto projectile=ptr(0x371eb8,{item});
    if(sample_pointer_range(grenade)) {
        const auto start=origin+forward*0.25f;
        const float speed=field<float>(grenade+0x3f8,0x31802e);
        const auto target_transform=ptr(0x315a54,{target});
        if(sample_pointer_range(target_transform))point=vec(0x3747d4,{target_transform});
        const auto hash=class_hash(target);
        if(hash&&flag(0x3e7018))point=vec(0x368be8,{target,std::int32_t{*hash==entity_name_hash_2d6354("ScientistNPC2")?47:53}});
        const auto direction=grenade_direction(start,point,speed);if(!direction)return;
        const auto rotation=look_quaternion(*direction);
        if(flag(0x3e5098))effect(0x366ef0,{grenade,player,origin,*direction,rpc_scalar});
        else write_orientation(related,rotation);
        return;
    }
    if(!sample_pointer_range(projectile))return;
    const auto magazine=ptr(0x36b938,{projectile});if(!sample_pointer_range(magazine))return;
    const auto ammo=ptr(0x372b30,{magazine});if(!sample_pointer_range(ammo))return;
    const float speed=field<float>(projectile+0x3ac,0x31831d)*field<float>(ammo+0x3c,0x318329);
    const auto target_transform=ptr(0x315a54,{target});
    if(sample_pointer_range(target_transform))point=vec(0x3747d4,{target_transform});
    const auto start=origin+normalized(forward)*1.0f;
    const float gravity=field<float>(ammo+0x38,0x318392),drag=field<float>(ammo+0x34,0x31839b);
    if(!state.launch_format_fourth)throw Stop{MovementMainStatus::missing_bytes,0x2ee714,0x28};
    std::array<char,32> text{};
    const int n=std::snprintf(text.data(),text.size(),"%.2f/%.2f/%.2f/%.2f",static_cast<double>(speed),
        static_cast<double>(drag),static_cast<double>(gravity),*state.launch_format_fourth);
    if(n<0||static_cast<std::size_t>(n)>=text.size())throw Stop{MovementMainStatus::invalid_size,0x2ee714};
    const auto hash=entity_name_hash_2d6354(text.data());Address table=lookup_table(hash);
    if(!table) {
        // [C] Fourth constructor parameter is initialized zero despite the
        // unavailable fourth FORMAT argument above; preserve that difference.
        // [C] Constructor arguments are reloaded after formatting, in this order.
        const float constructor_drag=field<float>(ammo+0x34,0x318404);
        const float constructor_gravity=field<float>(ammo+0x38,0x31840d);
        table=create_table(hash,speed,constructor_gravity,constructor_drag,0);if(!table)return;prepare_table(table);
    }
    const auto prediction=predict(table,start,point,vector_global(0x3d7248));if(zero(prediction))return;
    const auto endpoint=normalized(prediction)*speed+start;
    const auto direction=normalized(endpoint-start);
    write_orientation(related,look_quaternion(direction));
}
} // namespace

MovementMainResult replay_movement_main_324b30(Snapshot& image,MovementMainState& state,
    const MovementMainInput& input,const MovementMainCalls& calls) {
    Replay r{image,state,input,calls};
    try {r.run();} catch(const Stop& e) {r.result.status=e.status;r.result.boundary=e.boundary;r.result.missing_address=e.address;}
    catch(const SnapshotBindingFailure& e) {binding_failure(r.result,e.status,e.site);}
    catch(const MetadataWrapperFailure& e) {binding_failure(r.result,game_base_status(e.status),e.site);}
    return r.result;
}
MovementMainResult replay_launch_aim_317c3c(Snapshot& image,MovementMainState& state,Address instance,
    Address player,const MovementMainCalls& calls,std::size_t iteration_limit) {
    const MovementMainInput input{0,0,0,iteration_limit};Replay r{image,state,input,calls};
    try {r.launch_aim_317c3c(instance,player);} catch(const Stop& e) {r.result.status=e.status;r.result.boundary=e.boundary;r.result.missing_address=e.address;}
    catch(const SnapshotBindingFailure& e) {binding_failure(r.result,e.status,e.site);}
    catch(const MetadataWrapperFailure& e) {binding_failure(r.result,game_base_status(e.status),e.site);}
    return r.result;
}
} // namespace rust_internal_re
