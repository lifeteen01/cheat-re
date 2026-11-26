; pdata function 0x382dc4..0x382de7 unwind=0x3d2038
382dc4  40 53                          rex push rbx
382dc6  48 83 ec 20                    sub    rsp,0x20
382dca  0f 28 ca                       movaps xmm1,xmm2
382dcd  48 8b d9                       mov    rbx,rcx
382dd0  f3 0f 58 0a                    addss  xmm1,DWORD PTR [rdx]
382dd4  f3 0f 58 52 04                 addss  xmm2,DWORD PTR [rdx+0x4]
382dd9  e8 62 95 f4 ff                 call   0x2cc340
382dde  48 8b c3                       mov    rax,rbx
382de1  48 83 c4 20                    add    rsp,0x20
382de5  5b                             pop    rbx
382de6  c3                             ret

; pdata function 0x39045c..0x3904df unwind=0x3d2064
39045c  48 83 ec 28                    sub    rsp,0x28
390460  f3 0f 10 41 0c                 movss  xmm0,DWORD PTR [rcx+0xc]
390465  4c 8b c1                       mov    r8,rcx
390468  e8 8f 85 fe ff                 call   0x3789fc
39046d  f3 0f 10 1d 6f d2 ef ff        movss  xmm3,DWORD PTR [rip+0xffffffffffefd26f]        # 0x28d6e4 ; f32=255
390475  f3 0f 10 15 d3 cd ef ff        movss  xmm2,DWORD PTR [rip+0xffffffffffefcdd3]        # 0x28d250 ; f32=0.5
39047d  f3 0f 59 c3                    mulss  xmm0,xmm3
390481  f3 0f 58 c2                    addss  xmm0,xmm2
390485  f3 0f 2c d0                    cvttss2si edx,xmm0
390489  f3 0f 10 41 08                 movss  xmm0,DWORD PTR [rcx+0x8]
39048e  c1 e2 08                       shl    edx,0x8
390491  e8 66 85 fe ff                 call   0x3789fc
390496  f3 0f 59 c3                    mulss  xmm0,xmm3
39049a  f3 0f 58 c2                    addss  xmm0,xmm2
39049e  f3 0f 2c c0                    cvttss2si eax,xmm0
3904a2  f3 0f 10 41 04                 movss  xmm0,DWORD PTR [rcx+0x4]
3904a7  0b c2                          or     eax,edx
3904a9  c1 e0 08                       shl    eax,0x8
3904ac  e8 4b 85 fe ff                 call   0x3789fc
3904b1  f3 0f 59 c3                    mulss  xmm0,xmm3
3904b5  f3 0f 58 c2                    addss  xmm0,xmm2
3904b9  f3 0f 2c c8                    cvttss2si ecx,xmm0
3904bd  f3 41 0f 10 00                 movss  xmm0,DWORD PTR [r8]
3904c2  0b c1                          or     eax,ecx
3904c4  c1 e0 08                       shl    eax,0x8
3904c7  e8 30 85 fe ff                 call   0x3789fc
3904cc  f3 0f 59 c3                    mulss  xmm0,xmm3
3904d0  f3 0f 58 c2                    addss  xmm0,xmm2
3904d4  f3 0f 2c c8                    cvttss2si ecx,xmm0
3904d8  0b c1                          or     eax,ecx
3904da  48 83 c4 28                    add    rsp,0x28
3904de  c3                             ret

; pdata function 0x3795a4..0x3795d2 unwind=0x3d2318
3795a4  40 53                          rex push rbx
3795a6  48 83 ec 30                    sub    rsp,0x30
3795aa  48 8b d9                       mov    rbx,rcx
3795ad  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
3795b2  e8 d5 f3 ff ff                 call   0x37898c
3795b7  48 8b c8                       mov    rcx,rax
3795ba  e8 9d 6e 01 00                 call   0x39045c
3795bf  8b d0                          mov    edx,eax
3795c1  48 8b cb                       mov    rcx,rbx
3795c4  e8 0b cf fb ff                 call   0x3364d4
3795c9  48 8b c3                       mov    rax,rbx
3795cc  48 83 c4 30                    add    rsp,0x30
3795d0  5b                             pop    rbx
3795d1  c3                             ret

