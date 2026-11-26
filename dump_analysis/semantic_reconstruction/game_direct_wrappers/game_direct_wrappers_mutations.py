from pathlib import Path
import hashlib,json,subprocess
root=Path('/home/john/Desktop/cheat_re');src=root/'source/reconstructed';out=Path(__file__).parent
cache=out/'objects_strict';scratch=out/'mutations';scratch.mkdir(exist_ok=True)
tc=root/'dump_analysis/semantic_reconstruction/toolchain';compiler=str(tc/'usr/bin/x86_64-linux-gnu-g++-15')
flags=json.loads((cache/'game_direct_wrappers_analysis.json').read_text())['flags']
cases=[
 ('dispatcher_bit2_order','game_direct_wrappers_analysis.cpp','s.setup_root_before_flag_two','!s.setup_root_before_flag_two',2),
 ('fixed_integer','game_direct_wrappers_controllers.cpp','std::int32_t(-50)','std::int32_t(-49)',1),
 ('substring_unneeded_terminator','game_direct_wrappers_selector.cpp','''        if (equal)
            return true;''','''        if (equal) {
            (void)read<std::uint8_t>(game, name + at + needle.size(), 0x3ca91f);
            return true;
        }''',1),
]
results=[]
for name,filename,before,after,count in cases:
 original=src/filename;data=original.read_text();assert data.count(before)==count,(name,data.count(before))
 digest=hashlib.sha256(original.read_bytes()).hexdigest();mutant=scratch/(name+'.cpp');mutant.write_text(data.replace(before,after))
 obj=scratch/(name+'.o');exe=scratch/name
 subprocess.run([compiler,*flags,'-c',str(mutant),'-o',str(obj)],check=True,capture_output=True,text=True)
 objects=[p for p in sorted(cache.glob('*.o')) if p.stem!=original.stem]
 subprocess.run([compiler,*flags,*map(str,objects),str(obj),'-Wl,--gc-sections','-o',str(exe)],check=True,capture_output=True,text=True)
 run=subprocess.run([str(exe)],capture_output=True,text=True)
 assert run.returncode!=0,(name,'mutant escaped fixtures')
 assert hashlib.sha256(original.read_bytes()).hexdigest()==digest
 results.append(dict(case=name,detected=True,returncode=run.returncode,diagnostic=run.stderr.strip(),original_sha256=digest))
(scratch/'results.json').write_text(json.dumps(results,indent=2)+'\n')
print('PASS isolated mutant detection',len(results))
