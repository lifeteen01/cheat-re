; pdata function 0x35cc58..0x35ccf2 unwind=0x3d27d8
35cc58  40 53                          rex push rbx
35cc5a  55                             push   rbp
35cc5b  56                             push   rsi
35cc5c  57                             push   rdi
35cc5d  41 54                          push   r12
35cc5f  41 56                          push   r14
35cc61  41 57                          push   r15
35cc63  48 83 ec 20                    sub    rsp,0x20
35cc67  4d 63 f9                       movsxd r15,r9d
35cc6a  49 8b f8                       mov    rdi,r8
35cc6d  4d 85 c0                       test   r8,r8
35cc70  74 07                          je     0x35cc79
35cc72  49 c7 00 00 00 00 00           mov    QWORD PTR [r8],0x0
35cc79  e8 36 95 f7 ff                 call   0x2d61b4
35cc7e  48 8b e8                       mov    rbp,rax
35cc81  48 85 c0                       test   rax,rax
35cc84  74 5b                          je     0x35cce1
35cc86  48 8b 58 18                    mov    rbx,QWORD PTR [rax+0x18]
35cc8a  48 85 db                       test   rbx,rbx
35cc8d  74 52                          je     0x35cce1
35cc8f  49 8d 0c 1f                    lea    rcx,[r15+rbx*1]
35cc93  e8 c0 84 03 00                 call   0x395158
35cc98  48 8b f0                       mov    rsi,rax
35cc9b  48 85 c0                       test   rax,rax
35cc9e  74 41                          je     0x35cce1
35cca0  45 33 f6                       xor    r14d,r14d
35cca3  48 85 db                       test   rbx,rbx
35cca6  74 19                          je     0x35ccc1
35cca8  41 8b d6                       mov    edx,r14d
35ccab  48 8b cd                       mov    rcx,rbp
35ccae  e8 f5 89 f7 ff                 call   0x2d56a8
35ccb3  8a 08                          mov    cl,BYTE PTR [rax]
35ccb5  41 88 0c 36                    mov    BYTE PTR [r14+rsi*1],cl
35ccb9  49 ff c6                       inc    r14
35ccbc  4c 3b f3                       cmp    r14,rbx
35ccbf  72 e7                          jb     0x35cca8
35ccc1  45 85 ff                       test   r15d,r15d
35ccc4  7e 0e                          jle    0x35ccd4
35ccc6  48 8d 0c 1e                    lea    rcx,[rsi+rbx*1]
35ccca  4d 8b c7                       mov    r8,r15
35cccd  33 d2                          xor    edx,edx
35cccf  e8 9c c0 06 00                 call   0x3c8d70
35ccd4  48 85 ff                       test   rdi,rdi
35ccd7  74 03                          je     0x35ccdc
35ccd9  48 89 1f                       mov    QWORD PTR [rdi],rbx
35ccdc  48 8b c6                       mov    rax,rsi
35ccdf  eb 02                          jmp    0x35cce3
35cce1  33 c0                          xor    eax,eax
35cce3  48 83 c4 20                    add    rsp,0x20
35cce7  41 5f                          pop    r15
35cce9  41 5e                          pop    r14
35cceb  41 5c                          pop    r12
35cced  5f                             pop    rdi
35ccee  5e                             pop    rsi
35ccef  5d                             pop    rbp
35ccf0  5b                             pop    rbx
35ccf1  c3                             ret

