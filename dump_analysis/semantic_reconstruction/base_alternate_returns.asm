; explicit leaf/assembly range 0x2e3c50..0x2e3c86 unwind=0x0
2e3c50  8b ca                          mov    ecx,edx
2e3c52  8b c2                          mov    eax,edx
2e3c54  f7 d8                          neg    eax
2e3c56  c1 e9 1f                       shr    ecx,0x1f
2e3c59  84 c9                          test   cl,cl
2e3c5b  0f 28 d0                       movaps xmm2,xmm0
2e3c5e  f3 0f 10 05 ee 95 fa ff        movss  xmm0,DWORD PTR [rip+0xfffffffffffa95ee]        # 0x28d254 ; f32=1
2e3c66  0f 44 c2                       cmove  eax,edx
2e3c69  0f 28 c8                       movaps xmm1,xmm0
2e3c6c  85 c0                          test   eax,eax
2e3c6e  7e 09                          jle    0x2e3c79
2e3c70  f3 0f 59 ca                    mulss  xmm1,xmm2
2e3c74  83 e8 01                       sub    eax,0x1
2e3c77  75 f7                          jne    0x2e3c70
2e3c79  84 c9                          test   cl,cl
2e3c7b  74 05                          je     0x2e3c82
2e3c7d  f3 0f 5e c1                    divss  xmm0,xmm1
2e3c81  c3                             ret
2e3c82  0f 28 c1                       movaps xmm0,xmm1
2e3c85  c3                             ret

; explicit leaf/assembly range 0x36c638..0x36c66e unwind=0x0
36c638  f3 0f 10 01                    movss  xmm0,DWORD PTR [rcx]
36c63c  f3 0f 10 0a                    movss  xmm1,DWORD PTR [rdx]
36c640  0f 2f c8                       comiss xmm1,xmm0
36c643  72 26                          jb     0x36c66b
36c645  f3 0f 58 41 08                 addss  xmm0,DWORD PTR [rcx+0x8]
36c64a  0f 2f c1                       comiss xmm0,xmm1
36c64d  76 1c                          jbe    0x36c66b
36c64f  f3 0f 10 41 04                 movss  xmm0,DWORD PTR [rcx+0x4]
36c654  f3 0f 10 4a 04                 movss  xmm1,DWORD PTR [rdx+0x4]
36c659  0f 2f c8                       comiss xmm1,xmm0
36c65c  72 0d                          jb     0x36c66b
36c65e  f3 0f 58 41 0c                 addss  xmm0,DWORD PTR [rcx+0xc]
36c663  0f 2f c1                       comiss xmm0,xmm1
36c666  76 03                          jbe    0x36c66b
36c668  b0 01                          mov    al,0x1
36c66a  c3                             ret
36c66b  32 c0                          xor    al,al
36c66d  c3                             ret

