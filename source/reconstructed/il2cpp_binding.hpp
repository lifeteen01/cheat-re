#pragma once
// Runtime IL2CPP export resolution and MetadataApi binding.
// Requires GameAssembly.dll to be loaded in the process.
#include "reconstruction.hpp"

#ifdef _WIN32
#include <windows.h>
#include <psapi.h>
#pragma comment(lib, "psapi.lib")
#endif

namespace rust_internal_re {
namespace runtime {

struct IL2CppExports {
    using DomainGet = void*(*)();
    using DomainGetAssemblies = void**(* )(void* domain, size_t* count);
    using AssemblyGetImage = void*(*)(void* assembly);
    using ClassFromName = void*(*)(void* image, const char* ns, const char* name);
    using ClassGetMethods = void*(*)(void* klass, void** iter);
    using ClassGetMethodFromName = void*(*)(void* klass, const char* name, int param_count);
    using MethodGetParamCount = int(*)(void* method);
    using MethodGetName = const char*(*)(void* method);
    using MethodGetParamName = const char*(*)(void* method, uint32_t index);
    using ObjectNew = void*(*)(void* klass);
    using StringNew = void*(*)(const char* str);
    using MethodGetReturnType = void*(*)(void* method);
    using TypeGetName = const char*(*)(void* type);
    using MethodGetParamType = void*(*)(void* method, uint32_t index);
    using ClassGetTypeCount = uint64_t(*)(void* image);
    using ClassGetTypeAt = void*(*)(void* image, int32_t index);

    DomainGet domain_get{};
    DomainGetAssemblies domain_get_assemblies{};
    AssemblyGetImage assembly_get_image{};
    ClassFromName class_from_name{};
    ClassGetMethods class_get_methods{};
    ClassGetMethodFromName class_get_method_from_name{};
    MethodGetParamCount method_get_param_count{};
    MethodGetName method_get_name{};
    MethodGetParamName method_get_param_name{};
    ObjectNew object_new{};
    StringNew string_new{};
    MethodGetReturnType method_get_return_type{};
    TypeGetName type_get_name{};
    MethodGetParamType method_get_param_type{};
    ClassGetTypeCount image_get_class_count{};
    ClassGetTypeAt image_get_class{};
};

#ifdef _WIN32
inline bool resolve_il2cpp_exports(HMODULE game_assembly, IL2CppExports& out) {
    auto get = [&](const char* name) { return reinterpret_cast<void*>(GetProcAddress(game_assembly, name)); };
    out.domain_get = reinterpret_cast<IL2CppExports::DomainGet>(get("il2cpp_domain_get"));
    out.domain_get_assemblies = reinterpret_cast<IL2CppExports::DomainGetAssemblies>(get("il2cpp_domain_get_assemblies"));
    out.assembly_get_image = reinterpret_cast<IL2CppExports::AssemblyGetImage>(get("il2cpp_assembly_get_image"));
    out.class_from_name = reinterpret_cast<IL2CppExports::ClassFromName>(get("il2cpp_class_from_name"));
    out.class_get_methods = reinterpret_cast<IL2CppExports::ClassGetMethods>(get("il2cpp_class_get_methods"));
    out.class_get_method_from_name = reinterpret_cast<IL2CppExports::ClassGetMethodFromName>(get("il2cpp_class_get_method_from_name"));
    out.method_get_param_count = reinterpret_cast<IL2CppExports::MethodGetParamCount>(get("il2cpp_method_get_param_count"));
    out.method_get_name = reinterpret_cast<IL2CppExports::MethodGetName>(get("il2cpp_method_get_name"));
    out.method_get_param_name = reinterpret_cast<IL2CppExports::MethodGetParamName>(get("il2cpp_method_get_param_name"));
    out.object_new = reinterpret_cast<IL2CppExports::ObjectNew>(get("il2cpp_object_new"));
    out.string_new = reinterpret_cast<IL2CppExports::StringNew>(get("il2cpp_string_new"));
    out.method_get_return_type = reinterpret_cast<IL2CppExports::MethodGetReturnType>(get("il2cpp_method_get_return_type"));
    out.type_get_name = reinterpret_cast<IL2CppExports::TypeGetName>(get("il2cpp_type_get_name"));
    out.method_get_param_type = reinterpret_cast<IL2CppExports::MethodGetParamType>(get("il2cpp_method_get_param"));
    out.image_get_class_count = reinterpret_cast<IL2CppExports::ClassGetTypeCount>(get("il2cpp_image_get_class_count"));
    out.image_get_class = reinterpret_cast<IL2CppExports::ClassGetTypeAt>(get("il2cpp_image_get_class"));
    return out.domain_get && out.domain_get_assemblies && out.assembly_get_image &&
           out.class_from_name && out.class_get_methods && out.class_get_method_from_name &&
           out.method_get_param_count && out.method_get_name;
}
#endif

inline MetadataApi build_live_metadata_api(IL2CppExports& il2cpp) {
    MetadataApi api;
    api.domain_get_33479c = [&il2cpp]() -> Address {
        return reinterpret_cast<Address>(il2cpp.domain_get());
    };
    api.assemblies_33480c = [&il2cpp](Address domain) -> re::ReVector<Address> {
        size_t count = 0;
        auto** raw = il2cpp.domain_get_assemblies(reinterpret_cast<void*>(domain), &count);
        re::ReVector<Address> result;
        for (size_t i = 0; i < count; ++i)
            result.push_back(reinterpret_cast<Address>(raw[i]));
        return result;
    };
    api.assembly_image_3344b0 = [&il2cpp](Address assembly) -> Address {
        return reinterpret_cast<Address>(il2cpp.assembly_get_image(reinterpret_cast<void*>(assembly)));
    };
    api.class_from_name_334528 = [&il2cpp](Address image, Address ns, Address name) -> Address {
        return reinterpret_cast<Address>(il2cpp.class_from_name(
            reinterpret_cast<void*>(image),
            reinterpret_cast<const char*>(ns),
            reinterpret_cast<const char*>(name)));
    };
    api.next_method_334660 = [&il2cpp](Address klass, Address& iter) -> Address {
        void* cursor = reinterpret_cast<void*>(iter);
        auto* method = il2cpp.class_get_methods(reinterpret_cast<void*>(klass), &cursor);
        iter = reinterpret_cast<Address>(cursor);
        return method ? reinterpret_cast<Address>(method) : 0;
    };
    api.method_from_name_3345c4 = [&il2cpp](Address klass, Address name, ReI32 count) -> Address {
        return reinterpret_cast<Address>(il2cpp.class_get_method_from_name(
            reinterpret_cast<void*>(klass),
            reinterpret_cast<const char*>(name), count));
    };
    api.parameter_count_335140 = [&il2cpp](Address method) -> ReI32 {
        return il2cpp.method_get_param_count(reinterpret_cast<void*>(method));
    };
    api.method_name_335040 = [&il2cpp](Address method) -> Address {
        return reinterpret_cast<Address>(il2cpp.method_get_name(reinterpret_cast<void*>(method)));
    };
    api.parameter_name_3351b8 = [&il2cpp](Address method, ReI32 index) -> Address {
        return reinterpret_cast<Address>(il2cpp.method_get_param_name(
            reinterpret_cast<void*>(method), static_cast<uint32_t>(index)));
    };
    return api;
}

inline MetadataSignatureApi build_live_signature_api(IL2CppExports& il2cpp) {
    MetadataSignatureApi api;
    api.exports = build_live_metadata_api(il2cpp);
    api.class_count_334760 = [&il2cpp](Address image) -> ReU64 {
        return il2cpp.image_get_class_count
            ? il2cpp.image_get_class_count(reinterpret_cast<void*>(image))
            : 0;
    };
    api.class_at_334958 = [&il2cpp](Address image, ReI32 index) -> Address {
        return il2cpp.image_get_class
            ? reinterpret_cast<Address>(il2cpp.image_get_class(reinterpret_cast<void*>(image), index))
            : 0;
    };
    api.method_name_3352c0 = [&il2cpp](Address method) -> Address {
        return reinterpret_cast<Address>(il2cpp.method_get_name(reinterpret_cast<void*>(method)));
    };
    api.parameter_type_334950 = [&il2cpp](Address method, ReU32 index) -> Address {
        return il2cpp.method_get_param_type
            ? reinterpret_cast<Address>(il2cpp.method_get_param_type(reinterpret_cast<void*>(method), index))
            : 0;
    };
    api.return_type_3352d8 = [&il2cpp](Address method) -> Address {
        return il2cpp.method_get_return_type
            ? reinterpret_cast<Address>(il2cpp.method_get_return_type(reinterpret_cast<void*>(method)))
            : 0;
    };
    api.type_name_3352c8 = [&il2cpp](Address type) -> Address {
        return il2cpp.type_get_name
            ? reinterpret_cast<Address>(il2cpp.type_get_name(reinterpret_cast<void*>(type)))
            : 0;
    };
    return api;
}

} // namespace runtime
} // namespace rust_internal_re
