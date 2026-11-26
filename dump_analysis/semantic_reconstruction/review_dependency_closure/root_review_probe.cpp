#include "game_root_domain_bindings.hpp"
#include <iostream>
using namespace rust_internal_re;
void check(bool v){if(!v)throw std::runtime_error("independent root probe");}
template<class T>void put(Snapshot& s,Address p,T v){check(s.write(p,v));}
int main(){
 Snapshot globals{0,std::vector<std::byte>(0x420000)};
 constexpr Address assembly=0x100000,cell=assembly+0xf069320,klass=cell+0x100,fields=cell+0x300,object=cell+0x500;
 Snapshot game{cell,std::vector<std::byte>(0x1000)};
 put(globals,0x3d6f00,assembly);put(globals,0x3d5e60,Address(11));
 GameRootEnvironment env{0,0x180000,64,{}};GameRootEffects fx;unsigned observed=0,local_calls=0;
 fx.observe_context=[&](const MetadataWrapperCall& c){++observed;check(c.wrapper==0x2dda9c&&c.target==assembly+0x5458c90&&c.dispatcher==11);check(globals.read<unsigned>(0x3d6f10)==3);put(globals,0x3d5e60,Address(22));};
 fx.local_player=[&](const MetadataWrapperCall& c){++local_calls;check(c.dispatcher==22&&c.executor==0x2dda18&&c.context==0x3d6f20);check(globals.read<Address>(c.context+0x80)==0);return object;};
 auto a=game_root_local_player_2dda9c(globals,env,fx);auto b=game_root_local_player_2dda9c(globals,env,fx);check(a.status==GameBaseStatus::complete&&b.value==object&&observed==1&&local_calls==2);
 put(game,cell,klass);put(game,klass+0xb8,fields);put(game,fields+0x38,object);put(game,fields+0x20,object);put(game,object+0x20,std::uint8_t(0xfe));
 fx.metadata.domain_get_33479c=[](){return Address(1);};fx.metadata.assemblies_33480c=[](Address){return std::vector<Address>{2};};fx.metadata.assembly_image_3344b0=[](Address){return Address(3);};
 fx.metadata.class_from_name_334528=[&](Address,Address ns,Address name){check(globals.read<char>(ns)==char(0)&&globals.read<char>(name)==char('M'));return klass;};
 check(game_root_camera_2e069c(globals,game,env,fx).value==object);put(game,fields+0x38,Address(0));check(game_root_camera_2e069c(globals,game,env,fx).value==0);put(game,fields+0x38,object);
 check(game_root_gate_2e0e4c(globals,game,env).value==0xfe);
 const auto tick=bind_game_roots_tick(globals,game,env,fx);check(tick.context_2e069c()==object&&tick.predicate_2e0e4c()&&tick.player_2dda9c()==object);
 const auto instant=bind_game_roots_instant(globals,game,env,fx);check(instant.local_2dda9c()==object&&instant.game.object(0x2e069c,123)==object);
 const auto raid=bind_game_roots_raid(globals,game,env,fx);check(raid.camera_2e069c()==object&&raid.player_2dda9c()==object&&raid.frame.effects.player_2e069c()==object&&raid.frame.effects.disconnected_2e0e4c()==std::optional<bool>(true));
 std::cout<<"independent roots probe PASS\n";
}
