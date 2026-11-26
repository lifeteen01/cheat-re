; heuristic leaf/code range 0x3c7e28..0x3c7e4c unwind=0x0
3c7e28  0f 10 05 b9 5c ee ff           movups xmm0,XMMWORD PTR [rip+0xffffffffffee5cb9]        # 0x2adae8
3c7e2f  48 8b c2                       mov    rax,rdx
3c7e32  0f 10 0d bf 5c ee ff           movups xmm1,XMMWORD PTR [rip+0xffffffffffee5cbf]        # 0x2adaf8
3c7e39  0f 11 02                       movups XMMWORD PTR [rdx],xmm0
3c7e3c  0f 10 05 c1 5c ee ff           movups xmm0,XMMWORD PTR [rip+0xffffffffffee5cc1]        # 0x2adb04
3c7e43  0f 11 4a 10                    movups XMMWORD PTR [rdx+0x10],xmm1
3c7e47  0f 11 42 1c                    movups XMMWORD PTR [rdx+0x1c],xmm0
3c7e4b  c3                             ret
