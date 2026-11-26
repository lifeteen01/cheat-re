#include "metadata_signature_analysis.hpp"
namespace rust_internal_re {
ReU32 signature_crc_334768(re::ReStringView text,ReU32 seed) {
    ReU32 crc=~seed;
    for(unsigned char byte:text) {
        crc^=byte;
        for(unsigned n=0;n<8;++n)crc=(crc>>1)^((crc&1)?0xedb88320u:0);
    }
    return ~crc;
}
namespace {
struct SignatureStop {MetadataStatus status;};
template<class F,class... A> auto signature_call(const F& f,A&&... a) {
    if(!f)__builtin_trap();
    return f(re::re_forward<A>(a)...);
}
template<class T> T signature_read(const Snapshot& im,Address p) {
    auto value=im.read<T>(p);
    if(!value)__builtin_trap();
    return *value;
}
re::ReString signature_string(const Snapshot& im,Address p,ReUSize maximum) {
    re::ReString result;
    for(ReUSize i=0;i<maximum;++i) {
        const char c=signature_read<char>(im,p+i);
        if(!c)return result;
        result+=c;
    }
    __builtin_trap();
}
re::ReString strip_type(re::ReString name) {
    // [C] find(".",0)+1 wraps npos to0; this strips only the FIRST component.
    return name.substr(name.find('.')+1);
}
}
MetadataResult resolve_signature_333d10(const Snapshot& im,MetadataSignatureCache& cache,
    const MetadataSignatureApi& api,ReU64 requested,MetadataLimits limits) {
    const auto hit=cache.find(ReU32(requested));
    if(bool(hit))return {**hit};
    ReUSize work=0,visited=0;
    const auto step=[&]{if(work++>=limits.iterations)__builtin_trap();};
    {
        const Address domain=signature_call(api.exports.domain_get_33479c);
        const auto assemblies=signature_call(api.exports.assemblies_33480c,domain);
        for(Address assembly:assemblies) {
            step();
            // [C] 333db5 dereferences the assembly directly, unlike 334224.
            const Address image=signature_read<Address>(im,assembly);
            if(!signature_call(api.class_count_334760,image))continue;
            ReU32 index=0;
            do {
                step();
                const Address klass=signature_call(api.class_at_334958,image,re::re_bit_cast<ReI32>(index));
                if(klass) {
                    const Address ns=signature_read<Address>(im,klass+0x18);
                    const Address name=signature_read<Address>(im,klass+0x10);
                    re::ReString prefix;
                    if(ns&&signature_read<char>(im,ns)!=0)prefix=signature_string(im,ns,limits.string_bytes)+"::";
                    prefix+=signature_string(im,name,limits.string_bytes);
                    Address cursor=0;
                    for(;;) {
                        step();
                        const Address method=signature_call(api.exports.next_method_334660,klass,cursor);
                        if(!method)break;
                        ++visited;
                        re::ReString signature=prefix+"::"+signature_string(im,signature_call(api.method_name_3352c0,method),limits.string_bytes);
                        const auto initial_count=signature_call(api.exports.parameter_count_335140,method);
                        if(initial_count!=0) {
                            signature+='(';
                            ReU32 param=0;
                            auto count=ReU32(signature_call(api.exports.parameter_count_335140,method));
                            if(count)do {
                                step();
                                const Address type=signature_call(api.parameter_type_334950,method,param);
                                signature+=strip_type(signature_string(im,signature_call(api.type_name_3352c8,type),limits.string_bytes))+",";
                                ++param;
                                count=ReU32(signature_call(api.exports.parameter_count_335140,method));
                            } while(param<count);
                            // [C] 320cf8 removes the last character even if a repeated
                            // count changed to zero before the parameter loop.
                            signature.resize(signature.size()-1);
                            signature+="): ";
                        } else signature+="(): ";
                        const Address returns=signature_call(api.return_type_3352d8,method);
                        signature+=strip_type(signature_string(im,signature_call(api.type_name_3352c8,returns),limits.string_bytes));
                        // [C] 3ca904 uses C strlen; hash is zero-extended before CMP r13.
                        const auto nul=signature.find('\0');
                        if(ReU64(signature_crc_334768(re::ReStringView(signature).substr(0,nul)))==requested) {
                            cache[ReU32(requested)]=method;
                            return {method,MetadataStatus::complete,visited};
                        }
                    }
                }
                ++index;
            } while(Address(ReI64(re::re_bit_cast<ReI32>(index)))<signature_call(api.class_count_334760,image));
        }
        return {0,MetadataStatus::complete,visited};
    }
}
} // namespace rust_internal_re
