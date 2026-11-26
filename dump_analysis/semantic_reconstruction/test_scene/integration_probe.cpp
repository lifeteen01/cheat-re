#include "scene.hpp"
#include <iostream>
int main() { try { owned_scene::Scene scene; owned_scene::Input input; for(int i=0;i<3;++i) {const auto t=scene.frame(input); std::cout<<"FRAME "<<i<<" visible="<<t.menu.visible<<" boxes="<<t.esp.boxes<<" lists="<<scene.resources.draw.lists.size()<<"\n"; for(const auto& [k,v]:t.menu.controls)std::cout<<k<<" "<<v.x<<","<<v.y<<"-"<<v.z<<","<<v.w<<"\n";} for(const auto& [k,v]:scene.resources.trace.calls)if(k.find("menu")!=std::string::npos)std::cout<<k<<"="<<v<<"\n";}catch(const std::exception& e){std::cerr<<e.what()<<"\n";return 1;}}
