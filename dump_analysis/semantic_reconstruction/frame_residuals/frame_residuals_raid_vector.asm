; heuristic leaf/code range 0x3701ac..0x3701cf unwind=0x0
3701ac  48 8b 51 08                    mov    rdx,QWORD PTR [rcx+0x8]
3701b0  48 b8 ab aa aa aa aa aa aa 2a  movabs rax,0x2aaaaaaaaaaaaaab
3701ba  48 2b 11                       sub    rdx,QWORD PTR [rcx]
3701bd  48 f7 ea                       imul   rdx
3701c0  48 c1 fa 02                    sar    rdx,0x2
3701c4  48 8b c2                       mov    rax,rdx
3701c7  48 c1 e8 3f                    shr    rax,0x3f
3701cb  48 03 c2                       add    rax,rdx
3701ce  c3                             ret

; heuristic leaf/code range 0x36e1fc..0x36e208 unwind=0x0
36e1fc  48 8b 01                       mov    rax,QWORD PTR [rcx]
36e1ff  48 8d 14 52                    lea    rdx,[rdx+rdx*2]
36e203  48 8d 04 d0                    lea    rax,[rax+rdx*8]
36e207  c3                             ret

