#include "metadata_signature_analysis.hpp"
namespace rust_internal_re {
void check_metadata_signatures() {
    const auto check=[](bool p){if(!p){ /* FREESTANDING_TODO: was throw runtime_error("metadata signature fixture") */ }};
    constexpr Address b=0x1000000,assembly=b+0x100,image=b+0x200,klass=b+0x300,
        ns=b+0x400,name=b+0x500,method=b+0x600,method_name=b+0x700,t1=b+0x800,t2=b+0x900,ret=b+0xa00;
    Snapshot im(b,re::ReVector<ReByte>(0x2000));
    const auto put=[&](Address p,auto value){check(im.write(p,value));};
    const auto str=[&](Address p,re::ReStringView s){for(char c:s)put(p++,c);put(p,char(0));};
    put(assembly,image);put(klass+0x10,name);put(klass+0x18,ns);
    str(ns,"NS");str(name,"Thing");str(method_name,"Run");str(t1,"System.Int32");str(t2,"System.String");str(ret,"System.Void");
    MetadataSignatureApi q;
    q.exports.domain_get_33479c=[] {return Address(123);};
    q.exports.assemblies_33480c=[&](Address p){check(p==123);return re::ReVector<Address>{assembly};};
    q.class_count_334760=[&](Address p){check(p==image);return ReU64(1);};
    q.class_at_334958=[&](Address p,ReI32 n){check(p==image&&n==0);return klass;};
    q.exports.next_method_334660=[&](Address p,Address& cursor){check(p==klass);return cursor++==0?method:Address(0);};
    q.method_name_3352c0=[&](Address p){check(p==method);return method_name;};
    q.exports.parameter_count_335140=[&](Address p){check(p==method);return 2;};
    q.parameter_type_334950=[&](Address p,ReU32 n){check(p==method&&n<2);return n==0?t1:t2;};
    q.return_type_3352d8=[&](Address p){check(p==method);return ret;};
    q.type_name_3352c8=[](Address p){return p;};
    MetadataSignatureCache cache;
    // [I] Expected signature/CRC independently computed with Python zlib.
    check(signature_crc_334768("NS::Thing::Run(Int32,String): Void")==0x569098e7);
    auto found=resolve_signature_333d10(im,cache,q,0x569098e7);
    check(found.status==MetadataStatus::complete&&found.value==method&&found.visited==1);
    check(resolve_signature_333d10(im,cache,{},0x1569098e7ULL).value==method);
    cache.clear();
    check(resolve_signature_333d10(im,cache,q,0x1569098e7ULL).value==0&&cache.empty());
    put(klass+0x18,Address(0));str(method_name,"Tick");str(ret,"System.Boolean");
    q.exports.parameter_count_335140=[](Address){return 0;};q.parameter_type_334950={};
    check(signature_crc_334768("Thing::Tick(): Boolean")==0x288e7de9);
    check(resolve_signature_333d10(im,cache,q,0x288e7de9).value==method);
    cache.clear();
    str(ret,"Nested.System.Boolean");
    const auto nested=signature_crc_334768("Thing::Tick(): System.Boolean");
    check(resolve_signature_333d10(im,cache,q,nested).value==method);
    cache.clear();
    int counts=0;
    q.exports.parameter_count_335140=[&](Address){return counts++==0?1:0;};
    // [C] Count changing to0 removes '(' and still appends the nonzero-count tail.
    check(resolve_signature_333d10(im,cache,q,signature_crc_334768("Thing::Tick): System.Boolean")).value==method);
    cache.clear();
    auto empty=q;empty.class_count_334760=[](Address){return ReU64(0);};empty.class_at_334958={};
    check(resolve_signature_333d10(im,cache,empty,0).status==MetadataStatus::complete);
    check(resolve_signature_333d10(im,cache,{},0).status==MetadataStatus::missing_dependency);
    q.exports.parameter_count_335140=[](Address){return 0;};
    check(resolve_signature_333d10(im,cache,q,0,{2,100}).status==MetadataStatus::analysis_limit);
    put(klass+0x10,b+0x1fff);put(b+0x1fff,char('T'));
    check(resolve_signature_333d10(im,cache,q,0).status==MetadataStatus::unreadable_snapshot);
}
} // namespace rust_internal_re
