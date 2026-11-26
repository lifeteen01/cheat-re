; pdata function 0x368c60..0x368cae unwind=0x3d2064
368c60  48 83 ec 28                    sub    rsp,0x28
368c64  44 8b c2                       mov    r8d,edx
368c67  48 8b d1                       mov    rdx,rcx
368c6a  e8 99 22 f6 ff                 call   0x2caf08
368c6f  84 c0                          test   al,al
368c71  74 34                          je     0x368ca7
368c73  48 8b 92 d0 01 00 00           mov    rdx,QWORD PTR [rdx+0x1d0]
368c7a  48 8b ca                       mov    rcx,rdx
368c7d  e8 86 22 f6 ff                 call   0x2caf08
368c82  84 c0                          test   al,al
368c84  74 21                          je     0x368ca7
368c86  48 8b 52 50                    mov    rdx,QWORD PTR [rdx+0x50]
368c8a  48 8b ca                       mov    rcx,rdx
368c8d  e8 76 22 f6 ff                 call   0x2caf08
368c92  84 c0                          test   al,al
368c94  74 11                          je     0x368ca7
368c96  42 8d 04 c5 00 00 00 00        lea    eax,[r8*8+0x0]
368c9e  48 98                          cdqe
368ca0  48 8b 44 10 20                 mov    rax,QWORD PTR [rax+rdx*1+0x20]
368ca5  eb 02                          jmp    0x368ca9
368ca7  33 c0                          xor    eax,eax
368ca9  48 83 c4 28                    add    rsp,0x28
368cad  c3                             ret
