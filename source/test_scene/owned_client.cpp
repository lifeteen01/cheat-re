#include "owned_client.hpp"

namespace owned_scene {
namespace re = rust_internal_re;
namespace {
class ClientDatabase {
public:
    static constexpr re::Address module = 0x1000000;
    static constexpr re::Address assembly = module + 0x410000;
    static constexpr re::Address image = module + 0x411000;
    static constexpr re::Address klass = module + 0x412000;
    static constexpr re::Address method = module + 0x413000;
    static constexpr re::Address domain = module + 0x414000;
    static constexpr re::Address return_type = module + 0x415000;
    static constexpr re::Address code = module + 0x480000;
    static constexpr re::Address game_module = module + 0x490000;
    re::Snapshot bytes{module, ::re::ReVector<ReByte>(0x500000)};
    re::HookSetupEnvironment environment{module, 0, module + 0x4b0000, 1024, {100, 256}};
    re::HookSetupEffects effects;
    re::HookSetupState setup;

    template<class Value> Value read(re::Address address) const {
        const auto value = bytes.read<Value>(address);
        if (!value) __builtin_trap();
        return *value;
    }
    template<class Value> void write(re::Address address, const Value& value) {
        if (!bytes.write(address, value))
            __builtin_trap();
    }
    void text(re::Address address, ::re::ReStringView value) {
        for (ReUSize index = 0; index <= value.size(); ++index)
            write(address + index, index < value.size() ? value[index] : char{});
    }
    ::re::ReString text(re::Address address) const {
        ::re::ReString value;
        for (ReUSize index = 0; index < 256; ++index) {
            const auto character = read<char>(address + index);
            if (!character) return value;
            value += character;
        }
        __builtin_trap();
    }
    explicit ClientDatabase(OwnedClientScenario scenario) {
        write(assembly, image);
        write(image, ReU32(1));
        write(image + 8, klass);
        write(klass + 0x10, module + 0x420000);
        write(klass + 0x18, module + 0x420100);
        write(klass + 0x28, method);
        write(method, scenario == OwnedClientScenario::zero_original ? re::Address{} : code);
        write(method + 0x18, module + 0x420200);
        write(method + 0x20, return_type);
        write(method + 0x38, ReI32(0));
        write(return_type, module + 0x420300);
        text(module + 0x420000, scenario == OwnedClientScenario::missing_class ? "Other" : "Client");
        text(module + 0x420100, "");
        text(module + 0x420200, scenario == OwnedClientScenario::missing_method ? "Other" : "LateUpdate");
        text(module + 0x420300, "System.Void");
        for (unsigned offset = 0x18; offset < 0x28; ++offset)
            write(module + 0x3e6950 + offset, ReU8(0xa5));
        effects.module_handle = [scenario](::re::ReStringView name) -> ::re::ReOptional<re::Address> {
            if (name != "GameAssembly.dll" || scenario == OwnedClientScenario::missing_module)
                return {};
            return game_module;
        };
        effects.metadata.domain_get_33479c = [] { return domain; };
        effects.metadata.assemblies_33480c = [](re::Address requested) {
            if (requested != domain) __builtin_trap();
            return ::re::ReVector<re::Address>{assembly};
        };
        effects.metadata.assembly_image_3344b0 = [this](re::Address requested) {
            if (requested != assembly) __builtin_trap();
            return read<re::Address>(requested);
        };
        effects.metadata.class_from_name_334528 = [this](re::Address requested, re::Address name_space,
                                                       re::Address name) {
            if (requested != image) __builtin_trap();
            const auto selected = read<re::Address>(requested + 8);
            return text(name_space) == text(read<re::Address>(selected + 0x18)) &&
                   text(name) == text(read<re::Address>(selected + 0x10)) ? selected : re::Address{};
        };
        effects.metadata.next_method_334660 = [this](re::Address requested, re::Address& cursor) {
            if (requested != klass) __builtin_trap();
            if (cursor++) return re::Address{};
            return read<re::Address>(requested + 0x28);
        };
        effects.metadata.method_from_name_3345c4 = [this](re::Address requested, re::Address name,
                                                        ReI32 count) {
            if (requested != klass) __builtin_trap();
            const auto selected = read<re::Address>(requested + 0x28);
            return text(name) == text(read<re::Address>(selected + 0x18)) &&
                   (count == -1 || count == read<ReI32>(selected + 0x38))
                       ? selected : re::Address{};
        };
        effects.metadata.parameter_count_335140 = [this](re::Address requested) {
            if (requested != method) __builtin_trap();
            return read<ReI32>(requested + 0x38);
        };
        effects.signature.exports = effects.metadata;
        effects.signature.class_count_334760 = [this](re::Address requested) {
            if (requested != image) __builtin_trap();
            return ReU64(read<ReU32>(requested));
        };
        effects.signature.class_at_334958 = [this](re::Address requested, ReI32 index) {
            if (requested != image || index != 0)
                __builtin_trap();
            return read<re::Address>(requested + 8);
        };
        effects.signature.method_name_3352c0 = [this](re::Address requested) {
            if (requested != method) __builtin_trap();
            return read<re::Address>(requested + 0x18);
        };
        effects.signature.return_type_3352d8 = [this](re::Address requested) {
            if (requested != method) __builtin_trap();
            return read<re::Address>(requested + 0x20);
        };
        effects.signature.type_name_3352c8 = [this](re::Address requested) {
            if (requested != return_type) __builtin_trap();
            return read<re::Address>(requested);
        };
        if (scenario == OwnedClientScenario::missing_metadata)
            effects.signature.method_name_3352c0 = {};
    }
    re::HookRecord record() const {
        re::HookRecord value;
        value.original = read<re::Address>(module + 0x3e6950);
        value.method_info = read<re::Address>(module + 0x3e6958);
        value.detour = read<re::Address>(module + 0x3e6978);
        value.kind = read<ReU32>(module + 0x3e6980);
        return value;
    }
};
}
OwnedClientInstall initialize_owned_client(OwnedClientScenario scenario, bool repeat) {
    ClientDatabase database(scenario);
    OwnedClientInstall result;
    result.module = database.module;
    result.method = database.method;
    result.original_before = database.read<re::Address>(database.method);
    result.result = re::initialize_client_362118(database.bytes, database.setup,
                                                database.environment, database.effects);
    result.record = database.record();
    result.method_after = database.read<re::Address>(database.method);
    result.stored_game_base = database.read<re::Address>(database.module + 0x3d6f00);
    result.directory = database.setup.directory;
    result.configuration = database.setup.configuration;
    const auto* sig_pair = database.setup.signatures.find_pair(re::signature_crc_334768("Client::LateUpdate(): Void"));
    if (sig_pair) result.signature_method = sig_pair->value;
    result.opaque_preserved = true;
    for (unsigned offset = 0x18; offset < 0x28; ++offset)
        result.opaque_preserved &= database.read<ReU8>(database.module + 0x3e6950 + offset) == 0xa5;
    if (repeat) {
        result.repeated = true;
        result.repeated_result = re::initialize_client_362118(database.bytes, database.setup,
                                                             database.environment, database.effects);
        result.repeated_record = database.record();
    }
    return result;
}
}
