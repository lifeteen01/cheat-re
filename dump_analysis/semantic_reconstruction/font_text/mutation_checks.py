#!/usr/bin/env python3
# [I] Each mutation is compiled from scratch copies; source and sample inputs untouched.
import json,subprocess
from pathlib import Path
root=Path('/home/john/Desktop/cheat_re');scratch=Path(__file__).parent;build=scratch/'mutations';build.mkdir(exist_ok=True)
tc=root/'dump_analysis/semantic_reconstruction/toolchain';src=root/'source/reconstructed'
compiler=str(tc/'usr/bin/x86_64-linux-gnu-g++-15')
flags=[f'--sysroot={tc}',f'-B{tc}/usr/lib/gcc/x86_64-linux-gnu/15/',f'-B{tc}/usr/libexec/gcc/x86_64-linux-gnu/15/','-L/usr/lib/x86_64-linux-gnu','-std=c++20','-Wall','-Wextra','-Wpedantic','-Werror','-D_GLIBCXX_ASSERTIONS','-ffp-contract=off','-O1','-ffunction-sections','-fdata-sections',f'-I{src}']
files=sorted(src.glob('font_text_*.cpp'))+[src/'renderer_helpers_font.cpp',src/'renderer_helpers_widgets.cpp',src/'drawlist_core_commands.cpp',scratch/'driver.cpp']
objects={}
for file in files:
    obj=build/(file.stem+'.o');subprocess.run([compiler,*flags,'-c',str(file),'-o',str(obj)],check=True);objects[file.name]=obj
cases=[('outer_byte_reservation','font_text_raster.cpp','bytes*6','bytes*3'),('colored_alpha','font_text_raster.cpp','q.color|0xffffff','q.color'),('rounded_reverse','font_text_atlas.cpp','if(col==2)std::swap(uv[0],uv[2]);',''),('NaN_horizontal_cull','font_text_raster.cpp','clip[2]>=x1&&x2>=clip[0]','!(clip[2]<x1)&&!(x2<clip[0])')]
results=[]
for name,file,before,after in cases:
    text=(src/file).read_text();assert text.count(before)==1,(name,'nonunique mutation')
    mutated=build/(name+'.cpp');mutated.write_text(text.replace(before,after))
    obj=build/(name+'.o');subprocess.run([compiler,*flags,'-c',str(mutated),'-o',str(obj)],check=True)
    binary=build/name;linked=[str(obj) if key==file else str(value) for key,value in objects.items()]
    subprocess.run([compiler,*flags,*linked,'-Wl,--gc-sections','-o',str(binary)],check=True)
    run=subprocess.run([str(binary)],capture_output=True,text=True)
    assert run.returncode!=0,(name,'mutation escaped fixtures')
    results.append({'mutation':name,'fixture_detected':True,'exit_code':run.returncode,'message':run.stderr.strip()});print(name+': rejected',flush=True)
(build/'results.json').write_text(json.dumps(results,indent=2)+'\n')
