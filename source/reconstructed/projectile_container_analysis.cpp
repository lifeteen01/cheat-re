#include "projectile_container_analysis.hpp"
namespace rust_internal_re {
namespace {
template<class T> T read_container(const Snapshot& im,Address p,Rva site) {
    const auto value=im.read<T>(p);
    if(!value)__builtin_trap();
    return *value;
}
template<class T> void write_container(Snapshot& im,Address p,T value,Rva site) {
    if(!im.write(p,value))__builtin_trap();
}
void range_container(Address begin,Address end,ReUSize maximum,Rva site) {
    if(end<begin||(end-begin)%8||(end-begin)/8>maximum)
        __builtin_trap();
}
}
re::ReOptional<ProjectileShotEntry> find_shot_32b838(const Snapshot& im,Address vector,
    ReU32 id,ReUSize maximum) {
    const Address begin=read_container<Address>(im,vector,0x2d7da5);
    const Address end=read_container<Address>(im,vector+8,0x2d87c5);
    range_container(begin,end,maximum,0x32b838);
    for(Address slot=begin;slot!=end;slot+=8) {
        const Address projectile=read_container<Address>(im,slot,0x32b876);
        if(!sample_pointer_range(projectile))continue;
        if(read_container<ReU32>(im,projectile+0x138,0x3742cd)==id)
            return ProjectileShotEntry{projectile,slot};
    }
    return {};
}
Address erase_shot_32cb8c(Snapshot& im,Address vector,Address iterator,ReUSize maximum) {
    const Address end=read_container<Address>(im,vector+8,0x32cba8);
    // [I] Validate only the source-to-end interval used by the native copy.
    // No lookup by ID is performed; the caller supplies the retained iterator.
    range_container(iterator+8,end,maximum,0x32b6c8);
    Address dest=iterator;
    for(Address source=iterator+8;source!=end;source+=8,dest+=8)
        write_container(im,dest,read_container<Address>(im,source,0x2da14f),0x2da14f);
    write_container(im,vector+8,end-8,0x32cbb1);
    return iterator;
}
ProjectileBoundaries bind_projectile_container(Snapshot& im,Address vector,ProjectileBoundaries calls,
    ReUSize maximum) {
    calls.lookup_shot_entry=[&im,vector,maximum](ReU32 id){return find_shot_32b838(im,vector,id,maximum);};
    calls.erase_shot_iterator=[&im,vector,maximum](Address slot){(void)erase_shot_32cb8c(im,vector,slot,maximum);};
    return calls;
}
} // namespace rust_internal_re
