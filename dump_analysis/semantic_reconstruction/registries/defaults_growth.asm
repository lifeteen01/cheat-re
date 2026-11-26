; pdata function 0x2eee78..0x2eee98 unwind=0x3d2038
2eee78  40 53                          rex push rbx
2eee7a  48 83 ec 20                    sub    rsp,0x20
2eee7e  48 8b d9                       mov    rbx,rcx
2eee81  e8 1e c5 fd ff                 call   0x2cb3a4
2eee86  48 8d 4b 08                    lea    rcx,[rbx+0x8]
2eee8a  e8 15 c5 fd ff                 call   0x2cb3a4
2eee8f  48 8b c3                       mov    rax,rbx
2eee92  48 83 c4 20                    add    rsp,0x20
2eee96  5b                             pop    rbx
2eee97  c3                             ret

; pdata function 0x2df388..0x2df3ab unwind=0x3d2038
2df388  40 53                          rex push rbx
2df38a  48 83 ec 20                    sub    rsp,0x20
2df38e  48 8b d9                       mov    rbx,rcx
2df391  e8 ca 51 ff ff                 call   0x2d4560
2df396  33 c0                          xor    eax,eax
2df398  66 89 43 20                    mov    WORD PTR [rbx+0x20],ax
2df39c  89 43 24                       mov    DWORD PTR [rbx+0x24],eax
2df39f  88 43 28                       mov    BYTE PTR [rbx+0x28],al
2df3a2  48 8b c3                       mov    rax,rbx
2df3a5  48 83 c4 20                    add    rsp,0x20
2df3a9  5b                             pop    rbx
2df3aa  c3                             ret

; pdata function 0x2e2db8..0x2e2ddd unwind=0x3d2038
2e2db8  40 53                          rex push rbx
2e2dba  48 83 ec 20                    sub    rsp,0x20
2e2dbe  48 8b 51 10                    mov    rdx,QWORD PTR [rcx+0x10]
2e2dc2  48 8b d9                       mov    rbx,rcx
2e2dc5  48 ff c2                       inc    rdx
2e2dc8  e8 37 fd ff ff                 call   0x2e2b04
2e2dcd  48 8b d0                       mov    rdx,rax
2e2dd0  48 8b cb                       mov    rcx,rbx
2e2dd3  48 83 c4 20                    add    rsp,0x20
2e2dd7  5b                             pop    rbx
2e2dd8  e9 cf fd ff ff                 jmp    0x2e2bac

; pdata function 0x31a050..0x31a075 unwind=0x3d2038
31a050  40 53                          rex push rbx
31a052  48 83 ec 20                    sub    rsp,0x20
31a056  48 8b 51 10                    mov    rdx,QWORD PTR [rcx+0x10]
31a05a  48 8b d9                       mov    rbx,rcx
31a05d  48 ff c2                       inc    rdx
31a060  e8 9b f9 ff ff                 call   0x319a00
31a065  48 8b d0                       mov    rdx,rax
31a068  48 8b cb                       mov    rcx,rbx
31a06b  48 83 c4 20                    add    rsp,0x20
31a06f  5b                             pop    rbx
31a070  e9 73 fb ff ff                 jmp    0x319be8

