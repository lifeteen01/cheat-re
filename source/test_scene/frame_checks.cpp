#include "frame.hpp"
#include "scene.hpp"

namespace owned_scene {
namespace {
void require(bool value,const char* message) {
    if(!value)__builtin_trap();
}
ReUSize count(const FrameReport& report,re::Rva site) {
    return ReUSize(::re::re_count_if(report.effects.begin(),report.effects.end(),
        [site](const FrameEffect& effect){return effect.site==site;}));
}
ReUSize at(const FrameReport& report,re::Rva site) {
    const auto it=::re::re_find_if(report.effects.begin(),report.effects.end(),
        [site](const FrameEffect& effect){return effect.site==site;});
    require(it!=report.effects.end(),"frame expected effect absent");
    return ReUSize(it-report.effects.begin());
}
void check_owned_client_install() {
    const auto installed=initialize_owned_client(OwnedClientScenario::available,true);
    require(installed.result.status==re::GameBaseStatus::complete && installed.result.methods_cached==1 &&
            installed.signature_method==installed.method,"Client bootstrap did not traverse real owned metadata");
    require(installed.result.installations.size()==1 && installed.result.installations.front().site==0x3621f2 &&
            installed.result.installations.front().installed && installed.record.kind==1 &&
            installed.record.method_info==installed.method && installed.record.original==installed.original_before &&
            installed.record.detour==installed.module+0x2f8574 && installed.method_after==installed.record.detour &&
            installed.opaque_preserved,"Client copied installer lost record or patch provenance");
    require(installed.stored_game_base==installed.module+0x490000 && installed.directory=="C:\\Spotify" &&
            installed.configuration=="DefaultCfg.bin","Client initializer ordered values missing");
    require(installed.repeated && installed.repeated_result.status==re::GameBaseStatus::complete &&
            installed.repeated_result.methods_cached==1 && installed.repeated_record.kind==1 &&
            installed.repeated_record.original==installed.original_before &&
            installed.repeated_record.method_info==installed.method &&
            installed.repeated_record.detour==installed.record.detour,
            "Repeated Client install replaced saved original with detour");
    for(const auto scenario:{OwnedClientScenario::missing_class,OwnedClientScenario::missing_method}) {
        const auto missing=initialize_owned_client(scenario);
        require(missing.result.status==re::GameBaseStatus::complete && missing.result.methods_cached==1 &&
                missing.result.installations.size()==1 && !missing.result.installations.front().installed &&
                !missing.record.kind && missing.method_after==missing.original_before,
                "Client class/method miss fabricated an installation");
    }
    const auto missing_metadata=initialize_owned_client(OwnedClientScenario::missing_metadata);
    require(missing_metadata.result.status==re::GameBaseStatus::missing_boundary &&
            missing_metadata.result.site==0x334cd8 && missing_metadata.result.installations.empty() &&
            missing_metadata.stored_game_base==missing_metadata.module+0x490000 &&
            missing_metadata.directory.empty() && missing_metadata.method_after==missing_metadata.original_before,
            "Missing Client metadata did not preserve the exact initializer prefix");
    const auto missing_module=initialize_owned_client(OwnedClientScenario::missing_module);
    require(missing_module.result.status==re::GameBaseStatus::missing_boundary &&
            missing_module.result.site==0x36213b && !missing_module.stored_game_base &&
            missing_module.result.installations.empty(),"Missing Client module was fabricated");
    const auto zero=initialize_owned_client(OwnedClientScenario::zero_original);
    require(zero.result.status==re::GameBaseStatus::complete && zero.record.kind==1 &&
            !zero.record.original && zero.method_after==zero.record.detour,
            "Copied installer must preserve its zero-original behavior");
}
void check_hotkey_controller() {
    re::FrameDependencyState dependencies;
    dependencies.hotkeys.insert(0x3ef7d8,re::FrameHotkey{0x70,false});
    re::FrameDependencyApi api;
    bool captured{},down{},edge{};
    ReUSize key_queries{};
    api.input_captured_2e6744=[&]()->::re::ReOptional<bool>{return captured;};
    api.key_2e5e4c=[&](ReI32 key,bool suppress)->::re::ReOptional<bool>{
        ++key_queries;
        if(key!=0x70 || suppress)return {};
        return down;
    };
    auto run=[&](bool respect_capture) {
        return re::frame_key_edge_2e89e4(dependencies,api,0x3ef7d8,respect_capture,edge);
    };
    down=true;
    require(run(true).status==re::UnityStatus::complete && edge,"hotkey rising edge absent");
    require(run(true).status==re::UnityStatus::complete && !edge,"hotkey held level repeated edge");
    captured=true;down=false;
    const auto queries_before=key_queries;
    require(run(true).status==re::UnityStatus::complete && !edge &&
            dependencies.hotkeys.at(0x3ef7d8).latched && key_queries==queries_before,
            "capture suppression consumed release or changed persistent latch history");
    captured=false;down=true;
    require(run(true).status==re::UnityStatus::complete && !edge,"capture cleared held latch");
    down=false;run(true);down=true;run(true);
    require(edge,"release/repress did not rearm recovered latch");
    captured=true;down=false;run(false);
    require(!dependencies.hotkeys.at(0x3ef7d8).latched,"ignore-capture branch failed to consume release");
    down=true;run(false);require(edge,"ignore-capture branch suppressed rising edge");
    dependencies.hotkeys.at(0x3ef7d8).key=-1;
    require(run(false).status==re::UnityStatus::missing_dependency &&
            dependencies.hotkeys.at(0x3ef7d8).latched,"invalid bound key fabricated level");
    dependencies.hotkeys.at(0x3ef7d8).key=0x70;
    api.key_2e5e4c={};
    require(run(false).status==re::UnityStatus::missing_dependency &&
            dependencies.hotkeys.at(0x3ef7d8).latched,"missing level dependency lost latch");
    api.input_captured_2e6744={};
    require(run(true).stopped_at==0x2e6744,"missing capture dependency fabricated input");
}
void check_raw_frame_hotkey() {
    Resources resources;FrameLifecycle lifecycle(resources);Input input;
    input.raw_menu_hotkey=true;
    FrameCallbacks callbacks;
    callbacks.esp=[](const Input&){};
    callbacks.menu=[](const Input&){};
    auto run=[&] {resources.reset(input.width,input.height);return lifecycle.frame(input,callbacks);};
    ::re::ReVector<int> preparation_order;
    callbacks.prepare_ui=[&](const Input& routed) {
        require(routed.menu_open==!input.menu_hotkey_down && routed.width==input.width,
                "prepare UI did not receive recovered menu state and routed IO");
        preparation_order.push_back(1);return true;
    };
    callbacks.esp=[&](const Input&){preparation_order.push_back(2);};
    callbacks.menu=[&](const Input&){preparation_order.push_back(3);};
    require(run().menu_open,"initial menu state absent");
    input.menu_hotkey_down=true;
    auto rising=run();
    require(preparation_order==::re::ReVector<int>({1,2,3,1,2,3}),"prepare UI once/order changed");
    callbacks.prepare_ui={};
    require(!rising.menu_open && rising.hotkey_latched && count(rising,0x2e89e4)==1 &&
            count(rising,0x2e6744)==1 && count(rising,0x2e5e4c)==1,"raw F1 failed to execute real controller");
    require(!run().menu_open,"held raw F1 repeated toggle");
    require(resources.trace.calls.at("frame_key_edge_2e89e4")==3 &&
            resources.trace.calls.at("FrameLifecycle::F1_level_boundary")==3,
            "key trace counted entries that did not execute");
    input.menu_open=true;
    require(!run().menu_open,"raw mode consumed external desired menu state");
    input.menu_hotkey_down=false;
    require(!run().hotkey_latched,"raw release did not clear persistent key cell");
    input.keyboard_capture=true;input.menu_hotkey_down=true;
    require(run().menu_open,"recovered frame false capture argument was replaced by host policy");
    input.focused=false;
    require(!run().hotkey_latched,"unfocused host level failed to release latch");
    input.menu_hotkey_down=false;input.width=0;
    const auto minimized=run();
    require(minimized.minimized && count(minimized,0x2e89e4)==0 && minimized.menu_open,
            "minimized host cancellation executed key controller or changed menu state");
    input.width=960;input.focused=true;run();
    input.menu_hotkey_down=true;require(!run().menu_open,"restore release/repress did not toggle");
    input.raw_menu_hotkey=false;input.menu_open=true;
    const auto external=run();
    require(external.menu_open && !external.hotkey_latched &&
            resources.trace.calls.at("FrameLifecycle::external_menu_request")==1,
            "external desired-open request became counterfeit key edge");
    input.raw_menu_hotkey=true;
    callbacks.accept_effect=[](const FrameEffect& effect){return effect.site!=0x2e5e4c;};
    const auto missing=run();
    require(missing.result.status==re::UnityStatus::missing_dependency && missing.result.stopped_at==0x2e5e4c &&
            !missing.hotkey_latched && !missing.content,"refused key boundary fabricated edge or continued content");
    callbacks.accept_effect={};
    callbacks.prepare_ui=[](const Input&){return false;};
    const auto refused=run();
    require(refused.result.status==re::UnityStatus::missing_dependency && refused.result.stopped_at==0x397da4 &&
            !refused.content && !refused.io_routed && refused.preparation_error=="UI preparation refused",
            "refused preparation continued to content or lost diagnostic");
    /* Freestanding: exception-based preparation test removed -- callback would trap */
    /*
    callbacks.prepare_ui=[](const Input&)->bool{__builtin_trap(); return false;};
    const auto thrown=run();
    require(thrown.result.status==re::UnityStatus::missing_dependency && thrown.result.stopped_at==0x397da4 &&
            !thrown.content && thrown.preparation_error=="owned preparation failure",
            "throwing preparation fabricated renderer success or lost dependency diagnostic");
    */
}
}
void check_frame_lifecycle() {
    check_owned_client_install();
    check_hotkey_controller();
    check_raw_frame_hotkey();
    Resources resources;FrameLifecycle lifecycle(resources);Input input;
    input.mouse={100,120};input.down=true;input.delta=0.125f;
    ::re::ReVector<int> order;bool routed_open{};
    FrameCallbacks callbacks;
    callbacks.original=[&](const Input&){order.push_back(1);};
    callbacks.esp=[&](const Input&) {
        order.push_back(2);
        re::draw_core_reserve_3a719c(resources.draw.lists.at(Resources::esp_list),6,4);
        re::draw_core_rectangle_3a7020(resources.draw.lists.at(Resources::esp_list),
            {10,10},{40,40},{0,0},{0,0},0xffffffffu);
    };
    callbacks.menu=[&](const Input& routed) {order.push_back(3);routed_open=routed.menu_open;};
    auto run=[&](const FrameConditions& conditions_for_frame=FrameConditions{}) {
        order.clear();resources.reset(input.width,input.height);
        return lifecycle.frame(input,callbacks,conditions_for_frame);
    };
    auto first=run();
    require(first.result.status==re::UnityStatus::complete && first.result.submitted,
            "frame owned submit controller failed");
    require(order==::re::ReVector<int>({1,2,3}),"original/ESP/menu real callback order");
    require(count(first,0x2dd284)==1 && count(first,0x2d91c4)==1 && count(first,0x315c34)==1,
            "frame initial setup not once");
    require(first.disconnected_queries==3 && first.content && first.finalized && !first.gpu_executed,
            "frame boundary/coverage flags");
    require(first.client_install.signature_method==first.client_install.method &&
            first.client_install.result.methods_cached==1 &&
            first.original_target==first.client_install.record.original &&
            first.original_target==first.client_install.original_before && first.ordinary_context_boundary,
            "Frame original did not come from the actual copied Client installer");
    require(first.io.delta_time==input.delta && first.io.mouse_position.x==100 &&
            first.io.mouse_position.y==120 && first.io.mouse_buttons[0],"recovered IO not consumed");
    require(first.vertices==4 && first.indices==6 && first.commands>=1,
            "owned geometry export counts");
    require(at(first,0x2f87a4)<at(first,0x2e069c) && at(first,0x3098a4)<at(first,0x35d5ac) &&
            at(first,0x35d5ac)<at(first,0x390994) && at(first,0x390994)<at(first,0x390cec) &&
            at(first,0x390cec)<at(first,0x398d84) && at(first,0x398d84)<at(first,0x3924bc) &&
            at(first,0x3924bc)<at(first,0x3b3f38) && at(first,0x3b3f38)<at(first,0x3b2004),
            "frame finalization/upload order");
    const auto upload=::re::re_find_if(first.effects.begin(),first.effects.end(),
        [](const FrameEffect& effect){return effect.site==0x3b3f38;});
    require(::re::re_get<re::UnityVertexBytes>(upload->arguments.at(2)).values.size()==4,
            "owned upload lost real vertices");
    auto second=run();require(count(second,0x2dd284)==0,"frame repeated setup");
    require(count(second,0x3b40d0)==0,"frame spurious unchanged resize");
    input.menu_open=false;auto closed=run();
    require(!closed.menu_open && !routed_open && count(closed,0x35d5ac)==1,"menu toggle routing close");
    input.menu_open=true;auto opened=run();require(opened.menu_open && routed_open,"menu toggle routing reopen");
    FrameConditions conditions;conditions.disconnected={false,true,false};
    auto changing=run(conditions);
    require(changing.disconnected_queries==3 && changing.result.submitted,"disconnected getters collapsed");
    conditions.disconnected={true,false,true};auto disconnected=run(conditions);
    require(order==::re::ReVector<int>({1}) && disconnected.disconnected_queries==3 &&
            !disconnected.content && !disconnected.finalized && !disconnected.result.submitted &&
            !count(disconnected,0x315924),"disconnected gate did not return after original");
    conditions={};conditions.camera_valid=false;auto camera=run(conditions);
    require(order==::re::ReVector<int>({1}) && !camera.finalized && !count(camera,0x3b2a30),
            "camera gate ran UI/IO");
    conditions={};conditions.player_valid=false;auto player=run(conditions);
    require(player.result.submitted && order==::re::ReVector<int>({1,2,3}) &&
            !count(player,0x316540) && !count(player,0x319024) && !count(player,0x318f34) &&
            !count(player,0x2f9988),"invalid player must skip workers but retain UI");
    conditions={};conditions.start_splash_seconds=0;
    auto splash=run(conditions);
    require(!splash.content && splash.finalized && count(splash,0x3096c4)==1 &&
            !count(splash,0x3098a4) && !count(splash,0x35d5ac),"splash/content gate");
    conditions.start_splash_seconds=5;auto transitioned=run(conditions);
    require(transitioned.content && transitioned.result.submitted,"splash transition missing content");
    input.width=800;input.height=600;auto resized=run();
    require(count(resized,0x3b40d0)==1 && count(resized,0x3b39dc)==1 && count(resized,0x3b3dbc)==1 &&
            resized.io.display_size.x==800 && resized.io.display_size.y==600,"owned resize controller");
    input.width=0;auto minimized=run();
    require(minimized.minimized && order==::re::ReVector<int>({3}) && minimized.effects.empty() &&
            !minimized.finalized && !minimized.result.submitted,"minimized menu cancellation");
    input.width=800;auto restored=run();require(restored.result.submitted,"minimize restore");
    FrameLifecycle retry(resources);bool reject=true;
    callbacks.accept_effect=[&](const FrameEffect& effect){return !(reject && effect.site==0x2d91c4);};
    resources.reset(input.width,input.height);auto failed=retry.frame(input,callbacks);
    require(failed.result.status==re::UnityStatus::missing_dependency && failed.result.stopped_at==0x2d91c4 &&
            !count(failed,0x315c34),"setup failure was fabricated as success");
    reject=false;resources.reset(input.width,input.height);auto retried=retry.frame(input,callbacks);
    require(retried.result.submitted && count(retried,0x2dd284)==1 && count(retried,0x315c34)==1,
            "setup retry missing");
    callbacks.accept_effect=[](const FrameEffect& effect){return effect.site!=0x3b2004;};
    auto refused=run();
    require(refused.content && refused.finalized && !refused.result.submitted &&
            refused.result.status==re::UnityStatus::missing_dependency && refused.result.stopped_at==0x3b2004,
            "GPU recording refusal was swallowed");
    callbacks.accept_effect={};
    auto original_esp=callbacks.esp;
    callbacks.esp=[&](const Input& routed) {
        original_esp(routed);resources.draw.lists.at(Resources::esp_list).commands.at(0).callback=0x1234;
    };
    auto unsupported=run();
    require(unsupported.result.status==re::UnityStatus::malformed_input && !unsupported.result.submitted,
            "unsupported draw callback was submitted");
    for(const auto scenario:{OwnedClientScenario::missing_class,OwnedClientScenario::missing_method,
                            OwnedClientScenario::missing_metadata,OwnedClientScenario::missing_module,
                            OwnedClientScenario::zero_original}) {
        FrameLifecycle unavailable(resources,scenario);
        unsigned callback_entries{};
        FrameCallbacks unavailable_callbacks;
        unavailable_callbacks.original=unavailable_callbacks.esp=unavailable_callbacks.menu=
            [&](const Input&){++callback_entries;};
        resources.reset(input.width,input.height);
        const auto failure=unavailable.frame(input,unavailable_callbacks);
        require(failure.result.status!=re::UnityStatus::complete && !failure.result.submitted &&
                !failure.finalized && callback_entries==0,"Unavailable Client entered frame callbacks");
        if(scenario==OwnedClientScenario::zero_original)
            require(failure.result.status==re::UnityStatus::unresolved_target &&
                    failure.result.stopped_at==0x2f87a4 && failure.client_install.record.kind==1,
                    "Zero installed original must fail at the recovered original-call gate");
        else if(scenario==OwnedClientScenario::missing_class || scenario==OwnedClientScenario::missing_method)
            require(failure.result.status==re::UnityStatus::unresolved_target &&
                    failure.result.stopped_at==0x3621f2 && failure.effects.empty(),
                    "Ordinary installer false was treated as successful bootstrap");
        else
            require(failure.result.status==re::UnityStatus::missing_dependency && failure.effects.empty(),
                    "Unavailable metadata/module did not stop before frame setup");
    }
    FrameLifecycle routing(resources);
    Input host_input;
    host_input.mouse={100,120};host_input.down=false;host_input.delta=1.0f/60.0f;
    host_input.control=true;host_input.keys[0x22]=true;host_input.characters={u'Q'};
    host_input.clipboard="owned clipboard";
    FrameConditions routed_conditions;
    routed_conditions.camera_pixel_rect=re::ClipRect{17,23,640,360};
    routed_conditions.mouse_control_position=re::Vec2{37,219};
    routed_conditions.io_delta=0.125f;routed_conditions.left_button=true;
    unsigned original_entries{},ui_entries{};
    FrameCallbacks routed_callbacks;
    routed_callbacks.original=[&](const Input& original_input) {
        require(!ui_entries && original_input.width==host_input.width &&
                original_input.delta==host_input.delta && original_input.mouse.x==100 && !original_input.down,
                "Pre-IO original callback received invented recovered input");
        ++original_entries;
    };
    const auto check_routed=[&](const Input& routed) {
        require(original_entries==1 && routed.width==640 && routed.height==360 &&
                routed.mouse.x==37 && routed.mouse.y==421 && routed.delta==0.125f && routed.down,
                "UI callback did not consume actual recovered IO before entry");
        require(routed.control==host_input.control && routed.keys==host_input.keys &&
                routed.characters==host_input.characters && routed.clipboard==host_input.clipboard,
                "Host key/text boundary was replaced by fabricated Unity IO");
        ++ui_entries;
    };
    routed_callbacks.esp=routed_callbacks.menu=routed_callbacks.before_finalize=check_routed;
    resources.reset(host_input.width,host_input.height);
    const auto routed=routing.frame(host_input,routed_callbacks,routed_conditions);
    require(routed.result.status==re::UnityStatus::complete && routed.io_routed && ui_entries==3 &&
            routed.io.display_size.x==640 && routed.io.display_size.y==360 &&
            routed.io.mouse_position.x==37 && routed.io.mouse_position.y==421 &&
            routed.io.delta_time==0.125f && routed.io.mouse_buttons[0],
            "Recovered IO routing report disagrees with callback-observed input");
    require(at(routed,0x38cd28)<at(routed,0x397da4) &&
            at(routed,0x397da4)<at(routed,0x3098a4),"Recovered IO handoff ordering changed");
    routed_callbacks.accept_effect=[](const FrameEffect& effect){return effect.site!=0x397da4;};
    original_entries=ui_entries=0;
    resources.reset(host_input.width,host_input.height);
    const auto rejected_io=routing.frame(host_input,routed_callbacks,routed_conditions);
    require(rejected_io.result.status==re::UnityStatus::missing_dependency &&
            rejected_io.result.stopped_at==0x397da4 && !rejected_io.io_routed && ui_entries==0 &&
            !rejected_io.finalized,"Rejected IO handoff entered UI callbacks");
    FrameLifecycle selected_lifecycle(resources);
    FrameCallbacks selected_callbacks;
    constexpr re::Address unselected_list=0x42000;
    selected_callbacks.esp=[&](const Input&) {
        for(const auto key:{Resources::esp_list,Resources::menu_list,unselected_list}) {
            auto& list=resources.draw.lists[key];
            re::draw_core_reserve_3a719c(list,6,4);
            re::draw_core_rectangle_3a7020(list,{10,10},{40,40},{0,0},{0,0},
                key==Resources::menu_list ? 0xff0000ffu : 0xff00ff00u);
        }
        resources.draw.lists.at(unselected_list).commands.at(0).callback=0xbad;
        resources.select_lists({Resources::menu_list,Resources::esp_list});
    };
    selected_callbacks.menu=[](const Input&) {};
    resources.draw.lists[unselected_list];
    resources.reset(host_input.width,host_input.height);
    const auto selected=selected_lifecycle.frame(host_input,selected_callbacks);
    require(selected.result.status==re::UnityStatus::complete && selected.result.submitted &&
            selected.exported_lists==::re::ReVector<re::Address>({Resources::menu_list,Resources::esp_list}) &&
            selected.vertices==8 && selected.indices==12,"Frame export ignored selected drawlist order/counts");
    ::re::ReVector<const FrameEffect*> selected_uploads;
    for(const auto& effect:selected.effects)
        if(effect.site==0x3b3f38)selected_uploads.push_back(&effect);
    require(selected_uploads.size()==2 &&
            ::re::re_get<re::UnityVertexBytes>(selected_uploads[0]->arguments[2]).values==
                re::draw_core_geometry(resources.draw.lists.at(Resources::menu_list)).vertices &&
            ::re::re_get<re::UnityVertexBytes>(selected_uploads[1]->arguments[2]).values==
                re::draw_core_geometry(resources.draw.lists.at(Resources::esp_list)).vertices &&
            ::re::re_get<ReI32>(selected_uploads[0]->arguments[4])==0 &&
            ::re::re_get<ReI32>(selected_uploads[1]->arguments[4])==4,
            "Recorded upload did not preserve selected-list payloads and cumulative destinations");
}
}
