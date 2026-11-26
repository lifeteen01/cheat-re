; pdata function 0x366bc0..0x366bf0 unwind=0x3d2064
366bc0  48 83 ec 28                    sub    rsp,0x28
366bc4  4c 8b c9                       mov    r9,rcx
366bc7  e8 3c 43 f6 ff                 call   0x2caf08
366bcc  84 c0                          test   al,al
366bce  75 05                          jne    0x366bd5
366bd0  48 83 c4 28                    add    rsp,0x28
366bd4  c3                             ret
366bd5  ba 7c 04 00 00                 mov    edx,0x47c
366bda  49 8b c9                       mov    rcx,r9
366bdd  e8 5a 82 f7 ff                 call   0x2dee3c
366be2  49 8b c9                       mov    rcx,r9
366be5  8b 10                          mov    edx,DWORD PTR [rax]
366be7  48 83 c4 28                    add    rsp,0x28
366beb  e9 c4 08 00 00                 jmp    0x3674b4

; pdata function 0x366bf0..0x366c2f unwind=0x3d2064
366bf0  48 83 ec 28                    sub    rsp,0x28
366bf4  4c 8b c9                       mov    r9,rcx
366bf7  e8 0c 43 f6 ff                 call   0x2caf08
366bfc  84 c0                          test   al,al
366bfe  75 05                          jne    0x366c05
366c00  48 83 c4 28                    add    rsp,0x28
366c04  c3                             ret
366c05  ba 40 04 00 00                 mov    edx,0x440
366c0a  49 8b c9                       mov    rcx,r9
366c0d  e8 2a 82 f7 ff                 call   0x2dee3c
366c12  80 38 00                       cmp    BYTE PTR [rax],0x0
366c15  74 07                          je     0x366c1e
366c17  b0 01                          mov    al,0x1
366c19  48 83 c4 28                    add    rsp,0x28
366c1d  c3                             ret
366c1e  ba 00 00 01 00                 mov    edx,0x10000
366c23  49 8b c9                       mov    rcx,r9
366c26  48 83 c4 28                    add    rsp,0x28
366c2a  e9 85 08 00 00                 jmp    0x3674b4

