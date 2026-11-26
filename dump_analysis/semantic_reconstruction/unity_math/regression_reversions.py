#!/usr/bin/env python3
"""Compile isolated regressions; never edit the reconstructed source in place."""
from pathlib import Path
import os,subprocess,json,hashlib
root=Path(__file__).resolve().parents[3];work=Path(__file__).resolve().parent
source=root/'source/reconstructed';tool=root/'dump_analysis/semantic_reconstruction/toolchain'
original=(source/'unity_math_analysis.cpp').read_text()
mutations={
 'baseline':None,
 'root_reused_after_context':('request.dispatcher = read<Address>(env.module + 0x3d5e60, spec.effect_root);','/* mutation: retain setup root instead of reloading */'),
 'setup_flag_before_root':('request.dispatcher = read<Address>(env.module + 0x3d5e60, spec.setup_root);\n            write(env.module + spec.flags, bits | 2, spec.flag_two);','write(env.module + spec.flags, bits | 2, spec.flag_two);\n            request.dispatcher = read<Address>(env.module + 0x3d5e60, spec.setup_root);'),
 'skip_unknown_type_bounds':('range(request.context + 0xd2, 2, 0x2dea0c);','/* mutation: omit native unknown-type store bounds */'),
}
results=[]
for name,change in mutations.items():
 text=original
 if change:
  old,new=change
  assert text.count(old)==1,(name,'mutation source pattern changed')
  text=text.replace(old,new)
 folder=work/'regressions'/name;folder.mkdir(parents=True,exist_ok=True)
 (folder/'unity_math_analysis.cpp').write_text(text)
 args=[str(tool/'usr/bin/x86_64-linux-gnu-g++-15'),'-std=c++20','-Wall','-Wextra','-Wpedantic','-Werror','-D_GLIBCXX_ASSERTIONS','-ffp-contract=off','-O1',f'--sysroot={tool}',f'-B{tool}/usr/lib/gcc/x86_64-linux-gnu/15/',f'-B{tool}/usr/libexec/gcc/x86_64-linux-gnu/15/','-L/usr/lib/x86_64-linux-gnu',f'-I{source}',str(folder/'unity_math_analysis.cpp'),str(source/'unity_math_checks.cpp'),str(source/'font_producer_analysis.cpp'),str(source/'font_producer_checks.cpp'),str(source/'metadata_analysis.cpp'),str(work/'check_main.cpp'),'-o',str(folder/'checks')]
 built=subprocess.run(args,text=True,stdout=subprocess.PIPE,stderr=subprocess.STDOUT);(folder/'build.txt').write_text(built.stdout)
 assert built.returncode==0,(name,'compile failure is not a regression rejection')
 env=os.environ.copy();env['GLIBC_TUNABLES']='glibc.malloc.perturb=91'
 ran=subprocess.run([str(folder/'checks')],text=True,stdout=subprocess.PIPE,stderr=subprocess.STDOUT,env=env);(folder/'run.txt').write_text(ran.stdout)
 passed=ran.returncode==0 if name=='baseline' else ran.returncode!=0 and 'Unity math cache fixture' in ran.stdout
 results.append({'name':name,'build_exit':built.returncode,'fixture_exit':ran.returncode,'expected_outcome_observed':passed,'source_sha256':hashlib.sha256(text.encode()).hexdigest()})
 assert passed,(name,ran.stdout)
 print(name,'PASS',flush=True)
(work/'regression_reversions.json').write_text(json.dumps(results,indent=2)+'\n')
