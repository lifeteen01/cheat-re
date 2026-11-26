; pdata function 0x32bf38..0x32c0d4 unwind=0x3d35ac
32bf38  48 89 5c 24 18                 mov    QWORD PTR [rsp+0x18],rbx
32bf3d  48 89 74 24 20                 mov    QWORD PTR [rsp+0x20],rsi
32bf42  55                             push   rbp
32bf43  57                             push   rdi
32bf44  41 56                          push   r14
32bf46  48 8b ec                       mov    rbp,rsp
32bf49  48 83 ec 50                    sub    rsp,0x50
32bf4d  48 8b 05 ac af 0a 00           mov    rax,QWORD PTR [rip+0xaafac]        # 0x3d6f00
32bf54  48 8b 90 a8 f0 39 0f           mov    rdx,QWORD PTR [rax+0xf39f0a8]
32bf5b  48 8b ca                       mov    rcx,rdx
32bf5e  e8 a5 ef f9 ff                 call   0x2caf08
32bf63  84 c0                          test   al,al
32bf65  0f 84 54 01 00 00              je     0x32c0bf
32bf6b  4c 8b 82 b8 00 00 00           mov    r8,QWORD PTR [rdx+0xb8]
32bf72  49 8b c8                       mov    rcx,r8
32bf75  e8 8e ef f9 ff                 call   0x2caf08
32bf7a  84 c0                          test   al,al
32bf7c  0f 84 3d 01 00 00              je     0x32c0bf
32bf82  49 8b 50 10                    mov    rdx,QWORD PTR [r8+0x10]
32bf86  48 8b ca                       mov    rcx,rdx
32bf89  e8 7a ef f9 ff                 call   0x2caf08
32bf8e  84 c0                          test   al,al
32bf90  0f 84 29 01 00 00              je     0x32c0bf
32bf96  48 8b 52 18                    mov    rdx,QWORD PTR [rdx+0x18]
32bf9a  48 8b ca                       mov    rcx,rdx
32bf9d  e8 66 ef f9 ff                 call   0x2caf08
32bfa2  84 c0                          test   al,al
32bfa4  0f 84 15 01 00 00              je     0x32c0bf
32bfaa  4c 8b 72 10                    mov    r14,QWORD PTR [rdx+0x10]
32bfae  49 8b ce                       mov    rcx,r14
32bfb1  e8 52 ef f9 ff                 call   0x2caf08
32bfb6  84 c0                          test   al,al
32bfb8  0f 84 01 01 00 00              je     0x32c0bf
32bfbe  8b 72 18                       mov    esi,DWORD PTR [rdx+0x18]
32bfc1  33 ff                          xor    edi,edi
32bfc3  85 f6                          test   esi,esi
32bfc5  0f 8e f4 00 00 00              jle    0x32c0bf
32bfcb  8d 04 fd 00 00 00 00           lea    eax,[rdi*8+0x0]
32bfd2  48 63 c8                       movsxd rcx,eax
32bfd5  49 8b 54 0e 20                 mov    rdx,QWORD PTR [r14+rcx*1+0x20]
32bfda  48 8b ca                       mov    rcx,rdx
32bfdd  48 89 55 28                    mov    QWORD PTR [rbp+0x28],rdx
32bfe1  e8 22 ef f9 ff                 call   0x2caf08
32bfe6  84 c0                          test   al,al
32bfe8  0f 84 c7 00 00 00              je     0x32c0b5
32bfee  48 8b ca                       mov    rcx,rdx
32bff1  e8 de 82 04 00                 call   0x3742d4
32bff6  48 8b d8                       mov    rbx,rax
32bff9  e8 9e 1a fb ff                 call   0x2dda9c
32bffe  48 3b d8                       cmp    rbx,rax
32c001  0f 85 ae 00 00 00              jne    0x32c0b5
32c007  80 3d 9a bd 0c 00 00           cmp    BYTE PTR [rip+0xcbd9a],0x0        # 0x3f7da8 ; CONFIG Bools.VisualBulletSize value(+0x48)
32c00e  74 4a                          je     0x32c05a
32c010  48 8b 4d 28                    mov    rcx,QWORD PTR [rbp+0x28]
32c014  e8 ef fd ff ff                 call   0x32be08
32c019  48 8b c8                       mov    rcx,rax
32c01c  48 8b d8                       mov    rbx,rax
32c01f  e8 e4 ee f9 ff                 call   0x2caf08
32c024  84 c0                          test   al,al
32c026  74 32                          je     0x32c05a
32c028  f3 0f 10 0d 68 be 0c 00        movss  xmm1,DWORD PTR [rip+0xcbe68]        # 0x3f7e98 ; CONFIG F.projectilevisualsize value(+0x48)
32c030  48 8d 4d e0                    lea    rcx,[rbp-0x20]
32c034  0f 28 d9                       movaps xmm3,xmm1
32c037  0f 28 d1                       movaps xmm2,xmm1
32c03a  e8 69 bb 09 00                 call   0x3c7ba8
32c03f  48 8d 55 d0                    lea    rdx,[rbp-0x30]
32c043  48 8b cb                       mov    rcx,rbx
32c046  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
32c04a  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
32c04d  f2 0f 11 45 d0                 movsd  QWORD PTR [rbp-0x30],xmm0
32c052  89 45 d8                       mov    DWORD PTR [rbp-0x28],eax
32c055  e8 aa 8f 04 00                 call   0x375004
32c05a  80 3d 67 dc 0b 00 00           cmp    BYTE PTR [rip+0xbdc67],0x0        # 0x3e9cc8 ; CONFIG Bools.tracers value(+0x48)
32c061  74 42                          je     0x32c0a5
32c063  48 8b 4d 28                    mov    rcx,QWORD PTR [rbp+0x28]
32c067  e8 40 82 04 00                 call   0x3742ac
32c06c  48 8d 55 20                    lea    rdx,[rbp+0x20]
32c070  89 45 20                       mov    DWORD PTR [rbp+0x20],eax
32c073  48 8d 0d 96 9f 0b 00           lea    rcx,[rip+0xb9f96]        # 0x3e6010
32c07a  e8 61 ed ff ff                 call   0x32ade0
32c07f  48 8b 4d 28                    mov    rcx,QWORD PTR [rbp+0x28]
32c083  48 8d 55 ec                    lea    rdx,[rbp-0x14]
32c087  48 8b d8                       mov    rbx,rax
32c08a  e8 51 80 04 00                 call   0x3740e0
32c08f  e8 88 97 fe ff                 call   0x31581c
32c094  48 8d 55 ec                    lea    rdx,[rbp-0x14]
32c098  f3 0f 11 45 f8                 movss  DWORD PTR [rbp-0x8],xmm0
32c09d  48 8b cb                       mov    rcx,rbx
32c0a0  e8 ff f0 ff ff                 call   0x32b1a4
32c0a5  48 8d 55 28                    lea    rdx,[rbp+0x28]
32c0a9  48 8d 0d c8 c8 ee ff           lea    rcx,[rip+0xffffffffffeec8c8]        # 0x218978
32c0b0  e8 07 15 fb ff                 call   0x2dd5bc
32c0b5  ff c7                          inc    edi
32c0b7  3b fe                          cmp    edi,esi
32c0b9  0f 8c 0c ff ff ff              jl     0x32bfcb
32c0bf  4c 8d 5c 24 50                 lea    r11,[rsp+0x50]
32c0c4  49 8b 5b 30                    mov    rbx,QWORD PTR [r11+0x30]
32c0c8  49 8b 73 38                    mov    rsi,QWORD PTR [r11+0x38]
32c0cc  49 8b e3                       mov    rsp,r11
32c0cf  41 5e                          pop    r14
32c0d1  5f                             pop    rdi
32c0d2  5d                             pop    rbp
32c0d3  c3                             ret
