#include "hook_setup_analysis.hpp"
#include "native_pe_analysis.hpp"
#include <fstream>
#include <iostream>
int main(){
 using namespace rust_internal_re;
 check_hook_setup_reconstruction();check_native_pe_reconstruction();
 std::ifstream input("/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll",std::ios::binary|std::ios::ate);
 if(!input)throw std::runtime_error("preserved input unavailable");
 const auto size=input.tellg();input.seekg(0);
 std::vector<std::byte> bytes(static_cast<std::size_t>(size));
 input.read(reinterpret_cast<char*>(bytes.data()),size);
 if(!input)throw std::runtime_error("preserved input short read");
 Snapshot owned(0x1000000,std::move(bytes));HookSetupEnvironment env{owned.base(),0,owned.base()+0x410000,1024,{100000,4096}};
 HookSetupEffects effects;effects.reserve_owned=[](std::size_t){return Address{};};HookSetupState state;
 const auto result=initialize_hooks_315c34(owned,state,env,effects);
 if(result.status!=GameBaseStatus::missing_boundary||result.bytes_consumed!=0xea5e||state.codes.size()!=10000)
  throw std::runtime_error("actual embedded list fixture mismatch");
 std::cout<<"PASS hook setup and native PE fixtures; preserved embedded list10000 entries\n";
}
