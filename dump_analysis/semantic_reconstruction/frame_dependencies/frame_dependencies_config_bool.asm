; pdata function 0x2ddcfc..0x2ddd22 unwind=0x3d2038
2ddcfc  40 53                          rex push rbx
2ddcfe  48 83 ec 20                    sub    rsp,0x20
2ddd02  44 8a 41 48                    mov    r8b,BYTE PTR [rcx+0x48]
2ddd06  48 8d 51 08                    lea    rdx,[rcx+0x8]
2ddd0a  48 8b d9                       mov    rbx,rcx
2ddd0d  48 8d 0d bc 90 0f 00           lea    rcx,[rip+0xf90bc]        # 0x3d6dd0
2ddd14  e8 47 58 ff ff                 call   0x2d3560
2ddd19  88 43 48                       mov    BYTE PTR [rbx+0x48],al
2ddd1c  48 83 c4 20                    add    rsp,0x20
2ddd20  5b                             pop    rbx
2ddd21  c3                             ret

; pdata function 0x2db4b8..0x2db4e6 unwind=0x3d2038
2db4b8  40 53                          rex push rbx
2db4ba  48 83 ec 20                    sub    rsp,0x20
2db4be  48 8d 05 e3 21 fb ff           lea    rax,[rip+0xfffffffffffb21e3]        # 0x28d6a8
2db4c5  48 8b d9                       mov    rbx,rcx
2db4c8  48 89 01                       mov    QWORD PTR [rcx],rax
2db4cb  48 83 c1 08                    add    rcx,0x8
2db4cf  e8 8c 90 ff ff                 call   0x2d4560
2db4d4  48 8d 4b 28                    lea    rcx,[rbx+0x28]
2db4d8  e8 83 90 ff ff                 call   0x2d4560
2db4dd  48 8b c3                       mov    rax,rbx
2db4e0  48 83 c4 20                    add    rsp,0x20
2db4e4  5b                             pop    rbx
2db4e5  c3                             ret

