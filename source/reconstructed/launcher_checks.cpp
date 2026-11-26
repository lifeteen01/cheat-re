#include "launcher_analysis.hpp"
#include "launcher_worker_bindings.hpp"
namespace rust_internal_re {
namespace {
void require_launcher(bool p,re::ReStringView message) {if(!p)__builtin_trap();}
bool same_orientation(Orientation a,Orientation b) {return re::re_memcmp(&a,&b,sizeof(a))==0;}
}
void check_launcher_reconstruction() {
    // [I] Orthogonal quaternion products expose argument order and component signs.
    const Orientation identity{0,0,0,1},x{1,0,0,0},y{0,1,0,0},z{0,0,1,0};
    const auto xy=multiply_orientation_373b28(x,y),yx=multiply_orientation_373b28(y,x);
    require_launcher(xy.z==1&&yx.z==-1&&xy.w==0,"orientation multiplication order");
    const auto square=multiply_orientation_373b28(z,z);
    require_launcher(square.w==-1&&square.x==0,"orientation multiplication scalar component");
    constexpr Address b=0x3000000,player=b+0x100,related=b+0x300,capture=b+0x500,launcher=b+0x700;
    Snapshot image(b,re::ReVector<ReByte>(0x1000));
    LauncherState state{identity};
    LauncherApi api;
    re::ReVector<int> order;
    api.local_player_2dda9c=[&]{order.push_back(1);return player;};
    int getters=0;
    api.related_369298=[&](Address p) {require_launcher(p==player,"launcher getter player");order.push_back(2);return ++getters==1?related:capture;};
    const Orientation raw{re::re_bit_cast<float>(0x7fc01234u),-0.0f,1,0};
    api.orientation_3739c4=[&](Address p){require_launcher(p==capture,"capture repeats related getter");order.push_back(3);return raw;};
    api.worker_instance_35d31c=[&]{order.push_back(4);return Address(0);};
    api.worker_317c3c=[&](Address worker,Address p){require_launcher(worker==0&&p==player,"worker called even with null singleton result");require_launcher(same_orientation(state.saved_3d7030,raw),"raw capture precedes worker");order.push_back(5);};
    api.original=[&](Address p){require_launcher(p==launcher,"original launcher argument");order.push_back(6);};
    api.restore.rotation_373c60=[&](Address p){require_launcher(p==related,"restore uses first related object");order.push_back(7);return identity;};
    api.restore.inverse_3738cc=[&](Orientation p){require_launcher(p.w==1,"inverse boundary input");order.push_back(8);return identity;};
    const auto result=replay_launcher_2ddb10(image,state,launcher,api);
    require_launcher(result.status==LauncherStatus::complete&&result.saved&&result.worker_called&&result.original_called&&result.orientation_written,"launcher full callback sequence");
    require_launcher(order==re::ReVector<int>({1,2,2,3,4,5,6,7,8}),"launcher save/worker/original/restore ordering");
    require_launcher(same_orientation(state.saved_3d7030,raw),"saved orientation retains raw bits");
    require_launcher(image.read<Orientation>(related+0x5c).has_value(),"restore wrote owned object");
    order.clear();api.local_player_2dda9c=[&]{return Address(0);};
    api.related_369298=[&](Address p){require_launcher(p==0,"initial related getter receives invalid player");return related;};
    const auto invalid=replay_launcher_2ddb10(image,state,launcher,api);
    require_launcher(invalid.original_called&&!invalid.saved&&!invalid.worker_called&&!invalid.orientation_written,"invalid capture still invokes original");
    api.local_player_2dda9c=[&]{return player;};
    api.related_369298=[&](Address){return ++getters==1?related:Address(0);};getters=0;
    const auto unwritten=replay_launcher_2ddb10(image,state,launcher,api);
    require_launcher(unwritten.status==LauncherStatus::unreadable_snapshot&&!unwritten.original_called,"unwritten native temporary not replaced by invented value");
    // [C] The restore reads the shared slot after original returns, not a private backup.
    api.related_369298=[&](Address){return related;};api.orientation_3739c4=[&](Address){return identity;};
    api.worker_317c3c=[](Address,Address){};
    api.original=[&](Address){state.saved_3d7030=y;};
    const auto overwritten=replay_launcher_2ddb10(image,state,launcher,api);
    const auto restored=image.read<Orientation>(related+0x5c);
    require_launcher(overwritten.orientation_written&&restored&&restored->y==1&&restored->w==0,
                     "shared orientation overwritten during original is used for restoration");
    bool threw=false;
    api.related_369298=[&](Address){return related;};api.orientation_3739c4=[&](Address){return identity;};
    api.worker_317c3c=[&](Address,Address){order.push_back(5);};
    api.original=[](Address){{ /* FREESTANDING_TODO: was throw runtime_error("fixture original did not return") */ }};
    order.clear();
    {(void)replay_launcher_2ddb10(image,state,launcher,api);}
    require_launcher(threw&&order==re::ReVector<int>({4,5}),"restoration is not invented exception cleanup");
    const auto missing=write_orientation_373d04(image,related,identity,{});
    require_launcher(missing.status==LauncherStatus::missing_dependency&&!missing.orientation_written,"missing orientation game boundary explicit");
    Snapshot short_image(b,re::ReVector<ReByte>(0x100));
    const auto short_write=write_orientation_373d04(short_image,related,identity,api.restore);
    require_launcher(short_write.status==LauncherStatus::unreadable_snapshot,"orientation field bounds checked");
    // [I] A concrete worker stop must not become a successful original/restore.
    MovementMainState movement_state;
    require_launcher(image.write(player+0x48,Address(1)),"worker entity validity fixture");
    api.orientation_3739c4=[&](Address){return identity;};
    api.original=[](Address){};
    auto bound=bind_launch_worker_317c3c(image,movement_state,{},api);
    const auto disabled_worker=replay_launcher_2ddb10(image,state,launcher,bound);
    require_launcher(disabled_worker.status==LauncherStatus::complete&&disabled_worker.worker_called&&disabled_worker.original_called&&disabled_worker.orientation_written,"disabled concrete worker returns through original and restore");
    require_launcher(movement_state.globals.write(0x3d7e78,ReU8(1))&&movement_state.globals.write(0x3d72a0,ReU8(1)),"worker gates fixture");
    const auto stopped_worker=replay_launcher_2ddb10(image,state,launcher,bound);
    require_launcher(stopped_worker.status==LauncherStatus::missing_dependency&&stopped_worker.stopped_at==0x368a84&&stopped_worker.saved&&stopped_worker.worker_called&&!stopped_worker.original_called&&!stopped_worker.orientation_written,"concrete worker boundary retains capture and stops wrapper");
}
} // namespace rust_internal_re
