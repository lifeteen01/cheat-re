; pdata function 0x2e5a54..0x2e5a80 unwind=0x3d2064
2e5a54  48 83 ec 28                    sub    rsp,0x28
2e5a58  48 8b d1                       mov    rdx,rcx
2e5a5b  e8 a8 54 fe ff                 call   0x2caf08
2e5a60  84 c0                          test   al,al
2e5a62  74 15                          je     0x2e5a79
2e5a64  48 8b 12                       mov    rdx,QWORD PTR [rdx]
2e5a67  48 8b ca                       mov    rcx,rdx
2e5a6a  e8 99 54 fe ff                 call   0x2caf08
2e5a6f  84 c0                          test   al,al
2e5a71  74 06                          je     0x2e5a79
2e5a73  48 8b 42 10                    mov    rax,QWORD PTR [rdx+0x10]
2e5a77  eb 02                          jmp    0x2e5a7b
2e5a79  33 c0                          xor    eax,eax
2e5a7b  48 83 c4 28                    add    rsp,0x28
2e5a7f  c3                             ret
