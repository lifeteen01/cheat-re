"""Read-only extraction from the RVA-indexed memory-layout DLL; never load it."""
from pathlib import Path
import hashlib
import struct
import subprocess

root = Path(__file__).resolve().parents[3]
folder = Path(__file__).resolve().parent
source = root / "dump_analysis/unpacked/cheat.unpacked.dll"
blob = source.read_bytes()
ranges = [(0x2df5dc,0x2df608), (0x2e1278,0x2e12e0), (0x2e3b58,0x2e3b84),
          (0x2e3c88,0x2e3ce4), (0x2e5a44,0x2e5a54), (0x2e5a80,0x2e5b4c),
          (0x2e5bc4,0x2e5bec), (0x330830,0x330934), (0x37261c,0x372644)]
output = []
for low,high in ranges:
    path = folder / "projectile_helper_bytes.bin"
    path.write_bytes(blob[low:high])
    output.append(subprocess.check_output(["objdump","-D","-b","binary","-m","i386:x86-64",
                  "-Mintel",f"--adjust-vma={low}",str(path)],text=True))
path.unlink()
(folder / "projectile_helpers_raw.asm").write_text("\n".join(output))
verification = ["Input layout: RVA-indexed copied memory image; do not apply PE PointerToRawData.",
                "Input SHA256: "+hashlib.sha256(blob).hexdigest()]
for name,low,high in [("32c0d4",0x32c0d4,0x32cae8),("330b38",0x330b38,0x332163)]:
    count=0
    for line in (folder / (name+".asm")).read_text().splitlines():
        words=line.split()
        if not words or words[0]==";":continue
        rva=int(words[0],16)
        data=[]
        for word in words[1:]:
            if len(word)!=2 or any(c not in "0123456789abcdef" for c in word):break
            data.append(int(word,16))
        assert blob[rva:rva+len(data)]==bytes(data),hex(rva)
        count+=len(data)
    assert count==high-low
    verification.append(f"{name}: all {count} bytes match; SHA256 {hashlib.sha256(blob[low:high]).hexdigest()}")
for rva,fmt in [(0x294e34,"f"),(0x294e38,"f"),(0x2941c8,"d"),(0x2943b0,"d"),(0x28d24c,"f")]:
    verification.append(f"{rva:x}: {struct.unpack_from('<'+fmt,blob,rva)[0]}")
(folder / "projectile_byte_verification.txt").write_text("\n".join(verification)+"\n")
