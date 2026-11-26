#include "reconstruction.hpp"
using namespace rust_internal_re;
namespace {
// [I] Analyst-written invariant checks on owned fixtures; no sample instructions execute.
void require(bool value, re::ReStringView why) { if(!value)__builtin_trap(); }
bool near(float a,float b) { return re::re_fabsf(a-b)<0.0001f; }
void check_sample_math() {
    // [C] Independent binary32 reference arithmetic from 0x2e3c88 byte operations.
    // [I] Expected bits are recorded in dump_analysis/semantic_reconstruction/math_reference.json.
    require(re::re_bit_cast<ReU32>(sample_sqrt_2e3c88(0))==0x1f1edc1cu,"sample square root of zero is tiny positive");
    require(re::re_bit_cast<ReU32>(sample_sqrt_2e3c88(1))==0x3f800025u,"sample inverse-root Newton arithmetic");
    require(re::re_bit_cast<ReU32>(length(Vec2{3,4}))==0x40a00026u,"2D magnitude uses approximate root thunk");
    require(re::re_bit_cast<ReU32>(length(Vec3{6.5f,0,0}))==0x40d0003cu,"3D magnitude exceeds ideal boundary");
}
void check_hook_replay() {
    constexpr Address base=0x1000000;
    Snapshot image(base,re::ReVector<ReByte>(0x4000));
    constexpr Address method=base+0x80,original=base+0x2800,detour=base+0x2900,klass=base+0x200;
    require(image.write(method,original),"fixture write");
    HookRecord r{};
    require(install_method_info_copy(image,r,method,detour),"method pointer swap");
    require(r.original==original&&r.kind==1&&r.method_info==method,"saved original record");
    require(image.read<Address>(method)==detour,"copied MethodInfo cell");
    require(install_method_info_copy(image,r,0,0),"initialized record guard");
    require(image.read<Address>(method)==detour,"guard prevents reinstallation");
    require(image.write(klass+0x71,original),"unaligned scan fixture");
    HookRecord v{};
    require(install_class_scan_copy(image,v,klass,original,detour),"byte-wise class scan");
    require(v.replaced_cell==klass+0x71&&v.original==original&&v.kind==2,"unaligned pointer cell recorded");
    require(image.write(klass+0x328,original),"entry-table fixture");
    HookRecord t{};
    require(!install_entry_table_copy(image,t,klass,original,detour,0x328),"literal entry-table branch rejects normal-range code pointer");
    require(image.read<Address>(klass+0x328)==original && t.kind==0,"rejected entry remains unchanged");
    require(!sample_pointer_range(0)&&!sample_pointer_range(0xfffff)&&sample_pointer_range(base),"pointer predicate boundaries");
    const re::ReArray<CodeRegion, 2> regions{CodeRegion{original,original+0x100,true,true,true},CodeRegion{detour,detour+0x100,true,false,false}};
    const auto finding=inspect_dispatch_pointer(detour,original,regions);
    require(finding.differs_from_expected&&finding.outside_known_modules&&finding.unbacked_executable,"pointer provenance");
    require(hook_definitions().size()==15,"15 definitions");
    for(const auto& h:hook_definitions())require(!describe_detour(h.detour,{}).empty(),"each detour has a semantic description");
}
void check_geometry() {
    DrawList a,b;
    a.vertices.resize(3);a.indices={0,1,2};a.commands={{0,0,3}};
    b.vertices.resize(4);b.indices={0,1,2,2,3,0};b.commands={{1,3,3}};
    const re::ReArray<DrawList, 2> lists{a,b};
    auto mesh=flatten_geometry_3b4250(lists);
    require(mesh.vertices.size()==7&&mesh.indices.size()==9&&mesh.submeshes.size()==2,"flattened buffer sizes");
    require(mesh.submeshes[1].base_vertex==4&&mesh.submeshes[1].index_start==6,"per-list vertex/index bases");
    b.commands[0].element_count=99;
    bool rejected=false;{const re::ReArray<DrawList, 1> bad{b};(void)flatten_geometry_3b4250(bad);}
    require(rejected,"malformed draw range rejected");
}
void check_prediction() {
    TrajectoryParameters p{100,0,1,1};
    auto table=integrate_2e3734_from_velocity(p,{100,0});
    require(near(simulate_2e3734(p,0).horizontal.back(),1000),"angle preprocessing at zero");
    require(near(simulate_2e3734(p,3.141592653589793).horizontal.back(),0),"negative-x fallback");
    const float dt=1.0f/32;
    require(near(table.horizontal[0],100*dt)&&near(table.vertical[0],0),"2D stores after position step");
    require(near(table.vertical[1],-9.81f*dt*dt),"gravity before next position step");
    require(near(table.horizontal.back(),1000)&&table.first_qualifying_step==4,"320-step horizon and qualifying time");
    p.drag=1;
    auto drag=integrate_2e3734_from_velocity(p,{100,0});
    require(near(drag.horizontal[1],100*dt+100*(1-dt)*dt),"drag integration order");
    auto reference=integrate_reference_prefix_2e2474({3,7,4},{0,0,0},1);
    require(near(reference.horizontal[0],5)&&near(reference.vertical[0],7),"reference stores before position advance");
    require(near(reference.vertical[1],7)&&reference.vertical[2]<7,"reference gravity sample order");
}
void check_entity_snapshot() {
    constexpr Address b=0x1000000;
    Snapshot im(b,re::ReVector<ReByte>(4096));
    require(im.write(b+0x110,Address(b+0x200))&&im.write(b+0x118,ReU32(2)),"collection fixture");
    require(im.write(b+0x220,Address(b+0x500))&&im.write(b+0x228,Address(b+0x600)),"array fixture");
    auto list=enumerate_array_31acd0(im,b+0x100);
    require(list.count==2&&list.entities[1]==b+0x600,"entity array layout");
    require(enumerate_array_31acd0(im,b+0x100,1).count==0,"untrusted count bound");
    require(apparent_team_getter_2cd32c()==0,"confirmed constant-zero getter");
    require(!bone_transform_368c60(im,b+0x500,-1),"negative bone guard");
    Snapshot handles(b,re::ReVector<ReByte>(0x4000));
    require(handles.write(b+0x20,ReU8(2))&&handles.write(b+0x1c,ReU32(2)),"handle header");
    require(handles.write(b+0x10,Address(b+0x1000))&&handles.write(b+0x1000,ReU32(1)),"handle bitmap");
    require(handles.write(b+0x28,Address(b+0x800)),"direct handle slot");
    require(resolve_reference_315bd0(handles,b+0x28)==b+0x800,"allocated direct handle");
    require(resolve_reference_315bd0(handles,b+0x30)==0,"unallocated handle rejected");
    require(handles.write(b+0x20,ReU8(1))&&handles.write(b+0x28,ReU32(0xffffff0f)),"complemented handle slot");
    require(resolve_reference_315bd0(handles,b+0x28)==0xf0,"complemented 32-bit handle zero-extends");

}
void check_pe_and_unwind() {
    constexpr Address b=0x180000000;
    Snapshot im(b,re::ReVector<ReByte>(8192));
    auto put=[&](ReUSize offset,auto value){require(im.write(b+offset,value),"PE fixture write");};
    put(0,ReU16(0x5a4d));put(0x3c,ReU32(0x80));put(0x80,ReU32(0x4550));put(0x98,ReU16(0x20b));
    put(0x108,ReU32(0x500));put(0x10c,ReU32(0x100));
    put(0x120,ReU32(0x1000));put(0x124,ReU32(12));
    put(0x514,ReU32(1));put(0x518,ReU32(1));put(0x51c,ReU32(0x600));put(0x520,ReU32(0x610));put(0x524,ReU32(0x620));
    put(0x600,ReU32(0x300));put(0x610,ReU32(0x650));put(0x620,ReU16(0));
    const re::ReString name="BaseThreadInitThunk";
    for(ReUSize i=0;i<=name.size();++i)put(0x650+i,char(i<name.size()?name[i]:0));
    put(0x1000,RuntimeFunction{0x300,0x340,0x1200});
    put(0x1200,ReU8(1));put(0x1202,ReU8(2));put(0x1205,ReU8(0x32));put(0x1207,ReU8(0));
    require(find_export(im,name)==b+0x300,"export resolution");
    require(find_runtime_function(im,b+0x310).has_value(),"runtime-function range lookup");
    require(!find_runtime_function(im,b+0x340),"exclusive runtime-function end");
    auto u=summarize_unwind(im,0x1200);
    require(u.complete&&u.stack_bytes==40,"unwind allocation + pushed register");
    auto literal=analyze_sample_unwind_2ce3dc(im,0x1200);
    require(literal.complete&&literal.returned_size==40&&literal.output_accumulator==40,"sample ordinary allocation result");
    put(0x1202,ReU8(1));put(0x1205,ReU8(0x0a));
    auto machine=analyze_sample_unwind_2ce3dc(im,0x1200);
    require(machine.complete&&machine.returned_size==0x40,"sample machine-frame hexadecimal allowance");
    require(summarize_unwind(im,0x1200).stack_bytes==40,"separate conventional machine-frame summary");
    put(0x1205,ReU8(0x40));
    auto refused=analyze_sample_unwind_2ce3dc(im,0x1200);
    require(refused.complete&&refused.rejected_rsp_encoding&&refused.returned_size==0,"sample refuses rsp push encoding");
    put(0x1202,ReU8(3));put(0x1205,ReU8(0x01));
    put(0x1206,ReU16(0x1201));put(0x1208,ReU16(1));
    require(analyze_sample_unwind_2ce3dc(im,0x1200).returned_size==0x11201,"sample chooses allocation form using operand byte");
    put(0x1202,ReU8(2));put(0x1205,ReU8(0x32));put(0x1207,ReU8(0));

    put(0x1200,ReU8(0x21));
    require(!summarize_unwind(im,0x1200).complete,"chained metadata remains explicit");
    put(0x1210,ReU32(0x1300));
    put(0x1300,ReU8(1));put(0x1302,ReU8(1));put(0x1305,ReU8(2));
    auto chained=analyze_sample_unwind_2ce3dc(im,0x1200);
    require(chained.complete&&chained.entries_visited==2&&chained.returned_size==8,"sample resets accumulator on chained entry");
    put(0x1300,ReU8(0x21));put(0x1310,ReU32(0x1200));
    require(!analyze_sample_unwind_2ce3dc(im,0x1200).complete,"cyclic metadata rejected by analysis bound");

}
void check_tick_model() {
    TickAnalysisInput p{};p.original_result=true;p.context_valid=true;
    require(analyze_tick_32cea8(p).return_value&&!analyze_tick_32cea8(p).refresh_timestamp,"caller filter preserves original");
    p.matching_caller=true;p.manipulation_active=true;p.attempt_desync=true;p.elapsed_since_last_refresh=0.2f;
    auto delayed=analyze_tick_32cea8(p);
    require(!delayed.return_value&&!delayed.refresh_timestamp,"desync early return");
    p.elapsed_since_last_refresh=1;p.anti_violations=true;p.violation_option_0=true;
    require(analyze_tick_32cea8(p).restore_previous_position,"failed movement check restores prior position");
    ProjectileFields projectile{};ShotFields shot{};
    copy_observed_launch_vectors_32c0d4(projectile,shot,{1,0,0},50);
    require(near(projectile.vector16c.x,50)&&near(shot.vector20.x,50),"observed launch-vector consistency");
}
}
int main() {
    {
        check_sample_math();check_hook_replay();check_geometry();check_prediction();check_entity_snapshot();check_pe_and_unwind();check_tick_model();
        check_hook_reconstruction();check_entity_reconstruction();check_server_reconstruction();check_metadata_reconstruction();check_launcher_reconstruction();check_hit_override_reconstruction();
        check_projectile_reconstruction();
        check_aim_weapon_reconstruction();
        check_movement_reconstruction();
        check_game_base_reconstruction();
        check_snapshot_bindings();
        check_interaction_workers_reconstruction();
        check_metadata_exports();
        check_projectile_container();
        check_metadata_signatures();
        check_movement_main_reconstruction();
        check_sky_model_reconstruction();
        check_trajectory_cache_reconstruction();
        check_helicopter_aim_reconstruction();
        check_registry_reconstruction();
        check_allocation_cache_reconstruction();
        check_registry_bindings();
        check_field_getters_reconstruction();
        check_metadata_wrapper_reconstruction();
        check_unity_backend_reconstruction();
        check_interaction_backend_reconstruction();
        check_game_helpers_reconstruction();
        check_world_esp_reconstruction();
        check_hook_setup_reconstruction();
        check_native_pe_reconstruction();
        check_renderer_helpers_reconstruction();
        check_world_snapshot_bindings();
        check_drawlist_core_reconstruction();
        check_frame_dependencies_reconstruction();
        check_font_text_reconstruction();
        check_name_helpers_reconstruction();
        check_frame_game_bindings();
        check_projectile_leaf_helpers();
        check_unity_math_reconstruction();
        check_font_producer_reconstruction();
        check_draw_shapes_reconstruction();
        check_draw_shadows_reconstruction();
        check_imgui_windows_reconstruction();
        check_metadata_argument_bindings();
        check_menu_tooltip_reconstruction();
        check_font_builder_reconstruction();
        check_menu_color_picker_reconstruction();
        check_imgui_navigation_reconstruction();
        check_imgui_window_details_reconstruction();
        check_game_root_helpers();
        check_game_root_domain_bindings();
        check_menu_layout_channels();
        check_game_aux_helpers_reconstruction();
        check_imgui_text_input_reconstruction();
        check_font_atlas_input_reconstruction();
        check_game_field_controllers();
        check_game_runtime_wrappers_reconstruction();
        check_game_direct_wrappers_reconstruction();
        check_game_input_physics_reconstruction();
        check_game_local_literals_reconstruction();
        check_frame_world_controllers_reconstruction();
        re_base::check_offset_profile();
        re_base::check_offset_catalog();
        check_menu_controls_reconstruction();
        check_world_render_bindings();
        check_menu_render_bindings();
        check_menu_pages_reconstruction();
        check_font_builder_support();
        check_draw_meters_reconstruction();
        check_frame_residuals_reconstruction();
        check_frame_preview_reconstruction();
        check_font_frame_bindings();
        check_frame_failure_propagation();
        
    }
}
