; pdata function 0x3873f0..0x3874d2 unwind=0x3d45c0
3873f0  48 89 5c 24 18                 mov    QWORD PTR [rsp+0x18],rbx
3873f5  57                             push   rdi
3873f6  48 83 ec 30                    sub    rsp,0x30
3873fa  0f 29 74 24 20                 movaps XMMWORD PTR [rsp+0x20],xmm6
3873ff  48 8d 3d fa 8b c7 ff           lea    rdi,[rip+0xffffffffffc78bfa]        # 0x0
387406  33 db                          xor    ebx,ebx
387408  f3 0f 10 0d 44 5e f0 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff05e44]        # 0x28d254 ; f32=1
387410  0f 57 c0                       xorps  xmm0,xmm0
387413  e8 fc 15 00 00                 call   0x388a14
387418  f3 0f 10 0d 34 5e f0 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff05e34]        # 0x28d254 ; f32=1
387420  0f 28 f0                       movaps xmm6,xmm0
387423  f3 0f 59 35 e1 1a ec ff        mulss  xmm6,DWORD PTR [rip+0xffffffffffec1ae1]        # 0x248f0c ; f32=580
38742b  0f 57 c0                       xorps  xmm0,xmm0
38742e  e8 e1 15 00 00                 call   0x388a14
387433  f3 0f 59 05 cd 1a ec ff        mulss  xmm0,DWORD PTR [rip+0xffffffffffec1acd]        # 0x248f08 ; f32=850
38743b  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
387440  0f 28 d6                       movaps xmm2,xmm6
387443  0f 28 c8                       movaps xmm1,xmm0
387446  e8 f5 4e f4 ff                 call   0x2cc340
38744b  f3 0f 10 0d 2d bd f0 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff0bd2d]        # 0x293180 ; f32=5
387453  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
387457  f2 0f 11 84 df e0 2d 40 00     movsd  QWORD PTR [rdi+rbx*8+0x402de0],xmm0
387460  f3 0f 10 05 d8 1f f2 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff21fd8]        # 0x2a9440 ; f32=-5
387468  e8 a7 15 00 00                 call   0x388a14
38746d  f3 0f 10 0d 0b bd f0 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff0bd0b]        # 0x293180 ; f32=5
387475  0f 28 f0                       movaps xmm6,xmm0
387478  f3 0f 10 05 c0 1f f2 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff21fc0]        # 0x2a9440 ; f32=-5
387480  f3 0f 59 35 f8 bc f0 ff        mulss  xmm6,DWORD PTR [rip+0xfffffffffff0bcf8]        # 0x293180 ; f32=5
387488  e8 87 15 00 00                 call   0x388a14
38748d  f3 0f 59 05 eb bc f0 ff        mulss  xmm0,DWORD PTR [rip+0xfffffffffff0bceb]        # 0x293180 ; f32=5
387495  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
38749a  0f 28 d6                       movaps xmm2,xmm6
38749d  0f 28 c8                       movaps xmm1,xmm0
3874a0  e8 9b 4e f4 ff                 call   0x2cc340
3874a5  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
3874a9  f2 0f 11 84 df 60 32 40 00     movsd  QWORD PTR [rdi+rbx*8+0x403260],xmm0
3874b2  48 ff c3                       inc    rbx
3874b5  48 81 fb 90 00 00 00           cmp    rbx,0x90
3874bc  0f 85 46 ff ff ff              jne    0x387408
3874c2  48 8b 5c 24 50                 mov    rbx,QWORD PTR [rsp+0x50]
3874c7  0f 28 74 24 20                 movaps xmm6,XMMWORD PTR [rsp+0x20]
3874cc  48 83 c4 30                    add    rsp,0x30
3874d0  5f                             pop    rdi
3874d1  c3                             ret

; heuristic leaf/code range 0x3354c0..0x3354cc unwind=0x0
3354c0  48 8d 4c 24 08                 lea    rcx,[rsp+0x8]
3354c5  e9 ce 3b 02 00                 jmp    0x359098
3354ca  cc                             int3
3354cb  cc                             int3

; heuristic leaf/code range 0x3353d0..0x3354cc unwind=0x0
3353d0  48 8d 4c 24 08                 lea    rcx,[rsp+0x8]
3353d5  e9 8e 14 00 00                 jmp    0x336868
3353da  cc                             int3
3353db  cc                             int3
3353dc  48 8d 4c 24 08                 lea    rcx,[rsp+0x8]
3353e1  e9 96 2a 00 00                 jmp    0x337e7c
3353e6  cc                             int3
3353e7  cc                             int3
3353e8  48 8d 4c 24 08                 lea    rcx,[rsp+0x8]
3353ed  e9 3e 3b 00 00                 jmp    0x338f30
3353f2  cc                             int3
3353f3  cc                             int3
3353f4  48 8d 4c 24 08                 lea    rcx,[rsp+0x8]
3353f9  e9 fa 52 00 00                 jmp    0x33a6f8
3353fe  cc                             int3
3353ff  cc                             int3
335400  48 8d 4c 24 08                 lea    rcx,[rsp+0x8]
335405  e9 6e 58 00 00                 jmp    0x33ac78
33540a  cc                             int3
33540b  cc                             int3
33540c  48 8d 4c 24 08                 lea    rcx,[rsp+0x8]
335411  e9 52 73 00 00                 jmp    0x33c768
335416  cc                             int3
335417  cc                             int3
335418  48 8d 4c 24 08                 lea    rcx,[rsp+0x8]
33541d  e9 16 93 00 00                 jmp    0x33e738
335422  cc                             int3
335423  cc                             int3
335424  48 8d 4c 24 08                 lea    rcx,[rsp+0x8]
335429  e9 82 ac 00 00                 jmp    0x3400b0
33542e  cc                             int3
33542f  cc                             int3
335430  48 8d 4c 24 08                 lea    rcx,[rsp+0x8]
335435  e9 9e c7 00 00                 jmp    0x341bd8
33543a  cc                             int3
33543b  cc                             int3
33543c  48 8d 4c 24 08                 lea    rcx,[rsp+0x8]
335441  e9 ae d5 00 00                 jmp    0x3429f4
335446  cc                             int3
335447  cc                             int3
335448  48 8d 4c 24 08                 lea    rcx,[rsp+0x8]
33544d  e9 62 01 01 00                 jmp    0x3455b4
335452  cc                             int3
335453  cc                             int3
335454  48 8d 4c 24 08                 lea    rcx,[rsp+0x8]
335459  e9 6e 18 01 00                 jmp    0x346ccc
33545e  cc                             int3
33545f  cc                             int3
335460  48 8d 4c 24 08                 lea    rcx,[rsp+0x8]
335465  e9 b2 2f 01 00                 jmp    0x34841c
33546a  cc                             int3
33546b  cc                             int3
33546c  48 8d 4c 24 08                 lea    rcx,[rsp+0x8]
335471  e9 3e 49 01 00                 jmp    0x349db4
335476  cc                             int3
335477  cc                             int3
335478  48 8d 4c 24 08                 lea    rcx,[rsp+0x8]
33547d  e9 5a 5a 01 00                 jmp    0x34aedc
335482  cc                             int3
335483  cc                             int3
335484  48 8d 4c 24 08                 lea    rcx,[rsp+0x8]
335489  e9 22 70 01 00                 jmp    0x34c4b0
33548e  cc                             int3
33548f  cc                             int3
335490  48 8d 4c 24 08                 lea    rcx,[rsp+0x8]
335495  e9 ea 82 01 00                 jmp    0x34d784
33549a  cc                             int3
33549b  cc                             int3
33549c  48 8d 4c 24 08                 lea    rcx,[rsp+0x8]
3354a1  e9 ae 90 01 00                 jmp    0x34e554
3354a6  cc                             int3
3354a7  cc                             int3
3354a8  48 8d 4c 24 08                 lea    rcx,[rsp+0x8]
3354ad  e9 aa 9e 01 00                 jmp    0x34f35c
3354b2  cc                             int3
3354b3  cc                             int3
3354b4  48 8d 4c 24 08                 lea    rcx,[rsp+0x8]
3354b9  e9 7e ac 01 00                 jmp    0x35013c
3354be  cc                             int3
3354bf  cc                             int3
3354c0  48 8d 4c 24 08                 lea    rcx,[rsp+0x8]
3354c5  e9 ce 3b 02 00                 jmp    0x359098
3354ca  cc                             int3
3354cb  cc                             int3

