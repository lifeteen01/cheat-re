#include "frame.hpp"
#include "scene.hpp"

namespace owned_scene {
namespace {
using namespace rust_internal_re;
constexpr Address mouse=0x900000, position=0x901000, scroll=0x902000;
constexpr Address native_io=0x910000, mesh=0x920000, rect=0x930000;
constexpr Address target=0x940000, command_buffer=0x950000;
template<class... T> bool types(::re::ReSpan<const UnityValue> arguments) {
    if (arguments.size()!=sizeof...(T)) return false;
    ReUSize argument_index=0;
    return (::re::re_holds_alternative<T>(arguments[argument_index++]) && ...);
}
bool empty(::re::ReSpan<const UnityValue> arguments) { return arguments.empty(); }
UnityMatrix owned_ortho(float left,float right,float bottom,float top,float near,float far) {
    UnityMatrix matrix;
    matrix.cells[0]=2/(right-left);matrix.cells[5]=2/(top-bottom);matrix.cells[10]=-2/(far-near);
    matrix.cells[12]=-(right+left)/(right-left);matrix.cells[13]=-(top+bottom)/(top-bottom);
    matrix.cells[14]=-(far+near)/(far-near);matrix.cells[15]=1;
    return matrix;
}
}
struct FrameLifecycle::State {
    Resources& resources;
    re::UnityFrameState frame;
    re::UnityBackendState backend;
    re::FrameDependencyState dependencies;
    OwnedClientInstall client_install;
    re::Snapshot input_bytes{mouse,::re::ReVector<ReByte>(0x3000)};
    State(Resources& owned_resources, OwnedClientScenario scenario)
        : resources(owned_resources), client_install(initialize_owned_client(scenario)) {
        frame.bundles.fill(0x960000);
        frame.ui_initialized=true;frame.configs_loaded=true;frame.menu_open=true;
        dependencies.hotkeys[0x3ef7d8]=re::FrameHotkey{0x70,false};
        frame.original={2,0,true};frame.saved_original=client_install.record.original;
        for (const auto& spec:re::unity_backend_cache_specs())
            backend.caches[spec.flags]={3,re::Address(spec.wrapper),true};
        backend.mesh=mesh;backend.rect_transform=rect;backend.render_texture=target;
        backend.command_buffer=command_buffer;backend.camera=0x980000;
        backend.material=0x990000;backend.property_block=0x9a0000;
        backend.font_texture=Resources::texture;backend.io.font_texture=Resources::texture;
        backend.io.font_atlas=Resources::atlas;backend.texture_property=1;
        backend.vertex_attributes={{0,0,2,0},{4,0,2,0},{5,10,1,0}};
    }
};
FrameLifecycle::FrameLifecycle(Resources& owned_resources, OwnedClientScenario scenario)
    : state(::re::re_make_unique<State>(owned_resources, scenario)) {}
FrameLifecycle::~FrameLifecycle()=default;

FrameReport FrameLifecycle::frame(const Input& input,const FrameCallbacks& callbacks,
                                 const FrameConditions& conditions) {
    using namespace rust_internal_re;
    auto& lifecycle_state=*state;
    FrameReport report;
    report.hotkey_latched=lifecycle_state.dependencies.hotkeys.at(0x3ef7d8).latched;
    report.client_install=lifecycle_state.client_install;
    const auto bootstrap_status=report.client_install.result.status;
    if (bootstrap_status!=GameBaseStatus::complete) {
        const auto failure_status=bootstrap_status==GameBaseStatus::missing_bytes ? UnityStatus::unreadable_snapshot :
            bootstrap_status==GameBaseStatus::analysis_limit ? UnityStatus::analysis_limit : UnityStatus::missing_dependency;
        report.result={failure_status,report.client_install.result.site,false};return report;
    }
    if (report.client_install.record.kind!=1 || report.client_install.result.installations.size()!=1 ||
        !report.client_install.result.installations.front().installed) {
        report.result={UnityStatus::unresolved_target,0x3621f2,false};return report;
    }
    Input routed_input=input;
    bool io_ready=false;
    auto record=[&](Rva site,FrameEffectKind kind,::re::ReSpan<const UnityValue> args,
                    UnityValue value=::re::ReMonostate{})->::re::ReOptional<UnityValue> {
        report.effects.push_back({site,kind,{args.begin(),args.end()},value});
        if (callbacks.accept_effect && !callbacks.accept_effect(report.effects.back())) return {};
        return value;
    };
    if (!input.width || !input.height) {
        report.minimized=true;
        if (!input.raw_menu_hotkey) lifecycle_state.frame.menu_open=input.menu_open;
        routed_input.menu_open=lifecycle_state.frame.menu_open;
        if (callbacks.menu) callbacks.menu(routed_input);
        else report.result={UnityStatus::missing_dependency,0x35d5ac,false};
        report.menu_open=lifecycle_state.frame.menu_open;report.io=lifecycle_state.backend.io;
        return report;
    }
    if (input.width>INT32_MAX || input.height>INT32_MAX ||
        !::re::re_isfinite(input.delta) || input.delta<=0 ||
        !::re::re_isfinite(input.mouse.x) || !::re::re_isfinite(input.mouse.y) ||
        (conditions.start_splash_seconds && !::re::re_isfinite(*conditions.start_splash_seconds))) {
        report.result={UnityStatus::malformed_input,0x3b2eec,false};return report;
    }
    const auto camera_pixel_rect=conditions.camera_pixel_rect.value_or(
        ClipRect{0,0,float(input.width),float(input.height)});
    const auto mouse_control_position=conditions.mouse_control_position.value_or(
        Vec2{input.mouse.x,float(input.height)-input.mouse.y});
    const auto io_delta=conditions.io_delta.value_or(input.delta);
    const auto valid_dimension=[](float dimension) {
        return ::re::re_isfinite(dimension) && dimension>0 &&
            double(dimension)<=double(INT32_MAX) && ::re::re_truncf(dimension)==dimension;
    };
    if (!valid_dimension(camera_pixel_rect.z) || !valid_dimension(camera_pixel_rect.w) ||
        !::re::re_isfinite(camera_pixel_rect.x) || !::re::re_isfinite(camera_pixel_rect.y) ||
        !::re::re_isfinite(mouse_control_position.x) || !::re::re_isfinite(mouse_control_position.y) ||
        !::re::re_isfinite(io_delta) || io_delta<=0) {
        report.result={UnityStatus::malformed_input,0x3b2eec,false};return report;
    }
    if (conditions.start_splash_seconds) {
        lifecycle_state.frame.splash_active=true;lifecycle_state.frame.splash_seconds=*conditions.start_splash_seconds;
    }
    if (!input.raw_menu_hotkey) {
        if (!record(0,FrameEffectKind::external_menu_request,{},input.menu_open)) {
            report.result={UnityStatus::missing_dependency,0,false};return report;
        }
        lifecycle_state.resources.trace.hit("FrameLifecycle::external_menu_request");
        lifecycle_state.frame.menu_open=input.menu_open;
    }
    if (!lifecycle_state.input_bytes.write(position+0xf8,mouse_control_position) ||
        !lifecycle_state.input_bytes.write(scroll+0xf8,Vec2{}))
        __builtin_trap();
    UnityFrameApi api;api.copied_game=&lifecycle_state.input_bytes;
    api.backend.copied_pointer=[](Address object,ReU32 offset)->::re::ReOptional<Address> {
        if (offset==0x10 && (object==mesh || object==rect)) return object+0x100;
        return {};
    };
    api.backend.external=[&](Rva site,::re::ReSpan<const UnityValue> arguments)->::re::ReOptional<UnityValue> {
        auto supplied=[&](UnityValue value) {return record(site,FrameEffectKind::supplied_input,arguments,::re::re_move(value));};
        auto effect=[&](FrameEffectKind kind) {return record(site,kind,arguments);};
        switch(site) {
        case 0x3926ac:if(empty(arguments))return supplied(native_io);
            break;
        case 0x3b2a30:if(empty(arguments))return supplied(io_delta);
            break;
        case 0x2e071c:if(empty(arguments))return supplied(input.delta);
            break;
        case 0x2e09f0:if(empty(arguments))return supplied(ReI32(input.height));
            break;
        case 0x2e0af0:if(empty(arguments))return supplied(ReI32(input.width));
            break;
        case 0x36c8c4:if(types<Address>(arguments))return supplied(camera_pixel_rect);
            break;
        case 0x3b2590:if(empty(arguments))return supplied(mouse);
            break;
        case 0x3b2698:if(types<Address>(arguments))return supplied(position);
            break;
        case 0x3b2914:if(types<Address>(arguments))return supplied(scroll);
            break;
        case 0x3b2358:case 0x3b27f8:case 0x3b2474:case 0x3b2120:case 0x3b223c:
            if(types<Address>(arguments))return supplied(Address(site));
            break;
        case 0x2e68b8:
            if(types<Address>(arguments))return supplied(::re::re_get<Address>(arguments[0])==0x3b2358 && input.focused &&
                                                        conditions.left_button.value_or(input.down));
            break;
        case 0x38cd28:if(types<Address,float,float>(arguments))return effect(FrameEffectKind::io_event);
            break;
        case 0x397da4:
            if(empty(arguments)) {
                auto accepted=effect(FrameEffectKind::new_frame_deferred);
                if(accepted) {
                    const auto& io=lifecycle_state.backend.io;
                    routed_input.width=static_cast<unsigned>(io.display_size.x);
                    routed_input.height=static_cast<unsigned>(io.display_size.y);
                    routed_input.mouse=io.mouse_position;
                    routed_input.delta=io.delta_time;
                    routed_input.down=io.mouse_buttons[0];
                    routed_input.menu_open=lifecycle_state.frame.menu_open;
                    if(callbacks.prepare_ui) {
                        lifecycle_state.resources.trace.hit("FrameLifecycle::prepare_ui");
                        if(!callbacks.prepare_ui(routed_input)) {
                            report.preparation_error="UI preparation refused";
                            return {};
                        }
                    }
                    io_ready=true;report.io_routed=true;
                }
                return accepted;
            }
            break;
        case 0x390994:case 0x390cec:case 0x398d84:
            if(empty(arguments))return effect(FrameEffectKind::finalization_deferred);
            break;
        case 0x3b383c:if(types<Address>(arguments))return effect(FrameEffectKind::resize_recording);
            break;
        case 0x3b40d0:case 0x3b39dc:
            if(types<Address,ReI32>(arguments))return effect(FrameEffectKind::resize_recording);
            break;
        case 0x3b1980:
            if(types<Address>(arguments))return record(site,FrameEffectKind::gpu_deferred,arguments,false);
            break;
        case 0x3b3dbc:if(types<Address,Vec2>(arguments))return effect(FrameEffectKind::resize_recording);
            break;
        case 0x3af13c:case 0x3af940:
            if(types<Address,bool>(arguments))return effect(FrameEffectKind::upload_recording);
            break;
        case 0x3b08f8:if(types<Address,ReI32>(arguments))return effect(FrameEffectKind::upload_recording);
            break;
        case 0x3b4010:
            if(types<Address,ReI32,UnityBytes,ReI32>(arguments))return effect(FrameEffectKind::upload_recording);
            break;
        case 0x3b3bdc:
            if(types<Address,ReI32,ReI32>(arguments))return effect(FrameEffectKind::upload_recording);
            break;
        case 0x3b3f38:
            if(types<Address,ReI32,UnityVertexBytes,ReI32,ReI32,ReI32,ReI32,ReI32>(arguments))return effect(FrameEffectKind::upload_recording);
            break;
        case 0x3b3b04:
            if(types<Address,UnityIndexBytes,ReI32,ReI32,ReI32,ReI32,ReI32>(arguments))return effect(FrameEffectKind::upload_recording);
            break;
        case 0x3b3e5c:
            if(types<Address,UnitySubMeshes,ReI32,ReI32,ReI32>(arguments))return effect(FrameEffectKind::upload_recording);
            break;
        case 0x3b4824:
            if(types<UnityRenderTarget,Address>(arguments)) {
                UnityRenderTarget owned;const auto key=::re::re_get<Address>(arguments[1]);
                ::re::re_memcpy(owned.bytes.data(),&key,sizeof(key));
                return record(site,FrameEffectKind::gpu_deferred,arguments,owned);
            }
            break;
        case 0x3b3614:
            if(types<float,float,float,float,float,float>(arguments))return record(site,FrameEffectKind::gpu_deferred,arguments,
                owned_ortho(::re::re_get<float>(arguments[0]),::re::re_get<float>(arguments[1]),::re::re_get<float>(arguments[2]),
                            ::re::re_get<float>(arguments[3]),::re::re_get<float>(arguments[4]),::re::re_get<float>(arguments[5])));
            break;
        case 0x3af0bc:case 0x3b1dc4:case 0x3b2004:
            if(types<Address>(arguments))return effect(FrameEffectKind::gpu_deferred);
            break;
        case 0x3b3c90:if(types<Address,UnityRenderTarget>(arguments))return effect(FrameEffectKind::gpu_deferred);
            break;
        case 0x3af1c8:if(types<Address,bool,bool,ClipRect>(arguments))return effect(FrameEffectKind::gpu_deferred);
            break;
        case 0x3af8b4:if(types<Address,ClipRect>(arguments))return effect(FrameEffectKind::gpu_deferred);
            break;
        case 0x3af814:if(types<Address,UnityMatrix,UnityMatrix>(arguments))return effect(FrameEffectKind::gpu_deferred);
            break;
        case 0x3af774:if(types<Address,ReI32,Address>(arguments))return effect(FrameEffectKind::gpu_deferred);
            break;
        case 0x3b1edc:if(types<Address,ScissorRect>(arguments))return effect(FrameEffectKind::gpu_deferred);
            break;
        case 0x3af2e4:
            if(types<Address,Address,UnityMatrix,Address,ReI32,ReI32,Address>(arguments))return effect(FrameEffectKind::gpu_deferred);
            break;
        default:break;
        }
        return {};
    };
    api.domain=[&](Rva site,::re::ReSpan<const UnityValue> arguments)->::re::ReOptional<UnityValue> {
        auto supplied=[&](UnityValue value) {return record(site,FrameEffectKind::supplied_input,arguments,::re::re_move(value));};
        auto effect=[&](FrameEffectKind kind) {return record(site,kind,arguments);};
        auto invoke=[&](const ::re::ReFunction<void(const Input&)>& callback,FrameEffectKind kind) ->::re::ReOptional<UnityValue> {
            if(!callback)return {};
            if(kind!=FrameEffectKind::original_callback && !io_ready)return {};
            auto accepted=effect(kind);if(!accepted)return {};
            Input routed=kind==FrameEffectKind::original_callback ? input : routed_input;
            routed.menu_open=lifecycle_state.frame.menu_open;
            callback(routed);return accepted;
        };
        switch(site) {
        case 0x2dd284:case 0x2d91c4:case 0x315c34:
            if(empty(arguments))return effect(FrameEffectKind::setup_deferred);
            break;
        case 0x2d60d0:case 0x3211f0:case 0x31acd0:
            if(types<Address>(arguments))return effect(FrameEffectKind::game_deferred);
            break;
        case 0x2e5b7c:if(types<Address,float>(arguments))return supplied(false);
            break;
        case 0x2e0af0:if(empty(arguments))return supplied(ReI32(input.width));
            break;
        case 0x2e09f0:if(empty(arguments))return supplied(ReI32(input.height));
            break;
        case 0x2f87a4:
            if(types<Address>(arguments)) {
                report.original_target=lifecycle_state.frame.original.target;
                if(report.original_target!=lifecycle_state.client_install.record.original)return {};
                if(callbacks.original)return invoke(callbacks.original,FrameEffectKind::original_callback);
                return effect(FrameEffectKind::original_deferred);
            }
            break;
        case 0x2e069c:if(empty(arguments))return supplied(Address(conditions.player_valid?0x9b0000:0));
            break;
        case 0x2e0e4c:
            if(empty(arguments) && report.disconnected_queries<conditions.disconnected.size())
                return supplied(conditions.disconnected[report.disconnected_queries++]);
            break;
        case 0x2cce78:if(types<bool>(arguments))return effect(FrameEffectKind::game_deferred);
            break;
        case 0x2e89e4:
            if(types<Address,bool>(arguments)) {
                const auto key_cell=::re::re_get<Address>(arguments[0]);
                if (!lifecycle_state.dependencies.hotkeys.contains(key_cell)) return {};
                FrameDependencyApi dependencies_api;
                dependencies_api.input_captured_2e6744=[&]()->::re::ReOptional<bool> {
                    lifecycle_state.resources.trace.hit("FrameLifecycle::capture_boundary");
                    const auto value=record(0x2e6744,FrameEffectKind::supplied_input,{},input.keyboard_capture);
                    return value ? ::re::ReOptional<bool>(::re::re_get<bool>(*value)) : ::re::ReOptional<bool>{};
                };
                dependencies_api.key_2e5e4c=[&](ReI32 key,bool suppress)->::re::ReOptional<bool> {
                    if(key!=0x70 || suppress)return {};
                    lifecycle_state.resources.trace.hit("FrameLifecycle::F1_level_boundary");
                    const ::re::ReArray<UnityValue,2> key_arguments{key,suppress};
                    const auto value=record(0x2e5e4c,FrameEffectKind::supplied_input,key_arguments,
                        input.raw_menu_hotkey && input.focused && input.menu_hotkey_down);
                    return value ? ::re::ReOptional<bool>(::re::re_get<bool>(*value)) : ::re::ReOptional<bool>{};
                };
                bool edge{};
                lifecycle_state.resources.trace.hit("frame_key_edge_2e89e4");
                report.hotkey_result=frame_key_edge_2e89e4(lifecycle_state.dependencies,dependencies_api,
                    key_cell,::re::re_get<bool>(arguments[1]),edge);
                report.hotkey_latched=lifecycle_state.dependencies.hotkeys.at(key_cell).latched;
                if(report.hotkey_result.status!=UnityStatus::complete)return {};
                return record(site,FrameEffectKind::recovered_hotkey,arguments,edge);
            }
            break;
        case 0x315924:if(empty(arguments))return supplied(Address(conditions.camera_valid?0x9c0000:0));
            break;
        case 0x2dda9c:if(empty(arguments))return supplied(Address(conditions.player_valid?0x9b0000:0));
            break;
        case 0x38a3c4:if(types<ReI32>(arguments))return supplied(Address(0x9d0000));
            break;
        case 0x316540:case 0x319024:case 0x318f34:case 0x2f9988:
            if(types<Address,Address>(arguments))return effect(FrameEffectKind::game_deferred);
            break;
        case 0x35aad8:case 0x2fb72c:case 0x35cb18:case 0x307638:
            if(types<Address>(arguments))return effect(FrameEffectKind::game_deferred);
            break;
        case 0x36f788:if(empty(arguments))return effect(FrameEffectKind::game_deferred);
            break;
        case 0x3098a4:
            if(types<Address>(arguments)) {
                auto value=invoke(callbacks.esp,FrameEffectKind::esp_callback);
                report.content=bool(value);return value;
            }
            break;
        case 0x35d5ac:if(types<Address>(arguments))return invoke(callbacks.menu,FrameEffectKind::menu_callback);
            break;
        case 0x3096c4:
            if(types<Address,float>(arguments)) {
                if(callbacks.splash)return invoke(callbacks.splash,FrameEffectKind::splash_callback);
                return effect(FrameEffectKind::game_deferred);
            }
            break;
        default:break;
        }
        return {};
    };
    Rva rejected_export{};
    api.finalized_draw_data_3924bc=[&]()->::re::ReOptional<UnityDrawData> {
        if(callbacks.before_finalize)callbacks.before_finalize(routed_input);
        UnityDrawData data;data.display_size=lifecycle_state.backend.io.display_size;
        for(const auto key:lifecycle_state.resources.presentation_order()) {
            const auto& list=lifecycle_state.resources.draw.lists.at(key);
            for(ReI32 command_index=0;command_index<list.commands.size;++command_index) {
                const auto& draw_command=list.commands.at(command_index);
                if(draw_command.callback || (draw_command.element_count && draw_command.texture!=Resources::texture) ||
                    !::re::re_all_of(draw_command.clip.begin(),draw_command.clip.end(),[](float coordinate){return ::re::re_isfinite(coordinate);})) {
                    rejected_export=0x3924bc;return {};
                }
            }
            data.lists.push_back(draw_core_geometry(list));
            data.command_lists.push_back(draw_core_render_commands(list));
            report.exported_lists.push_back(key);
            report.vertices+=data.lists.back().vertices.size();
            report.indices+=data.lists.back().indices.size();
            report.commands+=data.lists.back().commands.size();
        }
        if(report.vertices>INT32_MAX || report.indices>INT32_MAX) {rejected_export=0x3924bc;return {};}
        data.total_vertices=ReI32(report.vertices);data.total_indices=ReI32(report.indices);
        if(!record(0x3924bc,FrameEffectKind::finalized_owned_data,{}))return {};
        report.finalized=true;return data;
    };
    lifecycle_state.resources.trace.hit("replay_unity_frame_2f8574");
    report.result=replay_unity_frame_2f8574(lifecycle_state.frame,lifecycle_state.backend,api,{},0x9e0000,0);
    if(report.hotkey_result.status!=UnityStatus::complete)
        report.result={report.hotkey_result.status,report.hotkey_result.stopped_at,false};
    if(rejected_export)report.result={UnityStatus::malformed_input,rejected_export,false};
    report.io=lifecycle_state.backend.io;report.menu_open=lifecycle_state.frame.menu_open;
    if(report.finalized)lifecycle_state.resources.trace.hit("FrameLifecycle::finalized_owned_data");
    if(report.result.submitted)lifecycle_state.resources.trace.hit("FrameLifecycle::recorded_submission");
    return report;
}
}
