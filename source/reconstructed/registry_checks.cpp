#include "registry_analysis.hpp"
namespace rust_internal_re {
namespace {
void require(bool ok,const char* why){if(!ok){ __builtin_trap(); }}
template<class T>T get(const Snapshot& s,Address a) {const auto v=s.read<T>(a);require(bool(v),"registry fixture bytes");return *v;}
}
void check_registry_reconstruction(){
    constexpr Address base=0x100000;
    Snapshot image(base,re::ReVector<ReByte>(0x100000,ReByte{0xa5}));
    OwnedSnapshotAllocator arena(image,base+0x10000,0x50000);
    RegistryStore store(arena);
    const auto first=store.baseline_2ef724(0xffffffffu);
    require(first.status==RegistryStatus::complete&&first.inserted,"baseline insertion");
    for(ReUSize i=0;i<24;++i)require(get<ReU8>(image,first.value+i)==0,"baseline constructor zero");
    require(get<ReU8>(image,first.value+24)==0xa5,"baseline tail padding remains");
    require(image.write(first.value+0x14,ReU8{1}),"baseline mutation");
    const auto used=arena.used();
    const auto again=store.baseline_2ef724(0xffffffffu);
    require(!again.inserted&&again.value==first.value&&arena.used()==used,"existing baseline neither allocates nor resets");
    require(get<ReU8>(image,again.value+0x14)==1,"baseline retained capture");
    require(baseline_hash_2d0ae4(0)==0x4d25767f9dce13f5ULL,"four zero bytes FNV64");
    // [I] Force a genuine bucket collision using concrete recovered hash.
    ReU32 colliding=0;
    while((baseline_hash_2d0ae4(colliding)&7)!=(baseline_hash_2d0ae4(0xffffffffu)&7))++colliding;
    const auto second=store.baseline_2ef724(colliding);
    require(second.inserted,"colliding distinct integer inserted");
    auto order=store.baseline_nodes();
    require(order.size()==2&&order[0]+0x14==second.value&&order[1]+0x14==first.value,"new collision prepends bucket");
    require(get<Address>(image,order[0])==order[1]&&get<Address>(image,order[1]+8)==order[0],"native next/prev links");
    const auto identity=store.identity_2df608(re::ReStringView("A\0B",3));
    require(identity.inserted,"embedded NUL identity key");
    require(store.identity_2df608("A").value!=identity.value,"length-aware equality");
    require(store.identity_2df608(re::ReStringView("A\0B",3)).value==identity.value,"embedded NUL hit");
    require(get<ReU64>(image,identity.value+0x10)==0&&get<ReU64>(image,identity.value+0x18)==15,"identity empty payload string");
    require(get<ReU16>(image,identity.value+0x20)==0&&get<ReU32>(image,identity.value+0x24)==0&&get<ReU8>(image,identity.value+0x28)==0,"identity fields initialized");
    require(get<ReU16>(image,identity.value+0x22)==0xa5a5&&get<ReU8>(image,identity.value+0x29)==0xa5,"identity padding untouched");
    const auto longer=store.identity_2df608("abcdefghijklmnop");
    const auto long_data=get<Address>(image,longer.value-0x20);
    require(get<ReU8>(image,long_data)=='a'&&get<ReU8>(image,long_data+16)==0,"long key owned storage");
    for(ReU32 i=100;i<180;++i)require(store.baseline_2ef724(i).status==RegistryStatus::complete,"registry growth");
    require(store.baseline_bucket_count()==512,"native eightfold small table growth");
    require(store.baseline_2ef724(0xffffffffu).value==first.value,"node address stable across growth");
    // [I] Check each resulting bucket is contiguous, and links match exposed order.
    order=store.baseline_nodes();re::ReVector<bool> seen(512);ReUSize previous=512;
    for(ReUSize i=0;i<order.size();++i){
        const auto bucket=static_cast<ReUSize>(baseline_hash_2d0ae4(get<ReU32>(image,order[i]+16)))&511;
        if(bucket!=previous){require(!seen[bucket],"rehash bucket contiguous");seen[bucket]=true;previous=bucket;}
        if(i+1<order.size())require(get<Address>(image,order[i])==order[i+1],"rehash next link");
    }
    constexpr Address player=base+0x1000,name=base+0x3000;
    require(image.write(player+0x640,name),"player managed name pointer");
    const re::ReArray<ReU16,5> wide{{'x',0x100,0x1ff,0,'z'}};
    for(ReUSize i=0;i<wide.size();++i)require(image.write(name+0x14+2*i,wide[i]),"wide fixture");
    const auto key=identity_key_369e70(image,player);
    require(key.status==RegistryStatus::complete&&key.value==re::ReString("x\0\xff",3),"UTF16 NUL scan and low-byte truncation");
    require(identity_key_369e70(image,player,true).value.empty(),"force-empty gate");
    require(identity_key_369e70(image,0).value.empty(),"invalid player gate");
    require(identity_key_369e70(image,player,false,2).status==RegistryStatus::analysis_limit,"explicit wide scan limit");
    require(image.write(player+0x640,base+0xffff0),"out of bounds name pointer");
    require(identity_key_369e70(image,player).status==RegistryStatus::missing_bytes,"missing wide bytes");
    // [C] Fixed collision/growth trace: native prepend within 8 buckets,
    // followed by forward traversal/splicing into the new 64-bucket table.
    Snapshot ordered_image(base,re::ReVector<ReByte>(0x10000,ReByte{0x6c}));
    OwnedSnapshotAllocator ordered_arena(ordered_image,base,0x10000);RegistryStore ordered(ordered_arena);
    for(const auto integer:re::ReArray<ReU32,9>{{0,8,1,9,64,2,10,3,11}})
        require(ordered.baseline_2ef724(integer).status==RegistryStatus::complete,"fixed order insert");
    const auto ordered_nodes=ordered.baseline_nodes();
    const re::ReArray<ReU32,9> expected{{0,64,8,9,1,10,2,3,11}};
    require(ordered.baseline_bucket_count()==64&&ordered_nodes.size()==expected.size(),"fixed growth shape");
    for(ReUSize i=0;i<expected.size();++i)
        require(get<ReU32>(ordered_image,ordered_nodes[i]+16)==expected[i],"fixed native rehash iteration order");
    Snapshot short_image(base,re::ReVector<ReByte>(32));OwnedSnapshotAllocator short_arena(short_image,base,32);
    RegistryStore short_store(short_arena);
    require(short_store.identity_2df608("x").status==RegistryStatus::missing_bytes,"allocation exhaustion is explicit");
}
} // namespace rust_internal_re
