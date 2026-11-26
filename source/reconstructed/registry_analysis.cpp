#include "registry_analysis.hpp"
namespace rust_internal_re {
namespace {
template<class T> void put(Snapshot& s,Address p,T value) {
    if(!s.write(p,value)){ __builtin_trap(); }
}
void zero(Snapshot& s,Address p,ReUSize n) {
    for(ReUSize i=0;i<n;++i)put(s,p+i,ReU8{});
}
void string_object(OwnedSnapshotAllocator& arena,Address object,re::ReStringView key) {
    auto& s=arena.snapshot();
    // [I] Native inline layout retained; owned long storage has exact capacity.
    zero(s,object,32);
    const Address data=key.size()<=15?object:arena.allocate(key.size()+1,1);
    if(key.size()>15)put(s,object,data);
    for(ReUSize i=0;i<key.size();++i)put(s,data+i,static_cast<ReU8>(key[i]));
    put(s,data+key.size(),ReU8{});
    put(s,object+16,static_cast<ReU64>(key.size()));
    put(s,object+24,static_cast<ReU64>(key.size()<=15?15:key.size()));
}
}
OwnedSnapshotAllocator::OwnedSnapshotAllocator(Snapshot& s,Address begin,ReUSize capacity)
    :image_(s),begin_(begin),next_(begin),end_(begin) {
    if(capacity>re::ReNumericLimits<Address>::max()-begin||!s.contains(begin,capacity))
        { __builtin_trap(); }
    end_=begin+capacity;
}
Address OwnedSnapshotAllocator::allocate(ReUSize bytes,ReUSize alignment) {
    if(alignment==0||(alignment&(alignment-1))!=0){ __builtin_trap(); }
    const Address padding=(Address{0}-next_)&(alignment-1);
    if(padding>end_-next_||bytes>end_-next_-padding){ __builtin_trap(); }
    next_+=padding;const Address out=next_;next_+=bytes;return out;
}
ReU64 registry_hash_2d7078(re::ReSpan<const ReByte> bytes) {
    ReU64 hash=0xcbf29ce484222325ULL;
    for(const auto ch:bytes)hash=(hash^static_cast<ReU8>(ch))*0x100000001b3ULL;
    return hash;
}
ReU64 baseline_hash_2d0ae4(ReU32 key) {
    return registry_hash_2d7078(re::ReSpan<const ReByte>(reinterpret_cast<const ReByte*>(&key),sizeof(key)));
}
IdentityKeyResult identity_key_369e70(const Snapshot& image,Address player,bool force_empty,
    ReUSize maximum_characters) {
    IdentityKeyResult out;
    if(!sample_pointer_range(player)||force_empty)return out;
    const auto name=image.read<Address>(player+0x640);
    if(!name){out.status=RegistryStatus::missing_bytes;return out;}
    if(!sample_pointer_range(*name))return out;
    for(ReUSize i=0;i<maximum_characters;++i){
        if(i>(re::ReNumericLimits<Address>::max()-*name-0x14)/2){out.status=RegistryStatus::analysis_limit;return out;}
        const auto ch=image.read<ReU16>(*name+0x14+i*2);
        if(!ch){out.status=RegistryStatus::missing_bytes;return out;}
        if(*ch==0)return out;
        out.value.push_back(static_cast<char>(*ch&0xff));
    }
    out.status=RegistryStatus::analysis_limit;return out;
}
RegistryStore::RegistryStore(OwnedSnapshotAllocator& arena,float load):arena_(arena),maximum_load_(load) {
    if(!re::re_isfinite(load)||load<=0){ __builtin_trap(); }
}
void RegistryStore::links(const re::ReVector<Entry>& entries,Address head) {
    auto& image=arena_.snapshot();
    put(image,head,entries.empty()?head:entries.front().node);
    put(image,head+8,entries.empty()?head:entries.back().node);
    for(ReUSize i=0;i<entries.size();++i){
        put(image,entries[i].node,i+1==entries.size()?head:entries[i+1].node);
        put(image,entries[i].node+8,i==0?head:entries[i-1].node);
    }
}
RegistryLookup RegistryStore::lookup(re::ReVector<Entry>& entries,Address& head,ReUSize& buckets,
    re::ReString key,bool baseline) {
    const auto hash=registry_hash_2d7078(re::ReSpan<const ReByte>(reinterpret_cast<const ReByte*>(key.data()),key.size()));
    // [C] Native find walks the bucket from last toward first, comparing complete
    // raw integer/length-aware byte keys, and returns before allocation on a hit.
    for(ReUSize ri=entries.size();ri>0;--ri) {
        auto& e=entries[ri-1];
        if(e.hash==hash&&e.key==key)return RegistryLookup{e.node+(baseline?0x14:0x30),false,RegistryStatus::complete};
    }
    {
        if(!head){head=arena_.allocate(16);links(entries,head);}
        // [C] Allocate/construct the new node before load-factor growth.
        const Address node=arena_.allocate(baseline?0x30:0x60);
        auto& image=arena_.snapshot();
        if(baseline){
            ReU32 integer{};re::re_memcpy(&integer,key.data(),sizeof(integer));
            put(image,node+0x10,integer);
            zero(image,node+0x14,24); // [C] 2ea4d0; 2eee78 adds no stores.
        }else{
            string_object(arena_,node+0x10,key);
            string_object(arena_,node+0x30,{});
            put(image,node+0x50,ReU16{});
            put(image,node+0x54,ReU32{});
            put(image,node+0x58,ReU8{});
            // [C] Padding at +52/+53 and +59..+5f is untouched.
        }
        if(static_cast<float>(entries.size()+1)/static_cast<float>(buckets)>maximum_load_){
            const double required=re::re_ceilf(static_cast<double>(static_cast<float>(entries.size()+1)/maximum_load_));
            if(required>static_cast<double>(re::ReNumericLimits<ReUSize>::max()/2))
                return {0,false,RegistryStatus::analysis_limit};
            ReUSize wanted=re::re_max(ReUSize{8},static_cast<ReUSize>(required));
            if(buckets<512&&buckets*8>=wanted)wanted=buckets*8;
            buckets=re::re_bit_ceil(wanted);
            // [C] Unique-key branch of 319be8/2e2bac: visit the old list in
            // forward order, splice a repeated bucket before its current first.
            const auto old=entries;
            re::ReVector<Address> first(buckets,0);
            for(const auto& entry:old){
                const auto bucket=static_cast<ReUSize>(entry.hash)&(buckets-1);
                if(first[bucket]){
                    const auto current=re::re_find_if(entries.begin(),entries.end(),[&](const Entry& e){return e.node==entry.node;});
                    const Entry copy=*current;entries.erase(current);
                    const auto before=re::re_find_if(entries.begin(),entries.end(),[&](const Entry& e){return e.node==first[bucket];});
                    entries.insert(before,copy);
                }
                first[bucket]=entry.node;
            }
        }
        const auto bucket=static_cast<ReUSize>(hash)&(buckets-1);
        const auto before=re::re_find_if(entries.begin(),entries.end(),[&](const Entry& e){return (e.hash&(buckets-1))==bucket;});
        entries.insert(before,Entry{re::re_move(key),hash,node});
        links(entries,head);
        return {node+(baseline?0x14:0x30),true,RegistryStatus::complete};
    }
}
RegistryLookup RegistryStore::baseline_2ef724(ReU32 key) {
    return lookup(baselines_,baseline_head_,baseline_buckets_,re::ReString(reinterpret_cast<const char*>(&key),4),true);
}
RegistryLookup RegistryStore::identity_2df608(re::ReStringView key) {
    return lookup(identities_,identity_head_,identity_buckets_,re::ReString(key),false);
}
re::ReVector<Address> RegistryStore::baseline_nodes()const {
    re::ReVector<Address> out;for(const auto& e:baselines_)out.push_back(e.node);return out;
}
re::ReVector<Address> RegistryStore::identity_nodes()const {
    re::ReVector<Address> out;for(const auto& e:identities_)out.push_back(e.node);return out;
}
} // namespace rust_internal_re
