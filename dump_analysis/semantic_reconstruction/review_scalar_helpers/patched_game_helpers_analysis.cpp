#include "game_helpers_analysis.hpp"
#include "registry_analysis.hpp"
namespace rust_internal_re {
std::span<const GameHelperDirectSpec> game_helper_direct_specs() {
    // [C] Exclusive pdata bounds, cache RVAs and GameAssembly ADD immediates.
    static constexpr std::array<GameHelperDirectSpec,10> specs{{
        {0x368a84,0x368b0f,0x3feb60,0x3feb58,0x3feb70,0x3f83e00,0x2cb9fc},
        {0x37154c,0x3715d7,0x400b50,0x400b48,0x400b60,0x44d6360,0x2cb9fc},
        {0x368b10,0x368b9b,0x3fe7a0,0x3fe798,0x3fe7b0,0x3f12dd0,0x2cb9fc},
        {0x369298,0x369323,0x3fea70,0x3fea68,0x3fea80,0x3f1c760,0x2cb9fc},
        {0x372754,0x3727df,0x400d30,0x400d28,0x400d40,0x514a6b0,0x2cb9fc},
        {0x369c1c,0x369cdc,0x3fe890,0x3fe888,0x3fe8a0,0x3935180,0x2d2094},
        {0x3739c4,0x373a65,0x401870,0x401868,0x401880,0x19edb50,0x2d2094},
        {0x373a68,0x373b28,0x401a50,0x401a48,0x401a60,0x19f0a00,0x2d2094},
        {0x369324,0x3693af,0x3fe980,0x3fe978,0x3fe990,0x3ee0830,0x2cb9fc},
        {0x32b308,0x32b3a6,0x3f7818,0x3f7810,0x3f7820,0x300df20,0x32b1c8},
    }};
    return specs;
}
namespace {
struct Stop {GameBaseStatus status;Rva site;};
bool object_known(Rva);
bool vector_known(Rva);
struct MetadataSpec {Rva wrapper,flags,target,context;std::string_view klass,namespc,method;std::int32_t count;bool parameter;};
constexpr MetadataSpec metadata_specs[]{
    {0x371c38,0x400c40,0x400c38,0x400c50,"Sprite","UnityEngine","get_texture",-1,true},
    {0x370884,0x400100,0x4000f8,0x400110,"Type","System","GetType",1,false},
    {0x3703ec,0x4004c0,0x4004b8,0x4004d0,"Component","UnityEngine","GetComponent",1,false},
    {0x370638,0x4005b0,0x4005a8,0x4005c0,"GameObject","UnityEngine","GetComponent",1,false},
};
class Replay {
public:
    Snapshot& im;const GameHelperEnvironment& env;const GameHelperApi& api;
    Address g(Rva r)const{return env.module+r;}
    template<class T>T read(Address p,Rva site)const {
        const auto v=im.read<T>(p);if(!v)throw Stop{GameBaseStatus::missing_bytes,site};
        return *v;
    }
    template<class T>void write(Address p,T v,Rva site) {
        if(!im.write(p,v))throw Stop{GameBaseStatus::missing_bytes,site};
    }
    void need(bool v,Rva r)const {if(!v)throw Stop{GameBaseStatus::missing_boundary,r};}
    template<class T>T result(GameBaseResult<T> r)const {
        if(r.status!=GameBaseStatus::complete)throw Stop{r.status,r.site};
        return r.value;
    }
    Address metadata_result(MetadataResult r,Rva site)const {
        switch(r.status){
        case MetadataStatus::complete:return r.value;
        case MetadataStatus::missing_dependency:throw Stop{GameBaseStatus::missing_boundary,site};
        case MetadataStatus::unreadable_snapshot:throw Stop{GameBaseStatus::missing_bytes,site};
        case MetadataStatus::analysis_limit:throw Stop{GameBaseStatus::analysis_limit,site};
        }
        throw Stop{GameBaseStatus::missing_boundary,site};
    }
    Address literal(std::string_view s,std::size_t offset,Rva site) {
        if(!env.literal_storage||offset>env.literal_capacity||s.size()+1>env.literal_capacity-offset)
            throw Stop{GameBaseStatus::missing_bytes,site};
        for(std::size_t i=0;i<s.size();++i)write(env.literal_storage+offset+i,std::uint8_t(s[i]),site);
        write(env.literal_storage+offset+s.size(),std::uint8_t{},site);
        return env.literal_storage+offset;
    }
    GameHelperCall context(Rva wrapper,Rva target_cell,Rva context_cell,Rva executor,Address target,bool observe, Rva flag_cell=0, std::uint32_t flag_bits=0) {
        GameHelperCall c;c.wrapper=wrapper;c.executor=executor;c.target=target;c.context=g(context_cell);
        c.dispatcher=read<Address>(g(0x3d5e60),wrapper);
        // [C] Sprite/Type/string wrappers load dispatcher BEFORE setting bit2.
        // Component/GameObject/direct wrappers commit it before this helper.
        if(observe&&flag_cell)write(g(flag_cell),flag_bits|2,wrapper);
        if(observe&&api.observe_context)api.observe_context(c);
        // [C] Native wrappers reload dispatcher after setup, retaining local target.
        c.dispatcher=read<Address>(g(0x3d5e60),wrapper);
        static_cast<void>(target_cell);return c;
    }
    GameHelperCall direct(Rva wrapper,Address receiver,std::uint32_t integer=0) {
        for(const auto& s:game_helper_direct_specs())if(s.wrapper==wrapper) {
            auto flags=read<std::uint32_t>(g(s.flags),wrapper);Address target;
            if(!(flags&1)) {
                target=read<Address>(g(0x3d6f00),wrapper)+s.game_offset;
                flags|=1;write(g(s.flags),flags,wrapper);write(g(s.target),target,wrapper);
            }else target=read<Address>(g(s.target),wrapper);
            const bool initialize=!(flags&2);
            if(initialize)write(g(s.flags),flags|2,wrapper);
            auto c=context(wrapper,s.target,s.context,s.executor,target,initialize);
            c.receiver=receiver;c.integer=integer;return c;
        }
        throw Stop{GameBaseStatus::missing_boundary,wrapper};
    }
    Address metadata_target(const MetadataSpec& s) {
        const Address cname=literal(s.klass,0,s.wrapper),ns=literal(s.namespc,128,s.wrapper);
        const Address klass=metadata_result(resolve_class_334224(api.metadata,cname,ns,env.limits),0x334224);
        const Address name=literal(s.method,256,s.wrapper);
        // [C] 370908/3704a0/3706ec: count1, occurrence0 (native fifth arg).
        const auto method=s.parameter?select_parameter_method_3349ac(im,api.metadata,klass,name,-1,0,s.count,env.limits)
            :select_method_33416c(im,api.metadata,klass,name,s.count,0,env.limits);
        return read<Address>(metadata_result(method,s.parameter?0x3349ac:0x33416c),s.wrapper);
    }
    GameHelperCall metadata_call(Rva wrapper,Address receiver) {
        for(const auto& s:metadata_specs)if(s.wrapper==wrapper) {
            auto flags=read<std::uint32_t>(g(s.flags),wrapper);Address target;
            if(!(flags&1)) {
                write(g(s.flags),flags|1,wrapper);target=metadata_target(s);
                // [C] Native reloads flags after metadata callbacks, before setup.
                flags=read<std::uint32_t>(g(s.flags),wrapper);write(g(s.target),target,wrapper);
            }else target=read<Address>(g(s.target),wrapper);
            const bool initialize=!(flags&2);
            const bool root_before_flag=wrapper==0x370884||wrapper==0x371c38;
            if(initialize&&!root_before_flag)write(g(s.flags),flags|2,wrapper);
            auto c=context(wrapper,s.target,s.context,wrapper==0x370884||wrapper==0x371c38?0x2cb9fc:0x2d2094,
                target,initialize,root_before_flag?s.flags:0,flags);
            c.receiver=receiver;return c;
        }
        throw Stop{GameBaseStatus::missing_boundary,wrapper};
    }
    Address effect(GameHelperCall c) {need(bool(api.object),c.wrapper);return api.object(c);}
    Address string_object(std::string_view text) {
        constexpr Rva wrapper=0x370aa4,flag=0x400010,cell=0x400008,ctx=0x400020;
        auto flags=read<std::uint32_t>(g(flag),wrapper);Address target;
        if(!(flags&1)) {
            write(g(flag),flags|1,wrapper);
            const auto found=resolve_metadata_export(im,env.module,env.initial_loader_node,0x2cc164,env.limits);
            target=metadata_result({found.value,found.status,0},0x2cc164);
            write(g(cell),target,wrapper);flags=read<std::uint32_t>(g(flag),wrapper);
        }else target=read<Address>(g(cell),wrapper);
        const bool initialize=!(flags&2);
        auto c=context(wrapper,cell,ctx,0x2cb9fc,target,initialize,flag,flags);c.text=std::string(text);
        return effect(c);
    }
    Address component(Rva wrapper,Address receiver,std::string_view type) {
        // [C] The ASCII literals originate in 36b380/371218/372674/372690,
        // decoded by 32210c/320584/332284; all lengths include terminating NUL.
        const Address managed=string_object(type);if(!managed)return 0;
        const Address system_type=effect(metadata_call(0x370884,managed));if(!system_type)return 0;
        auto c=metadata_call(wrapper,receiver);c.argument=system_type;return effect(c);
    }
    Address root_32b2b4() {
        const Address ga=read<Address>(g(0x3d6f00),0x32b2b8);
        const Address klass=read<Address>(ga+0xf0ee490,0x32b2bf);if(!sample_pointer_range(klass))return 0;
        const Address statics=read<Address>(klass+0xb8,0x32b2d2);if(!sample_pointer_range(statics))return 0;
        const Address encoded=read<Address>(statics+0x18,0x32b2e5);if(!sample_pointer_range(encoded))return 0;
        const Address word=read<Address>(encoded+0x18,0x2f9954);
        const auto root=resolve_reference_315bd0(im,decode_reference_words_2f8540(word));
        if(!root)throw Stop{GameBaseStatus::missing_bytes,0x315bd0};
        return *root;
    }
    Address object(Rva wrapper,Address p,std::uint32_t n=0) {
        if(!object_known(wrapper))throw Stop{GameBaseStatus::missing_boundary,wrapper};
        if(wrapper==0x32b2b4)return root_32b2b4();
        if(wrapper==0x2f9950) {
            const auto v=resolve_reference_315bd0(im,decode_reference_words_2f8540(read<Address>(p+0x18,0x2f9954)));
            if(!v)throw Stop{GameBaseStatus::missing_bytes,0x315bd0};
        return *v;
        }
        if(wrapper==0x32b308) {
            const Address root=root_32b2b4();if(!sample_pointer_range(root))return 0;
            return effect(direct(wrapper,root,n));
        }
        if(!sample_pointer_range(p))return 0;
        if(wrapper==0x36c3b4)return read<Address>(p+0x3f8,wrapper);
        if(wrapper==0x3722f0) {
            const Address list=read<Address>(p+0x20,0x372303);if(!sample_pointer_range(list))return 0;
            const Address array=read<Address>(list+0x10,0x372313);if(!sample_pointer_range(array))return 0;
            // [C] LEA ECX,[R8*8] truncates before zero-extension, with no count check.
            const auto offset=std::uint32_t(n*8u);
            return read<Address>(array+Address(offset)+0x20,0x37232b);
        }
        if(wrapper==0x371c38) {
            const Address definition=result(read_pointer_getter(im,0x3715d8,p));
            if(!sample_pointer_range(definition))return 0;
            const Address sprite=read<Address>(definition+0x50,0x371c6f);if(!sample_pointer_range(sprite))return 0;
            const Address texture=effect(metadata_call(wrapper,sprite));
            return sample_pointer_range(texture)?texture:0;
        }
        if(wrapper==0x36b938) {
            const Address magazine=object(0x36c3b4,p);if(!sample_pointer_range(magazine))return 0;
            const Address definition=read<Address>(magazine+0x20,0x36b961);if(!sample_pointer_range(definition))return 0;
            return component(0x3703ec,definition,"ItemModProjectile, Assembly-CSharp");
        }
        if(wrapper==0x371630) {
            const Address definition=object(0x37154c,p);if(!sample_pointer_range(definition))return 0;
            return component(0x3703ec,definition,"ItemModProjectile, Assembly-CSharp");
        }
        if(wrapper==0x372abc||wrapper==0x372b30) {
            const Address ref=read<Address>(p+0x20,wrapper);if(!sample_pointer_range(ref))return 0;
            const Address guid=read<Address>(ref+0x10,wrapper);if(!sample_pointer_range(guid))return 0;
            const Address resource=object(0x372754,guid);if(!sample_pointer_range(resource))return 0;
            return component(0x370638,resource,wrapper==0x372abc?"Projectile, Assembly-CSharp":"ServerProjectile, Assembly-CSharp");
        }
        if(wrapper==0x368a84||wrapper==0x37154c||wrapper==0x368b10||wrapper==0x369298||wrapper==0x372754||wrapper==0x369324)
            return effect(direct(wrapper,p));
        throw Stop{GameBaseStatus::missing_boundary,wrapper};
    }
    Orientation orientation(Rva wrapper,Address p,std::optional<Orientation> initial) {
        if(wrapper==0x36920c) {
            if(sample_pointer_range(p)) {
                const Address eyes=object(0x369298,p);
                if(sample_pointer_range(eyes))return orientation(0x3739c4,eyes,initial);
            }
            if(!initial)throw Stop{GameBaseStatus::missing_boundary,0x36920c};
        return *initial;
        }
        if(wrapper!=0x3739c4)throw Stop{GameBaseStatus::missing_boundary,wrapper};
        // [C] 373a57 returns without stores on failed numeric guard.
        if(!sample_pointer_range(p)) {
            if(!initial)throw Stop{GameBaseStatus::missing_boundary,wrapper};
        return *initial;
        }
        auto c=direct(wrapper,p);need(bool(api.orientation),wrapper);return api.orientation(c);
    }
    Vec3 vector(Rva wrapper,Address p) {
        if(!vector_known(wrapper))throw Stop{GameBaseStatus::missing_boundary,wrapper};
        if(wrapper==0x368100) {
            if(!sample_pointer_range(p))return {};
            return quaternion_vector_2ef834(orientation(0x36920c,p,env.direction_scratch),{0,0,1});
        }
        if(!sample_pointer_range(p))return {};
        if(wrapper==0x368b9c||wrapper==0x36924c) {
            const Address model=result(read_pointer_getter(im,0x36a2c8,p));
            if(!sample_pointer_range(model))return {};
            return read<Vec3>(model+(wrapper==0x368b9c?0x30:0x18),wrapper);
        }
        if(wrapper==0x369164) {
            if(read<std::uint8_t>(g(0x3f7e48),0x369179))return vector(0x36924c,p);
            const Address eyes=object(0x369298,p);
            return sample_pointer_range(eyes)?vector(0x373a68,eyes):Vec3{};
        }
        if(wrapper==0x369c1c||wrapper==0x373a68) {
            auto c=direct(wrapper,p);need(bool(api.vector),wrapper);return api.vector(c);
        }
        throw Stop{GameBaseStatus::missing_boundary,wrapper};
    }
    std::uint64_t name_hash(Address p) {
        std::uint64_t hash=0xcbf29ce484222325ULL;
        for(std::size_t i=0;i<env.limits.string_bytes;++i) {
            const auto byte=read<std::int8_t>(p+i,0x2d6354);if(!byte)return hash;
            hash=(hash^std::uint64_t(std::int64_t(byte)))*0x100000001b3ULL;
        }
        throw Stop{GameBaseStatus::analysis_limit,0x2d6354};
    }
    std::uint32_t integer(Rva wrapper,Address p) {
        if(wrapper!=0x37224c)throw Stop{GameBaseStatus::missing_boundary,wrapper};
        if(!sample_pointer_range(p))return 0;
        const Address list=read<Address>(p+0x20,0x37225c);if(!sample_pointer_range(list))return 0;
        return read<std::uint32_t>(list+0x18,0x37226c);
    }
    float scalar(Rva wrapper,Address p) {
        if(wrapper!=0x36942c)throw Stop{GameBaseStatus::missing_boundary,wrapper};
        if(!sample_pointer_range(p))return 0;
        const Address mounted=object(0x368b10,p);if(!sample_pointer_range(mounted))return 0;
        const Address entity=read<Address>(mounted+0x38,0x369469);if(!sample_pointer_range(entity))return 0;
        const auto name=entity_class_name_2e5a54(im,entity);
        if(!name)throw Stop{GameBaseStatus::missing_bytes,0x2e5a54};
        if(!sample_pointer_range(*name))return 0;
        const auto hash=name_hash(*name);
        // [C] Native order and alternate return labels 3696b0/3696ba/3696c4.
        constexpr std::pair<std::string_view,float> classes[]{
            {"AttackHelicopter",50},{"Minicopter",50},{"ScrapTransportHelicopter",50},
            {"CH47Helicopter",50},{"BasicCar",50},{"Bike",25},{"MotorRowboat",25},
            {"Kayak",25},{"RHIB",25},{"VehicleModuleSeating",25},{"VehicleModuleEngine",25},
            {"ModularCar",25},{"RidableHorse",8}};
        for(const auto& [text,value]:classes)if(hash==entity_name_hash_2d6354(text))return value;
        return 0;
    }
    bool visibility(Address p) {
        if(!sample_pointer_range(p))return false;
        if(env.visibility) {
            auto& entries=env.visibility->entries;
            if(entries.empty())return false;
            // [C] 367684 missing-key construction -> 2ea56c stores mapped byte0.
            return entries.try_emplace(p,0).first->second!=0;
        }
        const Address map=g(0x3e60b0);
        if(!read<Address>(map+0x10,0x320720))return false;
        const Address mask=read<Address>(map+0x30,0x2ebe03);
        const Address buckets=read<Address>(map+0x18,0x2ebe0a);
        std::array<std::byte,8> bytes{};std::memcpy(bytes.data(),&p,sizeof(p));
        const Address bucket=buckets+(registry_hash_2d7078(bytes)&mask)*16;
        const Address sentinel=read<Address>(map+8,0x2ebe11);
        Address node=read<Address>(bucket+8,0x2ebe1e);
        if(node!=sentinel) {
            const Address first=read<Address>(bucket,0x2ebe35);
            for(std::size_t i=0;i<env.limits.iterations;++i) {
                if(read<Address>(node+0x10,0x2f7d5c)==p)return read<std::uint8_t>(node+0x18,0x36b27c)!=0;
                if(node==first)break;
                node=read<Address>(node+8,0x2ebe41);
                if(i+1==env.limits.iterations)throw Stop{GameBaseStatus::analysis_limit,0x2ebdf8};
            }
            if(!env.limits.iterations)throw Stop{GameBaseStatus::analysis_limit,0x2ebdf8};
        }
        // [U] Native absent-key node allocation/rehash uses owned-storage adapter
        // above; copied native storage cannot invent an allocator or new bytes.
        throw Stop{GameBaseStatus::missing_boundary,0x367684};
    }
};
template<class T,class F>GameBaseResult<T> run(F&& f) {
    try{return {f()};}
    catch(const Stop& e){return {{},e.status,e.site};}
    catch(const SnapshotBindingFailure& e){return {{},e.status,e.site};}
    catch(const MetadataWrapperFailure& e){
        GameBaseStatus s=GameBaseStatus::missing_boundary;
        if(e.status==MetadataStatus::unreadable_snapshot)s=GameBaseStatus::missing_bytes;
        else if(e.status==MetadataStatus::analysis_limit)s=GameBaseStatus::analysis_limit;
        return {{},s,e.site};
    }
}
bool object_known(Rva r) {
    return r==0x368a84||r==0x37154c||r==0x368b10||r==0x369298||r==0x372754||r==0x36c3b4||r==0x369324||r==0x3722f0||r==0x371c38||
        r==0x36b938||r==0x371630||r==0x372abc||r==0x372b30||r==0x32b308||r==0x32b2b4||r==0x2f9950;
}
bool vector_known(Rva r) {return r==0x368100||r==0x368b9c||r==0x36924c||r==0x369164||r==0x369c1c||r==0x373a68;}
template<class T>T value(GameBaseResult<T> r) {
    if(r.status!=GameBaseStatus::complete)throw SnapshotBindingFailure(r.status,r.site);
        return r.value;
}
template<class F,class... A>auto foreign(const F& f,Rva r,A&&... a) {
    if(!f)throw SnapshotBindingFailure(GameBaseStatus::missing_boundary,r);
        return f(r,std::forward<A>(a)...);
}
Address receiver(Rva r,MovementMainArguments args) {
    if(args.empty()||!std::holds_alternative<Address>(args.front()))
        throw SnapshotBindingFailure(GameBaseStatus::missing_boundary,r);
    return std::get<Address>(args.front());
}
std::uint32_t lookup_integer(Rva r,MovementMainArguments a,std::size_t index=0) {
    if(a.size()<=index)throw SnapshotBindingFailure(GameBaseStatus::missing_boundary,r);
    if(const auto* n=std::get_if<std::uint32_t>(&a[index]))return *n;
    if(const auto* n=std::get_if<std::int32_t>(&a[index]))return std::bit_cast<std::uint32_t>(*n);
    throw SnapshotBindingFailure(GameBaseStatus::missing_boundary,r);
}
}
Vec3 quaternion_vector_2ef834(Orientation q,Vec3 v) {
    // [C] Preserve each native ADDSS/MULSS grouping, including x/z/y store order.
    const float z2=q.z+q.z,y2=q.y+q.y,x2=q.x+q.x;
    const float zz=z2*q.z,xz=z2*q.x,yz=z2*q.y,xy=y2*q.x;
    const float yw=y2*q.w,xx=x2*q.x,xw=x2*q.w,zw=z2*q.w,yy=y2*q.y;
    const float x=((1.0f-(zz+yy))*v.x+(xy-zw)*v.y)+(yw+xz)*v.z;
    const float z=((yz+xw)*v.y+(xz-yw)*v.x)+(1.0f-(yy+xx))*v.z;
    const float y=((1.0f-(zz+xx))*v.y+(zw+xy)*v.x)+(yz-xw)*v.z;
    return {x,y,z};
}
GameBaseResult<Address> game_helper_object(Snapshot& im,Rva r,Address p,const GameHelperEnvironment& e,const GameHelperApi& a,std::uint32_t n) {
    return run<Address>([&]{return Replay{im,e,a}.object(r,p,n);});
}
GameBaseResult<Vec3> game_helper_vector(Snapshot& im,Rva r,Address p,const GameHelperEnvironment& e,const GameHelperApi& a) {
    return run<Vec3>([&]{return Replay{im,e,a}.vector(r,p);});
}
GameBaseResult<Orientation> game_helper_orientation(Snapshot& im,Rva r,Address p,const GameHelperEnvironment& e,const GameHelperApi& a,std::optional<Orientation> initial) {
    return run<Orientation>([&]{return Replay{im,e,a}.orientation(r,p,initial);});
}
GameBaseResult<std::uint32_t> game_helper_integer(Snapshot& im,Rva r,Address p,const GameHelperEnvironment& e,const GameHelperApi& a) {
    return run<std::uint32_t>([&]{return Replay{im,e,a}.integer(r,p);});
}
GameBaseResult<float> game_helper_scalar(Snapshot& im,Rva r,Address p,const GameHelperEnvironment& e,const GameHelperApi& a) {
    return run<float>([&]{return Replay{im,e,a}.scalar(r,p);});
}
GameBaseResult<bool> game_helper_predicate(Snapshot& im,Rva r,Address p,const GameHelperEnvironment& e,const GameHelperApi& a) {
    return run<bool>([&]{if(r!=0x36b244)throw Stop{GameBaseStatus::missing_boundary,r};
        return Replay{im,e,a}.visibility(p);});
}
AimWeaponCalls bind_game_helpers_aim(Snapshot& im,const GameHelperEnvironment& e,const GameHelperApi& a,AimWeaponCalls f) {
    auto out=bind_field_getters_aim(im,std::move(f));const auto old=out;
    out.integer=[&im,e,a,old](Rva r,Address p){return r==0x37224c?value(game_helper_integer(im,r,p,e,a)):foreign(old.integer,r,p);};
    out.object=[&im,e,a,old](Rva r,Address p){return object_known(r)&&r!=0x3722f0?value(game_helper_object(im,r,p,e,a)):foreign(old.object,r,p);};
    out.vector=[&im,e,a,old](Rva r,Address p){return vector_known(r)?value(game_helper_vector(im,r,p,e,a)):foreign(old.vector,r,p);};
    out.scalar=[&im,e,a,old](Rva r,Address p){return r==0x36942c?value(game_helper_scalar(im,r,p,e,a)):foreign(old.scalar,r,p);};
    out.predicate=[&im,e,a,old](Rva r,Address p,std::uint8_t b){return r==0x36b244?value(game_helper_predicate(im,r,p,e,a)):foreign(old.predicate,r,p,b);};
    return out;
}
ProjectileBoundaries bind_game_helpers_projectile(Snapshot& im,const GameHelperEnvironment& e,const GameHelperApi& a,ProjectileBoundaries f) {
    auto out=bind_field_getters_projectile(im,std::move(f));const auto old=out;
    out.integer=[&im,e,a,old](Rva r,Address p,std::int32_t n){return r==0x37224c?value(game_helper_integer(im,r,p,e,a)):foreign(old.integer,r,p,n);};
    out.address=[&im,e,a,old](Rva r,Address p,std::int32_t n){return object_known(r)?value(game_helper_object(im,r,p,e,a,std::bit_cast<std::uint32_t>(n))):foreign(old.address,r,p,n);};
    out.vector=[&im,e,a,old](Rva r,Address p,std::int32_t n){return vector_known(r)?value(game_helper_vector(im,r,p,e,a)):foreign(old.vector,r,p,n);};
    out.scalar=[&im,e,a,old](Rva r,Address p,std::int32_t x,std::int32_t y){return r==0x36942c?value(game_helper_scalar(im,r,p,e,a)):foreign(old.scalar,r,p,x,y);};
    out.predicate=[&im,e,a,old](Rva r,Address p){return r==0x36b244?value(game_helper_predicate(im,r,p,e,a)):foreign(old.predicate,r,p);};
    return out;
}
InteractionCalls bind_game_helpers_interaction(Snapshot& im,const GameHelperEnvironment& e,const GameHelperApi& a,InteractionCalls f) {
    auto out=bind_field_getters_interaction(im,std::move(f));const auto old=out;
    out.integer=[&im,e,a,old](const InteractionCall& c){if(c.rva==0x37224c)return std::bit_cast<std::int32_t>(value(game_helper_integer(im,c.rva,c.self,e,a)));if(!old.integer)throw SnapshotBindingFailure(GameBaseStatus::missing_boundary,c.rva);return old.integer(c);};
    out.object=[&im,e,a,old](const InteractionCall& c){if(object_known(c.rva))return value(game_helper_object(im,c.rva,c.self,e,a,std::bit_cast<std::uint32_t>(c.integer)));if(!old.object)throw SnapshotBindingFailure(GameBaseStatus::missing_boundary,c.rva);
        return old.object(c);};
    out.vector=[&im,e,a,old](const InteractionCall& c){if(vector_known(c.rva))return value(game_helper_vector(im,c.rva,c.self,e,a));if(!old.vector)throw SnapshotBindingFailure(GameBaseStatus::missing_boundary,c.rva);
        return old.vector(c);};
    out.scalar=[&im,e,a,old](const InteractionCall& c){if(c.rva==0x36942c)return value(game_helper_scalar(im,c.rva,c.self,e,a));if(!old.scalar)throw SnapshotBindingFailure(GameBaseStatus::missing_boundary,c.rva);
        return old.scalar(c);};
    out.predicate=[&im,e,a,old](const InteractionCall& c){if(c.rva==0x36b244)return value(game_helper_predicate(im,c.rva,c.self,e,a));if(!old.predicate)throw SnapshotBindingFailure(GameBaseStatus::missing_boundary,c.rva);
        return old.predicate(c);};
    out.orientation_3739c4=[&im,e,a](Address p){return value(game_helper_orientation(im,0x3739c4,p,e,a));};
    return out;
}
MovementMainCalls bind_game_helpers_movement(Snapshot& im,const GameHelperEnvironment& e,const GameHelperApi& a,MovementMainCalls f) {
    auto out=bind_field_getters_movement(im,std::move(f));const auto old=out;
    out.integer=[&im,e,a,old](Rva r,MovementMainArguments args){return r==0x37224c?value(game_helper_integer(im,r,receiver(r,args),e,a)):foreign(old.integer,r,args);};
    out.pointer=[&im,e,a,old](Rva r,MovementMainArguments args){if(r==0x3722f0)return value(game_helper_object(im,r,receiver(r,args),e,a,lookup_integer(r,args,1)));if(r==0x32b308)return value(game_helper_object(im,r,0,e,a,lookup_integer(r,args)));return object_known(r)?value(game_helper_object(im,r,receiver(r,args),e,a)):foreign(old.pointer,r,args);};
    out.vector=[&im,e,a,old](Rva r,MovementMainArguments args){return vector_known(r)?value(game_helper_vector(im,r,receiver(r,args),e,a)):foreign(old.vector,r,args);};
    out.scalar=[&im,e,a,old](Rva r,MovementMainArguments args){return r==0x36942c?value(game_helper_scalar(im,r,receiver(r,args),e,a)):foreign(old.scalar,r,args);};
    out.predicate=[&im,e,a,old](Rva r,MovementMainArguments args){return r==0x36b244?value(game_helper_predicate(im,r,receiver(r,args),e,a)):foreign(old.predicate,r,args);};
    out.quaternion=[&im,e,a,old](Rva r,MovementMainArguments args){if(r==0x3739c4||r==0x36920c){const auto q=value(game_helper_orientation(im,r,receiver(r,args),e,a));return std::array<float,4>{q.x,q.y,q.z,q.w};}return foreign(old.quaternion,r,args);};
    return out;
}
HitOverrideApi bind_game_helpers_hit(Snapshot& im,const GameHelperEnvironment& e,const GameHelperApi& a,HitOverrideApi f) {
    f.entity_32b308=[&im,e,a](std::uint32_t n){return value(game_helper_object(im,0x32b308,0,e,a,n));};return f;
}
} // namespace rust_internal_re
