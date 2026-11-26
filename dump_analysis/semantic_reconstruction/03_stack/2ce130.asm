; pdata function 0x2ce130..0x2ce1d4 unwind=0x3d20e4
2ce130  40 53                          rex push rbx
2ce132  48 83 ec 40                    sub    rsp,0x40
2ce136  48 8b da                       mov    rbx,rdx
2ce139  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
2ce13e  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
2ce143  e8 3c e5 ff ff                 call   0x2cc684 ; STRING getter=0x2cc684 KERNEL32.DLL
2ce148  48 8b c8                       mov    rcx,rax
2ce14b  e8 0c fd ff ff                 call   0x2cde5c
2ce150  48 8b c8                       mov    rcx,rax
2ce153  e8 00 cf 0f 00                 call   0x3cb058
2ce158  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
2ce15d  48 89 03                       mov    QWORD PTR [rbx],rax
2ce160  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
2ce165  e8 ae e5 ff ff                 call   0x2cc718 ; STRING getter=0x2cc718 BaseThreadInitThunk
2ce16a  48 8b c8                       mov    rcx,rax
2ce16d  e8 4a fc ff ff                 call   0x2cddbc
2ce172  48 8b 0b                       mov    rcx,QWORD PTR [rbx]
2ce175  48 8b d0                       mov    rdx,rax
2ce178  e8 4b 06 00 00                 call   0x2ce7c8
2ce17d  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
2ce182  48 89 43 10                    mov    QWORD PTR [rbx+0x10],rax
2ce186  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
2ce18b  e8 e0 e5 ff ff                 call   0x2cc770 ; STRING getter=0x2cc770 ntdll.dll
2ce190  48 8b c8                       mov    rcx,rax
2ce193  e8 84 fb ff ff                 call   0x2cdd1c
2ce198  48 8b c8                       mov    rcx,rax
2ce19b  e8 b8 ce 0f 00                 call   0x3cb058
2ce1a0  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
2ce1a5  48 89 43 08                    mov    QWORD PTR [rbx+0x8],rax
2ce1a9  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
2ce1ae  e8 11 e6 ff ff                 call   0x2cc7c4 ; STRING getter=0x2cc7c4 RtlUserThreadStart
2ce1b3  48 8b c8                       mov    rcx,rax
2ce1b6  e8 b1 fb ff ff                 call   0x2cdd6c
2ce1bb  48 8b 4b 08                    mov    rcx,QWORD PTR [rbx+0x8]
2ce1bf  48 8b d0                       mov    rdx,rax
2ce1c2  e8 01 06 00 00                 call   0x2ce7c8
2ce1c7  48 89 43 18                    mov    QWORD PTR [rbx+0x18],rax
2ce1cb  48 8b c3                       mov    rax,rbx
2ce1ce  48 83 c4 40                    add    rsp,0x40
2ce1d2  5b                             pop    rbx
2ce1d3  c3                             ret
