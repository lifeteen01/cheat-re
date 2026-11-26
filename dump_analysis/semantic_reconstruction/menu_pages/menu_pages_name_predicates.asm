; pdata function 0x3355cc..0x3355f9 unwind=0x3d2038
3355cc  40 53                          rex push rbx
3355ce  48 83 ec 20                    sub    rsp,0x20
3355d2  48 8b da                       mov    rbx,rdx
3355d5  48 8d 0d bc 6a 0c 00           lea    rcx,[rip+0xc6abc]        # 0x3fc098
3355dc  48 63 15 09 82 0c 00           movsxd rdx,DWORD PTR [rip+0xc8209]        # 0x3fd7ec
3355e3  e8 38 f7 f9 ff                 call   0x2d4d20
3355e8  48 8b d0                       mov    rdx,rax
3355eb  48 8d 4b 28                    lea    rcx,[rbx+0x28]
3355ef  48 83 c4 20                    add    rsp,0x20
3355f3  5b                             pop    rbx
3355f4  e9 37 99 f9 ff                 jmp    0x2cef30

; pdata function 0x3355fc..0x335629 unwind=0x3d2038
3355fc  40 53                          rex push rbx
3355fe  48 83 ec 20                    sub    rsp,0x20
335602  48 8b da                       mov    rbx,rdx
335605  48 8d 0d a4 6a 0c 00           lea    rcx,[rip+0xc6aa4]        # 0x3fc0b0
33560c  48 63 15 c9 82 0c 00           movsxd rdx,DWORD PTR [rip+0xc82c9]        # 0x3fd8dc
335613  e8 08 f7 f9 ff                 call   0x2d4d20
335618  48 8b d0                       mov    rdx,rax
33561b  48 8d 4b 28                    lea    rcx,[rbx+0x28]
33561f  48 83 c4 20                    add    rsp,0x20
335623  5b                             pop    rbx
335624  e9 07 99 f9 ff                 jmp    0x2cef30

; pdata function 0x33562c..0x335659 unwind=0x3d2038
33562c  40 53                          rex push rbx
33562e  48 83 ec 20                    sub    rsp,0x20
335632  48 8b da                       mov    rbx,rdx
335635  48 8d 0d 8c 6a 0c 00           lea    rcx,[rip+0xc6a8c]        # 0x3fc0c8
33563c  48 63 15 89 83 0c 00           movsxd rdx,DWORD PTR [rip+0xc8389]        # 0x3fd9cc
335643  e8 d8 f6 f9 ff                 call   0x2d4d20
335648  48 8b d0                       mov    rdx,rax
33564b  48 8d 4b 28                    lea    rcx,[rbx+0x28]
33564f  48 83 c4 20                    add    rsp,0x20
335653  5b                             pop    rbx
335654  e9 d7 98 f9 ff                 jmp    0x2cef30

