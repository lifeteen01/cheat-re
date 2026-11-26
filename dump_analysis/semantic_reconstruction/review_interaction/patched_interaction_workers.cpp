#include "interaction_workers.hpp"
#include "entities_analysis.hpp"
#include "game_base_analysis.hpp"
#include "snapshot_bindings.hpp"

namespace rust_internal_re {
namespace {
struct Stop { InteractionStatus status; Rva dependency; };
void binding_stop(InteractionResult& out,const SnapshotBindingFailure& e) {
    out.status=e.status==GameBaseStatus::missing_bytes?InteractionStatus::snapshot_bounds:
        e.status==GameBaseStatus::missing_boundary?InteractionStatus::missing_dependency:InteractionStatus::iteration_limit;
    out.dependency=e.site;
}
struct Replay {
    Snapshot& memory; InteractionState& state; const InteractionConfig& config;
    const InteractionCalls& api; InteractionResult result;
    template<class F,class... A> auto need(const F& f,Rva r,A&&... a) {
        if(!f) throw Stop{InteractionStatus::missing_dependency,r};
        return f(std::forward<A>(a)...);
    }
    template<class T> T read(Address p) {
        const auto value=memory.read<T>(p);
        if(!value) throw Stop{InteractionStatus::snapshot_bounds,0};
        return *value;
    }
    template<class T> void write(Address p,T value) {
        if(!memory.write(p,value)) throw Stop{InteractionStatus::snapshot_bounds,0};
    }
    void step() {
        if(result.iterations++>=config.iteration_limit) throw Stop{InteractionStatus::iteration_limit,0};
    }
    Address object(Rva r,Address self=0,std::int32_t index=0) {
        InteractionCall c{r,self}; c.integer=index; return need(api.object,r,c);
    }
    bool pred(Rva r,Address self=0,std::int32_t v=0,Address other=0,Address third=0) {
        InteractionCall c{r,self,other,third}; c.integer=v; return need(api.predicate,r,c);
    }
    std::int32_t integer(Rva r,Address self=0) {
        // [C] Entire mask getter 0x2e6a6c..0x2e6a80.
        if(r==0x2e6a6c) return config.mask_byte_3e5228?0x48a10101:0x48a12101;
        return need(api.integer,r,InteractionCall{r,self});
    }
    template<class T> T base_result(const GameBaseResult<T>& value) {
        if(value.status!=GameBaseStatus::complete) {
            const auto status=value.status==GameBaseStatus::missing_bytes?InteractionStatus::snapshot_bounds:
                value.status==GameBaseStatus::missing_boundary?InteractionStatus::missing_dependency:InteractionStatus::iteration_limit;
            throw Stop{status,value.site};
        }
        return value.value;
    }
    float scalar(Rva r,Address self=0) {
        if(r==0x36b504) return valid(self)?read<float>(self+0x3ac)+1.0f:0.0f;
        if(r==0x36b758) {
            AttachmentQueries q; q.name_37361c=[&](Address a){return object(0x37361c,a);};
            return base_result(attachment_velocity_36b758(memory,self,config.increase_velocity_3d7ce8,q,config.iteration_limit));
        }
        return need(api.scalar,r,InteractionCall{r,self});
    }
    Vec3 vector(Rva r,Address self=0,std::int32_t index=0,Vec3 point={}) {
        InteractionCall c{r,self}; c.integer=index; c.first=point; return need(api.vector,r,c);
    }
    Vec3 transform(Rva r,Address self,Vec3 p) { return vector(r,self,0,p); }
    float distance(Address local,Vec3 p) {
        InteractionCall c{0x3666b0,local}; c.first=p; return need(api.scalar,c.rva,c);
    }
    bool query(Vec3 from,Vec3 to) {
        InteractionCall c{0x2e2320}; c.first=from; c.second=to;
        c.integer=0x48a10000; return need(api.predicate,c.rva,c);
    }
    void action(InteractionCall c) { need(api.action,c.rva,c); ++result.actions; }
    void action(Rva r,Address self=0,std::int32_t v=0,Address other=0) {
        InteractionCall c{r,self,other}; c.integer=v; action(c);
    }
    bool valid(Address p) { return sample_pointer_range(p); }
    bool entity(Address p) {
        const auto result_value=entity_valid_2e0e9c(memory,p);
        if(!result_value) throw Stop{InteractionStatus::snapshot_bounds,0x2e0e9c};
        return *result_value;
    }
    bool key(std::int32_t k,bool held) { return pred(0x2e5e4c,0,k,held?1:0); }
    bool edge(Rva cell,std::int32_t k) {
        // [C] 0x2e89e4: UI predicate is called even when suppression byte is zero.
        (void)pred(0x2e6744);
        if(key(k,false)) { if(state.key_latches[cell]) return false; state.key_latches[cell]=true; return true; }
        state.key_latches[cell]=false; return false;
    }
    bool timer(Rva cell,float interval) {
        const float old=state.deadlines[cell];
        if(!(scalar(0x2e6240)>old)) return false;
        state.deadlines[cell]=scalar(0x2e6240)+interval; return true;
    }
    float range(float reach) {
        // [C] 0x2e091c calls Unity Vector3.Magnitude(zero), not the local root.
        InteractionCall c{0x2e0080}; c.first={};
        const float magnitude=need(api.scalar,c.rva,c);
        const float fixed=scalar(0x2e081c), smooth=scalar(0x2e0bf0), delta=scalar(0x2e071c);
        return interaction_range_2e091c(reach,config.elapsed_3d72ec,magnitude,fixed,smooth,delta);
    }
    std::optional<std::uint64_t> hash(Address entity_address) {
        auto name=need(api.class_name_2e5a54,0x2e5a54,entity_address);
        if(!name) return {};
        return entity_name_hash_2d6354(*name);
    }
    bool klass(Address p,std::string_view name) {
        const auto h=hash(p); return h&&*h==entity_name_hash_2d6354(name);
    }
    void rpc(Address self,Rva literal) {
        // [I] The boundary owns literal deobfuscation and managed string creation.
        InteractionCall c{0x366c30,self}; c.literal=literal; action(c);
    }
    void item_rpc(std::int32_t id,Rva literal) {
        InteractionCall c{0x2e69d8}; c.integer=id; c.literal=literal; action(c);
    }
    void initialize(bool forwarding) {
        auto& bits=forwarding?state.forwarding_bits_3e5bd8:state.melee_bits_3e3fd0;
        auto& original=forwarding?state.forwarding_original_3e5bd0:state.melee_original_3e3fc8;
        const Rva literal=forwarding?0x3e4de8:0x3e3f88;
        const Rva slot=forwarding?0x3e5be0:0x3e3fe0;
        // [C] EBX captures the flags once; resolver reentry must not change
        // the second test or the bits committed before context setup.
        auto captured_bits=bits;
        if(!(captured_bits&1u)) {
            captured_bits|=1u; bits=captured_bits;
            InteractionCall c{0x2ce5d8}; c.literal=literal;
            original=need(api.object,c.rva,c);
        }
        if(!(captured_bits&2u)) {
            captured_bits|=2u; bits=captured_bits;
            InteractionCall c{0x2cbd24,original}; c.slot=slot; action(c);
        }
    }
    void dispatch(std::uint32_t bit,Rva slot,Address object_address,std::int32_t uid) {
        // [C] Four cached GameAssembly+0x60425f0 sites, bits 1/2,4/8,40/80.
        if(!(state.dispatch_bits_3e5828&bit)) {
            state.dispatch_bits_3e5828|=bit;
            state.dispatch_code[slot]=config.game_assembly_3d6f00+0x60425f0;
        }
        if(!(state.dispatch_bits_3e5828&(bit<<1))) {
            state.dispatch_bits_3e5828|=bit<<1;
            InteractionCall init{0x2cbd24,state.dispatch_code[slot]}; init.slot=slot; action(init);
        }
        InteractionCall c{0x2e48d0,object_address}; c.integer=uid; c.integer2=1; c.slot=slot; action(c);
    }
    Orientation capture_orientation(Address local) {
        // [C] 0x36920c repeats the related getter; invalid output is unwritten.
        const auto related=object(0x369298,local);
        if(!valid(related)) throw Stop{InteractionStatus::stale_stack_required,0x36920c};
        return need(api.orientation_3739c4,0x3739c4,related);
    }
    void set_orientation(Address related,Orientation value) {
        const auto out=write_orientation_373d04(memory,related,value,api.orientation);
        if(out.status!=LauncherStatus::complete) throw Stop{
            out.status==LauncherStatus::missing_dependency?InteractionStatus::missing_dependency:InteractionStatus::snapshot_bounds,out.stopped_at};
    }
    void original(Address weapon,Address arg) {
        InteractionCall c{0x2d2094,weapon,arg,state.melee_original_3e3fc8}; c.slot=0x3e3fe0;
        action(c); result.original_called=true;
    }
    Address list(Address local,Rva which) {
        const auto inv=object(0x369324,local); if(!valid(inv)) return 0;
        const auto l=object(which,inv); return valid(l)?l:0;
    }
    void each_item(Address container,const std::function<void(Address)>& f) {
        const auto items=read<Address>(container+0x20); if(!valid(items)) return;
        const auto count=read<std::int32_t>(items+0x18);
        for(std::int32_t j=0;j<count;++j) {
            step(); const auto array=read<Address>(items+0x10); if(!valid(array)) continue;
            // [C] LEA eax,[index*8], then MOVSXD; unsigned arithmetic preserves wrap.
            const auto offset=std::bit_cast<std::int32_t>(static_cast<std::uint32_t>(j)*8u);
            const auto item=read<Address>(array+0x20+static_cast<Address>(static_cast<std::int64_t>(offset)));
            if(valid(item)) f(item);
        }
    }
    void containers(Address l,const std::function<void(Address)>& f) {
        const auto n=integer(0x372278,l);
        for(std::int32_t i=0;i<n;++i) { step(); const auto c=object(0x3722a4,l,i); if(valid(c)) f(c); }
    }
    void move_item(Address item,Address destination,std::int32_t amount) {
        InteractionCall c{0x2e6a84,read<Address>(item+0x88),destination};
        c.integer=-1; c.integer2=amount; action(c);
    }
    bool trade_edge(std::int32_t k) {
        // [C] 0x2e8910 map value +4 is the previous key state; same map per key.
        (void)pred(0x2e6744);
        const bool down=key(k,false), prior=state.trade_key_latches[k];
        state.trade_key_latches[k]=down;
        return down&&!prior;
    }
    std::pair<Address,std::int32_t> destination(Address inv) {
        const auto d=object(0x373df4,inv);
        if(valid(d)) return {read<Address>(d+0x58),integer(0x37224c,d)};
        if(!config.destination_scratch) throw Stop{InteractionStatus::stale_stack_required,0x373df4};
        return {*config.destination_scratch,std::bit_cast<std::int32_t>(static_cast<std::uint32_t>(*config.destination_scratch))};
    }
    bool fire_gate() {
        if(config.instant_3d7fb8&&instant_gate(true)&&config.mode_3e4ff8) return true;
        if(config.charge_3e4254>0.95f&&!instant_gate(false)) return true;
        return !config.mode_3e4ff8;
    }
    bool magazine(Address weapon) {
        const auto m=object(0x36c3b4,weapon);
        return valid(m)&&read<std::int32_t>(m+0x1c)>0;
    }
    void burst(Address weapon,Rva cell) {
        if(!(config.elapsed_3d72ec>config.rapid_threshold_3e5318)) return;
        const float quotient=config.elapsed_3d72ec/read<float>(weapon+0x304);
        // [C] CVTTSS2SI returns INT_MIN for NaN/out-of-range, then signed max(1,n).
        std::int32_t count=std::numeric_limits<std::int32_t>::min();
        if(std::isfinite(quotient)&&static_cast<double>(quotient)>=-2147483648.0&&static_cast<double>(quotient)<2147483648.0)
            count=static_cast<std::int32_t>(quotient);
        count=std::max(count,1);
        if(!timer(cell,0.3f)||!fire_gate()) return;
        for(std::int32_t n=0;n<count;++n) { step(); action(0x36bfdc,weapon,1); }
    }
    void input_attack(Address input) { action(0x373d84,input,0x400); }
    void mark_input(Address local) {
        auto a=object(0x369738,local); if(!valid(a)) return;
        a=object(0x373dc8,a); if(!valid(a)) return;
        a=read<Address>(a+0x20); if(!valid(a)) return;
        write(a+0x28,read<std::uint32_t>(a+0x28)|0x400u);
    }
    float weapon_additional_range(Address);
    bool instant_gate(bool);
    bool firing_visibility(Address,Address,Address);
    bool trajectory_visibility(Vec3,Vec3,Vec3,Address);
    void run_automation();
    void run_melee(Address,Address);
};
Vec3 normalized(Vec3 p) { const float n=length(p); return n>0?Vec3{p.x/n,p.y/n,p.z/n}:Vec3{}; }
Vec3 cross(Vec3 a,Vec3 b) { return {a.y*b.z-a.z*b.y,a.z*b.x-a.x*b.z,a.x*b.y-a.y*b.x}; }
bool nonzero(Vec3 p) { return p.x!=0||p.y!=0||p.z!=0; } // [C] inequality includes NaN.
}
float interaction_range_2e091c(float reach,float elapsed,float magnitude,float fixed,float smooth,float delta) {
    // [C] MAXSS source ordering: first max(delta,smooth), then max(previous,fixed).
    const float a=smooth>delta?smooth:delta;
    const float maximum=fixed>a?fixed:a;
    const float scaled=(((maximum+maximum)+(elapsed+0.03333333507180214f))*1.5f)*magnitude;
    return static_cast<float>((static_cast<double>(scaled)+0.1)+static_cast<double>(reach*1.5f));
}
std::int32_t melee_bone_2e18bf(std::int32_t setting,float r) {
    if(setting==0) return 53;
    if(setting==1) return 23;
    if(setting==2) return 29;
    if(setting==3) return 17;
    if(setting!=4&&setting!=5) return 53;
    if(r>90) return setting==4?53:61;
    if(r>80) return 52;
    if(r>70) return 24;
    if(r>60) return 0;
    if(setting==4) {
        if(r>50) return 14;
        if(r>40) return 17;
        if(r>30) return 20;
        if(r>20) return 29;
        return r>10?61:3;
    }
    if(r>50||r>40) return 14;
    if(r>30) return 20;
    if(r>20) return 29;
    return r>10?25:3;
}
Orientation interaction_look_rotation_2e0ff0(Vec3 f,Vec3 up) {
    // [C] 0x2e1029 normalized-forward temporary is overwritten by original f.
    (void)normalized(f);
    const Vec3 right=normalized(cross(up,f)), u=cross(f,right);
    const float trace=(right.x+u.y)+f.z;
    if(trace>0.0f) { // [C] literal 0x28d24c = +0.0f.
        const float root=sample_sqrt_2e3c88(trace+1.0f), scale=0.5f/root;
        return {(u.z-f.y)*scale,(f.x-right.z)*scale,(right.y-u.x)*scale,root*0.5f};
    }
    if(right.x>=u.y&&right.x>=f.z) {
        const float root=sample_sqrt_2e3c88(((right.x+1)-u.y)-f.z), s=0.5f/root;
        return {root*0.5f,(right.y+u.x)*s,(right.z+f.x)*s,(u.z-f.y)*s};
    }
    if(u.y>f.z) {
        const float root=sample_sqrt_2e3c88(((u.y+1)-right.x)-f.z), s=0.5f/root;
        return {(right.y+u.x)*s,root*0.5f,(u.z+f.y)*s,(f.x-right.z)*s};
    }
    const float root=sample_sqrt_2e3c88(((f.z+1)-right.x)-u.y), s=0.5f/root;
    return {(right.z+f.x)*s,(u.z+f.y)*s,root*0.5f,(right.y-u.x)*s};
}
namespace {
// [C] 0x32bb60..0x32bd4b: actual weapon/ammo range discriminator.
float Replay::weapon_additional_range(Address held) {
    if(!valid(object(0x2dda9c))||!valid(held)) return 0;
    const auto first=object(0x371404,held), second=object(0x372100,held);
    const auto third=object(0x371764,held), fourth=object(0x371f24,held), fifth=object(0x371328,held);
    if(valid(first)) return 15;
    if(valid(second)||valid(fifth)) return 0;
    if(valid(third)) return 3;
    if(!valid(fourth)) return 6;
    const auto name=need(api.ammo_name_36b530,0x36b530,fourth);
    if(name.empty()) return 3;
    const auto h=entity_name_hash_2d6354(name);
    if(h==entity_name_hash_2d6354("12 Gauge Buckshot")||h==entity_name_hash_2d6354("12 Gauge Incendiary Shell")) return 3;
    if(h==entity_name_hash_2d6354("Handmade Shell")) return 0;
    return h==entity_name_hash_2d6354("12 Gauge Slug")?10.0f:3.0f;
}
// [C] Adapt the shared, byte-checked instant predicates; preserve integer masks.
bool Replay::instant_gate(bool desync) {
    InstantHitInput input{config.instant_3d7fb8,config.fat_3d8058,config.fat_ready_3e5e79,
        config.elapsed_3d72ec,config.charge_3e4254};
    InstantHitQueries q;
    q.local_2dda9c=[&](){return object(0x2dda9c);};
    q.target_2e02b0=[&](){return object(0x2e02b0);};
    q.mask_2e6a6c=[&](){return static_cast<std::uint32_t>(integer(0x2e6a6c));};
    q.game.object=[&](Rva r,Address a){return object(r,a);};
    q.game.vector=[&](Rva r,Address a){return vector(r,a);};
    q.game.bone_368be8=[&](Address a,int bone){return vector(0x368be8,a,bone);};
    q.game.scalar=[&](Rva r,Address a){return r==0x32bb60?weapon_additional_range(a):scalar(r,a);};
    q.query_2e2320=[&](Vec3 a,Vec3 b,std::uint32_t mask,float radius,float padding){
        InteractionCall c{0x2e2320}; c.first=a; c.second=b;
        c.integer=std::bit_cast<std::int32_t>(mask); c.scalar=radius; c.scalar2=padding;
        return need(api.predicate,c.rva,c);
    };
    const auto value=desync?instant_timed_2f824c(memory,input,q):instant_fixed_2f7dd0(memory,input,q);
    return base_result(value);
}
// [C] Complete supporting target/geometry gate 0x2e6340..0x2e673f,
// including its alternate branch after the early RET at 0x2e65b2.
bool Replay::firing_visibility(Address local,Address held,Address target) {
    if(config.aim_ready_3e4238||!valid(local)||!valid(held)||!valid(target)) return false;
    auto point=vector(0x369790,target);
    if(!nonzero(point)) return false;
    (void)vector(0x368be8,target,54); // [C] observed unused getter, may have side effects.
    const auto origin=vector(0x369164,local);
    if(length(origin-point)>static_cast<float>(config.player_maximum_distance_3d8148)) return false;
    const auto projectile=object(0x371464,held), melee=object(0x3721b4,held), server=object(0x371eb8,held);
    if(valid(server)) {
        const auto a=object(0x36b938,server);
        if(!valid(a)||!valid(object(0x372b30,a))) return false;
        const auto shifted=origin+normalized(vector(0x368100,local));
        const auto tr=object(0x2e6110,target);
        if(valid(tr)) point=vector(0x3747d4,tr);
        if(!config.trajectory_3e5718) return false;
        const auto prediction=need(api.prediction_2e2374,0x2e2374,shifted,point,config.motion_3d7248,config.trajectory_3e5718);
        return !prediction.empty&&trajectory_visibility(shifted,point,normalized(prediction.direction),config.trajectory_3e5718);
    }
    if(valid(projectile)) {
        const auto item=object(0x37154c,held);
        if(!valid(item)) return false;
        const auto a=object(0x36b938,projectile);
        if(!valid(a)||!valid(object(0x372abc,a))) return false;
        if(static_cast<std::uint32_t>(integer(0x37261c,item))==0x34b73d71u) (void)scalar(0x36b504,projectile);
        const auto attachment=scalar(0x36b758,projectile);
        if(attachment!=0) (void)scalar(0x36b758,projectile); // [C] unordered also repeats.
    } else {
        if(!valid(melee)) return false;
        const auto a=object(0x371630,held);
        if(!valid(a)||!valid(object(0x372abc,a))) return false;
    }
    if(!config.trajectory_3e5718) return false;
    const auto prediction=need(api.prediction_2e2374,0x2e2374,origin,point,config.motion_3d7248,config.trajectory_3e5718);
    return !prediction.empty&&trajectory_visibility(origin,point,normalized(prediction.direction),config.trajectory_3e5718);
}
// [C] Complete 0x2e8a30..0x2e8e84 physics-segment loop. Table +0 speed,
// +4 drag, +8 gravity multiplier. Raycast is an ordinary Unity boundary.
bool Replay::trajectory_visibility(Vec3 position,Vec3 target_point,Vec3 direction,Address table) {
    if(!nonzero(direction)) return false;
    Vec3 velocity=direction*read<float>(table);
    const auto mask=integer(0x2e6a6c);
    float previous_distance=1000, travelled=0, elapsed=0;
    std::uint32_t iteration=0; int worsening=0;
    Vec3 last_cast=position;
    do {
        step();
        const float dt=iteration==0?0.001f:0.03125f;
        const Vec3 next=position+velocity*dt;
        const float segment_length=length(next-position);
        const auto nearest=closest_segment_2e5a80(position,next,target_point);
        const float target_distance=length(target_point-nearest);
        if(target_distance>previous_distance&&++worsening>=2) break;
        travelled+=segment_length;
        const float threshold=iteration==0?0.0f:10.6f;
        if(travelled>=threshold) { // [C] COMISS/JB: unordered skips the cast.
            travelled=length(last_cast-next);
            InteractionCall cast{0x2e8fac}; cast.first=last_cast; cast.second=next-last_cast;
            cast.scalar=travelled; cast.integer=mask; // [C] QueryTriggerInteraction zero.
            if(need(api.predicate,cast.rva,cast)) return false;
            const auto closest=closest_segment_2e5a80(last_cast,next,target_point);
            InteractionCall visible{0x2e2320}; visible.first=closest; visible.second=target_point;
            visible.integer=integer(0x2e6a6c);
            if(need(api.predicate,visible.rva,visible)) return true;
            travelled=0; last_cast=next;
        }
        position=next; previous_distance=target_distance;
        velocity=velocity+Vec3{0,read<float>(table+8)*-9.81f,0}*dt;
        velocity=velocity-(velocity*read<float>(table+4))*dt;
        elapsed+=dt; ++iteration;
    } while(8.0f>elapsed);
    // [C] +rbp-80 is initialized zero at 0x2e8acc and never subsequently written;
    // the 0x2e8de2 tail's empty-vector branch therefore returns false.
    return false;
}
void Replay::run_automation() {
    // [C] 0x2e6b58..0x2e6c11: reload gesture precedes every automation feature.
    if(!valid(object(0x2e069c))) return;
    const auto local=object(0x2dda9c); if(!valid(local)) return;
    if(config.reload_3e5048&&key(0x22b,true)) {
        const auto held=object(0x368a84,local);
        if(valid(held)) {
            const auto weapon=object(0x371e5c,held);
            if(valid(weapon)&&magazine(weapon)&&!config.busy_218818&&!pred(0x2e6844)) action(0x36bfdc,weapon,0);
        }
    }
    // [C] 0x2e6c11..0x2e70f1. Independent branches can set attack repeatedly.
    if(config.auto_melee_3e4eb8&&!config.rage_3d7c98) {
        const auto held=object(0x368a84,local);
        if(valid(held)) {
            const auto weapon=object(0x3721b4,held);
            if(valid(weapon)) {
                const auto input=object(0x369738,local);
                if(valid(input)) {
                    const float reach=read<float>(weapon+0x3b8);
                    if(!config.frozen_3d82a1&&config.heli_melee_3d7d38&&entity(config.heli_3d72b8)) {
                        const auto p=vector(0x368be8,config.heli_3d72b8,62);
                        const float d=distance(local,p)+0.5f;
                        const float limit=static_cast<float>(static_cast<double>(((config.elapsed_3d72ec+0.03333333507180214f)*1.5f)*106.4f)+0.1);
                        if(limit>d&&pred(0x36bb58,weapon)) input_attack(input);
                    }
                    if(config.other_melee_3e5278&&!config.frozen_3d82a1&&entity(config.other_target_3e4248)) {
                        const auto t=object(0x2e6110,config.other_target_3e4248);
                        if(valid(t)) {
                            const auto p=vector(0x3747d4,t), q=vector(0x368b9c,local);
                            if(reach+1.3f>length(p-q)&&pred(0x36b494,weapon,0)&&pred(0x36bb58,weapon)) input_attack(input);
                        }
                    }
                    if(config.player_melee_3d7f68&&!config.frozen_3d82a1&&entity(config.player_3d72c0)
                       &&!pred(0x36acb8,config.player_3d72c0)&&!pred(0x36b288,config.player_3d72c0)) {
                        const auto point=vector(0x368be8,config.player_3d72c0,53);
                        const auto from=vector(0x36924c,local);
                        const float raw_distance=distance(local,point), limit=range(reach);
                        if(query(from,point)&&pred(0x36bb58,weapon)) {
                            const float d=raw_distance+0.5f;
                            const float velocity=scalar(0x36942c,config.player_3d72c0);
                            const float extended=static_cast<float>(static_cast<double>(velocity*((config.elapsed_3d72ec+0.03333333507180214f)*1.5f))+0.1);
                            if(extended>d&&pred(0x36a0e0,config.player_3d72c0)&&65.0f>d) input_attack(input);
                            if(limit>d) input_attack(input);
                        }
                    }
                    // [C] ore=true bypasses frozen check (0x2e6fa4 -> 0x2e6fc0).
                    if((config.ore_3d7f18||(config.farm_3d8241&&!config.frozen_3d82a1))&&entity(config.farm_target_3d72c8)) {
                        const auto t=object(0x2e6110,config.farm_target_3d72c8);
                        if(valid(t)) {
                            const auto point=vector(0x3747d4,t)+Vec3{0,0.4f,0};
                            const auto from=vector(0x368b9c,local);
                            const float d=distance(local,point)+0.5f;
                            if(range(reach)>d&&pred(0x36b494,weapon,1)&&query(from,point)&&pred(0x36bb58,weapon)) input_attack(input);
                        }
                    }
                }
            }
        }
    }
    // [C] 0x2e70f1..0x2e7601: automatic firing and both burst loops.
    if(config.active_3d72a0&&config.autofire_3e5098&&config.psilent_3d7e78&&!config.frozen_3d82a1
       &&0.95>=static_cast<double>(config.elapsed_3d72ec)) {
        const auto target=object(0x2e02b0);
        if(entity(target)&&nonzero(vector(0x369790,target))) {
            const auto held=object(0x368a84,local);
            if(valid(held)) {
                const auto bow=object(0x3712bc,held); const bool is_bow=valid(bow);
                if(is_bow) action(0x36bf58,bow);
                if(config.aim_ready_3e4238||config.aim_ready2_3e4239||firing_visibility(local,held,target)) {
                    const auto projectile=object(0x371464,held), melee=object(0x3721b4,held), item=object(0x37154c,held);
                    if(valid(item)) {
                        const auto input=object(0x369738,local);
                        if(valid(input)) {
                            const auto id=static_cast<std::uint32_t>(integer(0x37261c,item));
                            if(id==0x37c437bfu) {
                                if(valid(projectile)&&magazine(projectile)) {
                                    if(config.rapid_3e50e8) burst(projectile,0x3e5808);
                                    else if(fire_gate()) action(0x36bfdc,projectile,0);
                                }
                            } else if(valid(melee)) action(0x36c184,melee);
                            else if(is_bow) {
                                const auto m=object(0x36c3b4,bow);
                                if(valid(m)) {
                                    if(read<std::int32_t>(m+0x1c)<=0) action(0x36b458,bow);
                                    else if(fire_gate()) action(0x36c06c,bow);
                                }
                            } else if(valid(projectile)&&magazine(projectile)) {
                                if(config.rapid_3e50e8) burst(projectile,0x3e580c);
                                else {
                                    const bool busy=pred(0x36b9a0,projectile), ready=pred(0x36bacc,projectile);
                                    if(ready&&!busy&&fire_gate()) input_attack(input);
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    if(config.periodic_3e4f08&&timer(0x3e5810,300.0f)) {
        const auto input=object(0x369738,local); if(valid(input)) action(0x373d84,input,0x20);
    }
    // [C] 0x2e7646..0x2e7767: nested loot-container item drop loops.
    if(config.drop_loot_3e5188&&edge(0x3e5528,config.drop_loot_key_3e5528)) {
        const auto l=list(local,0x373e4c);
        if(l) containers(l,[&](Address c){each_item(c,[&](Address item){
            // [C] MOVSXD DWORD [item+88], unlike qword transfer calls.
            item_rpc(read<std::int32_t>(item+0x88),0x2e54b4);
        });});
    }
    // [C] 0x2e7767..0x2e7aca: refill/equip latch, repeated mounted-state getters.
    if(config.refill_3e4fa8&&!(pred(0x36b288,local)&&pred(0x3693b0,local)&&pred(0x36a20c,local,0))) {
        const auto l=list(local,0x373dc8);
        if(l) {
            const auto count=integer(0x37224c,l);
            for(std::int32_t i=0;i<count;++i) {
                step(); const auto item=object(0x3722f0,l,i); if(!valid(item)) continue;
                const auto definition=read<Address>(item+0x10); if(!valid(definition)) continue;
                if(static_cast<std::uint32_t>(integer(0x37261c,definition))!=0x58c00601u) continue;
                const float maximum=read<float>(item+0xd8), current=read<float>(item+0xb4);
                bool empty=false;
                if(0.0f>=current&&pred(0x372184,item)) {
                    empty=true;
                    if(pred(0x369e1c,local)) {
                        item_rpc(integer(0x371604,item),0x2e5618); state.refill_latch_3e5814=true; continue;
                    }
                } else if(pred(0x369e1c,local)&&object(0x368a84,local)==0&&!state.refill_latch_3e5814) {
                    state.refill_latch_3e5814=true; continue;
                }
                const float ratio=current/maximum;
                const float clamped=ratio<1.0f?ratio:1.0f; // [C] MINSS NaN selects second source.
                if(!(0.1f<clamped)&&pred(0x369e1c,local)) {
                    item_rpc(integer(0x371604,item),0x2e57bc); continue;
                }
                if(state.refill_latch_3e5814&&((object(0x368a84,local)|static_cast<Address>(empty))==0)) {
                    if(!timer(0x3e5818,0.1f)) continue;
                    Rva slot{}; std::uint32_t bit{};
                    if(!pred(0x369e1c,local)) { slot=0x3e5830; bit=1; }
                    else { if(!pred(0x369e1c,local)) continue; slot=0x3e5910; bit=4; }
                    const auto controller=read<Address>(local+0x600); if(!valid(controller)) continue;
                    dispatch(bit,slot,controller,read<std::int32_t>(item+0xb8));
                    state.refill_latch_3e5814=false;
                } else if(object(0x368a84,local)==0) state.refill_latch_3e5814=true;
            }
        }
    }
    if(config.drop_wear_3e52c8&&edge(0x3e55e8,config.drop_wear_key_3e55e8)) {
        const auto l=list(local,0x373df4);
        if(l) {
            const auto n=integer(0x37224c,l);
            for(std::int32_t i=0;i<n;++i) { step(); const auto item=object(0x3722f0,l,i); if(valid(item)) item_rpc(integer(0x371604,item),0x2e5844); }
        }
    }
    // [C] 0x2e7b89..0x2e7da4 building grade gate and dispatch arguments.
    if(config.upgrade_gate_3e5471) {
        bool tool=true;
        if(config.upgrade_tool_3e5138) {
            const auto held=object(0x368a84,local);
            if(!valid(held)) tool=false;
            else {
                const auto item=object(0x37154c,held);
                if(valid(item)) {
                    const auto a=static_cast<std::uint32_t>(integer(0x37261c,item));
                    tool=a==0x0bf78eacu||static_cast<std::uint32_t>(integer(0x37261c,item))==0x6b8447f6u;
                }
            }
        }
        if(tool) {
            const auto target=object(0x36a2f4,local);
            if(valid(target)&&klass(target,"BuildingBlock")&&config.grade_3e5368>0) {
                const auto owner=read<Address>(target+0x340);
                if(valid(owner)&&valid(read<Address>(owner+0x1f8))) {
                    const auto grade=read<std::int16_t>(target+0x370);
                    if(grade==config.old_grade_3e53b8&&grade!=config.grade_3e5368&&timer(0x3e59e8,0.005f)) {
                        if(!(state.dispatch_bits_3e5828&0x10)) {
                            state.dispatch_bits_3e5828|=0x10;
                            state.dispatch_code[0x3e5a00]=config.game_assembly_3d6f00+0x395f0a0;
                        }
                        if(!(state.dispatch_bits_3e5828&0x20)) {
                            state.dispatch_bits_3e5828|=0x20;
                            InteractionCall init{0x2cbd24,state.dispatch_code[0x3e5a00]}; init.slot=0x3e5a00; action(init);
                        }
                        InteractionCall c{0x2e480c,target}; c.integer=config.grade_3e5368; c.literal=0x2e5958; c.slot=0x3e5a00; action(c);
                    }
                }
            }
        }
    }
    // [C] 0x2e7da4..0x2e7fde. AcceptClicked occurs even after invalid target.
    if(config.trade_3e4e68&&trade_edge(config.trade_key_3e5408)) {
        const auto target=object(0x36a2f4,local);
        if(valid(target)&&klass(target,"ShopFront")) {
            const auto inv=object(0x369324,local);
            if(valid(inv)) {
                const auto [dest,dest_count]=destination(inv); const auto loot=object(0x373e4c,inv);
                if(valid(loot)) containers(loot,[&](Address c){each_item(c,[&](Address item){
                    const auto def=read<Address>(item+0x10); if(!valid(def)) return;
                    const auto maximum=read<std::int32_t>(def+0x78), count=read<std::int32_t>(item+0x30);
                    const bool split=maximum>1&&count!=maximum;
                    if((dest_count!=24||split)&&count>2) move_item(item,dest,count-2);
                });});
            }
        }
        rpc(target,0x2e59d8);
    }
    // [C] 0x2e7fde..0x2e835f category-filtered transfer and optional endloot.
    if(config.transfer_3e4f58&&edge(0x3e5588,config.transfer_key_3e5588)) {
        const auto inv=object(0x369324,local);
        if(valid(inv)) {
            const auto [dest,dest_count]=destination(inv); const auto loot=object(0x373e4c,inv);
            bool moved=false;
            if(valid(loot)) containers(loot,[&](Address c){each_item(c,[&](Address item){
                const auto def=read<Address>(item+0x10); if(!valid(def)) return;
                // [C] 2e813a/2e8148 capture both fields before category
                // filtering, including items that the filter later rejects.
                const auto uid=read<Address>(item+0x88);
                const auto count=read<std::int32_t>(item+0x30);
                const auto category=read<std::int16_t>(def+0x58);
                if(!config.transfer_categories_3e56f8[7]) {
                    if(static_cast<std::uint16_t>(category)<=17u&&(0x3de16u&(1u<<static_cast<unsigned>(category)))) return;
                    const std::array<int,7> ids{0,3,6,7,8,13,5};
                    for(std::size_t i=0;i<ids.size();++i) if(category==ids[i]&&!config.transfer_categories_3e56f8[i]) return;
                }
                const auto maximum=read<std::int32_t>(def+0x78);
                if(dest_count==24&&!(maximum>1&&count!=maximum)) return;
                InteractionCall call{0x2e6a84,uid,dest};
                call.integer=-1; call.integer2=count; action(call); moved=true;
            });});
            if(moved&&config.close_loot_3e41f8) action(0x2e5bec);
        }
    }
    // [C] 0x2e835f..0x2e88dc lock/door state machine, input and equip loops.
    if(!config.locks_3e51d8) {
        state.lock_taken_3e5ad8=false; state.unlock_3e5ad9=false; state.pickup_3e5ada=false; state.equipped_3e5adb=false; return;
    }
    if(!key(config.lock_key_3e54c8,true)) { state.pickup_3e5ada=true; state.unlock_3e5ad9=true; return; }
    const auto target=object(0x36a2f4,local);
    if(valid(target)) {
        const auto h=hash(target);
        if(h) {
            const auto held=object(0x368a84,local);
            if(valid(held)&&valid(object(0x371384,held))&&timer(0x3e5adc,0.005f)) {
                auto matches=[&](std::string_view name){return *h==entity_name_hash_2d6354(name);};
                if(state.unlock_3e5ad9) {
                    if(matches("CodeLock")||matches("DigitSendCodeLock")) {
                        if(read<std::uint16_t>(target+0x1d8)==16) rpc(target,0x2e5254);
                        else { rpc(target,0x2e5270); state.lock_taken_3e5ad8=true; state.unlock_3e5ad9=false; }
                    }
                    // [C] Getter 0x2e52b8 + converter 0x2e3614 yields KeyLock.
                    if(matches("KeyLock")) {
                        if(read<std::uint16_t>(target+0x1d8)==16) rpc(target,0x2e52cc);
                        else { rpc(target,0x2e52e8); state.lock_taken_3e5ad8=true; state.unlock_3e5ad9=false; }
                    }
                }
                if(state.pickup_3e5ada&&matches("Door")&&state.lock_taken_3e5ad8) {
                    if(!(read<std::uint8_t>(target+0x1d8)&8u)) rpc(target,0x2e5324);
                    else { rpc(target,0x2e5348); state.lock_taken_3e5ad8=false; state.pickup_3e5ada=false; }
                }
            }
        }
    }
    if(timer(0x3e5ae0,0.005f)) {
        const auto held=object(0x368a84,local);
        if(valid(held)) {
            if(valid(object(0x371384,held))) {
                auto a=read<Address>(config.game_assembly_3d6f00+0xf1134b0);
                if(valid(a)) { a=read<Address>(a+0xb8); if(valid(a)) { a=read<Address>(a+0x138); if(valid(a)&&read<std::uint8_t>(a+0xc0)) mark_input(local); } }
            }
            if(valid(object(0x371da4,held))) mark_input(local);
        }
    }
    if(valid(object(0x368a84,local))||state.equipped_3e5adb) { state.equipped_3e5adb=false; return; }
    const auto belt=list(local,0x373dc8); if(!belt) return;
    const auto count=integer(0x37224c,belt);
    for(std::int32_t i=0;i<count;++i) {
        step(); const auto item=object(0x3722f0,belt,i); if(!valid(item)) continue;
        const auto def=read<Address>(item+0x10); if(!valid(def)) continue;
        const auto id=static_cast<std::uint32_t>(integer(0x37261c,def));
        if(id!=0xcd470ac0u&&id!=0x452412acu) continue;
        const auto controller=read<Address>(local+0x600); if(!valid(controller)) continue;
        dispatch(0x40,0x3e5af0,controller,read<std::int32_t>(item+0xb8)); state.equipped_3e5adb=true;
    }
}
void Replay::run_melee(Address weapon,Address argument) {
    initialize(false);
    const auto local=object(0x2dda9c);
    if(!valid(local)) { original(weapon,argument); return; }
    if(!config.rage_3d7c98) {
        const auto text=need(api.argument_string,0x2d7e18,argument);
        if(std::string_view(text.c_str()).find("Strike")!=std::string_view::npos) {
            const auto ray_origin=vector(0x36924c,local);
            const float reach=read<float>(weapon+0x3b8);
            const auto hit=need(api.allocate_hit_test,0x2e1432);
            if(valid(hit)) {
                const float limit=range(reach);
                auto hit_begin=[&](Address target,Address transform_address,Vec3 origin,Vec3 endpoint,Rva material) {
                    write(hit+0xd8,transform_address);
                    // [C] 0x2df29c pair copy, not a normalized ray constructor.
                    write(hit+0x6c,origin); write(hit+0x78,endpoint);
                    write<std::uint8_t>(hit+0xb0,1); write(hit+0x90,target);
                    InteractionCall material_call{0x2ce5dc}; material_call.literal=material;
                    write(hit+0xc0,need(api.object,material_call.rva,material_call));
                };
                auto attack=[&]() {
                    InteractionCall c{0x36c274,weapon}; c.literal=0x2dfc44; action(c);
                    action(0x36bebc,weapon,0,hit);
                };
                if(!config.frozen_3d82a1&&config.heli_melee_3d7d38&&entity(config.heli_3d72b8)) {
                    const auto target=config.heli_3d72b8;
                    const auto point=vector(0x368be8,target,62);
                    const float d=distance(local,point)+0.5f;
                    const float extended=static_cast<float>(static_cast<double>(((config.elapsed_3d72ec+0.03333333507180214f)*1.5f)*106.4f)+0.1);
                    if(extended>d) {
                        const auto a=read<Address>(target+0x2e8);
                        if(valid(a)) {
                            const auto b=read<Address>(a+0x28);
                            if(valid(b)) {
                                const float health=read<float>(b+0x24);
                                const auto tr=object(0x368c60,target,!(health>0)?63:62);
                                if(valid(tr)&&valid(object(0x368c60,local,53))) {
                                    const auto head=vector(0x368be8,local,53);
                                    const auto local_hit=transform(0x374d60,tr,head);
                                    const auto world=vector(0x3747d4,tr);
                                    hit_begin(target,tr,ray_origin,world,0x2dfbcc);
                                    write(hit+0x5c,local_hit);
                                    write(hit+0xa4,transform(0x374bf8,tr,world));
                                    attack(); return;
                                }
                            }
                        }
                    }
                }
                if(config.player_melee_3d7f68&&!config.frozen_3d82a1&&entity(config.player_3d72c0)
                   &&!pred(0x36acb8,config.player_3d72c0)&&!pred(0x36b288,config.player_3d72c0)) {
                    const auto target=config.player_3d72c0;
                    const auto point=vector(0x368be8,target,53), origin=vector(0x36924c,local);
                    const float d=distance(local,point)+0.5f;
                    const float extended=static_cast<float>(static_cast<double>(scalar(0x36942c,target)*((config.elapsed_3d72ec+0.03333333507180214f)*1.5f))+0.1);
                    const bool mounted=extended>d&&pred(0x36a0e0,target)&&65.0f>d;
                    if(query(origin,point)) {
                        const bool hit_mounted=pred(0x36a0e0,target);
                        if(hit_mounted?mounted:limit>d) {
                            InteractionCall random_call{0x2e3d5c}; random_call.scalar=0; random_call.scalar2=100;
                            const auto bone=melee_bone_2e18bf(config.bone_3d80f8,need(api.scalar,random_call.rva,random_call));
                            const auto tr=object(0x368c60,target,bone);
                            // [C] Unlike the heli failure branch, invalid selected bone goes directly to original.
                            if(!valid(tr)) { original(weapon,argument); return; }
                            const auto head=vector(0x368be8,local,53);
                            const auto local_head=transform(0x374d60,tr,head);
                            const auto world=vector(0x3747d4,tr);
                            hit_begin(target,tr,ray_origin,world,0x2dfcfc);
                            const auto local_world=transform(0x374d60,tr,vector(0x3747d4,tr));
                            write(hit+0x5c,mounted?local_head:local_world);
                            write(hit+0xa4,transform(0x374bf8,tr,vector(0x3747d4,tr)));
                            attack(); if(config.hit_chams_3d7dd8) action(0x36a464,target); return;
                        }
                    }
                }
                if((config.ore_3d7f18||(config.farm_3d8241&&!config.frozen_3d82a1))&&entity(config.farm_target_3d72c8)) {
                    const auto target=config.farm_target_3d72c8;
                    auto tr=object(0x2e0cf0,target);
                    if(valid(tr)) {
                        const auto point=vector(0x3747d4,tr)+Vec3{0,0.4f,0};
                        const auto origin=vector(0x368b9c,local);
                        if(limit>distance(local,point)+0.5f&&pred(0x36b494,weapon,1)&&query(origin,point)) {
                            tr=object(0x2e0cf0,target);
                            if(valid(tr)) {
                                hit_begin(target,tr,ray_origin,point,0x2dfbcc);
                                write(hit+0x5c,transform(0x374d60,tr,point));
                                write(hit+0xa4,transform(0x374bf8,tr,point));
                                attack(); return;
                            }
                        }
                    }
                }
            }
        }
    }
    // [C] 0x2e1e21..0x2e22df: projectile variant with ordered temporary writes.
    const auto related=object(0x369298,local);
    if(!valid(related)) { original(weapon,argument); return; }
    const auto movement=object(0x3680d4,local);
    if(!valid(movement)) { original(weapon,argument); return; }
    const auto held=object(0x368a84,local);
    if(!valid(held)) { original(weapon,argument); return; }
    const auto projectile=object(0x371630,held);
    if(!valid(projectile)) { original(weapon,argument); return; }
    const auto definition=object(0x372abc,projectile);
    if(!valid(definition)) { original(weapon,argument); return; }
    const float old3c=read<float>(projectile+0x3c), old40=read<float>(projectile+0x40), old44=read<float>(projectile+0x44);
    const float scale=config.increase_velocity_3d7ce8?(config.speed_3d80a8<1.495f?config.speed_3d80a8:1.495f):1.0f;
    const float speed=scale*old40, old_movement=read<float>(movement+0x50);
    const auto saved=capture_orientation(local);
    if(config.psilent_3d7e78&&config.active_3d72a0) {
        const auto target=object(0x2e02b0);
        if(entity(target)) {
            auto point=vector(0x369790,target);
            if(config.fat_3d8058&&nonzero(config.fat_point_3d72d0)) point=config.fat_point_3d72d0;
            if(config.pierce_3d7ec8&&nonzero(config.pierce_point_3d72e0)&&config.pierce_ready_3d8301) point=config.pierce_point_3d72e0;
            if(nonzero(point)) {
                Address table{};
                if(api.trajectory_cache_definition)table=api.trajectory_cache_definition(speed,definition);
                else {
                    const float p44=read<float>(definition+0x44), p34=read<float>(definition+0x34), p38=read<float>(definition+0x38);
                    table=need(api.trajectory_cache,0x2e1ff4,speed,p38,p34,p44);
                }
                if(table) {
                    const auto origin=vector(0x369164,local);
                    const auto prediction=need(api.prediction_2e2374,0x2e2374,origin,point,config.motion_3d7248,table);
                    if(!prediction.empty) {
                        point=normalized(prediction.direction)*speed+vector(0x369164,local);
                        const auto forward=normalized(point-vector(0x369164,local));
                        const auto rotation=interaction_look_rotation_2e0ff0(forward,{0,1,0});
                        set_orientation(related,rotation);
                    }
                }
            }
        }
        write<float>(movement+0x50,0);
    }
    write(projectile+0x40,speed); write<float>(projectile+0x3c,0); write<float>(projectile+0x44,0);
    original(weapon,argument);
    set_orientation(related,saved);
    write(movement+0x50,old_movement); write(projectile+0x40,old40); write(projectile+0x3c,old3c); write(projectile+0x44,old44);
    result.restored=true;
}
}
InteractionResult replay_automation_2e6b20(Snapshot& m,InteractionState& s,InteractionConfig c,const InteractionCalls& a) {
    Replay r{m,s,c,a,{}};
    try { r.run_automation(); } catch(const Stop& e) { r.result.status=e.status; r.result.dependency=e.dependency; }
    catch(const SnapshotBindingFailure& e) {binding_stop(r.result,e);}
    return r.result;
}
InteractionResult replay_weapon_additional_range_32bb60(Snapshot& memory,Address held,const InteractionCalls& api) {
    InteractionState state;InteractionConfig config;Replay replay{memory,state,config,api,{}};
    try{replay.result.value=replay.weapon_additional_range(held);}
    catch(const Stop& e){replay.result.status=e.status;replay.result.dependency=e.dependency;}
    catch(const SnapshotBindingFailure& e){binding_stop(replay.result,e);}
    return replay.result;
}
ProjectileBoundaries bind_projectile_interaction_range(Snapshot& memory,const InteractionCalls& api,ProjectileBoundaries out) {
    const auto prior=out.scalar;
    out.scalar=[&memory,api,prior](Rva role,Address held,std::int32_t index,std::int32_t count){
        if(role!=0x32bb60){if(!prior)throw SnapshotBindingFailure{GameBaseStatus::missing_boundary,role};return prior(role,held,index,count);}
        const auto result=replay_weapon_additional_range_32bb60(memory,held,api);
        if(result.status!=InteractionStatus::returned)throw SnapshotBindingFailure{
            result.status==InteractionStatus::snapshot_bounds?GameBaseStatus::missing_bytes:
                result.status==InteractionStatus::missing_dependency?GameBaseStatus::missing_boundary:GameBaseStatus::analysis_limit,
            result.dependency?result.dependency:role};
        return result.value;
    };return out;
}
InteractionResult replay_melee_2e12e0(Snapshot& m,InteractionState& s,InteractionConfig c,Address w,Address arg,const InteractionCalls& a) {
    Replay r{m,s,c,a,{}};
    try { r.run_melee(w,arg); } catch(const Stop& e) { r.result.status=e.status; r.result.dependency=e.dependency; }
    catch(const SnapshotBindingFailure& e) {binding_stop(r.result,e);}
    return r.result;
}
InteractionResult replay_interaction_forward_2e91fc(Snapshot& m,InteractionState& s,InteractionConfig c,Address argument,const InteractionCalls& a) {
    Replay r{m,s,c,a,{}};
    try {
        const auto frame=r.integer(0x2e5d4c);
        if(frame!=s.frame_3e5bc8) { r.result.worker_called=true; r.run_automation(); }
        s.frame_3e5bc8=frame;
        if(c.force_return_3e4250) r.result.value=1;
        else { r.initialize(true); InteractionCall call{0x2dea4c,argument,0,s.forwarding_original_3e5bd0}; call.slot=0x3e5be0;
            r.result.value=r.need(a.scalar,call.rva,call); r.result.original_called=true; }
    } catch(const Stop& e) { r.result.status=e.status; r.result.dependency=e.dependency; }
    catch(const SnapshotBindingFailure& e) {binding_stop(r.result,e);}
    return r.result;
}
} // namespace rust_internal_re
