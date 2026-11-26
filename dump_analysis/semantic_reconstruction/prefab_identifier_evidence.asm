; pdata function 0x367668..0x367684 unwind=0x3d2064
367668  48 83 ec 28                    sub    rsp,0x28
36766c  48 8b d1                       mov    rdx,rcx
36766f  e8 94 38 f6 ff                 call   0x2caf08
367674  84 c0                          test   al,al
367676  75 04                          jne    0x36767c
367678  33 c0                          xor    eax,eax
36767a  eb 03                          jmp    0x36767f
36767c  8b 42 54                       mov    eax,DWORD PTR [rdx+0x54]
36767f  48 83 c4 28                    add    rsp,0x28
367683  c3                             ret

