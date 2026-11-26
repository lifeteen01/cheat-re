#!/usr/bin/env python3
# [I] Isolated regression reversions compiled from owned scratch copies only.
from pathlib import Path
import subprocess,json,sys
root=Path('/home/john/Desktop/cheat_re');scratch=Path(__file__).parent;build=scratch/'mutations';build.mkdir(exist_ok=True);src=root/'source/reconstructed';tc=root/'dump_analysis/semantic_reconstruction/toolchain'
cxx=str(tc/'usr/bin/x86_64-linux-gnu-g++-15');flags=[f'--sysroot={tc}',f'-B{tc}/usr/lib/gcc/x86_64-linux-gnu/15/',f'-B{tc}/usr/libexec/gcc/x86_64-linux-gnu/15/','-L/usr/lib/x86_64-linux-gnu','-std=c++20','-Wall','-Wextra','-Wpedantic','-Werror','-D_GLIBCXX_ASSERTIONS','-ffp-contract=off','-O1','-ffunction-sections','-fdata-sections',f'-I{src}']
names='projectile_analysis projectile_checks projectile_container_analysis aim_weapon_analysis aim_weapon_checks helicopter_aim_analysis helicopter_aim_checks allocation_cache_analysis allocation_cache_checks metadata_analysis metadata_export_analysis metadata_wrapper_analysis registry_analysis 04_esp_entities 05_server_observable'.split()
objects={}
for file in [src/(n+'.cpp')for n in names]+[scratch/'driver.cpp']:
 obj=build/(file.stem+'.o');subprocess.run([cxx,*flags,'-c',str(file),'-o',str(obj)],check=True);objects[file.name]=obj
cases=[('P1_prepare_after_random','projectile_analysis.cpp','x.need(b.prepare_curve_32c2d9,0x32c2d9,0x32c2d9)();\n        const float curve_random=x.random(1,0x32c3ca);','const float curve_random=x.random(1,0x32c3ca);\n        x.need(b.prepare_curve_32c2d9,0x32c2d9,0x32c2d9)();'),('P2_final_ray','projectile_analysis.cpp','if(direct)ray_direction=normalized(world_point-ray_origin);','if(direct)ray_direction=normalized(x.read<Vec3>(p+0x178,0x331501)-ray_origin);'),('P3_cached_hit','projectile_analysis.cpp','(p,hit,callback_point,callback_normal);','(p,hit,direct?local_point:callback_point,direct?local_normal:callback_normal);'),('A1_atomic_angles','aim_weapon_analysis.cpp','write(s,input+0x44,desired.x,0x2fa2a4);\n        write(s,input+0x48,desired.y,0x2fa2a9);','write(s,input+0x44,desired,0x2fa2a4);'),('A2_reloaded_receiver','aim_weapon_analysis.cpp','predicate(c,0x3693b0,retained)','predicate(c,0x3693b0,state.retained_3e3e90)'),('A3_atomic_recoil','aim_weapon_analysis.cpp','write(s,recoil+0x20,factor*read<float>(s,baseline,0x36be0b),0x36be0f);\n            write(s,recoil+0x24,factor*read<float>(s,baseline+4,0x36be14),0x36be25);','write(s,recoil+0x20,read<Vec2>(s,baseline,0x36be0b)*factor,0x36be0f);'),('A4_normalized_bones','aim_weapon_analysis.cpp','scientist?(secondary_three?52:15):54','scientist?((void)secondary_three,15):54')]
cases += [
 ('C1_curve_root_after_flag','allocation_cache_analysis.cpp','const auto root=global<Address>(0x3d5e60,0x32c3a5);\n            put(0x3f7f98,flags|2,0x32c3b9);','put(0x3f7f98,flags|2,0x32c3b9);\n            const auto root=global<Address>(0x3d5e60,0x32c3a5);'),
 ('C1_allocator_root_after_flag','allocation_cache_analysis.cpp','const auto root=global<Address>(0x3d5e60,0x2e3d22);\n            put(0x3d7168,flags|2,0x2e3d36);','put(0x3d7168,flags|2,0x2e3d36);\n            const auto root=global<Address>(0x3d5e60,0x2e3d22);'),
 ('C2_curve_skip_root','allocation_cache_analysis.cpp','(void)x.global<Address>(0x3d5e60,0x32c3cf);',''),
 ('C2_allocator_skip_root','allocation_cache_analysis.cpp','(void)global<Address>(0x3d5e60,0x2e3d41);','')]
if '--cache-only' in sys.argv:cases=[c for c in cases if c[0].startswith('C')]
baseline=build/'baseline';subprocess.run([cxx,*flags,*map(str,objects.values()),'-Wl,--gc-sections','-o',str(baseline)],check=True);subprocess.run([str(baseline)],check=True)
results=[]
for name,file,before,after in cases:
 text=(src/file).read_text();assert text.count(before)==1,(name,'mutation not unique');mutated=build/(name+'.cpp');mutated.write_text(text.replace(before,after));obj=build/(name+'.o');subprocess.run([cxx,*flags,'-c',str(mutated),'-o',str(obj)],check=True)
 binary=build/name;linked=[str(obj)if key==file else str(value)for key,value in objects.items()];subprocess.run([cxx,*flags,*linked,'-Wl,--gc-sections','-o',str(binary)],check=True)
 run=subprocess.run([str(binary)],text=True,capture_output=True);assert run.returncode!=0,(name,'escaped');results.append({'reversion':name,'detected':True,'message':run.stderr.strip(),'exit_code':run.returncode});print(name+': rejected',flush=True)
(build/('cache_results.json' if '--cache-only' in sys.argv else 'results.json')).write_text(json.dumps(results,indent=2)+'\n')
