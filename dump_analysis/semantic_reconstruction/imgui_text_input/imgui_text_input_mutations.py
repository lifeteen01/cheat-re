from pathlib import Path
import hashlib,json,subprocess
root=Path('/home/john/Desktop/cheat_re');src=root/'source/reconstructed';out=Path(__file__).parent
cache=out/'objects_strict';scratch=out/'mutations';scratch.mkdir(exist_ok=True)
tc=root/'dump_analysis/semantic_reconstruction/toolchain';compiler=str(tc/'usr/bin/x86_64-linux-gnu-g++-15')
meta=json.loads((cache/'imgui_text_input_edit.json').read_text());flags=meta['flags']
cases=[
 ('ordinary_insertion','imgui_text_input_edit.cpp','''        reset_after_key(edit);
        return;
    }
    const auto [begin, end]''','''        const std::uint16_t value = std::uint16_t(code);
        (void)replace(edit, edit.cursor, edit.cursor, std::span(&value, 1), flags);
        reset_after_key(edit);
        return;
    }
    const auto [begin, end]'''),
 ('event_id_prefix','imgui_text_input_events.cpp','identifier + 1u','identifier'),
 ('stale_password_glyph','imgui_text_input_fonts.cpp','if (f.api.fonts) {','if (false) {'),
]
results=[]
for name,filename,before,after in cases:
 original=src/filename;data=original.read_text();assert data.count(before)==1,(name,data.count(before))
 digest=hashlib.sha256(original.read_bytes()).hexdigest()
 mutant=scratch/(name+'.cpp');mutant.write_text(data.replace(before,after))
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
