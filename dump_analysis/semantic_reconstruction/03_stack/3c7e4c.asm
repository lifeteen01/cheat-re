; heuristic leaf/code range 0x3c7e4c..0x3c7e6e unwind=0x0
3c7e4c  8b 05 8d 5c ee ff              mov    eax,DWORD PTR [rip+0xffffffffffee5c8d]        # 0x2adadf
3c7e52  0f 10 05 67 5c ee ff           movups xmm0,XMMWORD PTR [rip+0xffffffffffee5c67]        # 0x2adac0
3c7e59  0f 10 0d 70 5c ee ff           movups xmm1,XMMWORD PTR [rip+0xffffffffffee5c70]        # 0x2adad0
3c7e60  0f 11 02                       movups XMMWORD PTR [rdx],xmm0
3c7e63  0f 11 4a 10                    movups XMMWORD PTR [rdx+0x10],xmm1
3c7e67  89 42 1f                       mov    DWORD PTR [rdx+0x1f],eax
3c7e6a  48 8b c2                       mov    rax,rdx
3c7e6d  c3                             ret
