; pdata function 0x2d9540..0x2d955b unwind=0x3d2038
2d9540  40 53                          rex push rbx
2d9542  48 83 ec 20                    sub    rsp,0x20
2d9546  f3 0f 5a c9                    cvtss2sd xmm1,xmm1
2d954a  48 8b d9                       mov    rbx,rcx
2d954d  e8 0a 00 00 00                 call   0x2d955c
2d9552  48 8b c3                       mov    rax,rbx
2d9555  48 83 c4 20                    add    rsp,0x20
2d9559  5b                             pop    rbx
2d955a  c3                             ret

; pdata function 0x2dfe64..0x2dfed0 unwind=0x3d25c0
2dfe64  40 53                          rex push rbx
2dfe66  48 83 ec 60                    sub    rsp,0x60
2dfe6a  33 d2                          xor    edx,edx
2dfe6c  4c 8d 0d 9d 84 0f 00           lea    r9,[rip+0xf849d]        # 0x3d8310
2dfe73  4c 8d 04 52                    lea    r8,[rdx+rdx*2]
2dfe77  4d 03 c0                       add    r8,r8
2dfe7a  4b 83 3c c1 00                 cmp    QWORD PTR [r9+r8*8],0x0
2dfe7f  74 0e                          je     0x2dfe8f
2dfe81  ff c2                          inc    edx
2dfe83  81 fa e8 03 00 00              cmp    edx,0x3e8
2dfe89  7c e8                          jl     0x2dfe73
2dfe8b  33 c0                          xor    eax,eax
2dfe8d  eb 3b                          jmp    0x2dfeca
2dfe8f  f3 0f 10 84 24 90 00 00 00     movss  xmm0,DWORD PTR [rsp+0x90]
2dfe98  4b 8d 1c c1                    lea    rbx,[r9+r8*8]
2dfe9c  4b 89 0c c1                    mov    QWORD PTR [r9+r8*8],rcx
2dfea0  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
2dfea5  f3 0f 11 44 24 20              movss  DWORD PTR [rsp+0x20],xmm0
2dfeab  e8 38 f4 ff ff                 call   0x2df2e8
2dfeb0  48 8b d0                       mov    rdx,rax
2dfeb3  48 8d 4b 08                    lea    rcx,[rbx+0x8]
2dfeb7  e8 bc f6 ff ff                 call   0x2df578
2dfebc  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
2dfec1  e8 ce f5 ff ff                 call   0x2df494
2dfec6  48 8d 43 08                    lea    rax,[rbx+0x8]
2dfeca  48 83 c4 60                    add    rsp,0x60
2dfece  5b                             pop    rbx
2dfecf  c3                             ret

; pdata function 0x2e3a70..0x2e3aa1 unwind=0x3d2040
2e3a70  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2e3a75  57                             push   rdi
2e3a76  48 83 ec 20                    sub    rsp,0x20
2e3a7a  48 8b f9                       mov    rdi,rcx
2e3a7d  48 83 c1 10                    add    rcx,0x10
2e3a81  e8 1a 4c ff ff                 call   0x2d86a0
2e3a86  84 c0                          test   al,al
2e3a88  74 08                          je     0x2e3a92
2e3a8a  48 8b cf                       mov    rcx,rdi
2e3a8d  e8 12 00 00 00                 call   0x2e3aa4
2e3a92  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
2e3a97  48 8d 47 10                    lea    rax,[rdi+0x10]
2e3a9b  48 83 c4 20                    add    rsp,0x20
2e3a9f  5f                             pop    rdi
2e3aa0  c3                             ret

