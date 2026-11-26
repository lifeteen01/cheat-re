; heuristic leaf/code range 0x2dde88..0x2dde94 unwind=0x0
2dde88  f3 41 0f 10 00                 movss  xmm0,DWORD PTR [r8]
2dde8d  0f 2f 02                       comiss xmm0,DWORD PTR [rdx]
2dde90  0f 97 c0                       seta   al
2dde93  c3                             ret

; heuristic leaf/code range 0x2e5a44..0x2e5a54 unwind=0x0
2e5a44  0f 2f c8                       comiss xmm1,xmm0
2e5a47  77 07                          ja     0x2e5a50
2e5a49  0f 28 ca                       movaps xmm1,xmm2
2e5a4c  f3 0f 5d c8                    minss  xmm1,xmm0
2e5a50  0f 28 c1                       movaps xmm0,xmm1
2e5a53  c3                             ret

; pdata function 0x2d955c..0x2d95cb unwind=0x3d22e4
2d955c  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2d9561  57                             push   rdi
2d9562  48 83 ec 30                    sub    rsp,0x30
2d9566  48 8b f9                       mov    rdi,rcx
2d9569  0f 29 74 24 20                 movaps XMMWORD PTR [rsp+0x20],xmm6
2d956e  48 8d 0d b7 3d fb ff           lea    rcx,[rip+0xfffffffffffb3db7]        # 0x28d32c
2d9575  66 48 0f 7e ca                 movq   rdx,xmm1
2d957a  0f 28 f1                       movaps xmm6,xmm1
2d957d  e8 c2 00 00 00                 call   0x2d9644
2d9582  48 63 d8                       movsxd rbx,eax
2d9585  45 33 c0                       xor    r8d,r8d
2d9588  48 8b d3                       mov    rdx,rbx
2d958b  48 8b cf                       mov    rcx,rdi
2d958e  e8 f1 af ff ff                 call   0x2d4584
2d9593  33 d2                          xor    edx,edx
2d9595  48 8b cf                       mov    rcx,rdi
2d9598  e8 2f b7 ff ff                 call   0x2d4ccc
2d959d  48 8b c8                       mov    rcx,rax
2d95a0  4c 8d 05 85 3d fb ff           lea    r8,[rip+0xfffffffffffb3d85]        # 0x28d32c
2d95a7  0f 28 de                       movaps xmm3,xmm6
2d95aa  48 8d 53 01                    lea    rdx,[rbx+0x1]
2d95ae  66 49 0f 7e f1                 movq   r9,xmm6
2d95b3  e8 58 01 00 00                 call   0x2d9710
2d95b8  48 8b 5c 24 40                 mov    rbx,QWORD PTR [rsp+0x40]
2d95bd  48 8b c7                       mov    rax,rdi
2d95c0  0f 28 74 24 20                 movaps xmm6,XMMWORD PTR [rsp+0x20]
2d95c5  48 83 c4 30                    add    rsp,0x30
2d95c9  5f                             pop    rdi
2d95ca  c3                             ret

