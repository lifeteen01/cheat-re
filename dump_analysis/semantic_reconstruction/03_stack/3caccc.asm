; pdata function 0x3caccc..0x3cad0d unwind=0x3d2318
3caccc  40 53                          rex push rbx
3cacce  48 83 ec 30                    sub    rsp,0x30
3cacd2  48 8b d9                       mov    rbx,rcx
3cacd5  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
3cacda  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
3cacdf  e8 cc fe ff ff                 call   0x3cabb0 ; STRING getter=0x3cabb0 UnityPlayer.dll
3cace4  48 8b c8                       mov    rcx,rax
3cace7  e8 40 d8 f0 ff                 call   0x2d852c
3cacec  48 8b c8                       mov    rcx,rax
3cacef  e8 64 03 00 00                 call   0x3cb058
3cacf4  48 8d 53 08                    lea    rdx,[rbx+0x8]
3cacf8  48 89 03                       mov    QWORD PTR [rbx],rax
3cacfb  48 8b c8                       mov    rcx,rax
3cacfe  e8 d1 34 f0 ff                 call   0x2ce1d4
3cad03  48 89 43 10                    mov    QWORD PTR [rbx+0x10],rax
3cad07  48 83 c4 30                    add    rsp,0x30
3cad0b  5b                             pop    rbx
3cad0c  c3                             ret
