; pdata function 0x31acd0..0x31fe4a unwind=0x3d315c
31acd0  48 8b c4                       mov    rax,rsp
31acd3  48 89 58 08                    mov    QWORD PTR [rax+0x8],rbx
31acd7  55                             push   rbp
31acd8  56                             push   rsi
31acd9  57                             push   rdi
31acda  41 54                          push   r12
31acdc  41 55                          push   r13
31acde  41 56                          push   r14
31ace0  41 57                          push   r15
31ace2  48 8d a8 88 f5 ff ff           lea    rbp,[rax-0xa78]
31ace9  48 81 ec 40 0b 00 00           sub    rsp,0xb40
31acf0  0f 29 70 b8                    movaps XMMWORD PTR [rax-0x48],xmm6
31acf4  4c 8b e9                       mov    r13,rcx
31acf7  0f 29 78 a8                    movaps XMMWORD PTR [rax-0x58],xmm7
31acfb  44 0f 29 40 98                 movaps XMMWORD PTR [rax-0x68],xmm8
31ad00  44 0f 29 48 88                 movaps XMMWORD PTR [rax-0x78],xmm9
31ad05  c7 45 a4 00 00 00 00           mov    DWORD PTR [rbp-0x5c],0x0
31ad0c  e8 3b 61 fc ff                 call   0x2e0e4c
31ad11  84 c0                          test   al,al
31ad13  0f 85 02 51 00 00              jne    0x31fe1b
31ad19  e8 7e 59 fc ff                 call   0x2e069c
31ad1e  48 8b c8                       mov    rcx,rax
31ad21  48 89 45 b0                    mov    QWORD PTR [rbp-0x50],rax
31ad25  e8 de 01 fb ff                 call   0x2caf08
31ad2a  84 c0                          test   al,al
31ad2c  0f 84 e9 50 00 00              je     0x31fe1b
31ad32  e8 65 2d fc ff                 call   0x2dda9c
31ad37  48 8b c8                       mov    rcx,rax
31ad3a  48 89 44 24 48                 mov    QWORD PTR [rsp+0x48],rax
31ad3f  4c 8b f8                       mov    r15,rax
31ad42  e8 c1 01 fb ff                 call   0x2caf08
31ad47  84 c0                          test   al,al
31ad49  0f 84 cc 50 00 00              je     0x31fe1b
31ad4f  e8 5c e0 fd ff                 call   0x2f8db0
31ad54  48 89 45 60                    mov    QWORD PTR [rbp+0x60],rax
31ad58  e8 17 e2 fd ff                 call   0x2f8f74
31ad5d  48 89 85 c8 00 00 00           mov    QWORD PTR [rbp+0xc8],rax
31ad64  e8 43 e7 fd ff                 call   0x2f94ac
31ad69  48 89 85 c0 00 00 00           mov    QWORD PTR [rbp+0xc0],rax
31ad70  e8 7f e9 fd ff                 call   0x2f96f4
31ad75  48 89 85 d0 00 00 00           mov    QWORD PTR [rbp+0xd0],rax
31ad7c  e8 b7 e3 fd ff                 call   0x2f9138
31ad81  48 89 85 d8 00 00 00           mov    QWORD PTR [rbp+0xd8],rax
31ad88  e8 a7 d2 fd ff                 call   0x2f8034
31ad8d  48 8b c8                       mov    rcx,rax
31ad90  48 89 85 b0 00 00 00           mov    QWORD PTR [rbp+0xb0],rax
31ad97  48 8b d8                       mov    rbx,rax
31ad9a  e8 69 01 fb ff                 call   0x2caf08
31ad9f  84 c0                          test   al,al
31ada1  0f 84 74 50 00 00              je     0x31fe1b
31ada7  33 d2                          xor    edx,edx
31ada9  49 8b cf                       mov    rcx,r15
31adac  e8 7b 25 fb ff                 call   0x2cd32c
31adb1  48 8b cb                       mov    rcx,rbx
31adb4  48 89 85 b8 00 00 00           mov    QWORD PTR [rbp+0xb8],rax
31adbb  e8 64 b7 ff ff                 call   0x316524
31adc0  33 ff                          xor    edi,edi
31adc2  89 45 a8                       mov    DWORD PTR [rbp-0x58],eax
31adc5  89 bd 98 0a 00 00              mov    DWORD PTR [rbp+0xa98],edi
31adcb  85 c0                          test   eax,eax
31adcd  0f 8e 48 50 00 00              jle    0x31fe1b
31add3  f3 44 0f 10 05 40 2d f7 ff     movss  xmm8,DWORD PTR [rip+0xfffffffffff72d40]        # 0x28db1c ; f32=10
31addc  f3 0f 10 35 50 83 f7 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff78350]        # 0x293134 ; f32=2
31ade4  f3 0f 10 3d cc 83 f7 ff        movss  xmm7,DWORD PTR [rip+0xfffffffffff783cc]        # 0x2931b8 ; f32=15
31adec  f3 44 0f 10 0d 0b 84 f7 ff     movss  xmm9,DWORD PTR [rip+0xfffffffffff7840b]        # 0x293200 ; f32=75
31adf5  48 8b cb                       mov    rcx,rbx
31adf8  e8 07 b7 ff ff                 call   0x316504
31adfd  48 8b c8                       mov    rcx,rax
31ae00  48 8b d8                       mov    rbx,rax
31ae03  e8 00 01 fb ff                 call   0x2caf08
31ae08  84 c0                          test   al,al
31ae0a  0f 84 eb 4f 00 00              je     0x31fdfb
31ae10  8d 0c fd 00 00 00 00           lea    ecx,[rdi*8+0x0]
31ae17  48 63 d1                       movsxd rdx,ecx
31ae1a  48 8b 5c 13 20                 mov    rbx,QWORD PTR [rbx+rdx*1+0x20]
31ae1f  48 8b cb                       mov    rcx,rbx
31ae22  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
31ae27  e8 dc 00 fb ff                 call   0x2caf08
31ae2c  33 ff                          xor    edi,edi
31ae2e  84 c0                          test   al,al
31ae30  0f 84 c5 4f 00 00              je     0x31fdfb
31ae36  48 8b cb                       mov    rcx,rbx
31ae39  e8 5e 60 fc ff                 call   0x2e0e9c
31ae3e  84 c0                          test   al,al
31ae40  0f 84 b5 4f 00 00              je     0x31fdfb
31ae46  48 8b 5b 10                    mov    rbx,QWORD PTR [rbx+0x10]
31ae4a  48 8b cb                       mov    rcx,rbx
31ae4d  e8 b6 00 fb ff                 call   0x2caf08
31ae52  84 c0                          test   al,al
31ae54  0f 84 a1 4f 00 00              je     0x31fdfb
31ae5a  48 8b 5b 20                    mov    rbx,QWORD PTR [rbx+0x20]
31ae5e  48 8b cb                       mov    rcx,rbx
31ae61  e8 a2 00 fb ff                 call   0x2caf08
31ae66  84 c0                          test   al,al
31ae68  0f 84 8d 4f 00 00              je     0x31fdfb
31ae6e  48 8b cb                       mov    rcx,rbx
31ae71  e8 92 00 fb ff                 call   0x2caf08
31ae76  84 c0                          test   al,al
31ae78  0f 84 7d 4f 00 00              je     0x31fdfb
31ae7e  48 8b cb                       mov    rcx,rbx
31ae81  e8 2e 87 05 00                 call   0x3735b4
31ae86  48 8b c8                       mov    rcx,rax
31ae89  4c 8b f0                       mov    r14,rax
31ae8c  e8 77 00 fb ff                 call   0x2caf08
31ae91  84 c0                          test   al,al
31ae93  0f 84 62 4f 00 00              je     0x31fdfb
31ae99  48 8b cb                       mov    rcx,rbx
31ae9c  e8 4f 87 05 00                 call   0x3735f0
31aea1  48 8b 4c 24 20                 mov    rcx,QWORD PTR [rsp+0x20]
31aea6  44 0f b7 e0                    movzx  r12d,ax
31aeaa  e8 a5 ab fc ff                 call   0x2e5a54
31aeaf  48 8b c8                       mov    rcx,rax
31aeb2  48 8b d0                       mov    rdx,rax
31aeb5  e8 4e 00 fb ff                 call   0x2caf08
31aeba  84 c0                          test   al,al
31aebc  0f 84 39 4f 00 00              je     0x31fdfb
31aec2  48 8b ca                       mov    rcx,rdx
31aec5  e8 8a b4 fb ff                 call   0x2d6354
31aeca  40 38 3d 97 df 0c 00           cmp    BYTE PTR [rip+0xcdf97],dil        # 0x3e8e68 ; CONFIG Bools.droppeditems value(+0x48)
31aed1  48 8b f0                       mov    rsi,rax
31aed4  0f 84 9d 00 00 00              je     0x31af77
31aeda  44 8d 47 10                    lea    r8d,[rdi+0x10]
31aede  48 8d 95 98 09 00 00           lea    rdx,[rbp+0x998]
31aee5  48 8d 0d bc 55 0d 00           lea    rcx,[rip+0xd55bc]        # 0x3f04a8 ; CONFIG VectorBools.WorldItemCatOptions value(+0x48)
31aeec  e8 ff e9 fc ff                 call   0x2e98f0
31aef1  48 8b c8                       mov    rcx,rax
31aef4  e8 77 9e fb ff                 call   0x2d4d70
31aef9  84 c0                          test   al,al
31aefb  74 7a                          je     0x31af77
31aefd  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31af02  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31af09  e8 96 70 fd ff                 call   0x2f1fa4 ; STRING getter=0x2f1fa4 DudTimedExplosive
31af0e  48 8b c8                       mov    rcx,rax
31af11  e8 66 d6 fb ff                 call   0x2d857c
31af16  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31af20  48 8b c8                       mov    rcx,rax
31af23  48 8b d3                       mov    rdx,rbx
31af26  e8 21 ac fc ff                 call   0x2e5b4c
31af2b  48 3b f0                       cmp    rsi,rax
31af2e  75 51                          jne    0x31af81
31af30  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31af35  48 8d 55 c0                    lea    rdx,[rbp-0x40]
31af39  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31af40  e8 fb 86 fd ff                 call   0x2f3640 ; STRING getter=0x2f3640 DudTimedExplosive
31af45  48 8b c8                       mov    rcx,rax
31af48  e8 2f d6 fb ff                 call   0x2d857c
31af4d  48 8b d0                       mov    rdx,rax
31af50  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31af55  e8 72 13 fb ff                 call   0x2cc2cc
31af5a  4c 8b cb                       mov    r9,rbx
31af5d  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31af62  8d 57 05                       lea    edx,[rdi+0x5]
31af65  49 8b cd                       mov    rcx,r13
31af68  e8 4f c7 ff ff                 call   0x3176bc
31af6d  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31af72  e8 7d 15 fb ff                 call   0x2cc4f4
31af77  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31af81  40 38 3d 20 bd 0c 00           cmp    BYTE PTR [rip+0xcbd20],dil        # 0x3e6ca8 ; CONFIG Bools.CCTV value(+0x48)
31af88  74 77                          je     0x31b001
31af8a  48 8d 95 19 03 00 00           lea    rdx,[rbp+0x319]
31af91  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31af98  e8 53 92 fd ff                 call   0x2f41f0
31af9d  48 8b c8                       mov    rcx,rax
31afa0  e8 93 21 fc ff                 call   0x2dd138
31afa5  48 8b c8                       mov    rcx,rax
31afa8  48 8b d3                       mov    rdx,rbx
31afab  e8 9c ab fc ff                 call   0x2e5b4c
31afb0  48 3b f0                       cmp    rsi,rax
31afb3  75 4c                          jne    0x31b001
31afb5  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31afba  48 8d 95 64 07 00 00           lea    rdx,[rbp+0x764]
31afc1  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31afc8  e8 9f 9a fd ff                 call   0x2f4a6c ; STRING getter=0x2f4a6c CCTV Camera
31afcd  48 8b c8                       mov    rcx,rax
31afd0  e8 37 2e fb ff                 call   0x2cde0c
31afd5  48 8b d0                       mov    rdx,rax
31afd8  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31afdd  e8 ea 12 fb ff                 call   0x2cc2cc
31afe2  4c 8b cb                       mov    r9,rbx
31afe5  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31afea  ba 09 00 00 00                 mov    edx,0x9
31afef  49 8b cd                       mov    rcx,r13
31aff2  e8 c5 c6 ff ff                 call   0x3176bc
31aff7  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31affc  e8 f3 14 fb ff                 call   0x2cc4f4
31b001  40 38 3d 10 cf 0b 00           cmp    BYTE PTR [rip+0xbcf10],dil        # 0x3d7f18 ; CONFIG Bools.SilentFarmOre value(+0x48)
31b008  75 25                          jne    0x31b02f
31b00a  40 38 3d 30 d2 0b 00           cmp    BYTE PTR [rip+0xbd230],dil        # 0x3d8241
31b011  75 1c                          jne    0x31b02f
31b013  40 38 3d 5e c9 0c 00           cmp    BYTE PTR [rip+0xcc95e],dil        # 0x3e7978 ; CONFIG Bools.NodePath value(+0x48)
31b01a  75 13                          jne    0x31b02f
31b01c  48 89 3d a5 c2 0b 00           mov    QWORD PTR [rip+0xbc2a5],rdi        # 0x3d72c8
31b023  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31b02d  eb 57                          jmp    0x31b086
31b02f  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31b034  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31b03b  e8 a0 a1 fd ff                 call   0x2f51e0 ; STRING getter=0x2f51e0 OreResourceEntity
31b040  48 8b c8                       mov    rcx,rax
31b043  e8 34 d5 fb ff                 call   0x2d857c
31b048  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31b052  48 8b c8                       mov    rcx,rax
31b055  48 8b d3                       mov    rdx,rbx
31b058  e8 ef aa fc ff                 call   0x2e5b4c
31b05d  48 3b f0                       cmp    rsi,rax
31b060  75 24                          jne    0x31b086
31b062  48 8b 95 d8 00 00 00           mov    rdx,QWORD PTR [rbp+0xd8]
31b069  48 8b ca                       mov    rcx,rdx
31b06c  e8 97 fe fa ff                 call   0x2caf08
31b071  84 c0                          test   al,al
31b073  74 11                          je     0x31b086
31b075  48 8b 44 24 20                 mov    rax,QWORD PTR [rsp+0x20]
31b07a  48 3b d0                       cmp    rdx,rax
31b07d  75 07                          jne    0x31b086
31b07f  48 89 05 42 c2 0b 00           mov    QWORD PTR [rip+0xbc242],rax        # 0x3d72c8
31b086  40 38 3d eb a1 0c 00           cmp    BYTE PTR [rip+0xca1eb],dil        # 0x3e5278 ; CONFIG Bools.SilentFarmTree value(+0x48)
31b08d  74 51                          je     0x31b0e0
31b08f  48 8d 95 91 05 00 00           lea    rdx,[rbp+0x591]
31b096  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31b09d  e8 2a af fd ff                 call   0x2f5fcc ; STRING getter=0x2f5fcc TreeEntity
31b0a2  48 8b c8                       mov    rcx,rax
31b0a5  e8 22 d5 fb ff                 call   0x2d85cc
31b0aa  48 8b c8                       mov    rcx,rax
31b0ad  48 8b d3                       mov    rdx,rbx
31b0b0  e8 97 aa fc ff                 call   0x2e5b4c
31b0b5  48 3b f0                       cmp    rsi,rax
31b0b8  75 2d                          jne    0x31b0e7
31b0ba  48 8b 95 d0 00 00 00           mov    rdx,QWORD PTR [rbp+0xd0]
31b0c1  48 8b ca                       mov    rcx,rdx
31b0c4  e8 3f fe fa ff                 call   0x2caf08
31b0c9  84 c0                          test   al,al
31b0cb  74 1a                          je     0x31b0e7
31b0cd  48 8b 44 24 20                 mov    rax,QWORD PTR [rsp+0x20]
31b0d2  48 3b d0                       cmp    rdx,rax
31b0d5  75 10                          jne    0x31b0e7
31b0d7  48 89 05 6a 91 0c 00           mov    QWORD PTR [rip+0xc916a],rax        # 0x3e4248
31b0de  eb 07                          jmp    0x31b0e7
31b0e0  48 89 3d 61 91 0c 00           mov    QWORD PTR [rip+0xc9161],rdi        # 0x3e4248
31b0e7  40 38 3d ca ec 0c 00           cmp    BYTE PTR [rip+0xcecca],dil        # 0x3e9db8 ; CONFIG Bools.Autolock value(+0x48)
31b0ee  74 77                          je     0x31b167
31b0f0  48 8d 95 dc 03 00 00           lea    rdx,[rbp+0x3dc]
31b0f7  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31b0fe  e8 5d ba fd ff                 call   0x2f6b60 ; STRING getter=0x2f6b60 CodeLock
31b103  48 8b c8                       mov    rcx,rax
31b106  e8 f9 d3 fb ff                 call   0x2d8504
31b10b  48 8b c8                       mov    rcx,rax
31b10e  48 8b d3                       mov    rdx,rbx
31b111  e8 36 aa fc ff                 call   0x2e5b4c
31b116  48 3b f0                       cmp    rsi,rax
31b119  74 29                          je     0x31b144
31b11b  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31b120  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31b127  e8 7c c1 fd ff                 call   0x2f72a8 ; STRING getter=0x2f72a8 DigitSendCodeLock
31b12c  48 8b c8                       mov    rcx,rax
31b12f  e8 48 d4 fb ff                 call   0x2d857c
31b134  48 8b c8                       mov    rcx,rax
31b137  48 8b d3                       mov    rdx,rbx
31b13a  e8 0d aa fc ff                 call   0x2e5b4c
31b13f  48 3b f0                       cmp    rsi,rax
31b142  75 2a                          jne    0x31b16e
31b144  48 8b 55 60                    mov    rdx,QWORD PTR [rbp+0x60]
31b148  48 8b ca                       mov    rcx,rdx
31b14b  e8 b8 fd fa ff                 call   0x2caf08
31b150  84 c0                          test   al,al
31b152  74 1a                          je     0x31b16e
31b154  48 8b 44 24 20                 mov    rax,QWORD PTR [rsp+0x20]
31b159  48 3b d0                       cmp    rdx,rax
31b15c  75 10                          jne    0x31b16e
31b15e  48 89 05 9b ad 0c 00           mov    QWORD PTR [rip+0xcad9b],rax        # 0x3e5f00
31b165  eb 07                          jmp    0x31b16e
31b167  48 89 3d 92 ad 0c 00           mov    QWORD PTR [rip+0xcad92],rdi        # 0x3e5f00
31b16e  40 38 3d 2c 44 0d 00           cmp    BYTE PTR [rip+0xd442c],dil        # 0x3ef5a1
31b175  74 7a                          je     0x31b1f1
31b177  48 8d 95 d3 03 00 00           lea    rdx,[rbp+0x3d3]
31b17e  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31b185  e8 2a cb fd ff                 call   0x2f7cb4 ; STRING getter=0x2f7cb4 CodeLock
31b18a  48 8b c8                       mov    rcx,rax
31b18d  e8 72 d3 fb ff                 call   0x2d8504
31b192  48 8b c8                       mov    rcx,rax
31b195  48 8b d3                       mov    rdx,rbx
31b198  e8 af a9 fc ff                 call   0x2e5b4c
31b19d  48 3b f0                       cmp    rsi,rax
31b1a0  74 29                          je     0x31b1cb
31b1a2  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31b1a7  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31b1ae  e8 35 51 fd ff                 call   0x2f02e8 ; STRING getter=0x2f02e8 DigitSendCodeLock
31b1b3  48 8b c8                       mov    rcx,rax
31b1b6  e8 c1 d3 fb ff                 call   0x2d857c
31b1bb  48 8b c8                       mov    rcx,rax
31b1be  48 8b d3                       mov    rdx,rbx
31b1c1  e8 86 a9 fc ff                 call   0x2e5b4c
31b1c6  48 3b f0                       cmp    rsi,rax
31b1c9  75 2d                          jne    0x31b1f8
31b1cb  48 8b 95 c8 00 00 00           mov    rdx,QWORD PTR [rbp+0xc8]
31b1d2  48 8b ca                       mov    rcx,rdx
31b1d5  e8 2e fd fa ff                 call   0x2caf08
31b1da  84 c0                          test   al,al
31b1dc  74 1a                          je     0x31b1f8
31b1de  48 8b 44 24 20                 mov    rax,QWORD PTR [rsp+0x20]
31b1e3  48 3b d0                       cmp    rdx,rax
31b1e6  75 10                          jne    0x31b1f8
31b1e8  48 89 05 19 ad 0c 00           mov    QWORD PTR [rip+0xcad19],rax        # 0x3e5f08
31b1ef  eb 07                          jmp    0x31b1f8
31b1f1  48 89 3d 10 ad 0c 00           mov    QWORD PTR [rip+0xcad10],rdi        # 0x3e5f08
31b1f8  40 38 3d 29 bd 0c 00           cmp    BYTE PTR [rip+0xcbd29],dil        # 0x3e6f28 ; CONFIG Bools.WoodPile value(+0x48)
31b1ff  0f 84 9d 00 00 00              je     0x31b2a2
31b205  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31b20a  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31b211  e8 36 56 fd ff                 call   0x2f084c ; STRING getter=0x2f084c OreResourceEntity
31b216  48 8b c8                       mov    rcx,rax
31b219  e8 5e d3 fb ff                 call   0x2d857c
31b21e  48 8b c8                       mov    rcx,rax
31b221  48 8b d3                       mov    rdx,rbx
31b224  e8 23 a9 fc ff                 call   0x2e5b4c
31b229  48 3b f0                       cmp    rsi,rax
31b22c  75 74                          jne    0x31b2a2
31b22e  48 8d 55 c0                    lea    rdx,[rbp-0x40]
31b232  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31b239  e8 16 59 fd ff                 call   0x2f0b54 ; STRING getter=0x2f0b54 wood_log_pile/wood-pile.prefab
31b23e  48 8b c8                       mov    rcx,rax
31b241  e8 de 53 00 00                 call   0x320624
31b246  48 8b d0                       mov    rdx,rax
31b249  49 8b ce                       mov    rcx,r14
31b24c  e8 0f f7 0a 00                 call   0x3ca960
31b251  48 85 c0                       test   rax,rax
31b254  74 4c                          je     0x31b2a2
31b256  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31b25b  48 8d 95 01 04 00 00           lea    rdx,[rbp+0x401]
31b262  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31b269  e8 56 5c fd ff                 call   0x2f0ec4 ; STRING getter=0x2f0ec4 Wood Pile
31b26e  48 8b c8                       mov    rcx,rax
31b271  e8 a6 2a fb ff                 call   0x2cdd1c
31b276  48 8b d0                       mov    rdx,rax
31b279  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31b27e  e8 49 10 fb ff                 call   0x2cc2cc
31b283  4c 8b cb                       mov    r9,rbx
31b286  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31b28b  ba 04 00 00 00                 mov    edx,0x4
31b290  49 8b cd                       mov    rcx,r13
31b293  e8 24 c4 ff ff                 call   0x3176bc
31b298  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31b29d  e8 52 12 fb ff                 call   0x2cc4f4
31b2a2  40 38 3d ef ba 0c 00           cmp    BYTE PTR [rip+0xcbaef],dil        # 0x3e6d98 ; CONFIG Bools.HBHFSensor value(+0x48)
31b2a9  0f 84 81 00 00 00              je     0x31b330
31b2af  48 8d 95 9c 05 00 00           lea    rdx,[rbp+0x59c]
31b2b6  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31b2bd  e8 8e 5e fd ff                 call   0x2f1150 ; STRING getter=0x2f1150 HBHFSensor
31b2c2  48 8b c8                       mov    rcx,rax
31b2c5  e8 02 d3 fb ff                 call   0x2d85cc
31b2ca  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31b2d4  48 8b c8                       mov    rcx,rax
31b2d7  48 8b d3                       mov    rdx,rbx
31b2da  e8 6d a8 fc ff                 call   0x2e5b4c
31b2df  48 3b f0                       cmp    rsi,rax
31b2e2  75 56                          jne    0x31b33a
31b2e4  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31b2e9  48 8d 95 e0 01 00 00           lea    rdx,[rbp+0x1e0]
31b2f0  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31b2f7  e8 30 62 fd ff                 call   0x2f152c ; STRING getter=0x2f152c HBHF
31b2fc  48 8b c8                       mov    rcx,rax
31b2ff  e8 e8 82 fc ff                 call   0x2e35ec
31b304  48 8b d0                       mov    rdx,rax
31b307  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31b30c  e8 bb 0f fb ff                 call   0x2cc2cc
31b311  4c 8b cb                       mov    r9,rbx
31b314  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31b319  ba 12 00 00 00                 mov    edx,0x12
31b31e  49 8b cd                       mov    rcx,r13
31b321  e8 96 c3 ff ff                 call   0x3176bc
31b326  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31b32b  e8 c4 11 fb ff                 call   0x2cc4f4
31b330  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31b33a  40 38 3d a7 ba 0c 00           cmp    BYTE PTR [rip+0xcbaa7],dil        # 0x3e6de8 ; CONFIG Bools.SeismicSensor value(+0x48)
31b341  74 77                          je     0x31b3ba
31b343  48 8d 95 f0 07 00 00           lea    rdx,[rbp+0x7f0]
31b34a  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31b351  e8 c2 64 fd ff                 call   0x2f1818 ; STRING getter=0x2f1818 SeismicSensor
31b356  48 8b c8                       mov    rcx,rax
31b359  e8 be d2 fb ff                 call   0x2d861c
31b35e  48 8b c8                       mov    rcx,rax
31b361  48 8b d3                       mov    rdx,rbx
31b364  e8 e3 a7 fc ff                 call   0x2e5b4c
31b369  48 3b f0                       cmp    rsi,rax
31b36c  75 4c                          jne    0x31b3ba
31b36e  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31b373  48 8d 95 7c 08 00 00           lea    rdx,[rbp+0x87c]
31b37a  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31b381  e8 b6 67 fd ff                 call   0x2f1b3c ; STRING getter=0x2f1b3c Seismic Sensor
31b386  48 8b c8                       mov    rcx,rax
31b389  e8 b6 d2 fb ff                 call   0x2d8644
31b38e  48 8b d0                       mov    rdx,rax
31b391  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31b396  e8 31 0f fb ff                 call   0x2cc2cc
31b39b  4c 8b cb                       mov    r9,rbx
31b39e  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31b3a3  ba 13 00 00 00                 mov    edx,0x13
31b3a8  49 8b cd                       mov    rcx,r13
31b3ab  e8 0c c3 ff ff                 call   0x3176bc
31b3b0  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31b3b5  e8 3a 11 fb ff                 call   0x2cc4f4
31b3ba  40 38 3d 87 b9 0c 00           cmp    BYTE PTR [rip+0xcb987],dil        # 0x3e6d48 ; CONFIG Bools.LargeBattery value(+0x48)
31b3c1  0f 84 b0 00 00 00              je     0x31b477
31b3c7  48 8d 95 a8 09 00 00           lea    rdx,[rbp+0x9a8]
31b3ce  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31b3d5  e8 de 68 fd ff                 call   0x2f1cb8 ; STRING getter=0x2f1cb8 ElectricBattery
31b3da  48 8b c8                       mov    rcx,rax
31b3dd  e8 4a d1 fb ff                 call   0x2d852c
31b3e2  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31b3ec  48 8b c8                       mov    rcx,rax
31b3ef  48 8b d3                       mov    rdx,rbx
31b3f2  e8 55 a7 fc ff                 call   0x2e5b4c
31b3f7  48 3b f0                       cmp    rsi,rax
31b3fa  0f 85 81 00 00 00              jne    0x31b481
31b400  48 8d 95 9e 02 00 00           lea    rdx,[rbp+0x29e]
31b407  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31b40e  e8 4d 6a fd ff                 call   0x2f1e60 ; STRING getter=0x2f1e60 large
31b413  48 8b c8                       mov    rcx,rax
31b416  e8 99 d0 fb ff                 call   0x2d84b4
31b41b  48 8b d0                       mov    rdx,rax
31b41e  49 8b ce                       mov    rcx,r14
31b421  e8 3a f5 0a 00                 call   0x3ca960
31b426  48 85 c0                       test   rax,rax
31b429  74 56                          je     0x31b481
31b42b  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31b430  48 8d 95 fe 07 00 00           lea    rdx,[rbp+0x7fe]
31b437  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31b43e  e8 cd 70 fd ff                 call   0x2f2510 ; STRING getter=0x2f2510 Large Battery
31b443  48 8b c8                       mov    rcx,rax
31b446  e8 d1 d1 fb ff                 call   0x2d861c
31b44b  48 8b d0                       mov    rdx,rax
31b44e  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31b453  e8 74 0e fb ff                 call   0x2cc2cc
31b458  4c 8b cb                       mov    r9,rbx
31b45b  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31b460  ba 14 00 00 00                 mov    edx,0x14
31b465  49 8b cd                       mov    rcx,r13
31b468  e8 4f c2 ff ff                 call   0x3176bc
31b46d  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31b472  e8 7d 10 fb ff                 call   0x2cc4f4
31b477  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31b481  40 38 3d 40 c5 0c 00           cmp    BYTE PTR [rip+0xcc540],dil        # 0x3e79c8 ; CONFIG Bools.StoneOre value(+0x48)
31b488  75 1f                          jne    0x31b4a9
31b48a  40 38 3d d7 c5 0c 00           cmp    BYTE PTR [rip+0xcc5d7],dil        # 0x3e7a68 ; CONFIG Bools.MetalOre value(+0x48)
31b491  75 16                          jne    0x31b4a9
31b493  40 38 3d 6e c6 0c 00           cmp    BYTE PTR [rip+0xcc66e],dil        # 0x3e7b08 ; CONFIG Bools.SulfurOre value(+0x48)
31b49a  75 0d                          jne    0x31b4a9
31b49c  40 38 3d 75 c5 0c 00           cmp    BYTE PTR [rip+0xcc575],dil        # 0x3e7a18 ; CONFIG Bools.HQMOre value(+0x48)
31b4a3  0f 84 d8 02 00 00              je     0x31b781
31b4a9  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31b4ae  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31b4b5  e8 9e 71 fd ff                 call   0x2f2658 ; STRING getter=0x2f2658 OreResourceEntity
31b4ba  48 8b c8                       mov    rcx,rax
31b4bd  e8 ba d0 fb ff                 call   0x2d857c
31b4c2  48 8b c8                       mov    rcx,rax
31b4c5  48 8b d3                       mov    rdx,rbx
31b4c8  e8 7f a6 fc ff                 call   0x2e5b4c
31b4cd  48 3b f0                       cmp    rsi,rax
31b4d0  0f 85 ab 02 00 00              jne    0x31b781
31b4d6  40 38 3d 3b c5 0c 00           cmp    BYTE PTR [rip+0xcc53b],dil        # 0x3e7a18 ; CONFIG Bools.HQMOre value(+0x48)
31b4dd  75 09                          jne    0x31b4e8
31b4df  40 38 3d 92 c4 0c 00           cmp    BYTE PTR [rip+0xcc492],dil        # 0x3e7978 ; CONFIG Bools.NodePath value(+0x48)
31b4e6  74 77                          je     0x31b55f
31b4e8  48 8d 95 e0 00 00 00           lea    rdx,[rbp+0xe0]
31b4ef  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31b4f6  e8 d1 72 fd ff                 call   0x2f27cc ; STRING getter=0x2f27cc hqm
31b4fb  48 8b c8                       mov    rcx,rax
31b4fe  e8 e5 1b fc ff                 call   0x2dd0e8
31b503  48 8b d0                       mov    rdx,rax
31b506  49 8b ce                       mov    rcx,r14
31b509  e8 52 f4 0a 00                 call   0x3ca960
31b50e  48 85 c0                       test   rax,rax
31b511  74 4c                          je     0x31b55f
31b513  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31b518  48 8d 95 11 03 00 00           lea    rdx,[rbp+0x311]
31b51f  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31b526  e8 15 75 fd ff                 call   0x2f2a40
31b52b  48 8b c8                       mov    rcx,rax
31b52e  e8 05 1c fc ff                 call   0x2dd138
31b533  48 8b d0                       mov    rdx,rax
31b536  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31b53b  e8 8c 0d fb ff                 call   0x2cc2cc
31b540  4c 8b cb                       mov    r9,rbx
31b543  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31b548  ba 7a 00 00 00                 mov    edx,0x7a
31b54d  49 8b cd                       mov    rcx,r13
31b550  e8 67 c1 ff ff                 call   0x3176bc
31b555  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31b55a  e8 95 0f fb ff                 call   0x2cc4f4
31b55f  40 38 3d 62 c4 0c 00           cmp    BYTE PTR [rip+0xcc462],dil        # 0x3e79c8 ; CONFIG Bools.StoneOre value(+0x48)
31b566  75 0d                          jne    0x31b575
31b568  40 38 3d 09 c4 0c 00           cmp    BYTE PTR [rip+0xcc409],dil        # 0x3e7978 ; CONFIG Bools.NodePath value(+0x48)
31b56f  0f 84 a0 00 00 00              je     0x31b615
31b575  48 8d 95 98 02 00 00           lea    rdx,[rbp+0x298]
31b57c  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31b583  e8 64 76 fd ff                 call   0x2f2bec ; STRING getter=0x2f2bec stone
31b588  48 8b c8                       mov    rcx,rax
31b58b  e8 24 cf fb ff                 call   0x2d84b4
31b590  48 8b d0                       mov    rdx,rax
31b593  49 8b ce                       mov    rcx,r14
31b596  e8 c5 f3 0a 00                 call   0x3ca960
31b59b  48 85 c0                       test   rax,rax
31b59e  74 75                          je     0x31b615
31b5a0  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31b5a5  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31b5ac  e8 cf 78 fd ff                 call   0x2f2e80 ; STRING getter=0x2f2e80 assets/bundled/prefabs/radtown/ore_stone.prefab
31b5b1  48 8b c8                       mov    rcx,rax
31b5b4  e8 0b 51 00 00                 call   0x3206c4
31b5b9  48 8b d0                       mov    rdx,rax
31b5bc  49 8b ce                       mov    rcx,r14
31b5bf  e8 9c f3 0a 00                 call   0x3ca960
31b5c4  48 85 c0                       test   rax,rax
31b5c7  75 4c                          jne    0x31b615
31b5c9  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31b5ce  48 8d 95 e5 03 00 00           lea    rdx,[rbp+0x3e5]
31b5d5  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31b5dc  e8 cf 7a fd ff                 call   0x2f30b0 ; STRING getter=0x2f30b0 StoneOre
31b5e1  48 8b c8                       mov    rcx,rax
31b5e4  e8 1b cf fb ff                 call   0x2d8504
31b5e9  48 8b d0                       mov    rdx,rax
31b5ec  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31b5f1  e8 d6 0c fb ff                 call   0x2cc2cc
31b5f6  4c 8b cb                       mov    r9,rbx
31b5f9  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31b5fe  ba 01 00 00 00                 mov    edx,0x1
31b603  49 8b cd                       mov    rcx,r13
31b606  e8 b1 c0 ff ff                 call   0x3176bc
31b60b  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31b610  e8 df 0e fb ff                 call   0x2cc4f4
31b615  40 38 3d 4c c4 0c 00           cmp    BYTE PTR [rip+0xcc44c],dil        # 0x3e7a68 ; CONFIG Bools.MetalOre value(+0x48)
31b61c  75 0d                          jne    0x31b62b
31b61e  40 38 3d 53 c3 0c 00           cmp    BYTE PTR [rip+0xcc353],dil        # 0x3e7978 ; CONFIG Bools.NodePath value(+0x48)
31b625  0f 84 a0 00 00 00              je     0x31b6cb
31b62b  48 8d 95 82 02 00 00           lea    rdx,[rbp+0x282]
31b632  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31b639  e8 3a 7c fd ff                 call   0x2f3278 ; STRING getter=0x2f3278 metal
31b63e  48 8b c8                       mov    rcx,rax
31b641  e8 6e ce fb ff                 call   0x2d84b4
31b646  48 8b d0                       mov    rdx,rax
31b649  49 8b ce                       mov    rcx,r14
31b64c  e8 0f f3 0a 00                 call   0x3ca960
31b651  48 85 c0                       test   rax,rax
31b654  74 75                          je     0x31b6cb
31b656  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31b65b  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31b662  e8 8d 7d fd ff                 call   0x2f33f4 ; STRING getter=0x2f33f4 assets/bundled/prefabs/radtown/ore_metal.prefab
31b667  48 8b c8                       mov    rcx,rax
31b66a  e8 55 50 00 00                 call   0x3206c4
31b66f  48 8b d0                       mov    rdx,rax
31b672  49 8b ce                       mov    rcx,r14
31b675  e8 e6 f2 0a 00                 call   0x3ca960
31b67a  48 85 c0                       test   rax,rax
31b67d  75 4c                          jne    0x31b6cb
31b67f  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31b684  48 8d 95 ee 03 00 00           lea    rdx,[rbp+0x3ee]
31b68b  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31b692  e8 3d 7f fd ff                 call   0x2f35d4 ; STRING getter=0x2f35d4 MetalOre
31b697  48 8b c8                       mov    rcx,rax
31b69a  e8 65 ce fb ff                 call   0x2d8504
31b69f  48 8b d0                       mov    rdx,rax
31b6a2  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31b6a7  e8 20 0c fb ff                 call   0x2cc2cc
31b6ac  4c 8b cb                       mov    r9,rbx
31b6af  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31b6b4  ba 02 00 00 00                 mov    edx,0x2
31b6b9  49 8b cd                       mov    rcx,r13
31b6bc  e8 fb bf ff ff                 call   0x3176bc
31b6c1  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31b6c6  e8 29 0e fb ff                 call   0x2cc4f4
31b6cb  40 38 3d 36 c4 0c 00           cmp    BYTE PTR [rip+0xcc436],dil        # 0x3e7b08 ; CONFIG Bools.SulfurOre value(+0x48)
31b6d2  75 0d                          jne    0x31b6e1
31b6d4  40 38 3d 9d c2 0c 00           cmp    BYTE PTR [rip+0xcc29d],dil        # 0x3e7978 ; CONFIG Bools.NodePath value(+0x48)
31b6db  0f 84 a0 00 00 00              je     0x31b781
31b6e1  48 8d 95 a4 02 00 00           lea    rdx,[rbp+0x2a4]
31b6e8  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31b6ef  e8 00 82 fd ff                 call   0x2f38f4 ; STRING getter=0x2f38f4 sulfur
31b6f4  48 8b c8                       mov    rcx,rax
31b6f7  e8 14 1a fc ff                 call   0x2dd110
31b6fc  48 8b d0                       mov    rdx,rax
31b6ff  49 8b ce                       mov    rcx,r14
31b702  e8 59 f2 0a 00                 call   0x3ca960
31b707  48 85 c0                       test   rax,rax
31b70a  74 75                          je     0x31b781
31b70c  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31b711  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31b718  e8 9f 82 fd ff                 call   0x2f39bc ; STRING getter=0x2f39bc assets/bundled/prefabs/radtown/ore_sulfur.prefab
31b71d  48 8b c8                       mov    rcx,rax
31b720  e8 c7 4f 00 00                 call   0x3206ec
31b725  48 8b d0                       mov    rdx,rax
31b728  49 8b ce                       mov    rcx,r14
31b72b  e8 30 f2 0a 00                 call   0x3ca960
31b730  48 85 c0                       test   rax,rax
31b733  75 4c                          jne    0x31b781
31b735  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31b73a  48 8d 95 ab 04 00 00           lea    rdx,[rbp+0x4ab]
31b741  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31b748  e8 db 83 fd ff                 call   0x2f3b28 ; STRING getter=0x2f3b28 SulfurOre
31b74d  48 8b c8                       mov    rcx,rax
31b750  e8 c7 25 fb ff                 call   0x2cdd1c
31b755  48 8b d0                       mov    rdx,rax
31b758  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31b75d  e8 6a 0b fb ff                 call   0x2cc2cc
31b762  4c 8b cb                       mov    r9,rbx
31b765  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31b76a  ba 03 00 00 00                 mov    edx,0x3
31b76f  49 8b cd                       mov    rcx,r13
31b772  e8 45 bf ff ff                 call   0x3176bc
31b777  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31b77c  e8 73 0d fb ff                 call   0x2cc4f4
31b781  40 38 3d d0 cd 0c 00           cmp    BYTE PTR [rip+0xccdd0],dil        # 0x3e8558 ; CONFIG Bools.CarESP value(+0x48)
31b788  0f 84 81 00 00 00              je     0x31b80f
31b78e  48 8d 95 a7 05 00 00           lea    rdx,[rbp+0x5a7]
31b795  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31b79c  e8 b3 84 fd ff                 call   0x2f3c54 ; STRING getter=0x2f3c54 ModularCar
31b7a1  48 8b c8                       mov    rcx,rax
31b7a4  e8 23 ce fb ff                 call   0x2d85cc
31b7a9  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31b7b3  48 8b c8                       mov    rcx,rax
31b7b6  48 8b d3                       mov    rdx,rbx
31b7b9  e8 8e a3 fc ff                 call   0x2e5b4c
31b7be  48 3b f0                       cmp    rsi,rax
31b7c1  75 56                          jne    0x31b819
31b7c3  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31b7c8  48 8d 95 e4 00 00 00           lea    rdx,[rbp+0xe4]
31b7cf  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31b7d6  e8 d9 85 fd ff                 call   0x2f3db4 ; STRING getter=0x2f3db4 Car
31b7db  48 8b c8                       mov    rcx,rax
31b7de  e8 05 19 fc ff                 call   0x2dd0e8
31b7e3  48 8b d0                       mov    rdx,rax
31b7e6  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31b7eb  e8 dc 0a fb ff                 call   0x2cc2cc
31b7f0  4c 8b cb                       mov    r9,rbx
31b7f3  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31b7f8  ba 7d 00 00 00                 mov    edx,0x7d
31b7fd  49 8b cd                       mov    rcx,r13
31b800  e8 b7 be ff ff                 call   0x3176bc
31b805  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31b80a  e8 e5 0c fb ff                 call   0x2cc4f4
31b80f  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31b819  40 38 3d 88 cd 0c 00           cmp    BYTE PTR [rip+0xccd88],dil        # 0x3e85a8 ; CONFIG Bools.TrainESP value(+0x48)
31b820  74 77                          je     0x31b899
31b822  48 8d 95 70 07 00 00           lea    rdx,[rbp+0x770]
31b829  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31b830  e8 37 86 fd ff                 call   0x2f3e6c ; STRING getter=0x2f3e6c TrainEngine
31b835  48 8b c8                       mov    rcx,rax
31b838  e8 cf 25 fb ff                 call   0x2cde0c
31b83d  48 8b c8                       mov    rcx,rax
31b840  48 8b d3                       mov    rdx,rbx
31b843  e8 04 a3 fc ff                 call   0x2e5b4c
31b848  48 3b f0                       cmp    rsi,rax
31b84b  75 4c                          jne    0x31b899
31b84d  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31b852  48 8d 95 7c 02 00 00           lea    rdx,[rbp+0x27c]
31b859  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31b860  e8 07 87 fd ff                 call   0x2f3f6c ; STRING getter=0x2f3f6c Train
31b865  48 8b c8                       mov    rcx,rax
31b868  e8 47 cc fb ff                 call   0x2d84b4
31b86d  48 8b d0                       mov    rdx,rax
31b870  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31b875  e8 52 0a fb ff                 call   0x2cc2cc
31b87a  4c 8b cb                       mov    r9,rbx
31b87d  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31b882  ba 72 00 00 00                 mov    edx,0x72
31b887  49 8b cd                       mov    rcx,r13
31b88a  e8 2d be ff ff                 call   0x3176bc
31b88f  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31b894  e8 5b 0c fb ff                 call   0x2cc4f4
31b899  40 38 3d 58 e1 0c 00           cmp    BYTE PTR [rip+0xce158],dil        # 0x3e99f8 ; CONFIG Bools.DrawDrone value(+0x48)
31b8a0  0f 84 81 00 00 00              je     0x31b927
31b8a6  48 8d 95 76 02 00 00           lea    rdx,[rbp+0x276]
31b8ad  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31b8b4  e8 c3 87 fd ff                 call   0x2f407c ; STRING getter=0x2f407c Drone
31b8b9  48 8b c8                       mov    rcx,rax
31b8bc  e8 f3 cb fb ff                 call   0x2d84b4
31b8c1  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31b8cb  48 8b c8                       mov    rcx,rax
31b8ce  48 8b d3                       mov    rdx,rbx
31b8d1  e8 76 a2 fc ff                 call   0x2e5b4c
31b8d6  48 3b f0                       cmp    rsi,rax
31b8d9  75 56                          jne    0x31b931
31b8db  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31b8e0  48 8d 95 ce 02 00 00           lea    rdx,[rbp+0x2ce]
31b8e7  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31b8ee  e8 29 88 fd ff                 call   0x2f411c ; STRING getter=0x2f411c Drones
31b8f3  48 8b c8                       mov    rcx,rax
31b8f6  e8 15 18 fc ff                 call   0x2dd110
31b8fb  48 8b d0                       mov    rdx,rax
31b8fe  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31b903  e8 c4 09 fb ff                 call   0x2cc2cc
31b908  4c 8b cb                       mov    r9,rbx
31b90b  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31b910  ba 0c 00 00 00                 mov    edx,0xc
31b915  49 8b cd                       mov    rcx,r13
31b918  e8 9f bd ff ff                 call   0x3176bc
31b91d  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31b922  e8 cd 0b fb ff                 call   0x2cc4f4
31b927  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31b931  40 38 3d 90 b6 0c 00           cmp    BYTE PTR [rip+0xcb690],dil        # 0x3e6fc8 ; CONFIG Bools.DrawBikes value(+0x48)
31b938  75 0d                          jne    0x31b947
31b93a  40 38 3d 37 b6 0c 00           cmp    BYTE PTR [rip+0xcb637],dil        # 0x3e6f78 ; CONFIG Bools.MetalBike value(+0x48)
31b941  0f 84 bb 01 00 00              je     0x31bb02
31b947  48 8d 95 e5 01 00 00           lea    rdx,[rbp+0x1e5]
31b94e  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31b955  e8 ee 87 fd ff                 call   0x2f4148 ; STRING getter=0x2f4148 Bike
31b95a  48 8b c8                       mov    rcx,rax
31b95d  e8 8a 7c fc ff                 call   0x2e35ec
31b962  48 8b c8                       mov    rcx,rax
31b965  48 8b d3                       mov    rdx,rbx
31b968  e8 df a1 fc ff                 call   0x2e5b4c
31b96d  48 3b f0                       cmp    rsi,rax
31b970  0f 85 8c 01 00 00              jne    0x31bb02
31b976  40 38 3d 4b b6 0c 00           cmp    BYTE PTR [rip+0xcb64b],dil        # 0x3e6fc8 ; CONFIG Bools.DrawBikes value(+0x48)
31b97d  0f 84 bd 00 00 00              je     0x31ba40
31b983  48 8d 95 15 04 00 00           lea    rdx,[rbp+0x415]
31b98a  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31b991  e8 da 89 fd ff                 call   0x2f4370 ; STRING getter=0x2f4370 pedalbike
31b996  48 8b c8                       mov    rcx,rax
31b999  e8 7e 23 fb ff                 call   0x2cdd1c
31b99e  48 8b d0                       mov    rdx,rax
31b9a1  49 8b ce                       mov    rcx,r14
31b9a4  e8 b7 ef 0a 00                 call   0x3ca960
31b9a9  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31b9b0  48 85 c0                       test   rax,rax
31b9b3  74 1b                          je     0x31b9d0
31b9b5  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31b9ba  48 8d 95 a1 04 00 00           lea    rdx,[rbp+0x4a1]
31b9c1  e8 4e 8a fd ff                 call   0x2f4414 ; STRING getter=0x2f4414 PedalBike
31b9c6  48 8b c8                       mov    rcx,rax
31b9c9  e8 4e 23 fb ff                 call   0x2cdd1c
31b9ce  eb 44                          jmp    0x31ba14
31b9d0  48 8d 95 44 05 00 00           lea    rdx,[rbp+0x544]
31b9d7  e8 c0 8a fd ff                 call   0x2f449c ; STRING getter=0x2f449c pedaltrike
31b9dc  48 8b c8                       mov    rcx,rax
31b9df  e8 e8 cb fb ff                 call   0x2d85cc
31b9e4  48 8b d0                       mov    rdx,rax
31b9e7  49 8b ce                       mov    rcx,r14
31b9ea  e8 71 ef 0a 00                 call   0x3ca960
31b9ef  48 85 c0                       test   rax,rax
31b9f2  74 4c                          je     0x31ba40
31b9f4  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31b9f9  48 8d 95 b5 04 00 00           lea    rdx,[rbp+0x4b5]
31ba00  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31ba07  e8 98 8b fd ff                 call   0x2f45a4 ; STRING getter=0x2f45a4 PedalTrike
31ba0c  48 8b c8                       mov    rcx,rax
31ba0f  e8 b8 cb fb ff                 call   0x2d85cc
31ba14  48 8b d0                       mov    rdx,rax
31ba17  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31ba1c  e8 ab 08 fb ff                 call   0x2cc2cc
31ba21  4c 8b cb                       mov    r9,rbx
31ba24  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31ba29  ba 0d 00 00 00                 mov    edx,0xd
31ba2e  49 8b cd                       mov    rcx,r13
31ba31  e8 86 bc ff ff                 call   0x3176bc
31ba36  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31ba3b  e8 b4 0a fb ff                 call   0x2cc4f4
31ba40  40 38 3d 31 b5 0c 00           cmp    BYTE PTR [rip+0xcb531],dil        # 0x3e6f78 ; CONFIG Bools.MetalBike value(+0x48)
31ba47  0f 84 b5 00 00 00              je     0x31bb02
31ba4d  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31ba52  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31ba59  e8 de 8b fd ff                 call   0x2f463c ; STRING getter=0x2f463c motorbike_sidecar
31ba5e  48 8b c8                       mov    rcx,rax
31ba61  e8 16 cb fb ff                 call   0x2d857c
31ba66  48 8b d0                       mov    rdx,rax
31ba69  49 8b ce                       mov    rcx,r14
31ba6c  e8 ef ee 0a 00                 call   0x3ca960
31ba71  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31ba78  48 85 c0                       test   rax,rax
31ba7b  74 18                          je     0x31ba95
31ba7d  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31ba82  48 8d 55 c0                    lea    rdx,[rbp-0x40]
31ba86  e8 45 8c fd ff                 call   0x2f46d0 ; STRING getter=0x2f46d0 MotorBike Sidecar
31ba8b  48 8b c8                       mov    rcx,rax
31ba8e  e8 e9 ca fb ff                 call   0x2d857c
31ba93  eb 41                          jmp    0x31bad6
31ba95  48 8d 55 c0                    lea    rdx,[rbp-0x40]
31ba99  e8 ae 8c fd ff                 call   0x2f474c ; STRING getter=0x2f474c motorbike.prefab
31ba9e  48 8b c8                       mov    rcx,rax
31baa1  e8 ae ca fb ff                 call   0x2d8554
31baa6  48 8b d0                       mov    rdx,rax
31baa9  49 8b ce                       mov    rcx,r14
31baac  e8 af ee 0a 00                 call   0x3ca960
31bab1  48 85 c0                       test   rax,rax
31bab4  74 4c                          je     0x31bb02
31bab6  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31babb  48 8d 95 8d 04 00 00           lea    rdx,[rbp+0x48d]
31bac2  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31bac9  e8 2e 8d fd ff                 call   0x2f47fc ; STRING getter=0x2f47fc MotorBike
31bace  48 8b c8                       mov    rcx,rax
31bad1  e8 46 22 fb ff                 call   0x2cdd1c
31bad6  48 8b d0                       mov    rdx,rax
31bad9  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31bade  e8 e9 07 fb ff                 call   0x2cc2cc
31bae3  4c 8b cb                       mov    r9,rbx
31bae6  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31baeb  ba 0e 00 00 00                 mov    edx,0xe
31baf0  49 8b cd                       mov    rcx,r13
31baf3  e8 c4 bb ff ff                 call   0x3176bc
31baf8  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31bafd  e8 f2 09 fb ff                 call   0x2cc4f4
31bb02  40 38 3d cf d6 0c 00           cmp    BYTE PTR [rip+0xcd6cf],dil        # 0x3e91d8 ; CONFIG Bools.PatrolHeli value(+0x48)
31bb09  0f 84 ee 00 00 00              je     0x31bbfd
31bb0f  48 8d 55 c0                    lea    rdx,[rbp-0x40]
31bb13  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31bb1a  e8 51 8d fd ff                 call   0x2f4870 ; STRING getter=0x2f4870 PatrolHelicopter
31bb1f  48 8b c8                       mov    rcx,rax
31bb22  e8 2d ca fb ff                 call   0x2d8554
31bb27  48 8b c8                       mov    rcx,rax
31bb2a  48 ba 25 23 22 84 e4 9c f2 cb  movabs rdx,0xcbf29ce484222325
31bb34  e8 13 a0 fc ff                 call   0x2e5b4c
31bb39  48 3b f0                       cmp    rsi,rax
31bb3c  75 4a                          jne    0x31bb88
31bb3e  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31bb43  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31bb48  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31bb4f  e8 dc 8d fd ff                 call   0x2f4930 ; STRING getter=0x2f4930 PatrolHelicopter
31bb54  48 8b c8                       mov    rcx,rax
31bb57  e8 f8 c9 fb ff                 call   0x2d8554
31bb5c  48 8b d0                       mov    rdx,rax
31bb5f  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31bb64  e8 63 07 fb ff                 call   0x2cc2cc
31bb69  4c 8b cb                       mov    r9,rbx
31bb6c  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31bb71  ba 0f 00 00 00                 mov    edx,0xf
31bb76  49 8b cd                       mov    rcx,r13
31bb79  e8 3e bb ff ff                 call   0x3176bc
31bb7e  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31bb83  e8 6c 09 fb ff                 call   0x2cc4f4
31bb88  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31bb8d  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31bb94  e8 6b 8f fd ff                 call   0x2f4b04 ; STRING getter=0x2f4b04 heli_crate.prefab
31bb99  48 8b c8                       mov    rcx,rax
31bb9c  e8 db c9 fb ff                 call   0x2d857c
31bba1  48 8b d0                       mov    rdx,rax
31bba4  49 8b ce                       mov    rcx,r14
31bba7  e8 b4 ed 0a 00                 call   0x3ca960
31bbac  48 85 c0                       test   rax,rax
31bbaf  74 4c                          je     0x31bbfd
31bbb1  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31bbb6  48 8d 95 c0 04 00 00           lea    rdx,[rbp+0x4c0]
31bbbd  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31bbc4  e8 03 90 fd ff                 call   0x2f4bcc ; STRING getter=0x2f4bcc heli_crate
31bbc9  48 8b c8                       mov    rcx,rax
31bbcc  e8 fb c9 fb ff                 call   0x2d85cc
31bbd1  48 8b d0                       mov    rdx,rax
31bbd4  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31bbd9  e8 ee 06 fb ff                 call   0x2cc2cc
31bbde  4c 8b cb                       mov    r9,rbx
31bbe1  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31bbe6  ba 10 00 00 00                 mov    edx,0x10
31bbeb  49 8b cd                       mov    rcx,r13
31bbee  e8 c9 ba ff ff                 call   0x3176bc
31bbf3  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31bbf8  e8 f7 08 fb ff                 call   0x2cc4f4
31bbfd  40 38 3d 64 b9 0c 00           cmp    BYTE PTR [rip+0xcb964],dil        # 0x3e7568 ; CONFIG Bools.recycler value(+0x48)
31bc04  0f 84 81 00 00 00              je     0x31bc8b
31bc0a  48 8d 95 79 03 00 00           lea    rdx,[rbp+0x379]
31bc11  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31bc18  e8 e7 8f fd ff                 call   0x2f4c04 ; STRING getter=0x2f4c04 Recycler
31bc1d  48 8b c8                       mov    rcx,rax
31bc20  e8 df c8 fb ff                 call   0x2d8504
31bc25  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31bc2f  48 8b c8                       mov    rcx,rax
31bc32  48 8b d3                       mov    rdx,rbx
31bc35  e8 12 9f fc ff                 call   0x2e5b4c
31bc3a  48 3b f0                       cmp    rsi,rax
31bc3d  75 56                          jne    0x31bc95
31bc3f  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31bc44  48 8d 95 82 03 00 00           lea    rdx,[rbp+0x382]
31bc4b  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31bc52  e8 79 90 fd ff                 call   0x2f4cd0 ; STRING getter=0x2f4cd0 Recycler
31bc57  48 8b c8                       mov    rcx,rax
31bc5a  e8 a5 c8 fb ff                 call   0x2d8504
31bc5f  48 8b d0                       mov    rdx,rax
31bc62  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31bc67  e8 60 06 fb ff                 call   0x2cc2cc
31bc6c  4c 8b cb                       mov    r9,rbx
31bc6f  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31bc74  ba 11 00 00 00                 mov    edx,0x11
31bc79  49 8b cd                       mov    rcx,r13
31bc7c  e8 3b ba ff ff                 call   0x3176bc
31bc81  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31bc86  e8 69 08 fb ff                 call   0x2cc4f4
31bc8b  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31bc95  40 38 3d 8c d5 0c 00           cmp    BYTE PTR [rip+0xcd58c],dil        # 0x3e9228 ; CONFIG Bools.Bradley value(+0x48)
31bc9c  0f 84 ee 00 00 00              je     0x31bd90
31bca2  48 8d 95 cb 04 00 00           lea    rdx,[rbp+0x4cb]
31bca9  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31bcb0  e8 bb 90 fd ff                 call   0x2f4d70 ; STRING getter=0x2f4d70 BradleyAPC
31bcb5  48 8b c8                       mov    rcx,rax
31bcb8  e8 0f c9 fb ff                 call   0x2d85cc
31bcbd  48 8b c8                       mov    rcx,rax
31bcc0  48 8b d3                       mov    rdx,rbx
31bcc3  e8 84 9e fc ff                 call   0x2e5b4c
31bcc8  48 3b f0                       cmp    rsi,rax
31bccb  75 4c                          jne    0x31bd19
31bccd  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31bcd2  48 8d 95 d6 04 00 00           lea    rdx,[rbp+0x4d6]
31bcd9  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31bce0  e8 cf 91 fd ff                 call   0x2f4eb4 ; STRING getter=0x2f4eb4 BradleyAPC
31bce5  48 8b c8                       mov    rcx,rax
31bce8  e8 df c8 fb ff                 call   0x2d85cc
31bced  48 8b d0                       mov    rdx,rax
31bcf0  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31bcf5  e8 d2 05 fb ff                 call   0x2cc2cc
31bcfa  4c 8b cb                       mov    r9,rbx
31bcfd  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31bd02  ba 15 00 00 00                 mov    edx,0x15
31bd07  49 8b cd                       mov    rcx,r13
31bd0a  e8 ad b9 ff ff                 call   0x3176bc
31bd0f  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31bd14  e8 db 07 fb ff                 call   0x2cc4f4
31bd19  48 8d 95 0c 08 00 00           lea    rdx,[rbp+0x80c]
31bd20  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31bd27  e8 bc 91 fd ff                 call   0x2f4ee8 ; STRING getter=0x2f4ee8 bradley_crate
31bd2c  48 8b c8                       mov    rcx,rax
31bd2f  e8 e8 c8 fb ff                 call   0x2d861c
31bd34  48 8b d0                       mov    rdx,rax
31bd37  49 8b ce                       mov    rcx,r14
31bd3a  e8 21 ec 0a 00                 call   0x3ca960
31bd3f  48 85 c0                       test   rax,rax
31bd42  74 4c                          je     0x31bd90
31bd44  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31bd49  48 8d 95 1a 08 00 00           lea    rdx,[rbp+0x81a]
31bd50  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31bd57  e8 58 92 fd ff                 call   0x2f4fb4 ; STRING getter=0x2f4fb4 bradley_crate
31bd5c  48 8b c8                       mov    rcx,rax
31bd5f  e8 b8 c8 fb ff                 call   0x2d861c
31bd64  48 8b d0                       mov    rdx,rax
31bd67  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31bd6c  e8 5b 05 fb ff                 call   0x2cc2cc
31bd71  4c 8b cb                       mov    r9,rbx
31bd74  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31bd79  ba 16 00 00 00                 mov    edx,0x16
31bd7e  49 8b cd                       mov    rcx,r13
31bd81  e8 36 b9 ff ff                 call   0x3176bc
31bd86  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31bd8b  e8 64 07 fb ff                 call   0x2cc4f4
31bd90  40 38 3d c1 d6 0c 00           cmp    BYTE PTR [rip+0xcd6c1],dil        # 0x3e9458 ; CONFIG Bools.Submarine value(+0x48)
31bd97  0f 84 ac 00 00 00              je     0x31be49
31bd9d  48 8d 95 c9 07 00 00           lea    rdx,[rbp+0x7c9]
31bda4  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31bdab  e8 5c 92 fd ff                 call   0x2f500c ; STRING getter=0x2f500c SubmarineDuo
31bdb0  48 8b c8                       mov    rcx,rax
31bdb3  e8 a4 20 fb ff                 call   0x2cde5c
31bdb8  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31bdc2  48 8b c8                       mov    rcx,rax
31bdc5  48 8b d3                       mov    rdx,rbx
31bdc8  e8 7f 9d fc ff                 call   0x2e5b4c
31bdcd  48 3b f0                       cmp    rsi,rax
31bdd0  74 2b                          je     0x31bdfd
31bdd2  48 8d 95 28 08 00 00           lea    rdx,[rbp+0x828]
31bdd9  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31bde0  e8 7f 93 fd ff                 call   0x2f5164 ; STRING getter=0x2f5164 BaseSubmarine
31bde5  48 8b c8                       mov    rcx,rax
31bde8  e8 2f c8 fb ff                 call   0x2d861c
31bded  48 8b c8                       mov    rcx,rax
31bdf0  48 8b d3                       mov    rdx,rbx
31bdf3  e8 54 9d fc ff                 call   0x2e5b4c
31bdf8  48 3b f0                       cmp    rsi,rax
31bdfb  75 56                          jne    0x31be53
31bdfd  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31be02  48 8d 95 83 04 00 00           lea    rdx,[rbp+0x483]
31be09  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31be10  e8 5f 95 fd ff                 call   0x2f5374 ; STRING getter=0x2f5374 Submarine
31be15  48 8b c8                       mov    rcx,rax
31be18  e8 ff 1e fb ff                 call   0x2cdd1c
31be1d  48 8b d0                       mov    rdx,rax
31be20  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31be25  e8 a2 04 fb ff                 call   0x2cc2cc
31be2a  4c 8b cb                       mov    r9,rbx
31be2d  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31be32  ba 17 00 00 00                 mov    edx,0x17
31be37  49 8b cd                       mov    rcx,r13
31be3a  e8 7d b8 ff ff                 call   0x3176bc
31be3f  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31be44  e8 ab 06 fb ff                 call   0x2cc4f4
31be49  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31be53  40 38 3d ae d5 0c 00           cmp    BYTE PTR [rip+0xcd5ae],dil        # 0x3e9408 ; CONFIG Bools.ScrapHeli value(+0x48)
31be5a  74 75                          je     0x31bed1
31be5c  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31be61  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31be68  e8 cb 95 fd ff                 call   0x2f5438 ; STRING getter=0x2f5438 ScrapTransportHelicopter
31be6d  48 8b c8                       mov    rcx,rax
31be70  e8 67 78 fc ff                 call   0x2e36dc
31be75  48 8b c8                       mov    rcx,rax
31be78  48 8b d3                       mov    rdx,rbx
31be7b  e8 cc 9c fc ff                 call   0x2e5b4c
31be80  48 3b f0                       cmp    rsi,rax
31be83  75 4c                          jne    0x31bed1
31be85  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31be8a  48 8d 95 b8 09 00 00           lea    rdx,[rbp+0x9b8]
31be91  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31be98  e8 43 97 fd ff                 call   0x2f55e0 ; STRING getter=0x2f55e0 ScrapHelicopter
31be9d  48 8b c8                       mov    rcx,rax
31bea0  e8 87 c6 fb ff                 call   0x2d852c
31bea5  48 8b d0                       mov    rdx,rax
31bea8  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31bead  e8 1a 04 fb ff                 call   0x2cc2cc
31beb2  4c 8b cb                       mov    r9,rbx
31beb5  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31beba  ba 18 00 00 00                 mov    edx,0x18
31bebf  49 8b cd                       mov    rcx,r13
31bec2  e8 f5 b7 ff ff                 call   0x3176bc
31bec7  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31becc  e8 23 06 fb ff                 call   0x2cc4f4
31bed1  40 38 3d e0 d4 0c 00           cmp    BYTE PTR [rip+0xcd4e0],dil        # 0x3e93b8 ; CONFIG Bools.Minicopter value(+0x48)
31bed8  0f 84 81 00 00 00              je     0x31bf5f
31bede  48 8d 95 70 05 00 00           lea    rdx,[rbp+0x570]
31bee5  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31beec  e8 ff 97 fd ff                 call   0x2f56f0 ; STRING getter=0x2f56f0 Minicopter
31bef1  48 8b c8                       mov    rcx,rax
31bef4  e8 d3 c6 fb ff                 call   0x2d85cc
31bef9  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31bf03  48 8b c8                       mov    rcx,rax
31bf06  48 8b d3                       mov    rdx,rbx
31bf09  e8 3e 9c fc ff                 call   0x2e5b4c
31bf0e  48 3b f0                       cmp    rsi,rax
31bf11  75 56                          jne    0x31bf69
31bf13  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31bf18  48 8d 95 e1 04 00 00           lea    rdx,[rbp+0x4e1]
31bf1f  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31bf26  e8 d9 99 fd ff                 call   0x2f5904 ; STRING getter=0x2f5904 Minicopter
31bf2b  48 8b c8                       mov    rcx,rax
31bf2e  e8 99 c6 fb ff                 call   0x2d85cc
31bf33  48 8b d0                       mov    rdx,rax
31bf36  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31bf3b  e8 8c 03 fb ff                 call   0x2cc2cc
31bf40  4c 8b cb                       mov    r9,rbx
31bf43  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31bf48  ba 19 00 00 00                 mov    edx,0x19
31bf4d  49 8b cd                       mov    rcx,r13
31bf50  e8 67 b7 ff ff                 call   0x3176bc
31bf55  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31bf5a  e8 95 05 fb ff                 call   0x2cc4f4
31bf5f  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31bf69  40 38 3d 58 d3 0c 00           cmp    BYTE PTR [rip+0xcd358],dil        # 0x3e92c8 ; CONFIG Bools.attackhelicopter value(+0x48)
31bf70  74 72                          je     0x31bfe4
31bf72  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31bf77  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31bf7e  e8 b9 9a fd ff                 call   0x2f5a3c ; STRING getter=0x2f5a3c AttackHelicopter
31bf83  48 8b c8                       mov    rcx,rax
31bf86  e8 c9 c5 fb ff                 call   0x2d8554
31bf8b  48 8b c8                       mov    rcx,rax
31bf8e  48 8b d3                       mov    rdx,rbx
31bf91  e8 b6 9b fc ff                 call   0x2e5b4c
31bf96  48 3b f0                       cmp    rsi,rax
31bf99  75 49                          jne    0x31bfe4
31bf9b  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31bfa0  48 8d 55 c0                    lea    rdx,[rbp-0x40]
31bfa4  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31bfab  e8 34 9c fd ff                 call   0x2f5be4 ; STRING getter=0x2f5be4 AttackHelicopter
31bfb0  48 8b c8                       mov    rcx,rax
31bfb3  e8 9c c5 fb ff                 call   0x2d8554
31bfb8  48 8b d0                       mov    rdx,rax
31bfbb  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31bfc0  e8 07 03 fb ff                 call   0x2cc2cc
31bfc5  4c 8b cb                       mov    r9,rbx
31bfc8  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31bfcd  ba 1a 00 00 00                 mov    edx,0x1a
31bfd2  49 8b cd                       mov    rcx,r13
31bfd5  e8 e2 b6 ff ff                 call   0x3176bc
31bfda  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31bfdf  e8 10 05 fb ff                 call   0x2cc4f4
31bfe4  40 38 3d 8d d2 0c 00           cmp    BYTE PTR [rip+0xcd28d],dil        # 0x3e9278 ; CONFIG Bools.tugboat value(+0x48)
31bfeb  0f 84 81 00 00 00              je     0x31c072
31bff1  48 8d 95 09 03 00 00           lea    rdx,[rbp+0x309]
31bff8  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31bfff  e8 d8 4d fd ff                 call   0x2f0ddc
31c004  48 8b c8                       mov    rcx,rax
31c007  e8 2c 11 fc ff                 call   0x2dd138
31c00c  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31c016  48 8b c8                       mov    rcx,rax
31c019  48 8b d3                       mov    rdx,rbx
31c01c  e8 2b 9b fc ff                 call   0x2e5b4c
31c021  48 3b f0                       cmp    rsi,rax
31c024  75 56                          jne    0x31c07c
31c026  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31c02b  48 8d 95 01 03 00 00           lea    rdx,[rbp+0x301]
31c032  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31c039  e8 9e 4d fd ff                 call   0x2f0ddc
31c03e  48 8b c8                       mov    rcx,rax
31c041  e8 f2 10 fc ff                 call   0x2dd138
31c046  48 8b d0                       mov    rdx,rax
31c049  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31c04e  e8 79 02 fb ff                 call   0x2cc2cc
31c053  4c 8b cb                       mov    r9,rbx
31c056  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31c05b  ba 1b 00 00 00                 mov    edx,0x1b
31c060  49 8b cd                       mov    rcx,r13
31c063  e8 54 b6 ff ff                 call   0x3176bc
31c068  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31c06d  e8 82 04 fb ff                 call   0x2cc4f4
31c072  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31c07c  40 38 3d 95 d2 0c 00           cmp    BYTE PTR [rip+0xcd295],dil        # 0x3e9318 ; CONFIG Bools.RHIB value(+0x48)
31c083  74 77                          je     0x31c0fc
31c085  48 8d 95 db 01 00 00           lea    rdx,[rbp+0x1db]
31c08c  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31c093  e8 9c 9e fd ff                 call   0x2f5f34 ; STRING getter=0x2f5f34 RHIB
31c098  48 8b c8                       mov    rcx,rax
31c09b  e8 4c 75 fc ff                 call   0x2e35ec
31c0a0  48 8b c8                       mov    rcx,rax
31c0a3  48 8b d3                       mov    rdx,rbx
31c0a6  e8 a1 9a fc ff                 call   0x2e5b4c
31c0ab  48 3b f0                       cmp    rsi,rax
31c0ae  75 4c                          jne    0x31c0fc
31c0b0  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31c0b5  48 8d 95 ea 01 00 00           lea    rdx,[rbp+0x1ea]
31c0bc  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31c0c3  e8 00 a1 fd ff                 call   0x2f61c8 ; STRING getter=0x2f61c8 RHIB
31c0c8  48 8b c8                       mov    rcx,rax
31c0cb  e8 1c 75 fc ff                 call   0x2e35ec
31c0d0  48 8b d0                       mov    rdx,rax
31c0d3  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31c0d8  e8 ef 01 fb ff                 call   0x2cc2cc
31c0dd  4c 8b cb                       mov    r9,rbx
31c0e0  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31c0e5  ba 1c 00 00 00                 mov    edx,0x1c
31c0ea  49 8b cd                       mov    rcx,r13
31c0ed  e8 ca b5 ff ff                 call   0x3176bc
31c0f2  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31c0f7  e8 f8 03 fb ff                 call   0x2cc4f4
31c0fc  40 38 3d 65 d2 0c 00           cmp    BYTE PTR [rip+0xcd265],dil        # 0x3e9368 ; CONFIG Bools.Rowboat value(+0x48)
31c103  0f 84 81 00 00 00              je     0x31c18a
31c109  48 8d 95 d6 07 00 00           lea    rdx,[rbp+0x7d6]
31c110  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31c117  e8 74 a2 fd ff                 call   0x2f6390 ; STRING getter=0x2f6390 MotorRowboat
31c11c  48 8b c8                       mov    rcx,rax
31c11f  e8 38 1d fb ff                 call   0x2cde5c
31c124  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31c12e  48 8b c8                       mov    rcx,rax
31c131  48 8b d3                       mov    rdx,rbx
31c134  e8 13 9a fc ff                 call   0x2e5b4c
31c139  48 3b f0                       cmp    rsi,rax
31c13c  75 56                          jne    0x31c194
31c13e  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31c143  48 8d 95 f9 02 00 00           lea    rdx,[rbp+0x2f9]
31c14a  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31c151  e8 26 4c fd ff                 call   0x2f0d7c
31c156  48 8b c8                       mov    rcx,rax
31c159  e8 da 0f fc ff                 call   0x2dd138
31c15e  48 8b d0                       mov    rdx,rax
31c161  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31c166  e8 61 01 fb ff                 call   0x2cc2cc
31c16b  4c 8b cb                       mov    r9,rbx
31c16e  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31c173  ba 1d 00 00 00                 mov    edx,0x1d
31c178  49 8b cd                       mov    rcx,r13
31c17b  e8 3c b5 ff ff                 call   0x3176bc
31c180  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31c185  e8 6a 03 fb ff                 call   0x2cc4f4
31c18a  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31c194  40 38 3d fd ce 0c 00           cmp    BYTE PTR [rip+0xccefd],dil        # 0x3e9098 ; CONFIG Bools.Cargoship value(+0x48)
31c19b  74 77                          je     0x31c214
31c19d  48 8d 95 79 04 00 00           lea    rdx,[rbp+0x479]
31c1a4  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31c1ab  e8 6c a3 fd ff                 call   0x2f651c ; STRING getter=0x2f651c CargoShip
31c1b0  48 8b c8                       mov    rcx,rax
31c1b3  e8 64 1b fb ff                 call   0x2cdd1c
31c1b8  48 8b c8                       mov    rcx,rax
31c1bb  48 8b d3                       mov    rdx,rbx
31c1be  e8 89 99 fc ff                 call   0x2e5b4c
31c1c3  48 3b f0                       cmp    rsi,rax
31c1c6  75 4c                          jne    0x31c214
31c1c8  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31c1cd  48 8d 95 6f 04 00 00           lea    rdx,[rbp+0x46f]
31c1d4  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31c1db  e8 28 a4 fd ff                 call   0x2f6608 ; STRING getter=0x2f6608 Cargoship
31c1e0  48 8b c8                       mov    rcx,rax
31c1e3  e8 34 1b fb ff                 call   0x2cdd1c
31c1e8  48 8b d0                       mov    rdx,rax
31c1eb  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31c1f0  e8 d7 00 fb ff                 call   0x2cc2cc
31c1f5  4c 8b cb                       mov    r9,rbx
31c1f8  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31c1fd  ba 1e 00 00 00                 mov    edx,0x1e
31c202  49 8b cd                       mov    rcx,r13
31c205  e8 b2 b4 ff ff                 call   0x3176bc
31c20a  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31c20f  e8 e0 02 fb ff                 call   0x2cc4f4
31c214  41 b8 06 00 00 00              mov    r8d,0x6
31c21a  48 8d 95 c8 08 00 00           lea    rdx,[rbp+0x8c8]
31c221  48 8d 0d 90 3e 0d 00           lea    rcx,[rip+0xd3e90]        # 0x3f00b8 ; CONFIG VectorBools.BerryOptions value(+0x48)
31c228  e8 c3 d6 fc ff                 call   0x2e98f0
31c22d  48 8b c8                       mov    rcx,rax
31c230  e8 3b 8b fb ff                 call   0x2d4d70
31c235  84 c0                          test   al,al
31c237  0f 84 d6 00 00 00              je     0x31c313
31c23d  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31c242  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31c249  e8 ee a4 fd ff                 call   0x2f673c ; STRING getter=0x2f673c CollectableEasterEgg
31c24e  48 8b c8                       mov    rcx,rax
31c251  e8 e6 73 fc ff                 call   0x2e363c
31c256  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31c260  48 8b c8                       mov    rcx,rax
31c263  48 8b d3                       mov    rdx,rbx
31c266  e8 e1 98 fc ff                 call   0x2e5b4c
31c26b  48 3b f0                       cmp    rsi,rax
31c26e  0f 85 a9 00 00 00              jne    0x31c31d
31c274  48 8d 95 58 02 00 00           lea    rdx,[rbp+0x258]
31c27b  bb 1f 00 00 00                 mov    ebx,0x1f
31c280  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31c287  e8 2c a6 fd ff                 call   0x2f68b8 ; STRING getter=0x2f68b8 Candy
31c28c  48 8b c8                       mov    rcx,rax
31c28f  e8 20 c2 fb ff                 call   0x2d84b4
31c294  48 8b d0                       mov    rdx,rax
31c297  48 8d 4d c0                    lea    rcx,[rbp-0x40]
31c29b  e8 2c 00 fb ff                 call   0x2cc2cc
31c2a0  48 8d 95 8b 08 00 00           lea    rdx,[rbp+0x88b]
31c2a7  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31c2ae  e8 61 a7 fd ff                 call   0x2f6a14 ; STRING getter=0x2f6a14 collectableegg
31c2b3  48 8b c8                       mov    rcx,rax
31c2b6  e8 89 c3 fb ff                 call   0x2d8644
31c2bb  48 8b d0                       mov    rdx,rax
31c2be  49 8b ce                       mov    rcx,r14
31c2c1  e8 9a e6 0a 00                 call   0x3ca960
31c2c6  48 85 c0                       test   rax,rax
31c2c9  74 2c                          je     0x31c2f7
31c2cb  48 8d 95 e8 00 00 00           lea    rdx,[rbp+0xe8]
31c2d2  bb 20 00 00 00                 mov    ebx,0x20
31c2d7  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31c2de  e8 dd a7 fd ff                 call   0x2f6ac0 ; STRING getter=0x2f6ac0 Egg
31c2e3  48 8b c8                       mov    rcx,rax
31c2e6  e8 fd 0d fc ff                 call   0x2dd0e8
31c2eb  48 8b d0                       mov    rdx,rax
31c2ee  48 8d 4d c0                    lea    rcx,[rbp-0x40]
31c2f2  e8 71 89 fb ff                 call   0x2d4c68
31c2f7  4c 8b 4c 24 20                 mov    r9,QWORD PTR [rsp+0x20]
31c2fc  4c 8d 45 c0                    lea    r8,[rbp-0x40]
31c300  8b d3                          mov    edx,ebx
31c302  49 8b cd                       mov    rcx,r13
31c305  e8 b2 b3 ff ff                 call   0x3176bc
31c30a  48 8d 4d c0                    lea    rcx,[rbp-0x40]
31c30e  e8 e1 01 fb ff                 call   0x2cc4f4
31c313  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31c31d  40 38 3d d4 c2 0c 00           cmp    BYTE PTR [rip+0xcc2d4],dil        # 0x3e85f8 ; CONFIG Bools.FragmentsESP value(+0x48)
31c324  75 16                          jne    0x31c33c
31c326  40 38 3d 1b c3 0c 00           cmp    BYTE PTR [rip+0xcc31b],dil        # 0x3e8648 ; CONFIG Bools.SmallFragmentsESP value(+0x48)
31c32d  75 0d                          jne    0x31c33c
31c32f  40 38 3d 62 c3 0c 00           cmp    BYTE PTR [rip+0xcc362],dil        # 0x3e8698 ; CONFIG Bools.RedCardESP value(+0x48)
31c336  0f 84 a8 01 00 00              je     0x31c4e4
31c33c  48 8d 95 ec 04 00 00           lea    rdx,[rbp+0x4ec]
31c343  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31c34a  e8 b1 a7 fd ff                 call   0x2f6b00 ; STRING getter=0x2f6b00 ItemPickup
31c34f  48 8b c8                       mov    rcx,rax
31c352  e8 75 c2 fb ff                 call   0x2d85cc
31c357  48 8b c8                       mov    rcx,rax
31c35a  48 8b d3                       mov    rdx,rbx
31c35d  e8 ea 97 fc ff                 call   0x2e5b4c
31c362  48 3b f0                       cmp    rsi,rax
31c365  0f 85 79 01 00 00              jne    0x31c4e4
31c36b  40 38 3d 86 c2 0c 00           cmp    BYTE PTR [rip+0xcc286],dil        # 0x3e85f8 ; CONFIG Bools.FragmentsESP value(+0x48)
31c372  74 72                          je     0x31c3e6
31c374  48 8d 55 c0                    lea    rdx,[rbp-0x40]
31c378  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31c37f  e8 f4 a8 fd ff                 call   0x2f6c78 ; STRING getter=0x2f6c78 advancedblueprintfragment
31c384  48 8b c8                       mov    rcx,rax
31c387  e8 a8 41 00 00                 call   0x320534
31c38c  48 8b d0                       mov    rdx,rax
31c38f  49 8b ce                       mov    rcx,r14
31c392  e8 c9 e5 0a 00                 call   0x3ca960
31c397  48 85 c0                       test   rax,rax
31c39a  74 4a                          je     0x31c3e6
31c39c  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31c3a1  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31c3a6  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31c3ad  e8 5e a9 fd ff                 call   0x2f6d10 ; STRING getter=0x2f6d10 Advanced Fragment
31c3b2  48 8b c8                       mov    rcx,rax
31c3b5  e8 c2 c1 fb ff                 call   0x2d857c
31c3ba  48 8b d0                       mov    rdx,rax
31c3bd  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31c3c2  e8 05 ff fa ff                 call   0x2cc2cc
31c3c7  4c 8b cb                       mov    r9,rbx
31c3ca  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31c3cf  ba 5f 00 00 00                 mov    edx,0x5f
31c3d4  49 8b cd                       mov    rcx,r13
31c3d7  e8 e0 b2 ff ff                 call   0x3176bc
31c3dc  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31c3e1  e8 0e 01 fb ff                 call   0x2cc4f4
31c3e6  40 38 3d 5b c2 0c 00           cmp    BYTE PTR [rip+0xcc25b],dil        # 0x3e8648 ; CONFIG Bools.SmallFragmentsESP value(+0x48)
31c3ed  74 75                          je     0x31c464
31c3ef  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31c3f4  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31c3fb  e8 cc a9 fd ff                 call   0x2f6dcc ; STRING getter=0x2f6dcc basicblueprintfragment
31c400  48 8b c8                       mov    rcx,rax
31c403  e8 84 72 fc ff                 call   0x2e368c
31c408  48 8b d0                       mov    rdx,rax
31c40b  49 8b ce                       mov    rcx,r14
31c40e  e8 4d e5 0a 00                 call   0x3ca960
31c413  48 85 c0                       test   rax,rax
31c416  74 4c                          je     0x31c464
31c418  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31c41d  48 8d 95 9a 08 00 00           lea    rdx,[rbp+0x89a]
31c424  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31c42b  e8 24 aa fd ff                 call   0x2f6e54 ; STRING getter=0x2f6e54 Basic Fragment
31c430  48 8b c8                       mov    rcx,rax
31c433  e8 0c c2 fb ff                 call   0x2d8644
31c438  48 8b d0                       mov    rdx,rax
31c43b  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31c440  e8 87 fe fa ff                 call   0x2cc2cc
31c445  4c 8b cb                       mov    r9,rbx
31c448  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31c44d  ba 60 00 00 00                 mov    edx,0x60
31c452  49 8b cd                       mov    rcx,r13
31c455  e8 62 b2 ff ff                 call   0x3176bc
31c45a  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31c45f  e8 90 00 fb ff                 call   0x2cc4f4
31c464  40 38 3d 2d c2 0c 00           cmp    BYTE PTR [rip+0xcc22d],dil        # 0x3e8698 ; CONFIG Bools.RedCardESP value(+0x48)
31c46b  74 77                          je     0x31c4e4
31c46d  48 8d 95 7c 07 00 00           lea    rdx,[rbp+0x77c]
31c474  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31c47b  e8 54 aa fd ff                 call   0x2f6ed4 ; STRING getter=0x2f6ed4 keycard_red
31c480  48 8b c8                       mov    rcx,rax
31c483  e8 84 19 fb ff                 call   0x2cde0c
31c488  48 8b d0                       mov    rdx,rax
31c48b  49 8b ce                       mov    rcx,r14
31c48e  e8 cd e4 0a 00                 call   0x3ca960
31c493  48 85 c0                       test   rax,rax
31c496  74 4c                          je     0x31c4e4
31c498  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31c49d  48 8d 95 f1 02 00 00           lea    rdx,[rbp+0x2f1]
31c4a4  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31c4ab  e8 b0 aa fd ff                 call   0x2f6f60
31c4b0  48 8b c8                       mov    rcx,rax
31c4b3  e8 80 0c fc ff                 call   0x2dd138
31c4b8  48 8b d0                       mov    rdx,rax
31c4bb  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31c4c0  e8 07 fe fa ff                 call   0x2cc2cc
31c4c5  4c 8b cb                       mov    r9,rbx
31c4c8  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31c4cd  ba 61 00 00 00                 mov    edx,0x61
31c4d2  49 8b cd                       mov    rcx,r13
31c4d5  e8 e2 b1 ff ff                 call   0x3176bc
31c4da  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31c4df  e8 10 00 fb ff                 call   0x2cc4f4
31c4e4  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31c4e9  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31c4f0  e8 23 ab fd ff                 call   0x2f7018 ; STRING getter=0x2f7018 CollectibleEntity
31c4f5  48 8b c8                       mov    rcx,rax
31c4f8  e8 7f c0 fb ff                 call   0x2d857c
31c4fd  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31c507  48 8b c8                       mov    rcx,rax
31c50a  48 8b d3                       mov    rdx,rbx
31c50d  e8 3a 96 fc ff                 call   0x2e5b4c
31c512  48 3b f0                       cmp    rsi,rax
31c515  0f 85 94 0a 00 00              jne    0x31cfaf
31c51b  40 38 3d f6 be 0c 00           cmp    BYTE PTR [rip+0xcbef6],dil        # 0x3e8418 ; CONFIG Bools.WheatESP value(+0x48)
31c522  74 75                          je     0x31c599
31c524  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31c529  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31c530  e8 eb ab fd ff                 call   0x2f7120 ; STRING getter=0x2f7120 wheat-collectable
31c535  48 8b c8                       mov    rcx,rax
31c538  e8 3f c0 fb ff                 call   0x2d857c
31c53d  48 8b d0                       mov    rdx,rax
31c540  49 8b ce                       mov    rcx,r14
31c543  e8 18 e4 0a 00                 call   0x3ca960
31c548  48 85 c0                       test   rax,rax
31c54b  74 4c                          je     0x31c599
31c54d  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31c552  48 8d 95 5e 02 00 00           lea    rdx,[rbp+0x25e]
31c559  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31c560  e8 f7 ab fd ff                 call   0x2f715c ; STRING getter=0x2f715c Wheat
31c565  48 8b c8                       mov    rcx,rax
31c568  e8 47 bf fb ff                 call   0x2d84b4
31c56d  48 8b d0                       mov    rdx,rax
31c570  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31c575  e8 52 fd fa ff                 call   0x2cc2cc
31c57a  4c 8b cb                       mov    r9,rbx
31c57d  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31c582  ba 39 00 00 00                 mov    edx,0x39
31c587  49 8b cd                       mov    rcx,r13
31c58a  e8 2d b1 ff ff                 call   0x3176bc
31c58f  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31c594  e8 5b ff fa ff                 call   0x2cc4f4
31c599  40 38 3d 18 bf 0c 00           cmp    BYTE PTR [rip+0xcbf18],dil        # 0x3e84b8 ; CONFIG Bools.SunflowerESP value(+0x48)
31c5a0  74 75                          je     0x31c617
31c5a2  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31c5a7  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31c5ae  e8 61 ac fd ff                 call   0x2f7214 ; STRING getter=0x2f7214 sunflower-collectable
31c5b3  48 8b c8                       mov    rcx,rax
31c5b6  e8 a9 70 fc ff                 call   0x2e3664
31c5bb  48 8b d0                       mov    rdx,rax
31c5be  49 8b ce                       mov    rcx,r14
31c5c1  e8 9a e3 0a 00                 call   0x3ca960
31c5c6  48 85 c0                       test   rax,rax
31c5c9  74 4c                          je     0x31c617
31c5cb  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31c5d0  48 8d 95 f7 03 00 00           lea    rdx,[rbp+0x3f7]
31c5d7  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31c5de  e8 9d ad fd ff                 call   0x2f7380 ; STRING getter=0x2f7380 SunFlower
31c5e3  48 8b c8                       mov    rcx,rax
31c5e6  e8 31 17 fb ff                 call   0x2cdd1c
31c5eb  48 8b d0                       mov    rdx,rax
31c5ee  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31c5f3  e8 d4 fc fa ff                 call   0x2cc2cc
31c5f8  4c 8b cb                       mov    r9,rbx
31c5fb  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31c600  ba 3e 00 00 00                 mov    edx,0x3e
31c605  49 8b cd                       mov    rcx,r13
31c608  e8 af b0 ff ff                 call   0x3176bc
31c60d  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31c612  e8 dd fe fa ff                 call   0x2cc4f4
31c617  40 38 3d 4a be 0c 00           cmp    BYTE PTR [rip+0xcbe4a],dil        # 0x3e8468 ; CONFIG Bools.RoseESP value(+0x48)
31c61e  74 75                          je     0x31c695
31c620  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31c625  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31c62c  e8 cf ae fd ff                 call   0x2f7500 ; STRING getter=0x2f7500 rose-collectable
31c631  48 8b c8                       mov    rcx,rax
31c634  e8 1b bf fb ff                 call   0x2d8554
31c639  48 8b d0                       mov    rdx,rax
31c63c  49 8b ce                       mov    rcx,r14
31c63f  e8 1c e3 0a 00                 call   0x3ca960
31c644  48 85 c0                       test   rax,rax
31c647  74 4c                          je     0x31c695
31c649  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31c64e  48 8d 95 90 01 00 00           lea    rdx,[rbp+0x190]
31c655  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31c65c  e8 47 b0 fd ff                 call   0x2f76a8 ; STRING getter=0x2f76a8 Rose
31c661  48 8b c8                       mov    rcx,rax
31c664  e8 83 6f fc ff                 call   0x2e35ec
31c669  48 8b d0                       mov    rdx,rax
31c66c  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31c671  e8 56 fc fa ff                 call   0x2cc2cc
31c676  4c 8b cb                       mov    r9,rbx
31c679  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31c67e  ba 3f 00 00 00                 mov    edx,0x3f
31c683  49 8b cd                       mov    rcx,r13
31c686  e8 31 b0 ff ff                 call   0x3176bc
31c68b  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31c690  e8 5f fe fa ff                 call   0x2cc4f4
31c695  40 38 3d 6c be 0c 00           cmp    BYTE PTR [rip+0xcbe6c],dil        # 0x3e8508 ; CONFIG Bools.OrchidESP value(+0x48)
31c69c  74 75                          je     0x31c713
31c69e  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31c6a3  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31c6aa  e8 35 b1 fd ff                 call   0x2f77e4 ; STRING getter=0x2f77e4 orchid-collectable
31c6af  48 8b c8                       mov    rcx,rax
31c6b2  e8 b5 16 fb ff                 call   0x2cdd6c
31c6b7  48 8b d0                       mov    rdx,rax
31c6ba  49 8b ce                       mov    rcx,r14
31c6bd  e8 9e e2 0a 00                 call   0x3ca960
31c6c2  48 85 c0                       test   rax,rax
31c6c5  74 4c                          je     0x31c713
31c6c7  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31c6cc  48 8d 95 d5 02 00 00           lea    rdx,[rbp+0x2d5]
31c6d3  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31c6da  e8 71 b1 fd ff                 call   0x2f7850 ; STRING getter=0x2f7850 Orchid
31c6df  48 8b c8                       mov    rcx,rax
31c6e2  e8 29 0a fc ff                 call   0x2dd110
31c6e7  48 8b d0                       mov    rdx,rax
31c6ea  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31c6ef  e8 d8 fb fa ff                 call   0x2cc2cc
31c6f4  4c 8b cb                       mov    r9,rbx
31c6f7  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31c6fc  ba 40 00 00 00                 mov    edx,0x40
31c701  49 8b cd                       mov    rcx,r13
31c704  e8 b3 af ff ff                 call   0x3176bc
31c709  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31c70e  e8 e1 fd fa ff                 call   0x2cc4f4
31c713  40 38 3d ae c1 0c 00           cmp    BYTE PTR [rip+0xcc1ae],dil        # 0x3e88c8 ; CONFIG Bools.hempesp value(+0x48)
31c71a  74 75                          je     0x31c791
31c71c  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31c721  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31c728  e8 b7 b1 fd ff                 call   0x2f78e4 ; STRING getter=0x2f78e4 hemp-collectable
31c72d  48 8b c8                       mov    rcx,rax
31c730  e8 1f be fb ff                 call   0x2d8554
31c735  48 8b d0                       mov    rdx,rax
31c738  49 8b ce                       mov    rcx,r14
31c73b  e8 20 e2 0a 00                 call   0x3ca960
31c740  48 85 c0                       test   rax,rax
31c743  74 4c                          je     0x31c791
31c745  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31c74a  48 8d 95 95 01 00 00           lea    rdx,[rbp+0x195]
31c751  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31c758  e8 2b b2 fd ff                 call   0x2f7988 ; STRING getter=0x2f7988 Hemp
31c75d  48 8b c8                       mov    rcx,rax
31c760  e8 87 6e fc ff                 call   0x2e35ec
31c765  48 8b d0                       mov    rdx,rax
31c768  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31c76d  e8 5a fb fa ff                 call   0x2cc2cc
31c772  4c 8b cb                       mov    r9,rbx
31c775  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31c77a  ba 21 00 00 00                 mov    edx,0x21
31c77f  49 8b cd                       mov    rcx,r13
31c782  e8 35 af ff ff                 call   0x3176bc
31c787  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31c78c  e8 63 fd fa ff                 call   0x2cc4f4
31c791  45 33 c0                       xor    r8d,r8d
31c794  48 8d 95 d8 08 00 00           lea    rdx,[rbp+0x8d8]
31c79b  48 8d 0d 16 39 0d 00           lea    rcx,[rip+0xd3916]        # 0x3f00b8 ; CONFIG VectorBools.BerryOptions value(+0x48)
31c7a2  e8 49 d1 fc ff                 call   0x2e98f0
31c7a7  48 8b c8                       mov    rcx,rax
31c7aa  e8 c1 85 fb ff                 call   0x2d4d70
31c7af  84 c0                          test   al,al
31c7b1  74 77                          je     0x31c82a
31c7b3  48 8d 95 64 02 00 00           lea    rdx,[rbp+0x264]
31c7ba  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31c7c1  e8 aa b2 fd ff                 call   0x2f7a70 ; STRING getter=0x2f7a70 black
31c7c6  48 8b c8                       mov    rcx,rax
31c7c9  e8 e6 bc fb ff                 call   0x2d84b4
31c7ce  48 8b d0                       mov    rdx,rax
31c7d1  49 8b ce                       mov    rcx,r14
31c7d4  e8 87 e1 0a 00                 call   0x3ca960
31c7d9  48 85 c0                       test   rax,rax
31c7dc  74 4c                          je     0x31c82a
31c7de  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31c7e3  48 8d 95 70 02 00 00           lea    rdx,[rbp+0x270]
31c7ea  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31c7f1  e8 86 b3 fd ff                 call   0x2f7b7c ; STRING getter=0x2f7b7c Black
31c7f6  48 8b c8                       mov    rcx,rax
31c7f9  e8 b6 bc fb ff                 call   0x2d84b4
31c7fe  48 8b d0                       mov    rdx,rax
31c801  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31c806  e8 c1 fa fa ff                 call   0x2cc2cc
31c80b  4c 8b cb                       mov    r9,rbx
31c80e  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31c813  ba 22 00 00 00                 mov    edx,0x22
31c818  49 8b cd                       mov    rcx,r13
31c81b  e8 9c ae ff ff                 call   0x3176bc
31c820  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31c825  e8 ca fc fa ff                 call   0x2cc4f4
31c82a  41 b8 01 00 00 00              mov    r8d,0x1
31c830  48 8d 95 e8 08 00 00           lea    rdx,[rbp+0x8e8]
31c837  48 8d 0d 7a 38 0d 00           lea    rcx,[rip+0xd387a]        # 0x3f00b8 ; CONFIG VectorBools.BerryOptions value(+0x48)
31c83e  e8 ad d0 fc ff                 call   0x2e98f0
31c843  48 8b c8                       mov    rcx,rax
31c846  e8 25 85 fb ff                 call   0x2d4d70
31c84b  84 c0                          test   al,al
31c84d  74 77                          je     0x31c8c6
31c84f  48 8d 95 9a 01 00 00           lea    rdx,[rbp+0x19a]
31c856  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31c85d  e8 ba b3 fd ff                 call   0x2f7c1c ; STRING getter=0x2f7c1c blue
31c862  48 8b c8                       mov    rcx,rax
31c865  e8 82 6d fc ff                 call   0x2e35ec
31c86a  48 8b d0                       mov    rdx,rax
31c86d  49 8b ce                       mov    rcx,r14
31c870  e8 eb e0 0a 00                 call   0x3ca960
31c875  48 85 c0                       test   rax,rax
31c878  74 4c                          je     0x31c8c6
31c87a  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31c87f  48 8d 95 9f 01 00 00           lea    rdx,[rbp+0x19f]
31c886  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31c88d  e8 06 32 fd ff                 call   0x2efa98 ; STRING getter=0x2efa98 Blue
31c892  48 8b c8                       mov    rcx,rax
31c895  e8 52 6d fc ff                 call   0x2e35ec
31c89a  48 8b d0                       mov    rdx,rax
31c89d  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31c8a2  e8 25 fa fa ff                 call   0x2cc2cc
31c8a7  4c 8b cb                       mov    r9,rbx
31c8aa  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31c8af  ba 23 00 00 00                 mov    edx,0x23
31c8b4  49 8b cd                       mov    rcx,r13
31c8b7  e8 00 ae ff ff                 call   0x3176bc
31c8bc  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31c8c1  e8 2e fc fa ff                 call   0x2cc4f4
31c8c6  41 b8 02 00 00 00              mov    r8d,0x2
31c8cc  48 8d 95 f8 08 00 00           lea    rdx,[rbp+0x8f8]
31c8d3  48 8d 0d de 37 0d 00           lea    rcx,[rip+0xd37de]        # 0x3f00b8 ; CONFIG VectorBools.BerryOptions value(+0x48)
31c8da  e8 11 d0 fc ff                 call   0x2e98f0
31c8df  48 8b c8                       mov    rcx,rax
31c8e2  e8 89 84 fb ff                 call   0x2d4d70
31c8e7  84 c0                          test   al,al
31c8e9  74 77                          je     0x31c962
31c8eb  48 8d 95 f5 01 00 00           lea    rdx,[rbp+0x1f5]
31c8f2  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31c8f9  e8 ea 32 fd ff                 call   0x2efbe8 ; STRING getter=0x2efbe8 green
31c8fe  48 8b c8                       mov    rcx,rax
31c901  e8 ae bb fb ff                 call   0x2d84b4
31c906  48 8b d0                       mov    rdx,rax
31c909  49 8b ce                       mov    rcx,r14
31c90c  e8 4f e0 0a 00                 call   0x3ca960
31c911  48 85 c0                       test   rax,rax
31c914  74 4c                          je     0x31c962
31c916  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31c91b  48 8d 95 01 02 00 00           lea    rdx,[rbp+0x201]
31c922  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31c929  e8 fe 33 fd ff                 call   0x2efd2c ; STRING getter=0x2efd2c Green
31c92e  48 8b c8                       mov    rcx,rax
31c931  e8 7e bb fb ff                 call   0x2d84b4
31c936  48 8b d0                       mov    rdx,rax
31c939  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31c93e  e8 89 f9 fa ff                 call   0x2cc2cc
31c943  4c 8b cb                       mov    r9,rbx
31c946  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31c94b  ba 24 00 00 00                 mov    edx,0x24
31c950  49 8b cd                       mov    rcx,r13
31c953  e8 64 ad ff ff                 call   0x3176bc
31c958  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31c95d  e8 92 fb fa ff                 call   0x2cc4f4
31c962  41 b8 03 00 00 00              mov    r8d,0x3
31c968  48 8d 95 08 09 00 00           lea    rdx,[rbp+0x908]
31c96f  48 8d 0d 42 37 0d 00           lea    rcx,[rip+0xd3742]        # 0x3f00b8 ; CONFIG VectorBools.BerryOptions value(+0x48)
31c976  e8 75 cf fc ff                 call   0x2e98f0
31c97b  48 8b c8                       mov    rcx,rax
31c97e  e8 ed 83 fb ff                 call   0x2d4d70
31c983  84 c0                          test   al,al
31c985  74 77                          je     0x31c9fe
31c987  48 8d 95 ec 00 00 00           lea    rdx,[rbp+0xec]
31c98e  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31c995  e8 de 33 fd ff                 call   0x2efd78 ; STRING getter=0x2efd78 red
31c99a  48 8b c8                       mov    rcx,rax
31c99d  e8 46 07 fc ff                 call   0x2dd0e8
31c9a2  48 8b d0                       mov    rdx,rax
31c9a5  49 8b ce                       mov    rcx,r14
31c9a8  e8 b3 df 0a 00                 call   0x3ca960
31c9ad  48 85 c0                       test   rax,rax
31c9b0  74 4c                          je     0x31c9fe
31c9b2  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31c9b7  48 8d 95 70 01 00 00           lea    rdx,[rbp+0x170]
31c9be  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31c9c5  e8 96 34 fd ff                 call   0x2efe60 ; STRING getter=0x2efe60 Red
31c9ca  48 8b c8                       mov    rcx,rax
31c9cd  e8 16 07 fc ff                 call   0x2dd0e8
31c9d2  48 8b d0                       mov    rdx,rax
31c9d5  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31c9da  e8 ed f8 fa ff                 call   0x2cc2cc
31c9df  4c 8b cb                       mov    r9,rbx
31c9e2  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31c9e7  ba 25 00 00 00                 mov    edx,0x25
31c9ec  49 8b cd                       mov    rcx,r13
31c9ef  e8 c8 ac ff ff                 call   0x3176bc
31c9f4  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31c9f9  e8 f6 fa fa ff                 call   0x2cc4f4
31c9fe  41 b8 04 00 00 00              mov    r8d,0x4
31ca04  48 8d 95 18 09 00 00           lea    rdx,[rbp+0x918]
31ca0b  48 8d 0d a6 36 0d 00           lea    rcx,[rip+0xd36a6]        # 0x3f00b8 ; CONFIG VectorBools.BerryOptions value(+0x48)
31ca12  e8 d9 ce fc ff                 call   0x2e98f0
31ca17  48 8b c8                       mov    rcx,rax
31ca1a  e8 51 83 fb ff                 call   0x2d4d70
31ca1f  84 c0                          test   al,al
31ca21  74 77                          je     0x31ca9a
31ca23  48 8d 95 07 02 00 00           lea    rdx,[rbp+0x207]
31ca2a  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31ca31  e8 52 35 fd ff                 call   0x2eff88 ; STRING getter=0x2eff88 white
31ca36  48 8b c8                       mov    rcx,rax
31ca39  e8 76 ba fb ff                 call   0x2d84b4
31ca3e  48 8b d0                       mov    rdx,rax
31ca41  49 8b ce                       mov    rcx,r14
31ca44  e8 17 df 0a 00                 call   0x3ca960
31ca49  48 85 c0                       test   rax,rax
31ca4c  74 4c                          je     0x31ca9a
31ca4e  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31ca53  48 8d 95 6a 02 00 00           lea    rdx,[rbp+0x26a]
31ca5a  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31ca61  e8 16 36 fd ff                 call   0x2f007c ; STRING getter=0x2f007c White
31ca66  48 8b c8                       mov    rcx,rax
31ca69  e8 46 ba fb ff                 call   0x2d84b4
31ca6e  48 8b d0                       mov    rdx,rax
31ca71  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31ca76  e8 51 f8 fa ff                 call   0x2cc2cc
31ca7b  4c 8b cb                       mov    r9,rbx
31ca7e  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31ca83  ba 26 00 00 00                 mov    edx,0x26
31ca88  49 8b cd                       mov    rcx,r13
31ca8b  e8 2c ac ff ff                 call   0x3176bc
31ca90  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31ca95  e8 5a fa fa ff                 call   0x2cc4f4
31ca9a  41 b8 05 00 00 00              mov    r8d,0x5
31caa0  48 8d 95 28 09 00 00           lea    rdx,[rbp+0x928]
31caa7  48 8d 0d 0a 36 0d 00           lea    rcx,[rip+0xd360a]        # 0x3f00b8 ; CONFIG VectorBools.BerryOptions value(+0x48)
31caae  e8 3d ce fc ff                 call   0x2e98f0
31cab3  48 8b c8                       mov    rcx,rax
31cab6  e8 b5 82 fb ff                 call   0x2d4d70
31cabb  84 c0                          test   al,al
31cabd  74 77                          je     0x31cb36
31cabf  48 8d 95 dc 02 00 00           lea    rdx,[rbp+0x2dc]
31cac6  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31cacd  e8 32 36 fd ff                 call   0x2f0104 ; STRING getter=0x2f0104 yellow
31cad2  48 8b c8                       mov    rcx,rax
31cad5  e8 36 06 fc ff                 call   0x2dd110
31cada  48 8b d0                       mov    rdx,rax
31cadd  49 8b ce                       mov    rcx,r14
31cae0  e8 7b de 0a 00                 call   0x3ca960
31cae5  48 85 c0                       test   rax,rax
31cae8  74 4c                          je     0x31cb36
31caea  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31caef  48 8d 95 e3 02 00 00           lea    rdx,[rbp+0x2e3]
31caf6  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31cafd  e8 ea 36 fd ff                 call   0x2f01ec ; STRING getter=0x2f01ec Yellow
31cb02  48 8b c8                       mov    rcx,rax
31cb05  e8 06 06 fc ff                 call   0x2dd110
31cb0a  48 8b d0                       mov    rdx,rax
31cb0d  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31cb12  e8 b5 f7 fa ff                 call   0x2cc2cc
31cb17  4c 8b cb                       mov    r9,rbx
31cb1a  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31cb1f  ba 27 00 00 00                 mov    edx,0x27
31cb24  49 8b cd                       mov    rcx,r13
31cb27  e8 90 ab ff ff                 call   0x3176bc
31cb2c  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31cb31  e8 be f9 fa ff                 call   0x2cc4f4
31cb36  40 38 3d db bd 0c 00           cmp    BYTE PTR [rip+0xcbddb],dil        # 0x3e8918 ; CONFIG Bools.stoneesp value(+0x48)
31cb3d  74 72                          je     0x31cbb1
31cb3f  48 8d 55 c0                    lea    rdx,[rbp-0x40]
31cb43  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31cb4a  e8 0d 37 fd ff                 call   0x2f025c ; STRING getter=0x2f025c stone-collectable
31cb4f  48 8b c8                       mov    rcx,rax
31cb52  e8 25 ba fb ff                 call   0x2d857c
31cb57  48 8b d0                       mov    rdx,rax
31cb5a  49 8b ce                       mov    rcx,r14
31cb5d  e8 fe dd 0a 00                 call   0x3ca960
31cb62  48 85 c0                       test   rax,rax
31cb65  74 4a                          je     0x31cbb1
31cb67  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31cb6c  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31cb71  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31cb78  e8 df 38 fd ff                 call   0x2f045c ; STRING getter=0x2f045c StoneCollectable
31cb7d  48 8b c8                       mov    rcx,rax
31cb80  e8 cf b9 fb ff                 call   0x2d8554
31cb85  48 8b d0                       mov    rdx,rax
31cb88  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31cb8d  e8 3a f7 fa ff                 call   0x2cc2cc
31cb92  4c 8b cb                       mov    r9,rbx
31cb95  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31cb9a  ba 28 00 00 00                 mov    edx,0x28
31cb9f  49 8b cd                       mov    rcx,r13
31cba2  e8 15 ab ff ff                 call   0x3176bc
31cba7  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31cbac  e8 43 f9 fa ff                 call   0x2cc4f4
31cbb1  40 38 3d b0 bd 0c 00           cmp    BYTE PTR [rip+0xcbdb0],dil        # 0x3e8968 ; CONFIG Bools.metalesp value(+0x48)
31cbb8  74 75                          je     0x31cc2f
31cbba  48 8d 95 0d 02 00 00           lea    rdx,[rbp+0x20d]
31cbc1  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31cbc8  e8 7f 39 fd ff                 call   0x2f054c ; STRING getter=0x2f054c metal
31cbcd  48 8b c8                       mov    rcx,rax
31cbd0  e8 df b8 fb ff                 call   0x2d84b4
31cbd5  48 8b d0                       mov    rdx,rax
31cbd8  49 8b ce                       mov    rcx,r14
31cbdb  e8 80 dd 0a 00                 call   0x3ca960
31cbe0  48 85 c0                       test   rax,rax
31cbe3  74 4a                          je     0x31cc2f
31cbe5  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31cbea  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31cbef  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31cbf6  e8 b9 39 fd ff                 call   0x2f05b4 ; STRING getter=0x2f05b4 MetalCollectable
31cbfb  48 8b c8                       mov    rcx,rax
31cbfe  e8 51 b9 fb ff                 call   0x2d8554
31cc03  48 8b d0                       mov    rdx,rax
31cc06  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31cc0b  e8 bc f6 fa ff                 call   0x2cc2cc
31cc10  4c 8b cb                       mov    r9,rbx
31cc13  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31cc18  ba 29 00 00 00                 mov    edx,0x29
31cc1d  49 8b cd                       mov    rcx,r13
31cc20  e8 97 aa ff ff                 call   0x3176bc
31cc25  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31cc2a  e8 c5 f8 fa ff                 call   0x2cc4f4
31cc2f  40 38 3d 82 bd 0c 00           cmp    BYTE PTR [rip+0xcbd82],dil        # 0x3e89b8 ; CONFIG Bools.sulfuresp value(+0x48)
31cc36  74 75                          je     0x31ccad
31cc38  48 8d 95 ea 02 00 00           lea    rdx,[rbp+0x2ea]
31cc3f  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31cc46  e8 61 3a fd ff                 call   0x2f06ac ; STRING getter=0x2f06ac sulfur
31cc4b  48 8b c8                       mov    rcx,rax
31cc4e  e8 bd 04 fc ff                 call   0x2dd110
31cc53  48 8b d0                       mov    rdx,rax
31cc56  49 8b ce                       mov    rcx,r14
31cc59  e8 02 dd 0a 00                 call   0x3ca960
31cc5e  48 85 c0                       test   rax,rax
31cc61  74 4a                          je     0x31ccad
31cc63  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31cc68  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31cc6d  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31cc74  e8 c3 3a fd ff                 call   0x2f073c ; STRING getter=0x2f073c SulfurCollectable
31cc79  48 8b c8                       mov    rcx,rax
31cc7c  e8 fb b8 fb ff                 call   0x2d857c
31cc81  48 8b d0                       mov    rdx,rax
31cc84  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31cc89  e8 3e f6 fa ff                 call   0x2cc2cc
31cc8e  4c 8b cb                       mov    r9,rbx
31cc91  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31cc96  ba 2a 00 00 00                 mov    edx,0x2a
31cc9b  49 8b cd                       mov    rcx,r13
31cc9e  e8 19 aa ff ff                 call   0x3176bc
31cca3  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31cca8  e8 47 f8 fa ff                 call   0x2cc4f4
31ccad  40 38 3d 54 bd 0c 00           cmp    BYTE PTR [rip+0xcbd54],dil        # 0x3e8a08 ; CONFIG Bools.woodesp value(+0x48)
31ccb4  74 77                          je     0x31cd2d
31ccb6  48 8d 95 a4 01 00 00           lea    rdx,[rbp+0x1a4]
31ccbd  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31ccc4  e8 8f 3a fd ff                 call   0x2f0758 ; STRING getter=0x2f0758 wood
31ccc9  48 8b c8                       mov    rcx,rax
31cccc  e8 1b 69 fc ff                 call   0x2e35ec
31ccd1  48 8b d0                       mov    rdx,rax
31ccd4  49 8b ce                       mov    rcx,r14
31ccd7  e8 84 dc 0a 00                 call   0x3ca960
31ccdc  48 85 c0                       test   rax,rax
31ccdf  74 4c                          je     0x31cd2d
31cce1  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31cce6  48 8d 95 38 09 00 00           lea    rdx,[rbp+0x938]
31cced  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31ccf4  e8 ab 3a fd ff                 call   0x2f07a4 ; STRING getter=0x2f07a4 WoodCollectable
31ccf9  48 8b c8                       mov    rcx,rax
31ccfc  e8 2b b8 fb ff                 call   0x2d852c
31cd01  48 8b d0                       mov    rdx,rax
31cd04  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31cd09  e8 be f5 fa ff                 call   0x2cc2cc
31cd0e  4c 8b cb                       mov    r9,rbx
31cd11  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31cd16  ba 2b 00 00 00                 mov    edx,0x2b
31cd1b  49 8b cd                       mov    rcx,r13
31cd1e  e8 99 a9 ff ff                 call   0x3176bc
31cd23  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31cd28  e8 c7 f7 fa ff                 call   0x2cc4f4
31cd2d  40 38 3d 24 bd 0c 00           cmp    BYTE PTR [rip+0xcbd24],dil        # 0x3e8a58 ; CONFIG Bools.cornesp value(+0x48)
31cd34  74 77                          je     0x31cdad
31cd36  48 8d 95 a9 01 00 00           lea    rdx,[rbp+0x1a9]
31cd3d  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31cd44  e8 83 3a fd ff                 call   0x2f07cc ; STRING getter=0x2f07cc corn
31cd49  48 8b c8                       mov    rcx,rax
31cd4c  e8 9b 68 fc ff                 call   0x2e35ec
31cd51  48 8b d0                       mov    rdx,rax
31cd54  49 8b ce                       mov    rcx,r14
31cd57  e8 04 dc 0a 00                 call   0x3ca960
31cd5c  48 85 c0                       test   rax,rax
31cd5f  74 4c                          je     0x31cdad
31cd61  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31cd66  48 8d 95 48 09 00 00           lea    rdx,[rbp+0x948]
31cd6d  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31cd74  e8 83 3a fd ff                 call   0x2f07fc ; STRING getter=0x2f07fc CornCollectable
31cd79  48 8b c8                       mov    rcx,rax
31cd7c  e8 ab b7 fb ff                 call   0x2d852c
31cd81  48 8b d0                       mov    rdx,rax
31cd84  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31cd89  e8 3e f5 fa ff                 call   0x2cc2cc
31cd8e  4c 8b cb                       mov    r9,rbx
31cd91  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31cd96  ba 2c 00 00 00                 mov    edx,0x2c
31cd9b  49 8b cd                       mov    rcx,r13
31cd9e  e8 19 a9 ff ff                 call   0x3176bc
31cda3  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31cda8  e8 47 f7 fa ff                 call   0x2cc4f4
31cdad  40 38 3d 24 bf 0c 00           cmp    BYTE PTR [rip+0xcbf24],dil        # 0x3e8cd8 ; CONFIG Bools.mushroomesp value(+0x48)
31cdb4  74 75                          je     0x31ce2b
31cdb6  48 8d 95 8b 03 00 00           lea    rdx,[rbp+0x38b]
31cdbd  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31cdc4  e8 4f 3a fd ff                 call   0x2f0818 ; STRING getter=0x2f0818 mushroom
31cdc9  48 8b c8                       mov    rcx,rax
31cdcc  e8 33 b7 fb ff                 call   0x2d8504
31cdd1  48 8b d0                       mov    rdx,rax
31cdd4  49 8b ce                       mov    rcx,r14
31cdd7  e8 84 db 0a 00                 call   0x3ca960
31cddc  48 85 c0                       test   rax,rax
31cddf  74 4a                          je     0x31ce2b
31cde1  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31cde6  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31cdeb  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31cdf2  e8 3d 3b fd ff                 call   0x2f0934 ; STRING getter=0x2f0934 MushroomCollectable
31cdf7  48 8b c8                       mov    rcx,rax
31cdfa  e8 bd 0f fb ff                 call   0x2cddbc
31cdff  48 8b d0                       mov    rdx,rax
31ce02  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31ce07  e8 c0 f4 fa ff                 call   0x2cc2cc
31ce0c  4c 8b cb                       mov    r9,rbx
31ce0f  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31ce14  ba 2d 00 00 00                 mov    edx,0x2d
31ce19  49 8b cd                       mov    rcx,r13
31ce1c  e8 9b a8 ff ff                 call   0x3176bc
31ce21  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31ce26  e8 c9 f6 fa ff                 call   0x2cc4f4
31ce2b  40 38 3d f6 be 0c 00           cmp    BYTE PTR [rip+0xcbef6],dil        # 0x3e8d28 ; CONFIG Bools.pumpkinesp value(+0x48)
31ce32  74 75                          je     0x31cea9
31ce34  48 8d 95 41 03 00 00           lea    rdx,[rbp+0x341]
31ce3b  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31ce42  e8 35 3b fd ff                 call   0x2f097c
31ce47  48 8b c8                       mov    rcx,rax
31ce4a  e8 e9 02 fc ff                 call   0x2dd138
31ce4f  48 8b d0                       mov    rdx,rax
31ce52  49 8b ce                       mov    rcx,r14
31ce55  e8 06 db 0a 00                 call   0x3ca960
31ce5a  48 85 c0                       test   rax,rax
31ce5d  74 4a                          je     0x31cea9
31ce5f  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31ce64  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31ce69  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31ce70  e8 27 3b fd ff                 call   0x2f099c ; STRING getter=0x2f099c PumpkinCollectable
31ce75  48 8b c8                       mov    rcx,rax
31ce78  e8 ef 0e fb ff                 call   0x2cdd6c
31ce7d  48 8b d0                       mov    rdx,rax
31ce80  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31ce85  e8 42 f4 fa ff                 call   0x2cc2cc
31ce8a  4c 8b cb                       mov    r9,rbx
31ce8d  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31ce92  ba 2e 00 00 00                 mov    edx,0x2e
31ce97  49 8b cd                       mov    rcx,r13
31ce9a  e8 1d a8 ff ff                 call   0x3176bc
31ce9f  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31cea4  e8 4b f6 fa ff                 call   0x2cc4f4
31cea9  40 38 3d c8 be 0c 00           cmp    BYTE PTR [rip+0xcbec8],dil        # 0x3e8d78 ; CONFIG Bools.diselesp value(+0x48)
31ceb0  74 75                          je     0x31cf27
31ceb2  48 8d 95 ab 02 00 00           lea    rdx,[rbp+0x2ab]
31ceb9  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31cec0  e8 2f 3b fd ff                 call   0x2f09f4 ; STRING getter=0x2f09f4 diesel
31cec5  48 8b c8                       mov    rcx,rax
31cec8  e8 43 02 fc ff                 call   0x2dd110
31cecd  48 8b d0                       mov    rdx,rax
31ced0  49 8b ce                       mov    rcx,r14
31ced3  e8 88 da 0a 00                 call   0x3ca960
31ced8  48 85 c0                       test   rax,rax
31cedb  74 4a                          je     0x31cf27
31cedd  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31cee2  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31cee7  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31ceee  e8 61 3b fd ff                 call   0x2f0a54 ; STRING getter=0x2f0a54 DieselCollectable
31cef3  48 8b c8                       mov    rcx,rax
31cef6  e8 81 b6 fb ff                 call   0x2d857c
31cefb  48 8b d0                       mov    rdx,rax
31cefe  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31cf03  e8 c4 f3 fa ff                 call   0x2cc2cc
31cf08  4c 8b cb                       mov    r9,rbx
31cf0b  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31cf10  ba 2f 00 00 00                 mov    edx,0x2f
31cf15  49 8b cd                       mov    rcx,r13
31cf18  e8 9f a7 ff ff                 call   0x3176bc
31cf1d  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31cf22  e8 cd f5 fa ff                 call   0x2cc4f4
31cf27  40 38 3d 9a be 0c 00           cmp    BYTE PTR [rip+0xcbe9a],dil        # 0x3e8dc8 ; CONFIG Bools.potatoesp value(+0x48)
31cf2e  74 75                          je     0x31cfa5
31cf30  48 8d 95 b2 02 00 00           lea    rdx,[rbp+0x2b2]
31cf37  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31cf3e  e8 2d 3b fd ff                 call   0x2f0a70 ; STRING getter=0x2f0a70 potato
31cf43  48 8b c8                       mov    rcx,rax
31cf46  e8 c5 01 fc ff                 call   0x2dd110
31cf4b  48 8b d0                       mov    rdx,rax
31cf4e  49 8b ce                       mov    rcx,r14
31cf51  e8 0a da 0a 00                 call   0x3ca960
31cf56  48 85 c0                       test   rax,rax
31cf59  74 4a                          je     0x31cfa5
31cf5b  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31cf60  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31cf65  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31cf6c  e8 1f 3b fd ff                 call   0x2f0a90 ; STRING getter=0x2f0a90 PotatoCollectable
31cf71  48 8b c8                       mov    rcx,rax
31cf74  e8 03 b6 fb ff                 call   0x2d857c
31cf79  48 8b d0                       mov    rdx,rax
31cf7c  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31cf81  e8 46 f3 fa ff                 call   0x2cc2cc
31cf86  4c 8b cb                       mov    r9,rbx
31cf89  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31cf8e  ba 30 00 00 00                 mov    edx,0x30
31cf93  49 8b cd                       mov    rcx,r13
31cf96  e8 21 a7 ff ff                 call   0x3176bc
31cf9b  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31cfa0  e8 4f f5 fa ff                 call   0x2cc4f4
31cfa5  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31cfaf  40 38 3d d2 b2 0c 00           cmp    BYTE PTR [rip+0xcb2d2],dil        # 0x3e8288 ; CONFIG Bools.BeeHive value(+0x48)
31cfb6  74 77                          je     0x31d02f
31cfb8  48 8d 95 a9 08 00 00           lea    rdx,[rbp+0x8a9]
31cfbf  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31cfc6  e8 e1 3a fd ff                 call   0x2f0aac ; STRING getter=0x2f0aac NaturalBeehive
31cfcb  48 8b c8                       mov    rcx,rax
31cfce  e8 71 b6 fb ff                 call   0x2d8644
31cfd3  48 8b c8                       mov    rcx,rax
31cfd6  48 8b d3                       mov    rdx,rbx
31cfd9  e8 6e 8b fc ff                 call   0x2e5b4c
31cfde  48 3b f0                       cmp    rsi,rax
31cfe1  75 4c                          jne    0x31d02f
31cfe3  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31cfe8  48 8d 95 69 03 00 00           lea    rdx,[rbp+0x369]
31cfef  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31cff6  e8 ed 3a fd ff                 call   0x2f0ae8
31cffb  48 8b c8                       mov    rcx,rax
31cffe  e8 35 01 fc ff                 call   0x2dd138
31d003  48 8b d0                       mov    rdx,rax
31d006  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31d00b  e8 bc f2 fa ff                 call   0x2cc2cc
31d010  4c 8b cb                       mov    r9,rbx
31d013  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31d018  ba 07 00 00 00                 mov    edx,0x7
31d01d  49 8b cd                       mov    rcx,r13
31d020  e8 97 a6 ff ff                 call   0x3176bc
31d025  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31d02a  e8 c5 f4 fa ff                 call   0x2cc4f4
31d02f  40 38 3d a2 b2 0c 00           cmp    BYTE PTR [rip+0xcb2a2],dil        # 0x3e82d8 ; CONFIG Bools.BeeSwarmAI value(+0x48)
31d036  0f 84 81 00 00 00              je     0x31d0bd
31d03c  48 8d 95 f7 04 00 00           lea    rdx,[rbp+0x4f7]
31d043  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31d04a  e8 ad 3a fd ff                 call   0x2f0afc ; STRING getter=0x2f0afc BeeSwarmAI
31d04f  48 8b c8                       mov    rcx,rax
31d052  e8 75 b5 fb ff                 call   0x2d85cc
31d057  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31d061  48 8b c8                       mov    rcx,rax
31d064  48 8b d3                       mov    rdx,rbx
31d067  e8 e0 8a fc ff                 call   0x2e5b4c
31d06c  48 3b f0                       cmp    rsi,rax
31d06f  75 56                          jne    0x31d0c7
31d071  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31d076  48 8d 95 94 03 00 00           lea    rdx,[rbp+0x394]
31d07d  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31d084  e8 9f 3b fd ff                 call   0x2f0c28 ; STRING getter=0x2f0c28 BeeSwarm
31d089  48 8b c8                       mov    rcx,rax
31d08c  e8 73 b4 fb ff                 call   0x2d8504
31d091  48 8b d0                       mov    rdx,rax
31d094  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31d099  e8 2e f2 fa ff                 call   0x2cc2cc
31d09e  4c 8b cb                       mov    r9,rbx
31d0a1  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31d0a6  ba 06 00 00 00                 mov    edx,0x6
31d0ab  49 8b cd                       mov    rcx,r13
31d0ae  e8 09 a6 ff ff                 call   0x3176bc
31d0b3  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31d0b8  e8 37 f4 fa ff                 call   0x2cc4f4
31d0bd  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31d0c7  40 38 3d 2a bf 0c 00           cmp    BYTE PTR [rip+0xcbf2a],dil        # 0x3e8ff8 ; CONFIG Bools.Airdrop value(+0x48)
31d0ce  74 77                          je     0x31d147
31d0d0  48 8d 95 02 05 00 00           lea    rdx,[rbp+0x502]
31d0d7  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31d0de  e8 61 3b fd ff                 call   0x2f0c44 ; STRING getter=0x2f0c44 SupplyDrop
31d0e3  48 8b c8                       mov    rcx,rax
31d0e6  e8 e1 b4 fb ff                 call   0x2d85cc
31d0eb  48 8b c8                       mov    rcx,rax
31d0ee  48 8b d3                       mov    rdx,rbx
31d0f1  e8 56 8a fc ff                 call   0x2e5b4c
31d0f6  48 3b f0                       cmp    rsi,rax
31d0f9  75 4c                          jne    0x31d147
31d0fb  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31d100  48 8d 95 61 03 00 00           lea    rdx,[rbp+0x361]
31d107  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31d10e  e8 69 3b fd ff                 call   0x2f0c7c
31d113  48 8b c8                       mov    rcx,rax
31d116  e8 1d 00 fc ff                 call   0x2dd138
31d11b  48 8b d0                       mov    rdx,rax
31d11e  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31d123  e8 a4 f1 fa ff                 call   0x2cc2cc
31d128  4c 8b cb                       mov    r9,rbx
31d12b  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31d130  ba 31 00 00 00                 mov    edx,0x31
31d135  49 8b cd                       mov    rcx,r13
31d138  e8 7f a5 ff ff                 call   0x3176bc
31d13d  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31d142  e8 ad f3 fa ff                 call   0x2cc4f4
31d147  40 38 3d 9a bf 0c 00           cmp    BYTE PTR [rip+0xcbf9a],dil        # 0x3e90e8 ; CONFIG Bools.LockedCrates value(+0x48)
31d14e  74 7c                          je     0x31d1cc
31d150  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31d155  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31d15c  e8 63 3b fd ff                 call   0x2f0cc4 ; STRING getter=0x2f0cc4 HackableLockedCrate
31d161  48 8b c8                       mov    rcx,rax
31d164  e8 53 0c fb ff                 call   0x2cddbc
31d169  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31d173  48 8b c8                       mov    rcx,rax
31d176  48 8b d3                       mov    rdx,rbx
31d179  e8 ce 89 fc ff                 call   0x2e5b4c
31d17e  48 3b f0                       cmp    rsi,rax
31d181  75 53                          jne    0x31d1d6
31d183  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31d188  48 8d 55 c0                    lea    rdx,[rbp-0x40]
31d18c  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31d193  e8 60 3b fd ff                 call   0x2f0cf8 ; STRING getter=0x2f0cf8 HackableLockedCrate
31d198  48 8b c8                       mov    rcx,rax
31d19b  e8 1c 0c fb ff                 call   0x2cddbc
31d1a0  48 8b d0                       mov    rdx,rax
31d1a3  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31d1a8  e8 1f f1 fa ff                 call   0x2cc2cc
31d1ad  4c 8b cb                       mov    r9,rbx
31d1b0  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31d1b5  ba 32 00 00 00                 mov    edx,0x32
31d1ba  49 8b cd                       mov    rcx,r13
31d1bd  e8 fa a4 ff ff                 call   0x3176bc
31d1c2  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31d1c7  e8 28 f3 fa ff                 call   0x2cc4f4
31d1cc  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31d1d6  40 38 3d fb ab 0c 00           cmp    BYTE PTR [rip+0xcabfb],dil        # 0x3e7dd8 ; CONFIG Bools.AWaterCrateESP value(+0x48)
31d1dd  75 0d                          jne    0x31d1ec
31d1df  40 38 3d 42 ac 0c 00           cmp    BYTE PTR [rip+0xcac42],dil        # 0x3e7e28 ; CONFIG Bools.BWaterCrateESP value(+0x48)
31d1e6  0f 84 26 01 00 00              je     0x31d312
31d1ec  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31d1f1  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31d1f8  e8 23 3b fd ff                 call   0x2f0d20 ; STRING getter=0x2f0d20 FreeableLootContainer
31d1fd  48 8b c8                       mov    rcx,rax
31d200  e8 5f 64 fc ff                 call   0x2e3664
31d205  48 8b c8                       mov    rcx,rax
31d208  48 8b d3                       mov    rdx,rbx
31d20b  e8 3c 89 fc ff                 call   0x2e5b4c
31d210  48 3b f0                       cmp    rsi,rax
31d213  0f 85 f9 00 00 00              jne    0x31d312
31d219  40 38 3d b8 ab 0c 00           cmp    BYTE PTR [rip+0xcabb8],dil        # 0x3e7dd8 ; CONFIG Bools.AWaterCrateESP value(+0x48)
31d220  74 72                          je     0x31d294
31d222  48 8d 55 c0                    lea    rdx,[rbp-0x40]
31d226  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31d22d  e8 26 3b fd ff                 call   0x2f0d58 ; STRING getter=0x2f0d58 crate_underwater_advanced.prefab
31d232  48 8b c8                       mov    rcx,rax
31d235  e8 f2 c9 fc ff                 call   0x2e9c2c
31d23a  48 8b d0                       mov    rdx,rax
31d23d  49 8b ce                       mov    rcx,r14
31d240  e8 1b d7 0a 00                 call   0x3ca960
31d245  48 85 c0                       test   rax,rax
31d248  74 4a                          je     0x31d294
31d24a  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31d24f  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31d254  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31d25b  e8 30 3b fd ff                 call   0x2f0d90 ; STRING getter=0x2f0d90 AdvancedWaterCrate
31d260  48 8b c8                       mov    rcx,rax
31d263  e8 04 0b fb ff                 call   0x2cdd6c
31d268  48 8b d0                       mov    rdx,rax
31d26b  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31d270  e8 57 f0 fa ff                 call   0x2cc2cc
31d275  4c 8b cb                       mov    r9,rbx
31d278  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31d27d  ba 33 00 00 00                 mov    edx,0x33
31d282  49 8b cd                       mov    rcx,r13
31d285  e8 32 a4 ff ff                 call   0x3176bc
31d28a  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31d28f  e8 60 f2 fa ff                 call   0x2cc4f4
31d294  40 38 3d 8d ab 0c 00           cmp    BYTE PTR [rip+0xcab8d],dil        # 0x3e7e28 ; CONFIG Bools.BWaterCrateESP value(+0x48)
31d29b  74 75                          je     0x31d312
31d29d  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31d2a2  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31d2a9  e8 12 3b fd ff                 call   0x2f0dc0 ; STRING getter=0x2f0dc0 crate_underwater_basic.prefab
31d2ae  48 8b c8                       mov    rcx,rax
31d2b1  e8 1e 33 00 00                 call   0x3205d4
31d2b6  48 8b d0                       mov    rdx,rax
31d2b9  49 8b ce                       mov    rcx,r14
31d2bc  e8 9f d6 0a 00                 call   0x3ca960
31d2c1  48 85 c0                       test   rax,rax
31d2c4  74 4c                          je     0x31d312
31d2c6  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31d2cb  48 8d 95 58 09 00 00           lea    rdx,[rbp+0x958]
31d2d2  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31d2d9  e8 12 3b fd ff                 call   0x2f0df0 ; STRING getter=0x2f0df0 BasicWaterCrate
31d2de  48 8b c8                       mov    rcx,rax
31d2e1  e8 46 b2 fb ff                 call   0x2d852c
31d2e6  48 8b d0                       mov    rdx,rax
31d2e9  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31d2ee  e8 d9 ef fa ff                 call   0x2cc2cc
31d2f3  4c 8b cb                       mov    r9,rbx
31d2f6  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31d2fb  ba 34 00 00 00                 mov    edx,0x34
31d300  49 8b cd                       mov    rcx,r13
31d303  e8 b4 a3 ff ff                 call   0x3176bc
31d308  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31d30d  e8 e2 f1 fa ff                 call   0x2cc4f4
31d312  48 8d 95 36 08 00 00           lea    rdx,[rbp+0x836]
31d319  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31d320  e8 f3 3b fd ff                 call   0x2f0f18 ; STRING getter=0x2f0f18 LootContainer
31d325  48 8b c8                       mov    rcx,rax
31d328  e8 ef b2 fb ff                 call   0x2d861c
31d32d  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31d337  48 8b c8                       mov    rcx,rax
31d33a  48 8b d3                       mov    rdx,rbx
31d33d  e8 0a 88 fc ff                 call   0x2e5b4c
31d342  48 3b f0                       cmp    rsi,rax
31d345  0f 85 de 04 00 00              jne    0x31d829
31d34b  40 38 3d 06 a8 0c 00           cmp    BYTE PTR [rip+0xca806],dil        # 0x3e7b58 ; CONFIG Bools.BlueBarrelEsp value(+0x48)
31d352  0f 84 a2 00 00 00              je     0x31d3fa
31d358  48 8d 95 b2 05 00 00           lea    rdx,[rbp+0x5b2]
31d35f  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31d366  e8 ed 3b fd ff                 call   0x2f0f58 ; STRING getter=0x2f0f58 loot-barrel
31d36b  48 8b c8                       mov    rcx,rax
31d36e  e8 99 0a fb ff                 call   0x2cde0c
31d373  48 8b d0                       mov    rdx,rax
31d376  49 8b ce                       mov    rcx,r14
31d379  e8 e2 d5 0a 00                 call   0x3ca960
31d37e  48 85 c0                       test   rax,rax
31d381  75 2b                          jne    0x31d3ae
31d383  48 8d 95 be 05 00 00           lea    rdx,[rbp+0x5be]
31d38a  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31d391  e8 fa 3b fd ff                 call   0x2f0f90 ; STRING getter=0x2f0f90 loot_barrel
31d396  48 8b c8                       mov    rcx,rax
31d399  e8 6e 0a fb ff                 call   0x2cde0c
31d39e  48 8b d0                       mov    rdx,rax
31d3a1  49 8b ce                       mov    rcx,r14
31d3a4  e8 b7 d5 0a 00                 call   0x3ca960
31d3a9  48 85 c0                       test   rax,rax
31d3ac  74 4c                          je     0x31d3fa
31d3ae  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31d3b3  48 8d 95 b9 02 00 00           lea    rdx,[rbp+0x2b9]
31d3ba  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31d3c1  e8 02 3c fd ff                 call   0x2f0fc8 ; STRING getter=0x2f0fc8 Barrel
31d3c6  48 8b c8                       mov    rcx,rax
31d3c9  e8 42 fd fb ff                 call   0x2dd110
31d3ce  48 8b d0                       mov    rdx,rax
31d3d1  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31d3d6  e8 f1 ee fa ff                 call   0x2cc2cc
31d3db  4c 8b cb                       mov    r9,rbx
31d3de  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31d3e3  ba 35 00 00 00                 mov    edx,0x35
31d3e8  49 8b cd                       mov    rcx,r13
31d3eb  e8 cc a2 ff ff                 call   0x3176bc
31d3f0  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31d3f5  e8 fa f0 fa ff                 call   0x2cc4f4
31d3fa  40 38 3d a7 a7 0c 00           cmp    BYTE PTR [rip+0xca7a7],dil        # 0x3e7ba8 ; CONFIG Bools.OilBarrelEsp value(+0x48)
31d401  74 77                          je     0x31d47a
31d403  48 8d 95 0d 05 00 00           lea    rdx,[rbp+0x50d]
31d40a  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31d411  e8 d2 3b fd ff                 call   0x2f0fe8 ; STRING getter=0x2f0fe8 oil_barrel
31d416  48 8b c8                       mov    rcx,rax
31d419  e8 ae b1 fb ff                 call   0x2d85cc
31d41e  48 8b d0                       mov    rdx,rax
31d421  49 8b ce                       mov    rcx,r14
31d424  e8 37 d5 0a 00                 call   0x3ca960
31d429  48 85 c0                       test   rax,rax
31d42c  74 4c                          je     0x31d47a
31d42e  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31d433  48 8d 95 65 04 00 00           lea    rdx,[rbp+0x465]
31d43a  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31d441  e8 da 3b fd ff                 call   0x2f1020 ; STRING getter=0x2f1020 OilBarrel
31d446  48 8b c8                       mov    rcx,rax
31d449  e8 ce 08 fb ff                 call   0x2cdd1c
31d44e  48 8b d0                       mov    rdx,rax
31d451  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31d456  e8 71 ee fa ff                 call   0x2cc2cc
31d45b  4c 8b cb                       mov    r9,rbx
31d45e  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31d463  ba 37 00 00 00                 mov    edx,0x37
31d468  49 8b cd                       mov    rcx,r13
31d46b  e8 4c a2 ff ff                 call   0x3176bc
31d470  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31d475  e8 7a f0 fa ff                 call   0x2cc4f4
31d47a  40 38 3d 77 a7 0c 00           cmp    BYTE PTR [rip+0xca777],dil        # 0x3e7bf8 ; CONFIG Bools.NormalCrateESP value(+0x48)
31d481  74 75                          je     0x31d4f8
31d483  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31d488  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31d48f  e8 e4 3b fd ff                 call   0x2f1078 ; STRING getter=0x2f1078 crate_normal_2.prefab
31d494  48 8b c8                       mov    rcx,rax
31d497  e8 c8 61 fc ff                 call   0x2e3664
31d49c  48 8b d0                       mov    rdx,rax
31d49f  49 8b ce                       mov    rcx,r14
31d4a2  e8 b9 d4 0a 00                 call   0x3ca960
31d4a7  48 85 c0                       test   rax,rax
31d4aa  74 4c                          je     0x31d4f8
31d4ac  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31d4b1  48 8d 95 ca 05 00 00           lea    rdx,[rbp+0x5ca]
31d4b8  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31d4bf  e8 ec 3b fd ff                 call   0x2f10b0 ; STRING getter=0x2f10b0 NormalCrate
31d4c4  48 8b c8                       mov    rcx,rax
31d4c7  e8 40 09 fb ff                 call   0x2cde0c
31d4cc  48 8b d0                       mov    rdx,rax
31d4cf  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31d4d4  e8 f3 ed fa ff                 call   0x2cc2cc
31d4d9  4c 8b cb                       mov    r9,rbx
31d4dc  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31d4e1  ba 38 00 00 00                 mov    edx,0x38
31d4e6  49 8b cd                       mov    rcx,r13
31d4e9  e8 ce a1 ff ff                 call   0x3176bc
31d4ee  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31d4f3  e8 fc ef fa ff                 call   0x2cc4f4
31d4f8  40 38 3d 49 a7 0c 00           cmp    BYTE PTR [rip+0xca749],dil        # 0x3e7c48 ; CONFIG Bools.MilitaryCrateESP value(+0x48)
31d4ff  74 75                          je     0x31d576
31d501  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31d506  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31d50d  e8 c6 3b fd ff                 call   0x2f10d8 ; STRING getter=0x2f10d8 crate_normal.prefab
31d512  48 8b c8                       mov    rcx,rax
31d515  e8 a2 08 fb ff                 call   0x2cddbc
31d51a  48 8b d0                       mov    rdx,rax
31d51d  49 8b ce                       mov    rcx,r14
31d520  e8 3b d4 0a 00                 call   0x3ca960
31d525  48 85 c0                       test   rax,rax
31d528  74 4c                          je     0x31d576
31d52a  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31d52f  48 8d 95 44 08 00 00           lea    rdx,[rbp+0x844]
31d536  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31d53d  e8 ce 3b fd ff                 call   0x2f1110 ; STRING getter=0x2f1110 MilitaryCrate
31d542  48 8b c8                       mov    rcx,rax
31d545  e8 d2 b0 fb ff                 call   0x2d861c
31d54a  48 8b d0                       mov    rdx,rax
31d54d  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31d552  e8 75 ed fa ff                 call   0x2cc2cc
31d557  4c 8b cb                       mov    r9,rbx
31d55a  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31d55f  ba 3a 00 00 00                 mov    edx,0x3a
31d564  49 8b cd                       mov    rcx,r13
31d567  e8 50 a1 ff ff                 call   0x3176bc
31d56c  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31d571  e8 7e ef fa ff                 call   0x2cc4f4
31d576  40 38 3d 1b a7 0c 00           cmp    BYTE PTR [rip+0xca71b],dil        # 0x3e7c98 ; CONFIG Bools.EliteCrateESP value(+0x48)
31d57d  74 75                          je     0x31d5f4
31d57f  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31d584  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31d58b  e8 a8 3c fd ff                 call   0x2f1238 ; STRING getter=0x2f1238 crate_elite.prefab
31d590  48 8b c8                       mov    rcx,rax
31d593  e8 d4 07 fb ff                 call   0x2cdd6c
31d598  48 8b d0                       mov    rdx,rax
31d59b  49 8b ce                       mov    rcx,r14
31d59e  e8 bd d3 0a 00                 call   0x3ca960
31d5a3  48 85 c0                       test   rax,rax
31d5a6  74 4c                          je     0x31d5f4
31d5a8  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31d5ad  48 8d 95 18 05 00 00           lea    rdx,[rbp+0x518]
31d5b4  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31d5bb  e8 9c 3c fd ff                 call   0x2f125c ; STRING getter=0x2f125c EliteCrate
31d5c0  48 8b c8                       mov    rcx,rax
31d5c3  e8 04 b0 fb ff                 call   0x2d85cc
31d5c8  48 8b d0                       mov    rdx,rax
31d5cb  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31d5d0  e8 f7 ec fa ff                 call   0x2cc2cc
31d5d5  4c 8b cb                       mov    r9,rbx
31d5d8  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31d5dd  ba 3b 00 00 00                 mov    edx,0x3b
31d5e2  49 8b cd                       mov    rcx,r13
31d5e5  e8 d2 a0 ff ff                 call   0x3176bc
31d5ea  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31d5ef  e8 00 ef fa ff                 call   0x2cc4f4
31d5f4  40 38 3d ed a6 0c 00           cmp    BYTE PTR [rip+0xca6ed],dil        # 0x3e7ce8 ; CONFIG Bools.ToolCrateESP value(+0x48)
31d5fb  74 77                          je     0x31d674
31d5fd  48 8d 95 d6 05 00 00           lea    rdx,[rbp+0x5d6]
31d604  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31d60b  e8 88 3c fd ff                 call   0x2f1298 ; STRING getter=0x2f1298 crate_tools
31d610  48 8b c8                       mov    rcx,rax
31d613  e8 f4 07 fb ff                 call   0x2cde0c
31d618  48 8b d0                       mov    rdx,rax
31d61b  49 8b ce                       mov    rcx,r14
31d61e  e8 3d d3 0a 00                 call   0x3ca960
31d623  48 85 c0                       test   rax,rax
31d626  74 4c                          je     0x31d674
31d628  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31d62d  48 8d 95 5b 04 00 00           lea    rdx,[rbp+0x45b]
31d634  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31d63b  e8 90 3c fd ff                 call   0x2f12d0 ; STRING getter=0x2f12d0 ToolCrate
31d640  48 8b c8                       mov    rcx,rax
31d643  e8 d4 06 fb ff                 call   0x2cdd1c
31d648  48 8b d0                       mov    rdx,rax
31d64b  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31d650  e8 77 ec fa ff                 call   0x2cc2cc
31d655  4c 8b cb                       mov    r9,rbx
31d658  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31d65d  ba 3c 00 00 00                 mov    edx,0x3c
31d662  49 8b cd                       mov    rcx,r13
31d665  e8 52 a0 ff ff                 call   0x3176bc
31d66a  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31d66f  e8 80 ee fa ff                 call   0x2cc4f4
31d674  40 38 3d bd a6 0c 00           cmp    BYTE PTR [rip+0xca6bd],dil        # 0x3e7d38 ; CONFIG Bools.FoodCrateESP value(+0x48)
31d67b  0f 84 a2 00 00 00              je     0x31d723
31d681  48 8d 95 ae 01 00 00           lea    rdx,[rbp+0x1ae]
31d688  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31d68f  e8 88 3c fd ff                 call   0x2f131c ; STRING getter=0x2f131c food
31d694  48 8b c8                       mov    rcx,rax
31d697  e8 50 5f fc ff                 call   0x2e35ec
31d69c  48 8b d0                       mov    rdx,rax
31d69f  49 8b ce                       mov    rcx,r14
31d6a2  e8 b9 d2 0a 00                 call   0x3ca960
31d6a7  48 85 c0                       test   rax,rax
31d6aa  75 2b                          jne    0x31d6d7
31d6ac  48 8d 95 e3 07 00 00           lea    rdx,[rbp+0x7e3]
31d6b3  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31d6ba  e8 b1 3c fd ff                 call   0x2f1370 ; STRING getter=0x2f1370 trash-pile-1
31d6bf  48 8b c8                       mov    rcx,rax
31d6c2  e8 95 07 fb ff                 call   0x2cde5c
31d6c7  48 8b d0                       mov    rdx,rax
31d6ca  49 8b ce                       mov    rcx,r14
31d6cd  e8 8e d2 0a 00                 call   0x3ca960
31d6d2  48 85 c0                       test   rax,rax
31d6d5  74 4c                          je     0x31d723
31d6d7  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31d6dc  48 8d 95 29 04 00 00           lea    rdx,[rbp+0x429]
31d6e3  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31d6ea  e8 dd 3c fd ff                 call   0x2f13cc ; STRING getter=0x2f13cc FoodCrate
31d6ef  48 8b c8                       mov    rcx,rax
31d6f2  e8 25 06 fb ff                 call   0x2cdd1c
31d6f7  48 8b d0                       mov    rdx,rax
31d6fa  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31d6ff  e8 c8 eb fa ff                 call   0x2cc2cc
31d704  4c 8b cb                       mov    r9,rbx
31d707  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31d70c  ba 3d 00 00 00                 mov    edx,0x3d
31d711  49 8b cd                       mov    rcx,r13
31d714  e8 a3 9f ff ff                 call   0x3176bc
31d719  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31d71e  e8 d1 ed fa ff                 call   0x2cc4f4
31d723  40 38 3d 5e a6 0c 00           cmp    BYTE PTR [rip+0xca65e],dil        # 0x3e7d88 ; CONFIG Bools.MedicalCrateESP value(+0x48)
31d72a  74 75                          je     0x31d7a1
31d72c  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31d731  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31d738  e8 c7 3c fd ff                 call   0x2f1404 ; STRING getter=0x2f1404 crate_normal_2_medical.prefab
31d73d  48 8b c8                       mov    rcx,rax
31d740  e8 8f 2e 00 00                 call   0x3205d4
31d745  48 8b d0                       mov    rdx,rax
31d748  49 8b ce                       mov    rcx,r14
31d74b  e8 10 d2 0a 00                 call   0x3ca960
31d750  48 85 c0                       test   rax,rax
31d753  74 4c                          je     0x31d7a1
31d755  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31d75a  48 8d 95 88 07 00 00           lea    rdx,[rbp+0x788]
31d761  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31d768  e8 f7 3c fd ff                 call   0x2f1464 ; STRING getter=0x2f1464 MedicalCrate
31d76d  48 8b c8                       mov    rcx,rax
31d770  e8 e7 06 fb ff                 call   0x2cde5c
31d775  48 8b d0                       mov    rdx,rax
31d778  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31d77d  e8 4a eb fa ff                 call   0x2cc2cc
31d782  4c 8b cb                       mov    r9,rbx
31d785  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31d78a  ba 41 00 00 00                 mov    edx,0x41
31d78f  49 8b cd                       mov    rcx,r13
31d792  e8 25 9f ff ff                 call   0x3176bc
31d797  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31d79c  e8 53 ed fa ff                 call   0x2cc4f4
31d7a1  40 38 3d d0 a6 0c 00           cmp    BYTE PTR [rip+0xca6d0],dil        # 0x3e7e78 ; CONFIG Bools.BasicCrateESP value(+0x48)
31d7a8  74 75                          je     0x31d81f
31d7aa  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31d7af  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31d7b6  e8 05 3d fd ff                 call   0x2f14c0 ; STRING getter=0x2f14c0 crate_basic.prefab
31d7bb  48 8b c8                       mov    rcx,rax
31d7be  e8 a9 05 fb ff                 call   0x2cdd6c
31d7c3  48 8b d0                       mov    rdx,rax
31d7c6  49 8b ce                       mov    rcx,r14
31d7c9  e8 92 d1 0a 00                 call   0x3ca960
31d7ce  48 85 c0                       test   rax,rax
31d7d1  74 4c                          je     0x31d81f
31d7d3  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31d7d8  48 8d 95 23 05 00 00           lea    rdx,[rbp+0x523]
31d7df  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31d7e6  e8 8d 3d fd ff                 call   0x2f1578 ; STRING getter=0x2f1578 BasicCrate
31d7eb  48 8b c8                       mov    rcx,rax
31d7ee  e8 d9 ad fb ff                 call   0x2d85cc
31d7f3  48 8b d0                       mov    rdx,rax
31d7f6  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31d7fb  e8 cc ea fa ff                 call   0x2cc2cc
31d800  4c 8b cb                       mov    r9,rbx
31d803  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31d808  ba 42 00 00 00                 mov    edx,0x42
31d80d  49 8b cd                       mov    rcx,r13
31d810  e8 a7 9e ff ff                 call   0x3176bc
31d815  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31d81a  e8 d5 ec fa ff                 call   0x2cc4f4
31d81f  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31d829  40 38 3d 48 9c 0c 00           cmp    BYTE PTR [rip+0xc9c48],dil        # 0x3e7478 ; CONFIG Bools.Corpse value(+0x48)
31d830  74 77                          je     0x31d8a9
31d832  48 8d 95 95 07 00 00           lea    rdx,[rbp+0x795]
31d839  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31d840  e8 9f 3d fd ff                 call   0x2f15e4 ; STRING getter=0x2f15e4 PlayerCorpse
31d845  48 8b c8                       mov    rcx,rax
31d848  e8 0f 06 fb ff                 call   0x2cde5c
31d84d  48 8b c8                       mov    rcx,rax
31d850  48 8b d3                       mov    rdx,rbx
31d853  e8 f4 82 fc ff                 call   0x2e5b4c
31d858  48 3b f0                       cmp    rsi,rax
31d85b  75 4c                          jne    0x31d8a9
31d85d  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31d862  48 8d 95 c0 02 00 00           lea    rdx,[rbp+0x2c0]
31d869  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31d870  e8 af 3d fd ff                 call   0x2f1624 ; STRING getter=0x2f1624 Corpse
31d875  48 8b c8                       mov    rcx,rax
31d878  e8 93 f8 fb ff                 call   0x2dd110
31d87d  48 8b d0                       mov    rdx,rax
31d880  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31d885  e8 42 ea fa ff                 call   0x2cc2cc
31d88a  4c 8b cb                       mov    r9,rbx
31d88d  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31d892  ba 43 00 00 00                 mov    edx,0x43
31d897  49 8b cd                       mov    rcx,r13
31d89a  e8 1d 9e ff ff                 call   0x3176bc
31d89f  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31d8a4  e8 4b ec fa ff                 call   0x2cc4f4
31d8a9  40 38 3d 18 9c 0c 00           cmp    BYTE PTR [rip+0xc9c18],dil        # 0x3e74c8 ; CONFIG Bools.ScientistCorpse value(+0x48)
31d8b0  0f 84 81 00 00 00              je     0x31d937
31d8b6  48 8d 95 68 09 00 00           lea    rdx,[rbp+0x968]
31d8bd  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31d8c4  e8 b7 3d fd ff                 call   0x2f1680 ; STRING getter=0x2f1680 NPCPlayerCorpse
31d8c9  48 8b c8                       mov    rcx,rax
31d8cc  e8 5b ac fb ff                 call   0x2d852c
31d8d1  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31d8db  48 8b c8                       mov    rcx,rax
31d8de  48 8b d3                       mov    rdx,rbx
31d8e1  e8 66 82 fc ff                 call   0x2e5b4c
31d8e6  48 3b f0                       cmp    rsi,rax
31d8e9  75 56                          jne    0x31d941
31d8eb  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31d8f0  48 8d 95 47 04 00 00           lea    rdx,[rbp+0x447]
31d8f7  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31d8fe  e8 ad 3d fd ff                 call   0x2f16b0 ; STRING getter=0x2f16b0 NPCCorpse
31d903  48 8b c8                       mov    rcx,rax
31d906  e8 11 04 fb ff                 call   0x2cdd1c
31d90b  48 8b d0                       mov    rdx,rax
31d90e  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31d913  e8 b4 e9 fa ff                 call   0x2cc2cc
31d918  4c 8b cb                       mov    r9,rbx
31d91b  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31d920  ba 44 00 00 00                 mov    edx,0x44
31d925  49 8b cd                       mov    rcx,r13
31d928  e8 8f 9d ff ff                 call   0x3176bc
31d92d  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31d932  e8 bd eb fa ff                 call   0x2cc4f4
31d937  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31d941  40 38 3d d0 9b 0c 00           cmp    BYTE PTR [rip+0xc9bd0],dil        # 0x3e7518 ; CONFIG Bools.AnimalCorpse value(+0x48)
31d948  74 77                          je     0x31d9c1
31d94a  48 8d 95 2e 05 00 00           lea    rdx,[rbp+0x52e]
31d951  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31d958  e8 8b 3d fd ff                 call   0x2f16e8 ; STRING getter=0x2f16e8 BaseCorpse
31d95d  48 8b c8                       mov    rcx,rax
31d960  e8 67 ac fb ff                 call   0x2d85cc
31d965  48 8b c8                       mov    rcx,rax
31d968  48 8b d3                       mov    rdx,rbx
31d96b  e8 dc 81 fc ff                 call   0x2e5b4c
31d970  48 3b f0                       cmp    rsi,rax
31d973  75 4c                          jne    0x31d9c1
31d975  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31d97a  48 8d 95 a2 07 00 00           lea    rdx,[rbp+0x7a2]
31d981  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31d988  e8 8f 3d fd ff                 call   0x2f171c ; STRING getter=0x2f171c AnimalCorpse
31d98d  48 8b c8                       mov    rcx,rax
31d990  e8 c7 04 fb ff                 call   0x2cde5c
31d995  48 8b d0                       mov    rdx,rax
31d998  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31d99d  e8 2a e9 fa ff                 call   0x2cc2cc
31d9a2  4c 8b cb                       mov    r9,rbx
31d9a5  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31d9aa  ba 45 00 00 00                 mov    edx,0x45
31d9af  49 8b cd                       mov    rcx,r13
31d9b2  e8 05 9d ff ff                 call   0x3176bc
31d9b7  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31d9bc  e8 33 eb fa ff                 call   0x2cc4f4
31d9c1  40 38 3d f0 9b 0c 00           cmp    BYTE PTR [rip+0xc9bf0],dil        # 0x3e75b8 ; CONFIG Bools.Backpack value(+0x48)
31d9c8  74 7f                          je     0x31da49
31d9ca  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31d9cf  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31d9d6  e8 7d 3d fd ff                 call   0x2f1758 ; STRING getter=0x2f1758 DroppedItemContainer
31d9db  48 8b c8                       mov    rcx,rax
31d9de  e8 59 5c fc ff                 call   0x2e363c
31d9e3  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31d9ed  48 8b c8                       mov    rcx,rax
31d9f0  48 8b d3                       mov    rdx,rbx
31d9f3  e8 54 81 fc ff                 call   0x2e5b4c
31d9f8  48 3b f0                       cmp    rsi,rax
31d9fb  75 56                          jne    0x31da53
31d9fd  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31da02  48 8d 95 9d 03 00 00           lea    rdx,[rbp+0x39d]
31da09  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31da10  e8 8f 3d fd ff                 call   0x2f17a4 ; STRING getter=0x2f17a4 Backpack
31da15  48 8b c8                       mov    rcx,rax
31da18  e8 e7 aa fb ff                 call   0x2d8504
31da1d  48 8b d0                       mov    rdx,rax
31da20  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31da25  e8 a2 e8 fa ff                 call   0x2cc2cc
31da2a  4c 8b cb                       mov    r9,rbx
31da2d  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31da32  ba 46 00 00 00                 mov    edx,0x46
31da37  49 8b cd                       mov    rcx,r13
31da3a  e8 7d 9c ff ff                 call   0x3176bc
31da3f  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31da44  e8 ab ea fa ff                 call   0x2cc4f4
31da49  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31da53  40 38 3d 0e b4 0c 00           cmp    BYTE PTR [rip+0xcb40e],dil        # 0x3e8e68 ; CONFIG Bools.droppeditems value(+0x48)
31da5a  75 12                          jne    0x31da6e
31da5c  40 38 3d b5 b3 0c 00           cmp    BYTE PTR [rip+0xcb3b5],dil        # 0x3e8e18 ; CONFIG Bools.droppedweapons value(+0x48)
31da63  75 09                          jne    0x31da6e
31da65  40 38 3d bc a8 0c 00           cmp    BYTE PTR [rip+0xca8bc],dil        # 0x3e8328 ; CONFIG Bools.OOFWeapons value(+0x48)
31da6c  74 5c                          je     0x31daca
31da6e  48 8d 95 e2 05 00 00           lea    rdx,[rbp+0x5e2]
31da75  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31da7c  e8 6f 3d fd ff                 call   0x2f17f0 ; STRING getter=0x2f17f0 DroppedItem
31da81  48 8b c8                       mov    rcx,rax
31da84  e8 83 03 fb ff                 call   0x2cde0c
31da89  48 8b c8                       mov    rcx,rax
31da8c  48 8b d3                       mov    rdx,rbx
31da8f  e8 b8 80 fc ff                 call   0x2e5b4c
31da94  48 3b f0                       cmp    rsi,rax
31da97  75 31                          jne    0x31daca
31da99  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31da9e  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31daa3  49 8b d6                       mov    rdx,r14
31daa6  e8 21 e8 fa ff                 call   0x2cc2cc
31daab  4c 8b cb                       mov    r9,rbx
31daae  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31dab3  ba 47 00 00 00                 mov    edx,0x47
31dab8  49 8b cd                       mov    rcx,r13
31dabb  e8 fc 9b ff ff                 call   0x3176bc
31dac0  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31dac5  e8 2a ea fa ff                 call   0x2cc4f4
31daca  40 38 3d 17 ac 0c 00           cmp    BYTE PTR [rip+0xcac17],dil        # 0x3e86e8 ; CONFIG Bools.AutoTurretESP value(+0x48)
31dad1  75 16                          jne    0x31dae9
31dad3  40 38 3d 5e bb 0c 00           cmp    BYTE PTR [rip+0xcbb5e],dil        # 0x3e9638 ; CONFIG Bools.AutoFarmOre value(+0x48)
31dada  75 0d                          jne    0x31dae9
31dadc  40 38 3d 05 bb 0c 00           cmp    BYTE PTR [rip+0xcbb05],dil        # 0x3e95e8 ; CONFIG Bools.AutoWalkMarker value(+0x48)
31dae3  0f 84 81 00 00 00              je     0x31db6a
31dae9  48 8d 95 39 05 00 00           lea    rdx,[rbp+0x539]
31daf0  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31daf7  e8 d8 3d fd ff                 call   0x2f18d4 ; STRING getter=0x2f18d4 AutoTurret
31dafc  48 8b c8                       mov    rcx,rax
31daff  e8 c8 aa fb ff                 call   0x2d85cc
31db04  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31db0e  48 8b c8                       mov    rcx,rax
31db11  48 8b d3                       mov    rdx,rbx
31db14  e8 33 80 fc ff                 call   0x2e5b4c
31db19  48 3b f0                       cmp    rsi,rax
31db1c  75 56                          jne    0x31db74
31db1e  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31db23  48 8d 95 7b 05 00 00           lea    rdx,[rbp+0x57b]
31db2a  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31db31  e8 ba 3d fd ff                 call   0x2f18f0 ; STRING getter=0x2f18f0 AutoTurret
31db36  48 8b c8                       mov    rcx,rax
31db39  e8 8e aa fb ff                 call   0x2d85cc
31db3e  48 8b d0                       mov    rdx,rax
31db41  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31db46  e8 81 e7 fa ff                 call   0x2cc2cc
31db4b  4c 8b cb                       mov    r9,rbx
31db4e  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31db53  ba 49 00 00 00                 mov    edx,0x49
31db58  49 8b cd                       mov    rcx,r13
31db5b  e8 5c 9b ff ff                 call   0x3176bc
31db60  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31db65  e8 8a e9 fa ff                 call   0x2cc4f4
31db6a  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31db74  40 38 3d fd a7 0c 00           cmp    BYTE PTR [rip+0xca7fd],dil        # 0x3e8378 ; CONFIG Bools.SnaptrapESP value(+0x48)
31db7b  74 77                          je     0x31dbf4
31db7d  48 8d 95 a6 03 00 00           lea    rdx,[rbp+0x3a6]
31db84  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31db8b  e8 ac 3d fd ff                 call   0x2f193c ; STRING getter=0x2f193c BearTrap
31db90  48 8b c8                       mov    rcx,rax
31db93  e8 6c a9 fb ff                 call   0x2d8504
31db98  48 8b c8                       mov    rcx,rax
31db9b  48 8b d3                       mov    rdx,rbx
31db9e  e8 a9 7f fc ff                 call   0x2e5b4c
31dba3  48 3b f0                       cmp    rsi,rax
31dba6  75 4c                          jne    0x31dbf4
31dba8  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31dbad  48 8d 95 af 03 00 00           lea    rdx,[rbp+0x3af]
31dbb4  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31dbbb  e8 bc 3d fd ff                 call   0x2f197c ; STRING getter=0x2f197c BearTrap
31dbc0  48 8b c8                       mov    rcx,rax
31dbc3  e8 3c a9 fb ff                 call   0x2d8504
31dbc8  48 8b d0                       mov    rdx,rax
31dbcb  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31dbd0  e8 f7 e6 fa ff                 call   0x2cc2cc
31dbd5  4c 8b cb                       mov    r9,rbx
31dbd8  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31dbdd  ba 4a 00 00 00                 mov    edx,0x4a
31dbe2  49 8b cd                       mov    rcx,r13
31dbe5  e8 d2 9a ff ff                 call   0x3176bc
31dbea  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31dbef  e8 00 e9 fa ff                 call   0x2cc4f4
31dbf4  40 38 3d 1d a3 0c 00           cmp    BYTE PTR [rip+0xca31d],dil        # 0x3e7f18 ; CONFIG Bools.SnakeEsp value(+0x48)
31dbfb  0f 84 81 00 00 00              je     0x31dc82
31dc01  48 8d 95 ee 05 00 00           lea    rdx,[rbp+0x5ee]
31dc08  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31dc0f  e8 a8 3d fd ff                 call   0x2f19bc ; STRING getter=0x2f19bc SnakeHazard
31dc14  48 8b c8                       mov    rcx,rax
31dc17  e8 f0 01 fb ff                 call   0x2cde0c
31dc1c  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31dc26  48 8b c8                       mov    rcx,rax
31dc29  48 8b d3                       mov    rdx,rbx
31dc2c  e8 1b 7f fc ff                 call   0x2e5b4c
31dc31  48 3b f0                       cmp    rsi,rax
31dc34  75 56                          jne    0x31dc8c
31dc36  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31dc3b  48 8d 95 fb 01 00 00           lea    rdx,[rbp+0x1fb]
31dc42  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31dc49  e8 a6 3d fd ff                 call   0x2f19f4 ; STRING getter=0x2f19f4 Snake
31dc4e  48 8b c8                       mov    rcx,rax
31dc51  e8 5e a8 fb ff                 call   0x2d84b4
31dc56  48 8b d0                       mov    rdx,rax
31dc59  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31dc5e  e8 69 e6 fa ff                 call   0x2cc2cc
31dc63  4c 8b cb                       mov    r9,rbx
31dc66  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31dc6b  ba 4f 00 00 00                 mov    edx,0x4f
31dc70  49 8b cd                       mov    rcx,r13
31dc73  e8 44 9a ff ff                 call   0x3176bc
31dc78  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31dc7d  e8 72 e8 fa ff                 call   0x2cc4f4
31dc82  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31dc8c  40 38 3d b5 a4 0c 00           cmp    BYTE PTR [rip+0xca4b5],dil        # 0x3e8148 ; CONFIG Bools.CowESP value(+0x48)
31dc93  74 71                          je     0x31dd06
31dc95  48 8d 55 10                    lea    rdx,[rbp+0x10]
31dc99  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31dca0  e8 7f 3d fd ff                 call   0x2f1a24 ; STRING getter=0x2f1a24 Cow
31dca5  48 8b c8                       mov    rcx,rax
31dca8  e8 3b f4 fb ff                 call   0x2dd0e8
31dcad  48 8b c8                       mov    rcx,rax
31dcb0  48 8b d3                       mov    rdx,rbx
31dcb3  e8 94 7e fc ff                 call   0x2e5b4c
31dcb8  48 3b f0                       cmp    rsi,rax
31dcbb  75 49                          jne    0x31dd06
31dcbd  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31dcc2  48 8d 55 14                    lea    rdx,[rbp+0x14]
31dcc6  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31dccd  e8 52 3d fd ff                 call   0x2f1a24 ; STRING getter=0x2f1a24 Cow
31dcd2  48 8b c8                       mov    rcx,rax
31dcd5  e8 0e f4 fb ff                 call   0x2dd0e8
31dcda  48 8b d0                       mov    rdx,rax
31dcdd  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31dce2  e8 e5 e5 fa ff                 call   0x2cc2cc
31dce7  4c 8b cb                       mov    r9,rbx
31dcea  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31dcef  ba 7f 00 00 00                 mov    edx,0x7f
31dcf4  49 8b cd                       mov    rcx,r13
31dcf7  e8 c0 99 ff ff                 call   0x3176bc
31dcfc  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31dd01  e8 ee e7 fa ff                 call   0x2cc4f4
31dd06  40 38 3d eb a3 0c 00           cmp    BYTE PTR [rip+0xca3eb],dil        # 0x3e80f8 ; CONFIG Bools.SheepESP value(+0x48)
31dd0d  0f 84 81 00 00 00              je     0x31dd94
31dd13  48 8d 95 46 02 00 00           lea    rdx,[rbp+0x246]
31dd1a  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31dd21  e8 46 3d fd ff                 call   0x2f1a6c ; STRING getter=0x2f1a6c Sheep
31dd26  48 8b c8                       mov    rcx,rax
31dd29  e8 86 a7 fb ff                 call   0x2d84b4
31dd2e  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31dd38  48 8b c8                       mov    rcx,rax
31dd3b  48 8b d3                       mov    rdx,rbx
31dd3e  e8 09 7e fc ff                 call   0x2e5b4c
31dd43  48 3b f0                       cmp    rsi,rax
31dd46  75 56                          jne    0x31dd9e
31dd48  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31dd4d  48 8d 95 3a 02 00 00           lea    rdx,[rbp+0x23a]
31dd54  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31dd5b  e8 24 3d fd ff                 call   0x2f1a84 ; STRING getter=0x2f1a84 Sheep
31dd60  48 8b c8                       mov    rcx,rax
31dd63  e8 4c a7 fb ff                 call   0x2d84b4
31dd68  48 8b d0                       mov    rdx,rax
31dd6b  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31dd70  e8 57 e5 fa ff                 call   0x2cc2cc
31dd75  4c 8b cb                       mov    r9,rbx
31dd78  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31dd7d  ba 7e 00 00 00                 mov    edx,0x7e
31dd82  49 8b cd                       mov    rcx,r13
31dd85  e8 32 99 ff ff                 call   0x3176bc
31dd8a  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31dd8f  e8 60 e7 fa ff                 call   0x2cc4f4
31dd94  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31dd9e  40 38 3d c3 a1 0c 00           cmp    BYTE PTR [rip+0xca1c3],dil        # 0x3e7f68 ; CONFIG Bools.TigerEsp value(+0x48)
31dda5  74 77                          je     0x31de1e
31dda7  48 8d 95 52 02 00 00           lea    rdx,[rbp+0x252]
31ddae  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31ddb5  e8 d6 3d fd ff                 call   0x2f1b90 ; STRING getter=0x2f1b90 Tiger
31ddba  48 8b c8                       mov    rcx,rax
31ddbd  e8 f2 a6 fb ff                 call   0x2d84b4
31ddc2  48 8b c8                       mov    rcx,rax
31ddc5  48 8b d3                       mov    rdx,rbx
31ddc8  e8 7f 7d fc ff                 call   0x2e5b4c
31ddcd  48 3b f0                       cmp    rsi,rax
31ddd0  75 4c                          jne    0x31de1e
31ddd2  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31ddd7  48 8d 95 4c 02 00 00           lea    rdx,[rbp+0x24c]
31ddde  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31dde5  e8 be 3d fd ff                 call   0x2f1ba8 ; STRING getter=0x2f1ba8 Tiger
31ddea  48 8b c8                       mov    rcx,rax
31dded  e8 c2 a6 fb ff                 call   0x2d84b4
31ddf2  48 8b d0                       mov    rdx,rax
31ddf5  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31ddfa  e8 cd e4 fa ff                 call   0x2cc2cc
31ddff  4c 8b cb                       mov    r9,rbx
31de02  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31de07  ba 50 00 00 00                 mov    edx,0x50
31de0c  49 8b cd                       mov    rcx,r13
31de0f  e8 a8 98 ff ff                 call   0x3176bc
31de14  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31de19  e8 d6 e6 fa ff                 call   0x2cc4f4
31de1e  40 38 3d 93 a1 0c 00           cmp    BYTE PTR [rip+0xca193],dil        # 0x3e7fb8 ; CONFIG Bools.PantherEsp value(+0x48)
31de25  0f 84 81 00 00 00              je     0x31deac
31de2b  48 8d 95 59 03 00 00           lea    rdx,[rbp+0x359]
31de32  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31de39  e8 9a 3d fd ff                 call   0x2f1bd8
31de3e  48 8b c8                       mov    rcx,rax
31de41  e8 f2 f2 fb ff                 call   0x2dd138
31de46  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31de50  48 8b c8                       mov    rcx,rax
31de53  48 8b d3                       mov    rdx,rbx
31de56  e8 f1 7c fc ff                 call   0x2e5b4c
31de5b  48 3b f0                       cmp    rsi,rax
31de5e  75 56                          jne    0x31deb6
31de60  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31de65  48 8d 95 71 03 00 00           lea    rdx,[rbp+0x371]
31de6c  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31de73  e8 60 3d fd ff                 call   0x2f1bd8
31de78  48 8b c8                       mov    rcx,rax
31de7b  e8 b8 f2 fb ff                 call   0x2dd138
31de80  48 8b d0                       mov    rdx,rax
31de83  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31de88  e8 3f e4 fa ff                 call   0x2cc2cc
31de8d  4c 8b cb                       mov    r9,rbx
31de90  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31de95  ba 51 00 00 00                 mov    edx,0x51
31de9a  49 8b cd                       mov    rcx,r13
31de9d  e8 1a 98 ff ff                 call   0x3176bc
31dea2  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31dea7  e8 48 e6 fa ff                 call   0x2cc4f4
31deac  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31deb6  40 38 3d 4b a1 0c 00           cmp    BYTE PTR [rip+0xca14b],dil        # 0x3e8008 ; CONFIG Bools.CrocodileEsp value(+0x48)
31debd  74 77                          je     0x31df36
31debf  48 8d 95 3d 04 00 00           lea    rdx,[rbp+0x43d]
31dec6  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31decd  e8 3e 3d fd ff                 call   0x2f1c10 ; STRING getter=0x2f1c10 Crocodile
31ded2  48 8b c8                       mov    rcx,rax
31ded5  e8 42 fe fa ff                 call   0x2cdd1c
31deda  48 8b c8                       mov    rcx,rax
31dedd  48 8b d3                       mov    rdx,rbx
31dee0  e8 67 7c fc ff                 call   0x2e5b4c
31dee5  48 3b f0                       cmp    rsi,rax
31dee8  75 4c                          jne    0x31df36
31deea  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31deef  48 8d 95 33 04 00 00           lea    rdx,[rbp+0x433]
31def6  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31defd  e8 2a 3d fd ff                 call   0x2f1c2c ; STRING getter=0x2f1c2c Crocodile
31df02  48 8b c8                       mov    rcx,rax
31df05  e8 12 fe fa ff                 call   0x2cdd1c
31df0a  48 8b d0                       mov    rdx,rax
31df0d  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31df12  e8 b5 e3 fa ff                 call   0x2cc2cc
31df17  4c 8b cb                       mov    r9,rbx
31df1a  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31df1f  ba 52 00 00 00                 mov    edx,0x52
31df24  49 8b cd                       mov    rcx,r13
31df27  e8 90 97 ff ff                 call   0x3176bc
31df2c  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31df31  e8 be e5 fa ff                 call   0x2cc4f4
31df36  40 38 3d fb a7 0c 00           cmp    BYTE PTR [rip+0xca7fb],dil        # 0x3e8738 ; CONFIG Bools.FlameTrapESP value(+0x48)
31df3d  0f 84 81 00 00 00              je     0x31dfc4
31df43  48 8d 95 fa 05 00 00           lea    rdx,[rbp+0x5fa]
31df4a  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31df51  e8 f2 3c fd ff                 call   0x2f1c48 ; STRING getter=0x2f1c48 FlameTurret
31df56  48 8b c8                       mov    rcx,rax
31df59  e8 ae fe fa ff                 call   0x2cde0c
31df5e  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31df68  48 8b c8                       mov    rcx,rax
31df6b  48 8b d3                       mov    rdx,rbx
31df6e  e8 d9 7b fc ff                 call   0x2e5b4c
31df73  48 3b f0                       cmp    rsi,rax
31df76  75 56                          jne    0x31dfce
31df78  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31df7d  48 8d 95 06 06 00 00           lea    rdx,[rbp+0x606]
31df84  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31df8b  e8 d4 3c fd ff                 call   0x2f1c64 ; STRING getter=0x2f1c64 FlameTurret
31df90  48 8b c8                       mov    rcx,rax
31df93  e8 74 fe fa ff                 call   0x2cde0c
31df98  48 8b d0                       mov    rdx,rax
31df9b  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31dfa0  e8 27 e3 fa ff                 call   0x2cc2cc
31dfa5  4c 8b cb                       mov    r9,rbx
31dfa8  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31dfad  ba 4b 00 00 00                 mov    edx,0x4b
31dfb2  49 8b cd                       mov    rcx,r13
31dfb5  e8 02 97 ff ff                 call   0x3176bc
31dfba  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31dfbf  e8 30 e5 fa ff                 call   0x2cc4f4
31dfc4  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31dfce  40 38 3d 83 be 0c 00           cmp    BYTE PTR [rip+0xcbe83],dil        # 0x3e9e58 ; CONFIG Bools.tunacanalarm value(+0x48)
31dfd5  74 77                          je     0x31e04e
31dfd7  48 8d 95 12 06 00 00           lea    rdx,[rbp+0x612]
31dfde  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31dfe5  e8 96 3c fd ff                 call   0x2f1c80 ; STRING getter=0x2f1c80 TinCanAlarm
31dfea  48 8b c8                       mov    rcx,rax
31dfed  e8 1a fe fa ff                 call   0x2cde0c
31dff2  48 8b c8                       mov    rcx,rax
31dff5  48 8b d3                       mov    rdx,rbx
31dff8  e8 4f 7b fc ff                 call   0x2e5b4c
31dffd  48 3b f0                       cmp    rsi,rax
31e000  75 4c                          jne    0x31e04e
31e002  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31e007  48 8d 95 1e 06 00 00           lea    rdx,[rbp+0x61e]
31e00e  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31e015  e8 82 3c fd ff                 call   0x2f1c9c ; STRING getter=0x2f1c9c TinCanAlarm
31e01a  48 8b c8                       mov    rcx,rax
31e01d  e8 ea fd fa ff                 call   0x2cde0c
31e022  48 8b d0                       mov    rdx,rax
31e025  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31e02a  e8 9d e2 fa ff                 call   0x2cc2cc
31e02f  4c 8b cb                       mov    r9,rbx
31e032  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31e037  ba 4c 00 00 00                 mov    edx,0x4c
31e03c  49 8b cd                       mov    rcx,r13
31e03f  e8 78 96 ff ff                 call   0x3176bc
31e044  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31e049  e8 a6 e4 fa ff                 call   0x2cc4f4
31e04e  40 38 3d c3 b7 0c 00           cmp    BYTE PTR [rip+0xcb7c3],dil        # 0x3e9818 ; CONFIG Bools.NoHittingSpikes value(+0x48)
31e055  75 6a                          jne    0x31e0c1
31e057  40 38 3d a3 15 0d 00           cmp    BYTE PTR [rip+0xd15a3],dil        # 0x3ef601
31e05e  75 61                          jne    0x31e0c1
31e060  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
31e065  48 8d 0d 84 81 0c 00           lea    rcx,[rip+0xc8184]        # 0x3e61f0
31e06c  e8 03 17 fd ff                 call   0x2ef774
31e071  40 38 38                       cmp    BYTE PTR [rax],dil
31e074  0f 84 61 0e 00 00              je     0x31eedb
31e07a  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
31e07f  48 8d 0d ea 80 0c 00           lea    rcx,[rip+0xc80ea]        # 0x3e6170
31e086  e8 c9 16 fd ff                 call   0x2ef754
31e08b  4c 8b 00                       mov    r8,QWORD PTR [rax]
31e08e  49 8b c8                       mov    rcx,r8
31e091  e8 72 ce fa ff                 call   0x2caf08
31e096  84 c0                          test   al,al
31e098  0f 84 fb 0d 00 00              je     0x31ee99
31e09e  33 d2                          xor    edx,edx
31e0a0  49 8b c8                       mov    rcx,r8
31e0a3  e8 88 7c 05 00                 call   0x375d30
31e0a8  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
31e0ad  48 8d 0d 3c 81 0c 00           lea    rcx,[rip+0xc813c]        # 0x3e61f0
31e0b4  e8 bb 16 fd ff                 call   0x2ef774
31e0b9  40 88 38                       mov    BYTE PTR [rax],dil
31e0bc  e9 d8 0d 00 00                 jmp    0x31ee99
31e0c1  48 8d 95 2a 06 00 00           lea    rdx,[rbp+0x62a]
31e0c8  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31e0cf  e8 74 3c fd ff                 call   0x2f1d48 ; STRING getter=0x2f1d48 FlameTurret
31e0d4  48 8b c8                       mov    rcx,rax
31e0d7  e8 30 fd fa ff                 call   0x2cde0c
31e0dc  48 8b c8                       mov    rcx,rax
31e0df  48 ba 25 23 22 84 e4 9c f2 cb  movabs rdx,0xcbf29ce484222325
31e0e9  e8 5e 7a fc ff                 call   0x2e5b4c
31e0ee  48 3b f0                       cmp    rsi,rax
31e0f1  0f 85 aa 02 00 00              jne    0x31e3a1
31e0f7  f3 0f 10 05 09 f6 0c 00        movss  xmm0,DWORD PTR [rip+0xcf609]        # 0x3ed708 ; CONFIG F.lookingatradius value(+0x48)
31e0ff  0f 2e 05 ae 50 f7 ff           ucomiss xmm0,DWORD PTR [rip+0xfffffffffff750ae]        # 0x2931b4 ; f32=14
31e106  0f 8a 95 02 00 00              jp     0x31e3a1
31e10c  0f 85 8f 02 00 00              jne    0x31e3a1
31e112  40 38 3d 2f b4 0c 00           cmp    BYTE PTR [rip+0xcb42f],dil        # 0x3e9548 ; CONFIG Bools.lookingat value(+0x48)
31e119  0f 85 82 02 00 00              jne    0x31e3a1
31e11f  40 38 3d f2 b6 0c 00           cmp    BYTE PTR [rip+0xcb6f2],dil        # 0x3e9818 ; CONFIG Bools.NoHittingSpikes value(+0x48)
31e126  0f 84 13 02 00 00              je     0x31e33f
31e12c  49 8b cf                       mov    rcx,r15
31e12f  e8 7c b2 04 00                 call   0x3693b0
31e134  84 c0                          test   al,al
31e136  0f 85 03 02 00 00              jne    0x31e33f
31e13c  48 8d 95 38 06 00 00           lea    rdx,[rbp+0x638]
31e143  49 8b cf                       mov    rcx,r15
31e146  e8 19 b0 04 00                 call   0x369164
31e14b  48 8b 4c 24 20                 mov    rcx,QWORD PTR [rsp+0x20]
31e150  48 8d 95 00 01 00 00           lea    rdx,[rbp+0x100]
31e157  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
31e15b  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
31e15e  f2 0f 11 85 00 01 00 00        movsd  QWORD PTR [rbp+0x100],xmm0
31e166  89 85 08 01 00 00              mov    DWORD PTR [rbp+0x108],eax
31e16c  e8 3f 85 04 00                 call   0x3666b0
31e171  44 0f 2f c0                    comiss xmm8,xmm0
31e175  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
31e17a  48 8d 0d 6f 80 0c 00           lea    rcx,[rip+0xc806f]        # 0x3e61f0
31e181  0f 86 66 01 00 00              jbe    0x31e2ed
31e187  e8 e8 15 fd ff                 call   0x2ef774
31e18c  40 38 38                       cmp    BYTE PTR [rax],dil
31e18f  0f 85 0c 02 00 00              jne    0x31e3a1
31e195  48 8b 4c 24 20                 mov    rcx,QWORD PTR [rsp+0x20]
31e19a  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31e19f  e8 28 83 04 00                 call   0x3664cc
31e1a4  f3 0f 10 5c 24 74              movss  xmm3,DWORD PTR [rsp+0x74]
31e1aa  48 8d 8d 10 01 00 00           lea    rcx,[rbp+0x110]
31e1b1  f3 0f 10 54 24 70              movss  xmm2,DWORD PTR [rsp+0x70]
31e1b7  f3 0f 10 4c 24 6c              movss  xmm1,DWORD PTR [rsp+0x6c]
31e1bd  f3 0f 59 15 b3 4f f7 ff        mulss  xmm2,DWORD PTR [rip+0xfffffffffff74fb3]        # 0x293178 ; f32=4
31e1c5  f3 0f 59 de                    mulss  xmm3,xmm6
31e1c9  f3 0f 59 ce                    mulss  xmm1,xmm6
31e1cd  e8 d6 99 0a 00                 call   0x3c7ba8
31e1d2  48 8b 4c 24 20                 mov    rcx,QWORD PTR [rsp+0x20]
31e1d7  e8 2c 23 05 00                 call   0x370508
31e1dc  48 8b c8                       mov    rcx,rax
31e1df  48 8b f8                       mov    rdi,rax
31e1e2  e8 21 cd fa ff                 call   0x2caf08
31e1e7  84 c0                          test   al,al
31e1e9  0f 84 b0 01 00 00              je     0x31e39f
31e1ef  48 8d 95 44 06 00 00           lea    rdx,[rbp+0x644]
31e1f6  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31e1fd  e8 7e 3b fd ff                 call   0x2f1d80 ; STRING getter=0x2f1d80 UnityEngine
31e202  48 8b c8                       mov    rcx,rax
31e205  e8 02 fc fa ff                 call   0x2cde0c
31e20a  48 8d 95 50 06 00 00           lea    rdx,[rbp+0x650]
31e211  48 8b d8                       mov    rbx,rax
31e214  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31e21b  e8 44 3b fd ff                 call   0x2f1d64 ; STRING getter=0x2f1d64 BoxCollider
31e220  48 8b c8                       mov    rcx,rax
31e223  e8 e4 fb fa ff                 call   0x2cde0c
31e228  48 8b d0                       mov    rdx,rax
31e22b  4c 8b c3                       mov    r8,rbx
31e22e  48 8b cf                       mov    rcx,rdi
31e231  e8 c6 4c 05 00                 call   0x372efc
31e236  48 8b c8                       mov    rcx,rax
31e239  48 8b d8                       mov    rbx,rax
31e23c  e8 c7 cc fa ff                 call   0x2caf08
31e241  33 ff                          xor    edi,edi
31e243  84 c0                          test   al,al
31e245  0f 84 56 01 00 00              je     0x31e3a1
31e24b  8b 8d 18 01 00 00              mov    ecx,DWORD PTR [rbp+0x118]
31e251  48 8d 95 20 01 00 00           lea    rdx,[rbp+0x120]
31e258  f2 0f 10 85 10 01 00 00        movsd  xmm0,QWORD PTR [rbp+0x110]
31e260  89 8d 28 01 00 00              mov    DWORD PTR [rbp+0x128],ecx
31e266  48 8b cb                       mov    rcx,rbx
31e269  f2 0f 11 85 20 01 00 00        movsd  QWORD PTR [rbp+0x120],xmm0
31e271  e8 f2 26 05 00                 call   0x370968
31e276  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
31e27b  48 8d 0d ee 7e 0c 00           lea    rcx,[rip+0xc7eee]        # 0x3e6170
31e282  e8 cd 14 fd ff                 call   0x2ef754
31e287  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
31e28c  48 8d 0d 5d 7f 0c 00           lea    rcx,[rip+0xc7f5d]        # 0x3e61f0
31e293  48 89 18                       mov    QWORD PTR [rax],rbx
31e296  e8 d9 14 fd ff                 call   0x2ef774
31e29b  48 8d 95 5c 06 00 00           lea    rdx,[rbp+0x65c]
31e2a2  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31e2a9  c6 00 01                       mov    BYTE PTR [rax],0x1
31e2ac  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31e2b1  e8 e6 3a fd ff                 call   0x2f1d9c ; STRING getter=0x2f1d9c FlameTurret
31e2b6  48 8b c8                       mov    rcx,rax
31e2b9  e8 4e fb fa ff                 call   0x2cde0c
31e2be  48 8b d0                       mov    rdx,rax
31e2c1  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31e2c6  e8 01 e0 fa ff                 call   0x2cc2cc
31e2cb  4c 8b cb                       mov    r9,rbx
31e2ce  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31e2d3  8d 57 4b                       lea    edx,[rdi+0x4b]
31e2d6  49 8b cd                       mov    rcx,r13
31e2d9  e8 de 93 ff ff                 call   0x3176bc
31e2de  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31e2e3  e8 0c e2 fa ff                 call   0x2cc4f4
31e2e8  e9 b4 00 00 00                 jmp    0x31e3a1
31e2ed  e8 82 14 fd ff                 call   0x2ef774
31e2f2  40 38 38                       cmp    BYTE PTR [rax],dil
31e2f5  0f 84 a6 00 00 00              je     0x31e3a1
31e2fb  48 8d 0d 6e 7e 0c 00           lea    rcx,[rip+0xc7e6e]        # 0x3e6170
31e302  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
31e307  e8 48 14 fd ff                 call   0x2ef754
31e30c  4c 8b 00                       mov    r8,QWORD PTR [rax]
31e30f  49 8b c8                       mov    rcx,r8
31e312  e8 f1 cb fa ff                 call   0x2caf08
31e317  84 c0                          test   al,al
31e319  0f 84 82 00 00 00              je     0x31e3a1
31e31f  33 d2                          xor    edx,edx
31e321  49 8b c8                       mov    rcx,r8
31e324  e8 07 7a 05 00                 call   0x375d30
31e329  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
31e32e  48 8d 0d bb 7e 0c 00           lea    rcx,[rip+0xc7ebb]        # 0x3e61f0
31e335  e8 3a 14 fd ff                 call   0x2ef774
31e33a  40 88 38                       mov    BYTE PTR [rax],dil
31e33d  eb 62                          jmp    0x31e3a1
31e33f  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
31e344  48 8d 0d a5 7e 0c 00           lea    rcx,[rip+0xc7ea5]        # 0x3e61f0
31e34b  e8 24 14 fd ff                 call   0x2ef774
31e350  40 38 38                       cmp    BYTE PTR [rax],dil
31e353  74 4c                          je     0x31e3a1
31e355  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
31e35a  48 8d 0d 0f 7e 0c 00           lea    rcx,[rip+0xc7e0f]        # 0x3e6170
31e361  e8 ee 13 fd ff                 call   0x2ef754
31e366  4c 8b 00                       mov    r8,QWORD PTR [rax]
31e369  49 8b c8                       mov    rcx,r8
31e36c  e8 97 cb fa ff                 call   0x2caf08
31e371  84 c0                          test   al,al
31e373  74 1e                          je     0x31e393
31e375  33 d2                          xor    edx,edx
31e377  49 8b c8                       mov    rcx,r8
31e37a  e8 b1 79 05 00                 call   0x375d30
31e37f  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
31e384  48 8d 0d 65 7e 0c 00           lea    rcx,[rip+0xc7e65]        # 0x3e61f0
31e38b  e8 e4 13 fd ff                 call   0x2ef774
31e390  40 88 38                       mov    BYTE PTR [rax],dil
31e393  48 8d 0d 16 7e 0c 00           lea    rcx,[rip+0xc7e16]        # 0x3e61b0
31e39a  e9 63 ff ff ff                 jmp    0x31e302
31e39f  33 ff                          xor    edi,edi
31e3a1  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31e3a6  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31e3ad  e8 06 3a fd ff                 call   0x2f1db8 ; STRING getter=0x2f1db8 SimpleBuildingBlock
31e3b2  48 8b c8                       mov    rcx,rax
31e3b5  e8 02 fa fa ff                 call   0x2cddbc
31e3ba  48 8b c8                       mov    rcx,rax
31e3bd  48 ba 25 23 22 84 e4 9c f2 cb  movabs rdx,0xcbf29ce484222325
31e3c7  e8 80 77 fc ff                 call   0x2e5b4c
31e3cc  48 3b f0                       cmp    rsi,rax
31e3cf  0f 85 4a 04 00 00              jne    0x31e81f
31e3d5  40 38 3d 3c b4 0c 00           cmp    BYTE PTR [rip+0xcb43c],dil        # 0x3e9818 ; CONFIG Bools.NoHittingSpikes value(+0x48)
31e3dc  0f 84 ab 03 00 00              je     0x31e78d
31e3e2  49 8b cf                       mov    rcx,r15
31e3e5  e8 c6 af 04 00                 call   0x3693b0
31e3ea  84 c0                          test   al,al
31e3ec  0f 85 9b 03 00 00              jne    0x31e78d
31e3f2  48 8d 95 68 06 00 00           lea    rdx,[rbp+0x668]
31e3f9  49 8b cf                       mov    rcx,r15
31e3fc  e8 63 ad 04 00                 call   0x369164
31e401  48 8b 4c 24 20                 mov    rcx,QWORD PTR [rsp+0x20]
31e406  48 8d 95 80 01 00 00           lea    rdx,[rbp+0x180]
31e40d  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
31e411  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
31e414  f2 0f 11 85 80 01 00 00        movsd  QWORD PTR [rbp+0x180],xmm0
31e41c  89 85 88 01 00 00              mov    DWORD PTR [rbp+0x188],eax
31e422  e8 89 82 04 00                 call   0x3666b0
31e427  0f 2f f8                       comiss xmm7,xmm0
31e42a  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
31e42f  48 8d 0d ba 7d 0c 00           lea    rcx,[rip+0xc7dba]        # 0x3e61f0
31e436  0f 86 3a 03 00 00              jbe    0x31e776
31e43c  e8 33 13 fd ff                 call   0x2ef774
31e441  40 38 38                       cmp    BYTE PTR [rax],dil
31e444  0f 85 d5 03 00 00              jne    0x31e81f
31e44a  48 8d 55 c0                    lea    rdx,[rbp-0x40]
31e44e  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31e455  e8 76 39 fd ff                 call   0x2f1dd0 ; STRING getter=0x2f1dd0 external.high.stone.prefab
31e45a  48 8b c8                       mov    rcx,rax
31e45d  e8 a2 b7 fc ff                 call   0x2e9c04
31e462  48 8b d0                       mov    rdx,rax
31e465  49 8b ce                       mov    rcx,r14
31e468  e8 f3 c4 0a 00                 call   0x3ca960
31e46d  48 85 c0                       test   rax,rax
31e470  75 2d                          jne    0x31e49f
31e472  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31e477  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31e47e  e8 69 39 fd ff                 call   0x2f1dec ; STRING getter=0x2f1dec wall.external.high.adobe
31e483  48 8b c8                       mov    rcx,rax
31e486  e8 51 52 fc ff                 call   0x2e36dc
31e48b  48 8b d0                       mov    rdx,rax
31e48e  49 8b ce                       mov    rcx,r14
31e491  e8 ca c4 0a 00                 call   0x3ca960
31e496  48 85 c0                       test   rax,rax
31e499  0f 84 57 01 00 00              je     0x31e5f6
31e49f  48 8b 4c 24 20                 mov    rcx,QWORD PTR [rsp+0x20]
31e4a4  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31e4a9  e8 1e 80 04 00                 call   0x3664cc
31e4ae  f3 0f 10 5c 24 74              movss  xmm3,DWORD PTR [rsp+0x74]
31e4b4  48 8d 8d 40 01 00 00           lea    rcx,[rbp+0x140]
31e4bb  f3 0f 10 54 24 70              movss  xmm2,DWORD PTR [rsp+0x70]
31e4c1  f3 0f 10 4c 24 6c              movss  xmm1,DWORD PTR [rsp+0x6c]
31e4c7  f3 0f 59 1d 2d 4c f7 ff        mulss  xmm3,DWORD PTR [rip+0xfffffffffff74c2d]        # 0x2930fc ; f32=1.35
31e4cf  f3 0f 59 15 95 4c f7 ff        mulss  xmm2,DWORD PTR [rip+0xfffffffffff74c95]        # 0x29316c ; f32=3.5
31e4d7  f3 0f 59 ce                    mulss  xmm1,xmm6
31e4db  e8 c8 96 0a 00                 call   0x3c7ba8
31e4e0  48 8b 4c 24 20                 mov    rcx,QWORD PTR [rsp+0x20]
31e4e5  e8 1e 20 05 00                 call   0x370508
31e4ea  48 8b c8                       mov    rcx,rax
31e4ed  48 8b f8                       mov    rdi,rax
31e4f0  e8 13 ca fa ff                 call   0x2caf08
31e4f5  84 c0                          test   al,al
31e4f7  0f 84 f9 00 00 00              je     0x31e5f6
31e4fd  48 8d 95 74 06 00 00           lea    rdx,[rbp+0x674]
31e504  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31e50b  e8 14 39 fd ff                 call   0x2f1e24 ; STRING getter=0x2f1e24 UnityEngine
31e510  48 8b c8                       mov    rcx,rax
31e513  e8 f4 f8 fa ff                 call   0x2cde0c
31e518  48 8d 95 80 06 00 00           lea    rdx,[rbp+0x680]
31e51f  48 8b d8                       mov    rbx,rax
31e522  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31e529  e8 da 38 fd ff                 call   0x2f1e08 ; STRING getter=0x2f1e08 BoxCollider
31e52e  48 8b c8                       mov    rcx,rax
31e531  e8 d6 f8 fa ff                 call   0x2cde0c
31e536  48 8b d0                       mov    rdx,rax
31e539  4c 8b c3                       mov    r8,rbx
31e53c  48 8b cf                       mov    rcx,rdi
31e53f  e8 b8 49 05 00                 call   0x372efc
31e544  48 8b c8                       mov    rcx,rax
31e547  48 8b d8                       mov    rbx,rax
31e54a  e8 b9 c9 fa ff                 call   0x2caf08
31e54f  84 c0                          test   al,al
31e551  0f 84 9f 00 00 00              je     0x31e5f6
31e557  8b 8d 48 01 00 00              mov    ecx,DWORD PTR [rbp+0x148]
31e55d  48 8d 95 50 01 00 00           lea    rdx,[rbp+0x150]
31e564  f2 0f 10 85 40 01 00 00        movsd  xmm0,QWORD PTR [rbp+0x140]
31e56c  89 8d 58 01 00 00              mov    DWORD PTR [rbp+0x158],ecx
31e572  48 8b cb                       mov    rcx,rbx
31e575  f2 0f 11 85 50 01 00 00        movsd  QWORD PTR [rbp+0x150],xmm0
31e57d  e8 e6 23 05 00                 call   0x370968
31e582  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
31e587  48 8d 0d e2 7b 0c 00           lea    rcx,[rip+0xc7be2]        # 0x3e6170
31e58e  e8 c1 11 fd ff                 call   0x2ef754
31e593  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
31e598  48 8d 0d 51 7c 0c 00           lea    rcx,[rip+0xc7c51]        # 0x3e61f0
31e59f  48 89 18                       mov    QWORD PTR [rax],rbx
31e5a2  e8 cd 11 fd ff                 call   0x2ef774
31e5a7  48 8d 95 c7 02 00 00           lea    rdx,[rbp+0x2c7]
31e5ae  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31e5b5  c6 00 01                       mov    BYTE PTR [rax],0x1
31e5b8  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31e5bd  e8 7e 38 fd ff                 call   0x2f1e40 ; STRING getter=0x2f1e40 XDWALL
31e5c2  48 8b c8                       mov    rcx,rax
31e5c5  e8 46 eb fb ff                 call   0x2dd110
31e5ca  48 8b d0                       mov    rdx,rax
31e5cd  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31e5d2  e8 f5 dc fa ff                 call   0x2cc2cc
31e5d7  4c 8b cb                       mov    r9,rbx
31e5da  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31e5df  ba 4d 00 00 00                 mov    edx,0x4d
31e5e4  49 8b cd                       mov    rcx,r13
31e5e7  e8 d0 90 ff ff                 call   0x3176bc
31e5ec  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31e5f1  e8 fe de fa ff                 call   0x2cc4f4
31e5f6  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31e5fb  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31e602  e8 81 3d fd ff                 call   0x2f2388 ; STRING getter=0x2f2388 external.high.wood.prefab
31e607  48 8b c8                       mov    rcx,rax
31e60a  e8 25 1f 00 00                 call   0x320534
31e60f  48 8b d0                       mov    rdx,rax
31e612  49 8b ce                       mov    rcx,r14
31e615  e8 46 c3 0a 00                 call   0x3ca960
31e61a  48 85 c0                       test   rax,rax
31e61d  0f 84 fc 01 00 00              je     0x31e81f
31e623  48 8b 4c 24 20                 mov    rcx,QWORD PTR [rsp+0x20]
31e628  48 8d 55 c0                    lea    rdx,[rbp-0x40]
31e62c  e8 9b 7e 04 00                 call   0x3664cc
31e631  f3 0f 10 5d e4                 movss  xmm3,DWORD PTR [rbp-0x1c]
31e636  48 8d 4d 40                    lea    rcx,[rbp+0x40]
31e63a  f3 0f 10 55 e0                 movss  xmm2,DWORD PTR [rbp-0x20]
31e63f  f3 0f 10 4d dc                 movss  xmm1,DWORD PTR [rbp-0x24]
31e644  f3 0f 59 1d e4 4a f7 ff        mulss  xmm3,DWORD PTR [rip+0xfffffffffff74ae4]        # 0x293130 ; f32=1.9
31e64c  f3 0f 59 15 20 4b f7 ff        mulss  xmm2,DWORD PTR [rip+0xfffffffffff74b20]        # 0x293174 ; f32=3.75
31e654  f3 0f 59 0d dc 4a f7 ff        mulss  xmm1,DWORD PTR [rip+0xfffffffffff74adc]        # 0x293138 ; f32=2.2
31e65c  e8 47 95 0a 00                 call   0x3c7ba8
31e661  48 8b 4c 24 20                 mov    rcx,QWORD PTR [rsp+0x20]
31e666  e8 9d 1e 05 00                 call   0x370508
31e66b  48 8b c8                       mov    rcx,rax
31e66e  48 8b f8                       mov    rdi,rax
31e671  e8 92 c8 fa ff                 call   0x2caf08
31e676  84 c0                          test   al,al
31e678  0f 84 a1 01 00 00              je     0x31e81f
31e67e  48 8d 95 8c 06 00 00           lea    rdx,[rbp+0x68c]
31e685  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31e68c  e8 2f 3d fd ff                 call   0x2f23c0 ; STRING getter=0x2f23c0 UnityEngine
31e691  48 8b c8                       mov    rcx,rax
31e694  e8 73 f7 fa ff                 call   0x2cde0c
31e699  48 8d 95 98 06 00 00           lea    rdx,[rbp+0x698]
31e6a0  48 8b d8                       mov    rbx,rax
31e6a3  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31e6aa  e8 f5 3c fd ff                 call   0x2f23a4 ; STRING getter=0x2f23a4 BoxCollider
31e6af  48 8b c8                       mov    rcx,rax
31e6b2  e8 55 f7 fa ff                 call   0x2cde0c
31e6b7  48 8b d0                       mov    rdx,rax
31e6ba  4c 8b c3                       mov    r8,rbx
31e6bd  48 8b cf                       mov    rcx,rdi
31e6c0  e8 37 48 05 00                 call   0x372efc
31e6c5  48 8b c8                       mov    rcx,rax
31e6c8  48 8b d8                       mov    rbx,rax
31e6cb  e8 38 c8 fa ff                 call   0x2caf08
31e6d0  84 c0                          test   al,al
31e6d2  0f 84 47 01 00 00              je     0x31e81f
31e6d8  8b 4d 48                       mov    ecx,DWORD PTR [rbp+0x48]
31e6db  48 8d 95 80 00 00 00           lea    rdx,[rbp+0x80]
31e6e2  f2 0f 10 45 40                 movsd  xmm0,QWORD PTR [rbp+0x40]
31e6e7  89 8d 88 00 00 00              mov    DWORD PTR [rbp+0x88],ecx
31e6ed  48 8b cb                       mov    rcx,rbx
31e6f0  f2 0f 11 85 80 00 00 00        movsd  QWORD PTR [rbp+0x80],xmm0
31e6f8  e8 6b 22 05 00                 call   0x370968
31e6fd  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
31e702  48 8d 0d 67 7a 0c 00           lea    rcx,[rip+0xc7a67]        # 0x3e6170
31e709  e8 46 10 fd ff                 call   0x2ef754
31e70e  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
31e713  48 8d 0d d6 7a 0c 00           lea    rcx,[rip+0xc7ad6]        # 0x3e61f0
31e71a  48 89 18                       mov    QWORD PTR [rax],rbx
31e71d  e8 52 10 fd ff                 call   0x2ef774
31e722  48 8d 95 49 03 00 00           lea    rdx,[rbp+0x349]
31e729  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31e730  c6 00 01                       mov    BYTE PTR [rax],0x1
31e733  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31e738  e8 9f 3c fd ff                 call   0x2f23dc
31e73d  48 8b c8                       mov    rcx,rax
31e740  e8 f3 e9 fb ff                 call   0x2dd138
31e745  48 8b d0                       mov    rdx,rax
31e748  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31e74d  e8 7a db fa ff                 call   0x2cc2cc
31e752  4c 8b cb                       mov    r9,rbx
31e755  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31e75a  ba 4e 00 00 00                 mov    edx,0x4e
31e75f  49 8b cd                       mov    rcx,r13
31e762  e8 55 8f ff ff                 call   0x3176bc
31e767  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31e76c  e8 83 dd fa ff                 call   0x2cc4f4
31e771  e9 a9 00 00 00                 jmp    0x31e81f
31e776  e8 f9 0f fd ff                 call   0x2ef774
31e77b  40 38 38                       cmp    BYTE PTR [rax],dil
31e77e  0f 84 9b 00 00 00              je     0x31e81f
31e784  48 8d 0d e5 79 0c 00           lea    rcx,[rip+0xc79e5]        # 0x3e6170
31e78b  eb 5b                          jmp    0x31e7e8
31e78d  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
31e792  48 8d 0d 57 7a 0c 00           lea    rcx,[rip+0xc7a57]        # 0x3e61f0
31e799  e8 d6 0f fd ff                 call   0x2ef774
31e79e  40 38 38                       cmp    BYTE PTR [rax],dil
31e7a1  74 7c                          je     0x31e81f
31e7a3  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
31e7a8  48 8d 0d c1 79 0c 00           lea    rcx,[rip+0xc79c1]        # 0x3e6170
31e7af  e8 a0 0f fd ff                 call   0x2ef754
31e7b4  4c 8b 00                       mov    r8,QWORD PTR [rax]
31e7b7  49 8b c8                       mov    rcx,r8
31e7ba  e8 49 c7 fa ff                 call   0x2caf08
31e7bf  84 c0                          test   al,al
31e7c1  74 1e                          je     0x31e7e1
31e7c3  33 d2                          xor    edx,edx
31e7c5  49 8b c8                       mov    rcx,r8
31e7c8  e8 63 75 05 00                 call   0x375d30
31e7cd  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
31e7d2  48 8d 0d 17 7a 0c 00           lea    rcx,[rip+0xc7a17]        # 0x3e61f0
31e7d9  e8 96 0f fd ff                 call   0x2ef774
31e7de  40 88 38                       mov    BYTE PTR [rax],dil
31e7e1  48 8d 0d c8 79 0c 00           lea    rcx,[rip+0xc79c8]        # 0x3e61b0
31e7e8  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
31e7ed  e8 62 0f fd ff                 call   0x2ef754
31e7f2  4c 8b 00                       mov    r8,QWORD PTR [rax]
31e7f5  49 8b c8                       mov    rcx,r8
31e7f8  e8 0b c7 fa ff                 call   0x2caf08
31e7fd  84 c0                          test   al,al
31e7ff  74 1e                          je     0x31e81f
31e801  33 d2                          xor    edx,edx
31e803  49 8b c8                       mov    rcx,r8
31e806  e8 25 75 05 00                 call   0x375d30
31e80b  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
31e810  48 8d 0d d9 79 0c 00           lea    rcx,[rip+0xc79d9]        # 0x3e61f0
31e817  e8 58 0f fd ff                 call   0x2ef774
31e81c  40 88 38                       mov    BYTE PTR [rax],dil
31e81f  48 8d 95 1f 04 00 00           lea    rdx,[rbp+0x41f]
31e826  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31e82d  e8 be 3b fd ff                 call   0x2f23f0 ; STRING getter=0x2f23f0 Barricade
31e832  48 8b c8                       mov    rcx,rax
31e835  e8 e2 f4 fa ff                 call   0x2cdd1c
31e83a  48 8b c8                       mov    rcx,rax
31e83d  48 ba 25 23 22 84 e4 9c f2 cb  movabs rdx,0xcbf29ce484222325
31e847  e8 00 73 fc ff                 call   0x2e5b4c
31e84c  48 3b f0                       cmp    rsi,rax
31e84f  0f 85 46 02 00 00              jne    0x31ea9b
31e855  80 3d bc af 0c 00 00           cmp    BYTE PTR [rip+0xcafbc],0x0        # 0x3e9818 ; CONFIG Bools.NoHittingSpikes value(+0x48)
31e85c  0f 84 a7 01 00 00              je     0x31ea09
31e862  49 8b cf                       mov    rcx,r15
31e865  e8 46 ab 04 00                 call   0x3693b0
31e86a  84 c0                          test   al,al
31e86c  0f 85 97 01 00 00              jne    0x31ea09
31e872  48 8d 95 a4 06 00 00           lea    rdx,[rbp+0x6a4]
31e879  49 8b cf                       mov    rcx,r15
31e87c  e8 e3 a8 04 00                 call   0x369164
31e881  48 8b 4c 24 20                 mov    rcx,QWORD PTR [rsp+0x20]
31e886  48 8d 55 20                    lea    rdx,[rbp+0x20]
31e88a  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
31e88e  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
31e891  f2 0f 11 45 20                 movsd  QWORD PTR [rbp+0x20],xmm0
31e896  89 45 28                       mov    DWORD PTR [rbp+0x28],eax
31e899  e8 12 7e 04 00                 call   0x3666b0
31e89e  0f 2f f8                       comiss xmm7,xmm0
31e8a1  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
31e8a6  48 8d 0d 43 79 0c 00           lea    rcx,[rip+0xc7943]        # 0x3e61f0
31e8ad  0f 86 46 01 00 00              jbe    0x31e9f9
31e8b3  e8 bc 0e fd ff                 call   0x2ef774
31e8b8  80 38 00                       cmp    BYTE PTR [rax],0x0
31e8bb  0f 85 da 01 00 00              jne    0x31ea9b
31e8c1  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31e8c6  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31e8cd  e8 3a 3b fd ff                 call   0x2f240c ; STRING getter=0x2f240c barricade.woodwire
31e8d2  48 8b c8                       mov    rcx,rax
31e8d5  e8 92 f4 fa ff                 call   0x2cdd6c
31e8da  48 8b d0                       mov    rdx,rax
31e8dd  49 8b ce                       mov    rcx,r14
31e8e0  e8 7b c0 0a 00                 call   0x3ca960
31e8e5  48 85 c0                       test   rax,rax
31e8e8  75 2c                          jne    0x31e916
31e8ea  48 8d 55 c0                    lea    rdx,[rbp-0x40]
31e8ee  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31e8f5  e8 2a 3b fd ff                 call   0x2f2424 ; STRING getter=0x2f2424 barricade.metal.prefab
31e8fa  48 8b c8                       mov    rcx,rax
31e8fd  e8 8a 4d fc ff                 call   0x2e368c
31e902  48 8b d0                       mov    rdx,rax
31e905  49 8b ce                       mov    rcx,r14
31e908  e8 53 c0 0a 00                 call   0x3ca960
31e90d  48 85 c0                       test   rax,rax
31e910  0f 84 85 01 00 00              je     0x31ea9b
31e916  48 8b 4c 24 20                 mov    rcx,QWORD PTR [rsp+0x20]
31e91b  e8 e8 1b 05 00                 call   0x370508
31e920  48 8b c8                       mov    rcx,rax
31e923  48 8b f8                       mov    rdi,rax
31e926  e8 dd c5 fa ff                 call   0x2caf08
31e92b  84 c0                          test   al,al
31e92d  0f 84 68 01 00 00              je     0x31ea9b
31e933  48 8d 95 b0 06 00 00           lea    rdx,[rbp+0x6b0]
31e93a  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31e941  e8 16 3b fd ff                 call   0x2f245c ; STRING getter=0x2f245c UnityEngine
31e946  48 8b c8                       mov    rcx,rax
31e949  e8 be f4 fa ff                 call   0x2cde0c
31e94e  48 8d 95 bc 06 00 00           lea    rdx,[rbp+0x6bc]
31e955  48 8b d8                       mov    rbx,rax
31e958  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31e95f  e8 dc 3a fd ff                 call   0x2f2440 ; STRING getter=0x2f2440 BoxCollider
31e964  48 8b c8                       mov    rcx,rax
31e967  e8 a0 f4 fa ff                 call   0x2cde0c
31e96c  48 8b d0                       mov    rdx,rax
31e96f  4c 8b c3                       mov    r8,rbx
31e972  48 8b cf                       mov    rcx,rdi
31e975  e8 82 45 05 00                 call   0x372efc
31e97a  48 8b c8                       mov    rcx,rax
31e97d  48 8b d8                       mov    rbx,rax
31e980  e8 83 c5 fa ff                 call   0x2caf08
31e985  84 c0                          test   al,al
31e987  0f 84 0e 01 00 00              je     0x31ea9b
31e98d  f3 0f 10 1d a7 47 f7 ff        movss  xmm3,DWORD PTR [rip+0xfffffffffff747a7]        # 0x29313c ; f32=2.3
31e995  48 8d 8d c8 06 00 00           lea    rcx,[rbp+0x6c8]
31e99c  f3 0f 10 15 d8 47 f7 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff747d8]        # 0x29317c ; f32=4.8
31e9a4  f3 0f 10 0d bc 47 f7 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff747bc]        # 0x293168 ; f32=3.4
31e9ac  e8 f7 91 0a 00                 call   0x3c7ba8
31e9b1  48 8d 55 30                    lea    rdx,[rbp+0x30]
31e9b5  48 8b cb                       mov    rcx,rbx
31e9b8  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
31e9bc  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
31e9bf  f2 0f 11 45 30                 movsd  QWORD PTR [rbp+0x30],xmm0
31e9c4  89 45 38                       mov    DWORD PTR [rbp+0x38],eax
31e9c7  e8 9c 1f 05 00                 call   0x370968
31e9cc  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
31e9d1  48 8d 0d d8 77 0c 00           lea    rcx,[rip+0xc77d8]        # 0x3e61b0
31e9d8  e8 77 0d fd ff                 call   0x2ef754
31e9dd  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
31e9e2  48 8d 0d 07 78 0c 00           lea    rcx,[rip+0xc7807]        # 0x3e61f0
31e9e9  48 89 18                       mov    QWORD PTR [rax],rbx
31e9ec  e8 83 0d fd ff                 call   0x2ef774
31e9f1  c6 00 01                       mov    BYTE PTR [rax],0x1
31e9f4  e9 a2 00 00 00                 jmp    0x31ea9b
31e9f9  e8 76 0d fd ff                 call   0x2ef774
31e9fe  80 38 00                       cmp    BYTE PTR [rax],0x0
31ea01  0f 84 94 00 00 00              je     0x31ea9b
31ea07  eb 54                          jmp    0x31ea5d
31ea09  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
31ea0e  48 8d 0d db 77 0c 00           lea    rcx,[rip+0xc77db]        # 0x3e61f0
31ea15  e8 5a 0d fd ff                 call   0x2ef774
31ea1a  80 38 00                       cmp    BYTE PTR [rax],0x0
31ea1d  74 7c                          je     0x31ea9b
31ea1f  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
31ea24  48 8d 0d 45 77 0c 00           lea    rcx,[rip+0xc7745]        # 0x3e6170
31ea2b  e8 24 0d fd ff                 call   0x2ef754
31ea30  4c 8b 00                       mov    r8,QWORD PTR [rax]
31ea33  49 8b c8                       mov    rcx,r8
31ea36  e8 cd c4 fa ff                 call   0x2caf08
31ea3b  84 c0                          test   al,al
31ea3d  74 1e                          je     0x31ea5d
31ea3f  33 d2                          xor    edx,edx
31ea41  49 8b c8                       mov    rcx,r8
31ea44  e8 e7 72 05 00                 call   0x375d30
31ea49  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
31ea4e  48 8d 0d 9b 77 0c 00           lea    rcx,[rip+0xc779b]        # 0x3e61f0
31ea55  e8 1a 0d fd ff                 call   0x2ef774
31ea5a  c6 00 00                       mov    BYTE PTR [rax],0x0
31ea5d  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
31ea62  48 8d 0d 47 77 0c 00           lea    rcx,[rip+0xc7747]        # 0x3e61b0
31ea69  e8 e6 0c fd ff                 call   0x2ef754
31ea6e  4c 8b 00                       mov    r8,QWORD PTR [rax]
31ea71  49 8b c8                       mov    rcx,r8
31ea74  e8 8f c4 fa ff                 call   0x2caf08
31ea79  84 c0                          test   al,al
31ea7b  74 1e                          je     0x31ea9b
31ea7d  33 d2                          xor    edx,edx
31ea7f  49 8b c8                       mov    rcx,r8
31ea82  e8 a9 72 05 00                 call   0x375d30
31ea87  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
31ea8c  48 8d 0d 5d 77 0c 00           lea    rcx,[rip+0xc775d]        # 0x3e61f0
31ea93  e8 dc 0c fd ff                 call   0x2ef774
31ea98  c6 00 00                       mov    BYTE PTR [rax],0x0
31ea9b  48 8d 95 b8 03 00 00           lea    rdx,[rbp+0x3b8]
31eaa2  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31eaa9  e8 ca 39 fd ff                 call   0x2f2478 ; STRING getter=0x2f2478 Landmine
31eaae  48 8b c8                       mov    rcx,rax
31eab1  e8 4e 9a fb ff                 call   0x2d8504
31eab6  48 8b c8                       mov    rcx,rax
31eab9  48 ba 25 23 22 84 e4 9c f2 cb  movabs rdx,0xcbf29ce484222325
31eac3  e8 84 70 fc ff                 call   0x2e5b4c
31eac8  48 3b f0                       cmp    rsi,rax
31eacb  0f 85 09 02 00 00              jne    0x31ecda
31ead1  33 db                          xor    ebx,ebx
31ead3  38 1d 3f ad 0c 00              cmp    BYTE PTR [rip+0xcad3f],bl        # 0x3e9818 ; CONFIG Bools.NoHittingSpikes value(+0x48)
31ead9  0f 84 6c 01 00 00              je     0x31ec4b
31eadf  49 8b cf                       mov    rcx,r15
31eae2  e8 c9 a8 04 00                 call   0x3693b0
31eae7  84 c0                          test   al,al
31eae9  0f 85 5c 01 00 00              jne    0x31ec4b
31eaef  48 8d 95 d4 06 00 00           lea    rdx,[rbp+0x6d4]
31eaf6  49 8b cf                       mov    rcx,r15
31eaf9  e8 66 a6 04 00                 call   0x369164
31eafe  48 8b 4c 24 20                 mov    rcx,QWORD PTR [rsp+0x20]
31eb03  48 8d 55 50                    lea    rdx,[rbp+0x50]
31eb07  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
31eb0b  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
31eb0e  f2 0f 11 45 50                 movsd  QWORD PTR [rbp+0x50],xmm0
31eb13  89 45 58                       mov    DWORD PTR [rbp+0x58],eax
31eb16  e8 95 7b 04 00                 call   0x3666b0
31eb1b  0f 2f f8                       comiss xmm7,xmm0
31eb1e  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
31eb23  48 8d 0d c6 76 0c 00           lea    rcx,[rip+0xc76c6]        # 0x3e61f0
31eb2a  0f 86 0c 01 00 00              jbe    0x31ec3c
31eb30  e8 3f 0c fd ff                 call   0x2ef774
31eb35  38 18                          cmp    BYTE PTR [rax],bl
31eb37  0f 85 9d 01 00 00              jne    0x31ecda
31eb3d  48 8b 4c 24 20                 mov    rcx,QWORD PTR [rsp+0x20]
31eb42  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31eb47  e8 80 79 04 00                 call   0x3664cc
31eb4c  f3 0f 10 5c 24 74              movss  xmm3,DWORD PTR [rsp+0x74]
31eb52  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
31eb59  f3 0f 10 4c 24 6c              movss  xmm1,DWORD PTR [rsp+0x6c]
31eb5f  f3 0f 10 15 95 ef f6 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff6ef95]        # 0x28dafc ; f32=1.5
31eb67  f3 0f 59 de                    mulss  xmm3,xmm6
31eb6b  f3 0f 59 ce                    mulss  xmm1,xmm6
31eb6f  e8 34 90 0a 00                 call   0x3c7ba8
31eb74  48 8b 4c 24 20                 mov    rcx,QWORD PTR [rsp+0x20]
31eb79  e8 8a 19 05 00                 call   0x370508
31eb7e  48 8b c8                       mov    rcx,rax
31eb81  48 8b f8                       mov    rdi,rax
31eb84  e8 7f c3 fa ff                 call   0x2caf08
31eb89  84 c0                          test   al,al
31eb8b  0f 84 49 01 00 00              je     0x31ecda
31eb91  48 8d 95 e0 06 00 00           lea    rdx,[rbp+0x6e0]
31eb98  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31eb9f  e8 cc 39 fd ff                 call   0x2f2570 ; STRING getter=0x2f2570 UnityEngine
31eba4  48 8b c8                       mov    rcx,rax
31eba7  e8 60 f2 fa ff                 call   0x2cde0c
31ebac  48 8d 95 ec 06 00 00           lea    rdx,[rbp+0x6ec]
31ebb3  48 8b d8                       mov    rbx,rax
31ebb6  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31ebbd  e8 92 39 fd ff                 call   0x2f2554 ; STRING getter=0x2f2554 BoxCollider
31ebc2  48 8b c8                       mov    rcx,rax
31ebc5  e8 42 f2 fa ff                 call   0x2cde0c
31ebca  48 8b d0                       mov    rdx,rax
31ebcd  4c 8b c3                       mov    r8,rbx
31ebd0  48 8b cf                       mov    rcx,rdi
31ebd3  e8 24 43 05 00                 call   0x372efc
31ebd8  48 8b c8                       mov    rcx,rax
31ebdb  48 8b d8                       mov    rbx,rax
31ebde  e8 25 c3 fa ff                 call   0x2caf08
31ebe3  33 ff                          xor    edi,edi
31ebe5  84 c0                          test   al,al
31ebe7  0f 84 ef 00 00 00              je     0x31ecdc
31ebed  8b 8d a8 00 00 00              mov    ecx,DWORD PTR [rbp+0xa8]
31ebf3  48 8d 55 70                    lea    rdx,[rbp+0x70]
31ebf7  f2 0f 10 85 a0 00 00 00        movsd  xmm0,QWORD PTR [rbp+0xa0]
31ebff  89 4d 78                       mov    DWORD PTR [rbp+0x78],ecx
31ec02  48 8b cb                       mov    rcx,rbx
31ec05  f2 0f 11 45 70                 movsd  QWORD PTR [rbp+0x70],xmm0
31ec0a  e8 59 1d 05 00                 call   0x370968
31ec0f  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
31ec14  48 8d 0d 95 75 0c 00           lea    rcx,[rip+0xc7595]        # 0x3e61b0
31ec1b  e8 34 0b fd ff                 call   0x2ef754
31ec20  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
31ec25  48 8d 0d c4 75 0c 00           lea    rcx,[rip+0xc75c4]        # 0x3e61f0
31ec2c  48 89 18                       mov    QWORD PTR [rax],rbx
31ec2f  e8 40 0b fd ff                 call   0x2ef774
31ec34  c6 00 01                       mov    BYTE PTR [rax],0x1
31ec37  e9 a0 00 00 00                 jmp    0x31ecdc
31ec3c  e8 33 0b fd ff                 call   0x2ef774
31ec41  38 18                          cmp    BYTE PTR [rax],bl
31ec43  0f 84 91 00 00 00              je     0x31ecda
31ec49  eb 52                          jmp    0x31ec9d
31ec4b  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
31ec50  48 8d 0d 99 75 0c 00           lea    rcx,[rip+0xc7599]        # 0x3e61f0
31ec57  e8 18 0b fd ff                 call   0x2ef774
31ec5c  38 18                          cmp    BYTE PTR [rax],bl
31ec5e  74 7a                          je     0x31ecda
31ec60  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
31ec65  48 8d 0d 04 75 0c 00           lea    rcx,[rip+0xc7504]        # 0x3e6170
31ec6c  e8 e3 0a fd ff                 call   0x2ef754
31ec71  4c 8b 00                       mov    r8,QWORD PTR [rax]
31ec74  49 8b c8                       mov    rcx,r8
31ec77  e8 8c c2 fa ff                 call   0x2caf08
31ec7c  84 c0                          test   al,al
31ec7e  74 1d                          je     0x31ec9d
31ec80  33 d2                          xor    edx,edx
31ec82  49 8b c8                       mov    rcx,r8
31ec85  e8 a6 70 05 00                 call   0x375d30
31ec8a  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
31ec8f  48 8d 0d 5a 75 0c 00           lea    rcx,[rip+0xc755a]        # 0x3e61f0
31ec96  e8 d9 0a fd ff                 call   0x2ef774
31ec9b  88 18                          mov    BYTE PTR [rax],bl
31ec9d  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
31eca2  48 8d 0d 07 75 0c 00           lea    rcx,[rip+0xc7507]        # 0x3e61b0
31eca9  e8 a6 0a fd ff                 call   0x2ef754
31ecae  4c 8b 00                       mov    r8,QWORD PTR [rax]
31ecb1  49 8b c8                       mov    rcx,r8
31ecb4  e8 4f c2 fa ff                 call   0x2caf08
31ecb9  84 c0                          test   al,al
31ecbb  74 1d                          je     0x31ecda
31ecbd  33 d2                          xor    edx,edx
31ecbf  49 8b c8                       mov    rcx,r8
31ecc2  e8 69 70 05 00                 call   0x375d30
31ecc7  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
31eccc  48 8d 0d 1d 75 0c 00           lea    rcx,[rip+0xc751d]        # 0x3e61f0
31ecd3  e8 9c 0a fd ff                 call   0x2ef774
31ecd8  88 18                          mov    BYTE PTR [rax],bl
31ecda  33 ff                          xor    edi,edi
31ecdc  48 8d 95 af 07 00 00           lea    rdx,[rbp+0x7af]
31ece3  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31ecea  e8 9d 38 fd ff                 call   0x2f258c ; STRING getter=0x2f258c PlayerCorpse
31ecef  48 8b c8                       mov    rcx,rax
31ecf2  e8 65 f1 fa ff                 call   0x2cde5c
31ecf7  48 8b c8                       mov    rcx,rax
31ecfa  48 ba 25 23 22 84 e4 9c f2 cb  movabs rdx,0xcbf29ce484222325
31ed04  e8 43 6e fc ff                 call   0x2e5b4c
31ed09  48 3b f0                       cmp    rsi,rax
31ed0c  0f 85 c9 01 00 00              jne    0x31eedb
31ed12  40 38 3d e8 08 0d 00           cmp    BYTE PTR [rip+0xd08e8],dil        # 0x3ef601
31ed19  0f 84 41 f3 ff ff              je     0x31e060
31ed1f  49 8b cf                       mov    rcx,r15
31ed22  e8 89 a6 04 00                 call   0x3693b0
31ed27  84 c0                          test   al,al
31ed29  0f 85 31 f3 ff ff              jne    0x31e060
31ed2f  48 8d 95 f8 06 00 00           lea    rdx,[rbp+0x6f8]
31ed36  49 8b cf                       mov    rcx,r15
31ed39  e8 26 a4 04 00                 call   0x369164
31ed3e  48 8b 4c 24 20                 mov    rcx,QWORD PTR [rsp+0x20]
31ed43  48 8d 95 90 00 00 00           lea    rdx,[rbp+0x90]
31ed4a  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
31ed4e  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
31ed51  f2 0f 11 85 90 00 00 00        movsd  QWORD PTR [rbp+0x90],xmm0
31ed59  89 85 98 00 00 00              mov    DWORD PTR [rbp+0x98],eax
31ed5f  e8 4c 79 04 00                 call   0x3666b0
31ed64  44 0f 2f c0                    comiss xmm8,xmm0
31ed68  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
31ed6d  48 8d 0d 7c 74 0c 00           lea    rcx,[rip+0xc747c]        # 0x3e61f0
31ed74  0f 86 15 01 00 00              jbe    0x31ee8f
31ed7a  e8 f5 09 fd ff                 call   0x2ef774
31ed7f  40 38 38                       cmp    BYTE PTR [rax],dil
31ed82  0f 85 53 01 00 00              jne    0x31eedb
31ed88  48 8b 4c 24 20                 mov    rcx,QWORD PTR [rsp+0x20]
31ed8d  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31ed92  e8 35 77 04 00                 call   0x3664cc
31ed97  f3 0f 10 5c 24 74              movss  xmm3,DWORD PTR [rsp+0x74]
31ed9d  48 8d 8d 60 01 00 00           lea    rcx,[rbp+0x160]
31eda4  f3 0f 10 54 24 70              movss  xmm2,DWORD PTR [rsp+0x70]
31edaa  f3 0f 10 4c 24 6c              movss  xmm1,DWORD PTR [rsp+0x6c]
31edb0  f3 0f 59 de                    mulss  xmm3,xmm6
31edb4  f3 0f 59 d6                    mulss  xmm2,xmm6
31edb8  f3 0f 59 ce                    mulss  xmm1,xmm6
31edbc  e8 e7 8d 0a 00                 call   0x3c7ba8
31edc1  48 8b 4c 24 20                 mov    rcx,QWORD PTR [rsp+0x20]
31edc6  e8 3d 17 05 00                 call   0x370508
31edcb  48 8b c8                       mov    rcx,rax
31edce  48 8b f8                       mov    rdi,rax
31edd1  e8 32 c1 fa ff                 call   0x2caf08
31edd6  84 c0                          test   al,al
31edd8  0f 84 fb 00 00 00              je     0x31eed9
31edde  48 8d 95 04 07 00 00           lea    rdx,[rbp+0x704]
31ede5  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31edec  e8 db 37 fd ff                 call   0x2f25cc ; STRING getter=0x2f25cc UnityEngine
31edf1  48 8b c8                       mov    rcx,rax
31edf4  e8 13 f0 fa ff                 call   0x2cde0c
31edf9  48 8d 95 10 07 00 00           lea    rdx,[rbp+0x710]
31ee00  48 8b d8                       mov    rbx,rax
31ee03  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31ee0a  e8 a1 37 fd ff                 call   0x2f25b0 ; STRING getter=0x2f25b0 BoxCollider
31ee0f  48 8b c8                       mov    rcx,rax
31ee12  e8 f5 ef fa ff                 call   0x2cde0c
31ee17  48 8b d0                       mov    rdx,rax
31ee1a  4c 8b c3                       mov    r8,rbx
31ee1d  48 8b cf                       mov    rcx,rdi
31ee20  e8 d7 40 05 00                 call   0x372efc
31ee25  48 8b c8                       mov    rcx,rax
31ee28  48 8b d8                       mov    rbx,rax
31ee2b  e8 d8 c0 fa ff                 call   0x2caf08
31ee30  33 ff                          xor    edi,edi
31ee32  84 c0                          test   al,al
31ee34  0f 84 a1 00 00 00              je     0x31eedb
31ee3a  8b 8d 68 01 00 00              mov    ecx,DWORD PTR [rbp+0x168]
31ee40  48 8d 95 30 01 00 00           lea    rdx,[rbp+0x130]
31ee47  f2 0f 10 85 60 01 00 00        movsd  xmm0,QWORD PTR [rbp+0x160]
31ee4f  89 8d 38 01 00 00              mov    DWORD PTR [rbp+0x138],ecx
31ee55  48 8b cb                       mov    rcx,rbx
31ee58  f2 0f 11 85 30 01 00 00        movsd  QWORD PTR [rbp+0x130],xmm0
31ee60  e8 03 1b 05 00                 call   0x370968
31ee65  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
31ee6a  48 8d 0d 3f 73 0c 00           lea    rcx,[rip+0xc733f]        # 0x3e61b0
31ee71  e8 de 08 fd ff                 call   0x2ef754
31ee76  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
31ee7b  48 8d 0d 6e 73 0c 00           lea    rcx,[rip+0xc736e]        # 0x3e61f0
31ee82  48 89 18                       mov    QWORD PTR [rax],rbx
31ee85  e8 ea 08 fd ff                 call   0x2ef774
31ee8a  c6 00 01                       mov    BYTE PTR [rax],0x1
31ee8d  eb 4c                          jmp    0x31eedb
31ee8f  e8 e0 08 fd ff                 call   0x2ef774
31ee94  40 38 38                       cmp    BYTE PTR [rax],dil
31ee97  74 42                          je     0x31eedb
31ee99  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
31ee9e  48 8d 0d 0b 73 0c 00           lea    rcx,[rip+0xc730b]        # 0x3e61b0
31eea5  e8 aa 08 fd ff                 call   0x2ef754
31eeaa  4c 8b 00                       mov    r8,QWORD PTR [rax]
31eead  49 8b c8                       mov    rcx,r8
31eeb0  e8 53 c0 fa ff                 call   0x2caf08
31eeb5  84 c0                          test   al,al
31eeb7  74 22                          je     0x31eedb
31eeb9  33 d2                          xor    edx,edx
31eebb  49 8b c8                       mov    rcx,r8
31eebe  e8 6d 6e 05 00                 call   0x375d30
31eec3  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
31eec8  48 8d 0d 21 73 0c 00           lea    rcx,[rip+0xc7321]        # 0x3e61f0
31eecf  e8 a0 08 fd ff                 call   0x2ef774
31eed4  40 88 38                       mov    BYTE PTR [rax],dil
31eed7  eb 02                          jmp    0x31eedb
31eed9  33 ff                          xor    edi,edi
31eedb  40 38 3d a6 98 0c 00           cmp    BYTE PTR [rip+0xc98a6],dil        # 0x3e8788 ; CONFIG Bools.LandmineESP value(+0x48)
31eee2  74 7e                          je     0x31ef62
31eee4  48 8d 95 c1 03 00 00           lea    rdx,[rbp+0x3c1]
31eeeb  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31eef2  e8 f1 36 fd ff                 call   0x2f25e8 ; STRING getter=0x2f25e8 Landmine
31eef7  48 8b c8                       mov    rcx,rax
31eefa  e8 05 96 fb ff                 call   0x2d8504
31eeff  48 8b c8                       mov    rcx,rax
31ef02  48 ba 25 23 22 84 e4 9c f2 cb  movabs rdx,0xcbf29ce484222325
31ef0c  e8 3b 6c fc ff                 call   0x2e5b4c
31ef11  48 3b f0                       cmp    rsi,rax
31ef14  75 4c                          jne    0x31ef62
31ef16  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31ef1b  48 8d 95 ca 03 00 00           lea    rdx,[rbp+0x3ca]
31ef22  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31ef29  e8 d6 36 fd ff                 call   0x2f2604 ; STRING getter=0x2f2604 Landmine
31ef2e  48 8b c8                       mov    rcx,rax
31ef31  e8 ce 95 fb ff                 call   0x2d8504
31ef36  48 8b d0                       mov    rdx,rax
31ef39  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31ef3e  e8 89 d3 fa ff                 call   0x2cc2cc
31ef43  4c 8b cb                       mov    r9,rbx
31ef46  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31ef4b  ba 53 00 00 00                 mov    edx,0x53
31ef50  49 8b cd                       mov    rcx,r13
31ef53  e8 64 87 ff ff                 call   0x3176bc
31ef58  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31ef5d  e8 92 d5 fa ff                 call   0x2cc4f4
31ef62  40 38 3d 6f 98 0c 00           cmp    BYTE PTR [rip+0xc986f],dil        # 0x3e87d8 ; CONFIG Bools.SamsiteESP value(+0x48)
31ef69  75 0d                          jne    0x31ef78
31ef6b  40 38 3d 16 b6 0c 00           cmp    BYTE PTR [rip+0xcb616],dil        # 0x3ea588 ; CONFIG Bools.SamSiteAlert value(+0x48)
31ef72  0f 84 83 02 00 00              je     0x31f1fb
31ef78  48 8d 95 51 03 00 00           lea    rdx,[rbp+0x351]
31ef7f  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31ef86  e8 95 36 fd ff                 call   0x2f2620
31ef8b  48 8b c8                       mov    rcx,rax
31ef8e  e8 a5 e1 fb ff                 call   0x2dd138
31ef93  48 8b c8                       mov    rcx,rax
31ef96  48 ba 25 23 22 84 e4 9c f2 cb  movabs rdx,0xcbf29ce484222325
31efa0  e8 a7 6b fc ff                 call   0x2e5b4c
31efa5  48 3b f0                       cmp    rsi,rax
31efa8  0f 85 4d 02 00 00              jne    0x31f1fb
31efae  40 38 3d 73 98 0c 00           cmp    BYTE PTR [rip+0xc9873],dil        # 0x3e8828 ; CONFIG Bools.UseCachedPositions value(+0x48)
31efb5  75 59                          jne    0x31f010
31efb7  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31efbc  48 8d 95 21 03 00 00           lea    rdx,[rbp+0x321]
31efc3  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31efca  e8 51 36 fd ff                 call   0x2f2620
31efcf  48 8b c8                       mov    rcx,rax
31efd2  e8 61 e1 fb ff                 call   0x2dd138
31efd7  48 8b d0                       mov    rdx,rax
31efda  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31efdf  e8 e8 d2 fa ff                 call   0x2cc2cc
31efe4  4c 8b cb                       mov    r9,rbx
31efe7  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31efec  ba 54 00 00 00                 mov    edx,0x54
31eff1  49 8b cd                       mov    rcx,r13
31eff4  e8 c3 86 ff ff                 call   0x3176bc
31eff9  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31effe  e8 f1 d4 fa ff                 call   0x2cc4f4
31f003  40 38 3d 1e 98 0c 00           cmp    BYTE PTR [rip+0xc981e],dil        # 0x3e8828 ; CONFIG Bools.UseCachedPositions value(+0x48)
31f00a  0f 84 eb 01 00 00              je     0x31f1fb
31f010  48 8b 44 24 20                 mov    rax,QWORD PTR [rsp+0x20]
31f015  48 8b 50 48                    mov    rdx,QWORD PTR [rax+0x48]
31f019  48 8b ca                       mov    rcx,rdx
31f01c  e8 e7 be fa ff                 call   0x2caf08
31f021  84 c0                          test   al,al
31f023  0f 84 d2 01 00 00              je     0x31f1fb
31f029  8b 7a 38                       mov    edi,DWORD PTR [rdx+0x38]
31f02c  48 8d 0d 4d 97 ef ff           lea    rcx,[rip+0xffffffffffef974d]        # 0x218780
31f033  89 7d a0                       mov    DWORD PTR [rbp-0x60],edi
31f036  e8 3d 29 fb ff                 call   0x2d1978
31f03b  48 8d 0d 3e 97 ef ff           lea    rcx,[rip+0xffffffffffef973e]        # 0x218780
31f042  48 8b d8                       mov    rbx,rax
31f045  e8 76 89 fb ff                 call   0x2d79c0
31f04a  eb 0d                          jmp    0x31f059
31f04c  39 7b 14                       cmp    DWORD PTR [rbx+0x14],edi
31f04f  0f 84 be 05 00 00              je     0x31f613
31f055  48 83 c3 40                    add    rbx,0x40
31f059  48 3b d8                       cmp    rbx,rax
31f05c  75 ee                          jne    0x31f04c
31f05e  48 8d 95 90 0a 00 00           lea    rdx,[rbp+0xa90]
31f065  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31f06c  e8 bf d6 fa ff                 call   0x2cc730
31f071  48 8b c8                       mov    rcx,rax
31f074  e8 2b ec fa ff                 call   0x2cdca4
31f079  48 8d 95 c8 09 00 00           lea    rdx,[rbp+0x9c8]
31f080  48 8b d8                       mov    rbx,rax
31f083  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31f08a  e8 a5 35 fd ff                 call   0x2f2634 ; STRING getter=0x2f2634 %0e7b8295f9567c35261c2c1ae35d9654f0ffa04b
31f08f  48 8b c8                       mov    rcx,rax
31f092  e8 05 16 00 00                 call   0x32069c
31f097  48 8b c8                       mov    rcx,rax
31f09a  48 8b d3                       mov    rdx,rbx
31f09d  e8 82 51 01 00                 call   0x334224
31f0a2  48 8b c8                       mov    rcx,rax
31f0a5  48 8b d0                       mov    rdx,rax
31f0a8  e8 5b be fa ff                 call   0x2caf08
31f0ad  33 ff                          xor    edi,edi
31f0af  84 c0                          test   al,al
31f0b1  0f 84 44 01 00 00              je     0x31f1fb
31f0b7  48 8b 92 b8 00 00 00           mov    rdx,QWORD PTR [rdx+0xb8]
31f0be  48 8b ca                       mov    rcx,rdx
31f0c1  e8 42 be fa ff                 call   0x2caf08
31f0c6  84 c0                          test   al,al
31f0c8  0f 84 2d 01 00 00              je     0x31f1fb
31f0ce  4c 8b 42 78                    mov    r8,QWORD PTR [rdx+0x78]
31f0d2  49 8b c8                       mov    rcx,r8
31f0d5  e8 2e be fa ff                 call   0x2caf08
31f0da  84 c0                          test   al,al
31f0dc  0f 84 19 01 00 00              je     0x31f1fb
31f0e2  49 8b 90 08 01 00 00           mov    rdx,QWORD PTR [r8+0x108]
31f0e9  48 8b ca                       mov    rcx,rdx
31f0ec  e8 17 be fa ff                 call   0x2caf08
31f0f1  84 c0                          test   al,al
31f0f3  0f 84 02 01 00 00              je     0x31f1fb
31f0f9  48 8d 5a 14                    lea    rbx,[rdx+0x14]
31f0fd  48 8b cb                       mov    rcx,rbx
31f100  e8 03 be fa ff                 call   0x2caf08
31f105  84 c0                          test   al,al
31f107  0f 84 ee 00 00 00              je     0x31f1fb
31f10d  48 8b 4c 24 20                 mov    rcx,QWORD PTR [rsp+0x20]
31f112  e8 3d 16 05 00                 call   0x370754
31f117  48 8b c8                       mov    rcx,rax
31f11a  4c 8b c8                       mov    r9,rax
31f11d  e8 e6 bd fa ff                 call   0x2caf08
31f122  84 c0                          test   al,al
31f124  0f 84 d1 00 00 00              je     0x31f1fb
31f12a  48 8b cb                       mov    rcx,rbx
31f12d  e8 ba 8a ff ff                 call   0x317bec
31f132  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31f137  49 8b c9                       mov    rcx,r9
31f13a  48 8b d8                       mov    rbx,rax
31f13d  e8 92 56 05 00                 call   0x3747d4
31f142  8b 4d a0                       mov    ecx,DWORD PTR [rbp-0x60]
31f145  48 8d 95 29 03 00 00           lea    rdx,[rbp+0x329]
31f14c  89 4c 24 5c                    mov    DWORD PTR [rsp+0x5c],ecx
31f150  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31f157  89 5c 24 60                    mov    DWORD PTR [rsp+0x60],ebx
31f15b  e8 c0 34 fd ff                 call   0x2f2620
31f160  48 8b c8                       mov    rcx,rax
31f163  e8 d0 df fb ff                 call   0x2dd138
31f168  48 8b d0                       mov    rdx,rax
31f16b  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
31f170  e8 57 d1 fa ff                 call   0x2cc2cc
31f175  4c 8d 44 24 50                 lea    r8,[rsp+0x50]
31f17a  48 8d 55 a0                    lea    rdx,[rbp-0x60]
31f17e  48 8d 4d c0                    lea    rcx,[rbp-0x40]
31f182  e8 21 af fc ff                 call   0x2ea0a8
31f187  48 8d 55 c0                    lea    rdx,[rbp-0x40]
31f18b  48 8d 0d ee 95 ef ff           lea    rcx,[rip+0xffffffffffef95ee]        # 0x218780
31f192  e8 99 1b 00 00                 call   0x320d30
31f197  48 8d 4d c0                    lea    rcx,[rbp-0x40]
31f19b  e8 c4 58 fb ff                 call   0x2d4a64
31f1a0  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
31f1a5  e8 e6 58 fb ff                 call   0x2d4a90
31f1aa  e8 f1 cf fb ff                 call   0x2dc1a0
31f1af  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31f1b4  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31f1bb  e8 24 35 fd ff                 call   0x2f26e4 ; STRING getter=0x2f26e4 Successfully saved sam
31f1c0  48 8b c8                       mov    rcx,rax
31f1c3  e8 c4 44 fc ff                 call   0x2e368c
31f1c8  48 8b d0                       mov    rdx,rax
31f1cb  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31f1d0  e8 f7 d0 fa ff                 call   0x2cc2cc
31f1d5  48 8d 54 24 28                 lea    rdx,[rsp+0x28]
31f1da  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
31f1df  e8 b0 4f fb ff                 call   0x2d4194
31f1e4  48 8b c8                       mov    rcx,rax
31f1e7  45 33 c0                       xor    r8d,r8d
31f1ea  33 d2                          xor    edx,edx
31f1ec  e8 27 07 06 00                 call   0x37f918
31f1f1  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31f1f6  e8 f9 d2 fa ff                 call   0x2cc4f4
31f1fb  40 38 3d 76 96 0c 00           cmp    BYTE PTR [rip+0xc9676],dil        # 0x3e8878 ; CONFIG Bools.ShotgunTrapESP value(+0x48)
31f202  0f 84 81 00 00 00              je     0x31f289
31f208  48 8d 95 31 03 00 00           lea    rdx,[rbp+0x331]
31f20f  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31f216  e8 e5 34 fd ff                 call   0x2f2700
31f21b  48 8b c8                       mov    rcx,rax
31f21e  e8 15 df fb ff                 call   0x2dd138
31f223  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31f22d  48 8b c8                       mov    rcx,rax
31f230  48 8b d3                       mov    rdx,rbx
31f233  e8 14 69 fc ff                 call   0x2e5b4c
31f238  48 3b f0                       cmp    rsi,rax
31f23b  75 56                          jne    0x31f293
31f23d  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31f242  48 8d 95 39 03 00 00           lea    rdx,[rbp+0x339]
31f249  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31f250  e8 ab 34 fd ff                 call   0x2f2700
31f255  48 8b c8                       mov    rcx,rax
31f258  e8 db de fb ff                 call   0x2dd138
31f25d  48 8b d0                       mov    rdx,rax
31f260  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31f265  e8 62 d0 fa ff                 call   0x2cc2cc
31f26a  4c 8b cb                       mov    r9,rbx
31f26d  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31f272  ba 55 00 00 00                 mov    edx,0x55
31f277  49 8b cd                       mov    rcx,r13
31f27a  e8 3d 84 ff ff                 call   0x3176bc
31f27f  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31f284  e8 6b d2 fa ff                 call   0x2cc4f4
31f289  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31f293  40 38 3d 1e 9c 0c 00           cmp    BYTE PTR [rip+0xc9c1e],dil        # 0x3e8eb8 ; CONFIG Bools.Cupboard value(+0x48)
31f29a  0f 84 9b 00 00 00              je     0x31f33b
31f2a0  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31f2a5  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31f2ac  e8 63 34 fd ff                 call   0x2f2714 ; STRING getter=0x2f2714 BuildingPrivlidge
31f2b1  48 8b c8                       mov    rcx,rax
31f2b4  e8 c3 92 fb ff                 call   0x2d857c
31f2b9  48 8b c8                       mov    rcx,rax
31f2bc  48 8b d3                       mov    rdx,rbx
31f2bf  e8 88 68 fc ff                 call   0x2e5b4c
31f2c4  48 3b f0                       cmp    rsi,rax
31f2c7  74 28                          je     0x31f2f1
31f2c9  48 8d 55 c0                    lea    rdx,[rbp-0x40]
31f2cd  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31f2d4  e8 57 34 fd ff                 call   0x2f2730 ; STRING getter=0x2f2730 BuildingPrivilegeRetro
31f2d9  48 8b c8                       mov    rcx,rax
31f2dc  e8 ab 43 fc ff                 call   0x2e368c
31f2e1  48 8b c8                       mov    rcx,rax
31f2e4  48 8b d3                       mov    rdx,rbx
31f2e7  e8 60 68 fc ff                 call   0x2e5b4c
31f2ec  48 3b f0                       cmp    rsi,rax
31f2ef  75 4a                          jne    0x31f33b
31f2f1  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31f2f6  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
31f2fb  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31f302  e8 45 34 fd ff                 call   0x2f274c ; STRING getter=0x2f274c BuildingPrivlidge
31f307  48 8b c8                       mov    rcx,rax
31f30a  e8 6d 92 fb ff                 call   0x2d857c
31f30f  48 8b d0                       mov    rdx,rax
31f312  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31f317  e8 b0 cf fa ff                 call   0x2cc2cc
31f31c  4c 8b cb                       mov    r9,rbx
31f31f  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31f324  ba 56 00 00 00                 mov    edx,0x56
31f329  49 8b cd                       mov    rcx,r13
31f32c  e8 8b 83 ff ff                 call   0x3176bc
31f331  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31f336  e8 b9 d1 fa ff                 call   0x2cc4f4
31f33b  40 38 3d 66 9c 0c 00           cmp    BYTE PTR [rip+0xc9c66],dil        # 0x3e8fa8 ; CONFIG Bools.StashesUnHidden value(+0x48)
31f342  0f 84 81 00 00 00              je     0x31f3c9
31f348  48 8d 95 b8 08 00 00           lea    rdx,[rbp+0x8b8]
31f34f  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31f356  e8 0d 34 fd ff                 call   0x2f2768 ; STRING getter=0x2f2768 StashContainer
31f35b  48 8b c8                       mov    rcx,rax
31f35e  e8 e1 92 fb ff                 call   0x2d8644
31f363  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31f36d  48 8b c8                       mov    rcx,rax
31f370  48 8b d3                       mov    rdx,rbx
31f373  e8 d4 67 fc ff                 call   0x2e5b4c
31f378  48 3b f0                       cmp    rsi,rax
31f37b  75 56                          jne    0x31f3d3
31f37d  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31f382  48 8d 95 ef 01 00 00           lea    rdx,[rbp+0x1ef]
31f389  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31f390  e8 03 34 fd ff                 call   0x2f2798 ; STRING getter=0x2f2798 Stash
31f395  48 8b c8                       mov    rcx,rax
31f398  e8 17 91 fb ff                 call   0x2d84b4
31f39d  48 8b d0                       mov    rdx,rax
31f3a0  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31f3a5  e8 22 cf fa ff                 call   0x2cc2cc
31f3aa  4c 8b cb                       mov    r9,rbx
31f3ad  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31f3b2  ba 7c 00 00 00                 mov    edx,0x7c
31f3b7  49 8b cd                       mov    rcx,r13
31f3ba  e8 fd 82 ff ff                 call   0x3176bc
31f3bf  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31f3c4  e8 2b d1 fa ff                 call   0x2cc4f4
31f3c9  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31f3d3  40 38 3d 2e 9b 0c 00           cmp    BYTE PTR [rip+0xc9b2e],dil        # 0x3e8f08 ; CONFIG Bools.SleepingBag value(+0x48)
31f3da  74 77                          je     0x31f453
31f3dc  48 8d 95 1c 07 00 00           lea    rdx,[rbp+0x71c]
31f3e3  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31f3ea  e8 c1 33 fd ff                 call   0x2f27b0 ; STRING getter=0x2f27b0 SleepingBag
31f3ef  48 8b c8                       mov    rcx,rax
31f3f2  e8 15 ea fa ff                 call   0x2cde0c
31f3f7  48 8b c8                       mov    rcx,rax
31f3fa  48 8b d3                       mov    rdx,rbx
31f3fd  e8 4a 67 fc ff                 call   0x2e5b4c
31f402  48 3b f0                       cmp    rsi,rax
31f405  75 4c                          jne    0x31f453
31f407  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31f40c  48 8d 95 28 07 00 00           lea    rdx,[rbp+0x728]
31f413  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31f41a  e8 85 34 fd ff                 call   0x2f28a4 ; STRING getter=0x2f28a4 SleepingBag
31f41f  48 8b c8                       mov    rcx,rax
31f422  e8 e5 e9 fa ff                 call   0x2cde0c
31f427  48 8b d0                       mov    rdx,rax
31f42a  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31f42f  e8 98 ce fa ff                 call   0x2cc2cc
31f434  4c 8b cb                       mov    r9,rbx
31f437  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31f43c  ba 58 00 00 00                 mov    edx,0x58
31f441  49 8b cd                       mov    rcx,r13
31f444  e8 73 82 ff ff                 call   0x3176bc
31f449  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31f44e  e8 a1 d0 fa ff                 call   0x2cc4f4
31f453  40 38 3d 2e 9d 0c 00           cmp    BYTE PTR [rip+0xc9d2e],dil        # 0x3e9188 ; CONFIG Bools.RFReceiver value(+0x48)
31f45a  0f 84 81 00 00 00              je     0x31f4e1
31f460  48 8d 95 86 05 00 00           lea    rdx,[rbp+0x586]
31f467  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31f46e  e8 4d 34 fd ff                 call   0x2f28c0 ; STRING getter=0x2f28c0 RFReceiver
31f473  48 8b c8                       mov    rcx,rax
31f476  e8 51 91 fb ff                 call   0x2d85cc
31f47b  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31f485  48 8b c8                       mov    rcx,rax
31f488  48 8b d3                       mov    rdx,rbx
31f48b  e8 bc 66 fc ff                 call   0x2e5b4c
31f490  48 3b f0                       cmp    rsi,rax
31f493  75 56                          jne    0x31f4eb
31f495  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31f49a  48 8d 95 4f 05 00 00           lea    rdx,[rbp+0x54f]
31f4a1  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31f4a8  e8 2f 34 fd ff                 call   0x2f28dc ; STRING getter=0x2f28dc RFReceiver
31f4ad  48 8b c8                       mov    rcx,rax
31f4b0  e8 17 91 fb ff                 call   0x2d85cc
31f4b5  48 8b d0                       mov    rdx,rax
31f4b8  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31f4bd  e8 0a ce fa ff                 call   0x2cc2cc
31f4c2  4c 8b cb                       mov    r9,rbx
31f4c5  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31f4ca  ba 59 00 00 00                 mov    edx,0x59
31f4cf  49 8b cd                       mov    rcx,r13
31f4d2  e8 e5 81 ff ff                 call   0x3176bc
31f4d7  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31f4dc  e8 13 d0 fa ff                 call   0x2cc4f4
31f4e1  48 bb 25 23 22 84 e4 9c f2 cb  movabs rbx,0xcbf29ce484222325
31f4eb  40 38 3d 46 9c 0c 00           cmp    BYTE PTR [rip+0xc9c46],dil        # 0x3e9138 ; CONFIG Bools.RFBroadcaster value(+0x48)
31f4f2  74 77                          je     0x31f56b
31f4f4  48 8d 95 52 08 00 00           lea    rdx,[rbp+0x852]
31f4fb  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31f502  e8 f1 33 fd ff                 call   0x2f28f8 ; STRING getter=0x2f28f8 RFBroadcaster
31f507  48 8b c8                       mov    rcx,rax
31f50a  e8 0d 91 fb ff                 call   0x2d861c
31f50f  48 8b c8                       mov    rcx,rax
31f512  48 8b d3                       mov    rdx,rbx
31f515  e8 32 66 fc ff                 call   0x2e5b4c
31f51a  48 3b f0                       cmp    rsi,rax
31f51d  75 4c                          jne    0x31f56b
31f51f  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31f524  48 8d 95 60 08 00 00           lea    rdx,[rbp+0x860]
31f52b  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31f532  e8 e5 33 fd ff                 call   0x2f291c ; STRING getter=0x2f291c RFBroadcaster
31f537  48 8b c8                       mov    rcx,rax
31f53a  e8 dd 90 fb ff                 call   0x2d861c
31f53f  48 8b d0                       mov    rdx,rax
31f542  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31f547  e8 80 cd fa ff                 call   0x2cc2cc
31f54c  4c 8b cb                       mov    r9,rbx
31f54f  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31f554  ba 5a 00 00 00                 mov    edx,0x5a
31f559  49 8b cd                       mov    rcx,r13
31f55c  e8 5b 81 ff ff                 call   0x3176bc
31f561  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31f566  e8 89 cf fa ff                 call   0x2cc4f4
31f56b  40 38 3d d6 9a 0c 00           cmp    BYTE PTR [rip+0xc9ad6],dil        # 0x3e9048 ; CONFIG Bools.Workbench value(+0x48)
31f572  75 0d                          jne    0x31f581
31f574  40 38 3d 2d 9f 0c 00           cmp    BYTE PTR [rip+0xc9f2d],dil        # 0x3e94a8 ; CONFIG Bools.workbench2 value(+0x48)
31f57b  0f 84 06 01 00 00              je     0x31f687
31f581  48 8d 95 97 04 00 00           lea    rdx,[rbp+0x497]
31f588  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31f58f  e8 ac 33 fd ff                 call   0x2f2940 ; STRING getter=0x2f2940 Workbench
31f594  48 8b c8                       mov    rcx,rax
31f597  e8 80 e7 fa ff                 call   0x2cdd1c
31f59c  48 8b c8                       mov    rcx,rax
31f59f  48 ba 25 23 22 84 e4 9c f2 cb  movabs rdx,0xcbf29ce484222325
31f5a9  e8 9e 65 fc ff                 call   0x2e5b4c
31f5ae  48 3b f0                       cmp    rsi,rax
31f5b1  0f 85 d0 00 00 00              jne    0x31f687
31f5b7  48 8d 95 5a 05 00 00           lea    rdx,[rbp+0x55a]
31f5be  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31f5c5  e8 92 33 fd ff                 call   0x2f295c ; STRING getter=0x2f295c workbench2
31f5ca  48 8b c8                       mov    rcx,rax
31f5cd  e8 fa 8f fb ff                 call   0x2d85cc
31f5d2  48 8b d0                       mov    rdx,rax
31f5d5  49 8b ce                       mov    rcx,r14
31f5d8  e8 83 b3 0a 00                 call   0x3ca960
31f5dd  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31f5e4  48 85 c0                       test   rax,rax
31f5e7  74 31                          je     0x31f61a
31f5e9  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31f5ee  48 8d 55 18                    lea    rdx,[rbp+0x18]
31f5f2  e8 81 33 fd ff                 call   0x2f2978 ; STRING getter=0x2f2978 WB2
31f5f7  48 8b c8                       mov    rcx,rax
31f5fa  e8 e9 da fb ff                 call   0x2dd0e8
31f5ff  48 8b d0                       mov    rdx,rax
31f602  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31f607  e8 c0 cc fa ff                 call   0x2cc2cc
31f60c  ba 5b 00 00 00                 mov    edx,0x5b
31f611  eb 5a                          jmp    0x31f66d
31f613  33 ff                          xor    edi,edi
31f615  e9 e1 fb ff ff                 jmp    0x31f1fb
31f61a  48 8d 95 65 05 00 00           lea    rdx,[rbp+0x565]
31f621  e8 5e 33 fd ff                 call   0x2f2984 ; STRING getter=0x2f2984 workbench3
31f626  48 8b c8                       mov    rcx,rax
31f629  e8 9e 8f fb ff                 call   0x2d85cc
31f62e  48 8b d0                       mov    rdx,rax
31f631  49 8b ce                       mov    rcx,r14
31f634  e8 27 b3 0a 00                 call   0x3ca960
31f639  48 85 c0                       test   rax,rax
31f63c  74 49                          je     0x31f687
31f63e  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31f643  48 8d 55 1c                    lea    rdx,[rbp+0x1c]
31f647  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31f64e  e8 4d 33 fd ff                 call   0x2f29a0 ; STRING getter=0x2f29a0 WB3
31f653  48 8b c8                       mov    rcx,rax
31f656  e8 8d da fb ff                 call   0x2dd0e8
31f65b  48 8b d0                       mov    rdx,rax
31f65e  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31f663  e8 64 cc fa ff                 call   0x2cc2cc
31f668  ba 5c 00 00 00                 mov    edx,0x5c
31f66d  4c 8b cb                       mov    r9,rbx
31f670  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31f675  49 8b cd                       mov    rcx,r13
31f678  e8 3f 80 ff ff                 call   0x3176bc
31f67d  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31f682  e8 6d ce fa ff                 call   0x2cc4f4
31f687  40 38 3d 3a 88 0c 00           cmp    BYTE PTR [rip+0xc883a],dil        # 0x3e7ec8 ; CONFIG Bools.BearEsp value(+0x48)
31f68e  0f 84 fa 00 00 00              je     0x31f78e
31f694  48 8d 95 b3 01 00 00           lea    rdx,[rbp+0x1b3]
31f69b  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31f6a2  e8 c9 33 fd ff                 call   0x2f2a70 ; STRING getter=0x2f2a70 Bear
31f6a7  48 8b c8                       mov    rcx,rax
31f6aa  e8 3d 3f fc ff                 call   0x2e35ec
31f6af  49 be 25 23 22 84 e4 9c f2 cb  movabs r14,0xcbf29ce484222325
31f6b9  48 8b c8                       mov    rcx,rax
31f6bc  49 8b d6                       mov    rdx,r14
31f6bf  e8 88 64 fc ff                 call   0x2e5b4c
31f6c4  48 3b f0                       cmp    rsi,rax
31f6c7  75 4c                          jne    0x31f715
31f6c9  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31f6ce  48 8d 95 b8 01 00 00           lea    rdx,[rbp+0x1b8]
31f6d5  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31f6dc  e8 a7 33 fd ff                 call   0x2f2a88 ; STRING getter=0x2f2a88 Bear
31f6e1  48 8b c8                       mov    rcx,rax
31f6e4  e8 03 3f fc ff                 call   0x2e35ec
31f6e9  48 8b d0                       mov    rdx,rax
31f6ec  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31f6f1  e8 d6 cb fa ff                 call   0x2cc2cc
31f6f6  4c 8b cb                       mov    r9,rbx
31f6f9  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31f6fe  ba 5d 00 00 00                 mov    edx,0x5d
31f703  49 8b cd                       mov    rcx,r13
31f706  e8 b1 7f ff ff                 call   0x3176bc
31f70b  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31f710  e8 df cd fa ff                 call   0x2cc4f4
31f715  48 8d 95 0b 04 00 00           lea    rdx,[rbp+0x40b]
31f71c  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31f723  e8 78 33 fd ff                 call   0x2f2aa0 ; STRING getter=0x2f2aa0 PolarBear
31f728  48 8b c8                       mov    rcx,rax
31f72b  e8 ec e5 fa ff                 call   0x2cdd1c
31f730  48 8b c8                       mov    rcx,rax
31f733  49 8b d6                       mov    rdx,r14
31f736  e8 11 64 fc ff                 call   0x2e5b4c
31f73b  48 3b f0                       cmp    rsi,rax
31f73e  75 58                          jne    0x31f798
31f740  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31f745  48 8d 95 51 04 00 00           lea    rdx,[rbp+0x451]
31f74c  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31f753  e8 64 33 fd ff                 call   0x2f2abc ; STRING getter=0x2f2abc PolarBear
31f758  48 8b c8                       mov    rcx,rax
31f75b  e8 bc e5 fa ff                 call   0x2cdd1c
31f760  48 8b d0                       mov    rdx,rax
31f763  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31f768  e8 5f cb fa ff                 call   0x2cc2cc
31f76d  4c 8b cb                       mov    r9,rbx
31f770  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31f775  ba 5e 00 00 00                 mov    edx,0x5e
31f77a  49 8b cd                       mov    rcx,r13
31f77d  e8 3a 7f ff ff                 call   0x3176bc
31f782  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31f787  e8 68 cd fa ff                 call   0x2cc4f4
31f78c  eb 0a                          jmp    0x31f798
31f78e  49 be 25 23 22 84 e4 9c f2 cb  movabs r14,0xcbf29ce484222325
31f798  40 38 3d b9 88 0c 00           cmp    BYTE PTR [rip+0xc88b9],dil        # 0x3e8058 ; CONFIG Bools.StagEsp value(+0x48)
31f79f  74 77                          je     0x31f818
31f7a1  48 8d 95 bd 01 00 00           lea    rdx,[rbp+0x1bd]
31f7a8  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31f7af  e8 24 33 fd ff                 call   0x2f2ad8 ; STRING getter=0x2f2ad8 Stag
31f7b4  48 8b c8                       mov    rcx,rax
31f7b7  e8 30 3e fc ff                 call   0x2e35ec
31f7bc  48 8b c8                       mov    rcx,rax
31f7bf  49 8b d6                       mov    rdx,r14
31f7c2  e8 85 63 fc ff                 call   0x2e5b4c
31f7c7  48 3b f0                       cmp    rsi,rax
31f7ca  75 4c                          jne    0x31f818
31f7cc  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31f7d1  48 8d 95 c2 01 00 00           lea    rdx,[rbp+0x1c2]
31f7d8  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31f7df  e8 0c 33 fd ff                 call   0x2f2af0 ; STRING getter=0x2f2af0 Stag
31f7e4  48 8b c8                       mov    rcx,rax
31f7e7  e8 00 3e fc ff                 call   0x2e35ec
31f7ec  48 8b d0                       mov    rdx,rax
31f7ef  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31f7f4  e8 d3 ca fa ff                 call   0x2cc2cc
31f7f9  4c 8b cb                       mov    r9,rbx
31f7fc  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31f801  ba 64 00 00 00                 mov    edx,0x64
31f806  49 8b cd                       mov    rcx,r13
31f809  e8 ae 7e ff ff                 call   0x3176bc
31f80e  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31f813  e8 dc cc fa ff                 call   0x2cc4f4
31f818  40 38 3d 89 88 0c 00           cmp    BYTE PTR [rip+0xc8889],dil        # 0x3e80a8 ; CONFIG Bools.WolfEsp value(+0x48)
31f81f  0f 84 a2 00 00 00              je     0x31f8c7
31f825  48 8d 95 c7 01 00 00           lea    rdx,[rbp+0x1c7]
31f82c  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31f833  e8 d0 32 fd ff                 call   0x2f2b08 ; STRING getter=0x2f2b08 Wolf
31f838  48 8b c8                       mov    rcx,rax
31f83b  e8 ac 3d fc ff                 call   0x2e35ec
31f840  48 8b c8                       mov    rcx,rax
31f843  49 8b d6                       mov    rdx,r14
31f846  e8 01 63 fc ff                 call   0x2e5b4c
31f84b  48 3b f0                       cmp    rsi,rax
31f84e  74 2b                          je     0x31f87b
31f850  48 8d 95 40 02 00 00           lea    rdx,[rbp+0x240]
31f857  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31f85e  e8 ed 32 fd ff                 call   0x2f2b50 ; STRING getter=0x2f2b50 Wolf2
31f863  48 8b c8                       mov    rcx,rax
31f866  e8 49 8c fb ff                 call   0x2d84b4
31f86b  48 8b c8                       mov    rcx,rax
31f86e  49 8b d6                       mov    rdx,r14
31f871  e8 d6 62 fc ff                 call   0x2e5b4c
31f876  48 3b f0                       cmp    rsi,rax
31f879  75 4c                          jne    0x31f8c7
31f87b  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31f880  48 8d 95 cc 01 00 00           lea    rdx,[rbp+0x1cc]
31f887  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31f88e  e8 d5 32 fd ff                 call   0x2f2b68 ; STRING getter=0x2f2b68 Wolf
31f893  48 8b c8                       mov    rcx,rax
31f896  e8 51 3d fc ff                 call   0x2e35ec
31f89b  48 8b d0                       mov    rdx,rax
31f89e  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31f8a3  e8 24 ca fa ff                 call   0x2cc2cc
31f8a8  4c 8b cb                       mov    r9,rbx
31f8ab  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31f8b0  ba 65 00 00 00                 mov    edx,0x65
31f8b5  49 8b cd                       mov    rcx,r13
31f8b8  e8 ff 7d ff ff                 call   0x3176bc
31f8bd  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31f8c2  e8 2d cc fa ff                 call   0x2cc4f4
31f8c7  40 38 3d ca 88 0c 00           cmp    BYTE PTR [rip+0xc88ca],dil        # 0x3e8198 ; CONFIG Bools.PigEsp value(+0x48)
31f8ce  74 77                          je     0x31f947
31f8d0  48 8d 95 d1 01 00 00           lea    rdx,[rbp+0x1d1]
31f8d7  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31f8de  e8 cd 32 fd ff                 call   0x2f2bb0 ; STRING getter=0x2f2bb0 Boar
31f8e3  48 8b c8                       mov    rcx,rax
31f8e6  e8 01 3d fc ff                 call   0x2e35ec
31f8eb  48 8b c8                       mov    rcx,rax
31f8ee  49 8b d6                       mov    rdx,r14
31f8f1  e8 56 62 fc ff                 call   0x2e5b4c
31f8f6  48 3b f0                       cmp    rsi,rax
31f8f9  75 4c                          jne    0x31f947
31f8fb  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31f900  48 8d 95 d6 01 00 00           lea    rdx,[rbp+0x1d6]
31f907  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31f90e  e8 89 33 fd ff                 call   0x2f2c9c ; STRING getter=0x2f2c9c Boar
31f913  48 8b c8                       mov    rcx,rax
31f916  e8 d1 3c fc ff                 call   0x2e35ec
31f91b  48 8b d0                       mov    rdx,rax
31f91e  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31f923  e8 a4 c9 fa ff                 call   0x2cc2cc
31f928  4c 8b cb                       mov    r9,rbx
31f92b  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31f930  ba 66 00 00 00                 mov    edx,0x66
31f935  49 8b cd                       mov    rcx,r13
31f938  e8 7f 7d ff ff                 call   0x3176bc
31f93d  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31f942  e8 ad cb fa ff                 call   0x2cc4f4
31f947  40 38 3d 9a 88 0c 00           cmp    BYTE PTR [rip+0xc889a],dil        # 0x3e81e8 ; CONFIG Bools.HorseEsp value(+0x48)
31f94e  0f 84 a2 00 00 00              je     0x31f9f6
31f954  48 8d 95 34 02 00 00           lea    rdx,[rbp+0x234]
31f95b  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31f962  e8 7d 33 fd ff                 call   0x2f2ce4 ; STRING getter=0x2f2ce4 Horse
31f967  48 8b c8                       mov    rcx,rax
31f96a  e8 45 8b fb ff                 call   0x2d84b4
31f96f  48 8b c8                       mov    rcx,rax
31f972  49 8b d6                       mov    rdx,r14
31f975  e8 d2 61 fc ff                 call   0x2e5b4c
31f97a  48 3b f0                       cmp    rsi,rax
31f97d  74 2b                          je     0x31f9aa
31f97f  48 8d 95 bc 07 00 00           lea    rdx,[rbp+0x7bc]
31f986  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31f98d  e8 9a 33 fd ff                 call   0x2f2d2c ; STRING getter=0x2f2d2c RidableHorse
31f992  48 8b c8                       mov    rcx,rax
31f995  e8 c2 e4 fa ff                 call   0x2cde5c
31f99a  48 8b c8                       mov    rcx,rax
31f99d  49 8b d6                       mov    rdx,r14
31f9a0  e8 a7 61 fc ff                 call   0x2e5b4c
31f9a5  48 3b f0                       cmp    rsi,rax
31f9a8  75 4c                          jne    0x31f9f6
31f9aa  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31f9af  48 8d 95 2e 02 00 00           lea    rdx,[rbp+0x22e]
31f9b6  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31f9bd  e8 9e 33 fd ff                 call   0x2f2d60 ; STRING getter=0x2f2d60 Horse
31f9c2  48 8b c8                       mov    rcx,rax
31f9c5  e8 ea 8a fb ff                 call   0x2d84b4
31f9ca  48 8b d0                       mov    rdx,rax
31f9cd  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31f9d2  e8 f5 c8 fa ff                 call   0x2cc2cc
31f9d7  4c 8b cb                       mov    r9,rbx
31f9da  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31f9df  ba 67 00 00 00                 mov    edx,0x67
31f9e4  49 8b cd                       mov    rcx,r13
31f9e7  e8 d0 7c ff ff                 call   0x3176bc
31f9ec  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31f9f1  e8 fe ca fa ff                 call   0x2cc4f4
31f9f6  40 38 3d 3b 88 0c 00           cmp    BYTE PTR [rip+0xc883b],dil        # 0x3e8238 ; CONFIG Bools.SharkEsp value(+0x48)
31f9fd  74 77                          je     0x31fa76
31f9ff  48 8d 95 34 07 00 00           lea    rdx,[rbp+0x734]
31fa06  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31fa0d  e8 7e 33 fd ff                 call   0x2f2d90 ; STRING getter=0x2f2d90 SimpleShark
31fa12  48 8b c8                       mov    rcx,rax
31fa15  e8 f2 e3 fa ff                 call   0x2cde0c
31fa1a  48 8b c8                       mov    rcx,rax
31fa1d  49 8b d6                       mov    rdx,r14
31fa20  e8 27 61 fc ff                 call   0x2e5b4c
31fa25  48 3b f0                       cmp    rsi,rax
31fa28  75 4c                          jne    0x31fa76
31fa2a  48 8b 5c 24 20                 mov    rbx,QWORD PTR [rsp+0x20]
31fa2f  48 8d 95 28 02 00 00           lea    rdx,[rbp+0x228]
31fa36  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31fa3d  e8 82 33 fd ff                 call   0x2f2dc4 ; STRING getter=0x2f2dc4 Shark
31fa42  48 8b c8                       mov    rcx,rax
31fa45  e8 6a 8a fb ff                 call   0x2d84b4
31fa4a  48 8b d0                       mov    rdx,rax
31fa4d  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31fa52  e8 75 c8 fa ff                 call   0x2cc2cc
31fa57  4c 8b cb                       mov    r9,rbx
31fa5a  4c 8d 44 24 28                 lea    r8,[rsp+0x28]
31fa5f  ba 68 00 00 00                 mov    edx,0x68
31fa64  49 8b cd                       mov    rcx,r13
31fa67  e8 50 7c ff ff                 call   0x3176bc
31fa6c  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31fa71  e8 7e ca fa ff                 call   0x2cc4f4
31fa76  48 8d 95 6e 08 00 00           lea    rdx,[rbp+0x86e]
31fa7d  48 8d 8d 88 0a 00 00           lea    rcx,[rbp+0xa88]
31fa84  e8 6f 33 fd ff                 call   0x2f2df8 ; STRING getter=0x2f2df8 ScientistNPC2
31fa89  48 8b c8                       mov    rcx,rax
31fa8c  e8 8b 8b fb ff                 call   0x2d861c
31fa91  48 8b c8                       mov    rcx,rax
31fa94  49 8b d6                       mov    rdx,r14
31fa97  e8 b0 60 fc ff                 call   0x2e5b4c
31fa9c  48 3b f0                       cmp    rsi,rax
31fa9f  75 56                          jne    0x31faf7
31faa1  48 8b 4c 24 20                 mov    rcx,QWORD PTR [rsp+0x20]
31faa6  48 8d 95 18 02 00 00           lea    rdx,[rbp+0x218]
31faad  41 b8 35 00 00 00              mov    r8d,0x35
31fab3  e8 30 91 04 00                 call   0x368be8
31fab8  48 8b 4d b0                    mov    rcx,QWORD PTR [rbp-0x50]
31fabc  48 8d 95 40 07 00 00           lea    rdx,[rbp+0x740]
31fac3  e8 6c cf 04 00                 call   0x36ca34
31fac8  48 8b c8                       mov    rcx,rax
31facb  48 8d 95 18 02 00 00           lea    rdx,[rbp+0x218]
31fad2  e8 59 04 fc ff                 call   0x2dff30
31fad7  66 0f 6e 0d b9 86 0b 00        movd   xmm1,DWORD PTR [rip+0xb86b9]        # 0x3d8198 ; CONFIG i.ScientistMaxDistance value(+0x48)
31fadf  0f 5b c9                       cvtdq2ps xmm1,xmm1
31fae2  0f 2f c8                       comiss xmm1,xmm0
31fae5  72 10                          jb     0x31faf7
31fae7  48 8b 54 24 20                 mov    rdx,QWORD PTR [rsp+0x20]
31faec  41 b0 01                       mov    r8b,0x1
31faef  49 8b cd                       mov    rcx,r13
31faf2  e8 bd 7c ff ff                 call   0x3177b4
31faf7  b8 06 00 00 00                 mov    eax,0x6
31fafc  66 44 3b e0                    cmp    r12w,ax
31fb00  0f 85 f5 02 00 00              jne    0x31fdfb
31fb06  48 8b 54 24 20                 mov    rdx,QWORD PTR [rsp+0x20]
31fb0b  49 3b d7                       cmp    rdx,r15
31fb0e  0f 84 e7 02 00 00              je     0x31fdfb
31fb14  40 38 3d 4d 84 0b 00           cmp    BYTE PTR [rip+0xb844d],dil        # 0x3d7f68 ; CONFIG Bools.SilentMeleePlayers value(+0x48)
31fb1b  74 67                          je     0x31fb84
31fb1d  48 8b b5 c0 00 00 00           mov    rsi,QWORD PTR [rbp+0xc0]
31fb24  48 8b ce                       mov    rcx,rsi
31fb27  e8 dc b3 fa ff                 call   0x2caf08
31fb2c  84 c0                          test   al,al
31fb2e  74 5b                          je     0x31fb8b
31fb30  48 8b ca                       mov    rcx,rdx
31fb33  e8 a8 a5 04 00                 call   0x36a0e0
31fb38  84 c0                          test   al,al
31fb3a  74 35                          je     0x31fb71
31fb3c  48 8d 95 4c 07 00 00           lea    rdx,[rbp+0x74c]
31fb43  49 8b cf                       mov    rcx,r15
31fb46  e8 19 96 04 00                 call   0x369164
31fb4b  48 8b 4c 24 20                 mov    rcx,QWORD PTR [rsp+0x20]
31fb50  48 8d 95 f0 00 00 00           lea    rdx,[rbp+0xf0]
31fb57  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
31fb5b  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
31fb5e  f2 0f 11 85 f0 00 00 00        movsd  QWORD PTR [rbp+0xf0],xmm0
31fb66  89 85 f8 00 00 00              mov    DWORD PTR [rbp+0xf8],eax
31fb6c  e8 3f 6b 04 00                 call   0x3666b0
31fb71  48 8b 54 24 20                 mov    rdx,QWORD PTR [rsp+0x20]
31fb76  48 3b f2                       cmp    rsi,rdx
31fb79  75 10                          jne    0x31fb8b
31fb7b  48 89 15 3e 77 0b 00           mov    QWORD PTR [rip+0xb773e],rdx        # 0x3d72c0
31fb82  eb 07                          jmp    0x31fb8b
31fb84  48 89 3d 35 77 0b 00           mov    QWORD PTR [rip+0xb7735],rdi        # 0x3d72c0
31fb8b  49 8b cd                       mov    rcx,r13
31fb8e  e8 e9 7c ff ff                 call   0x31787c
31fb93  48 8b 4c 24 20                 mov    rcx,QWORD PTR [rsp+0x20]
31fb98  e8 13 98 04 00                 call   0x3693b0
31fb9d  48 8b 4c 24 20                 mov    rcx,QWORD PTR [rsp+0x20]
31fba2  44 8a e0                       mov    r12b,al
31fba5  e8 9a 86 04 00                 call   0x368244
31fbaa  48 8b 4c 24 20                 mov    rcx,QWORD PTR [rsp+0x20]
31fbaf  8a d8                          mov    bl,al
31fbb1  e8 d2 b6 04 00                 call   0x36b288
31fbb6  84 c0                          test   al,al
31fbb8  75 04                          jne    0x31fbbe
31fbba  84 db                          test   bl,bl
31fbbc  74 0d                          je     0x31fbcb
31fbbe  40 38 3d 73 7c 0c 00           cmp    BYTE PTR [rip+0xc7c73],dil        # 0x3e7838 ; CONFIG Bools.Wounded value(+0x48)
31fbc5  0f 84 30 02 00 00              je     0x31fdfb
31fbcb  48 8b 4c 24 20                 mov    rcx,QWORD PTR [rsp+0x20]
31fbd0  e8 e3 b0 04 00                 call   0x36acb8
31fbd5  84 c0                          test   al,al
31fbd7  74 0d                          je     0x31fbe6
31fbd9  40 38 3d 78 7a 0c 00           cmp    BYTE PTR [rip+0xc7a78],dil        # 0x3e7658 ; CONFIG Bools.SafeZone value(+0x48)
31fbe0  0f 84 15 02 00 00              je     0x31fdfb
31fbe6  48 8b 4c 24 20                 mov    rcx,QWORD PTR [rsp+0x20]
31fbeb  33 d2                          xor    edx,edx
31fbed  e8 1a a6 04 00                 call   0x36a20c
31fbf2  84 c0                          test   al,al
31fbf4  74 11                          je     0x31fc07
31fbf6  48 8b 4c 24 20                 mov    rcx,QWORD PTR [rsp+0x20]
31fbfb  e8 1c 86 04 00                 call   0x36821c
31fc00  41 b6 01                       mov    r14b,0x1
31fc03  84 c0                          test   al,al
31fc05  74 03                          je     0x31fc0a
31fc07  44 8a f7                       mov    r14b,dil
31fc0a  48 8b 4c 24 20                 mov    rcx,QWORD PTR [rsp+0x20]
31fc0f  33 d2                          xor    edx,edx
31fc11  e8 f6 a5 04 00                 call   0x36a20c
31fc16  84 c0                          test   al,al
31fc18  74 0a                          je     0x31fc24
31fc1a  48 8b 4c 24 20                 mov    rcx,QWORD PTR [rsp+0x20]
31fc1f  e8 f8 85 04 00                 call   0x36821c
31fc24  48 8b 4c 24 20                 mov    rcx,QWORD PTR [rsp+0x20]
31fc29  e8 4a a5 04 00                 call   0x36a178
31fc2e  44 8a f8                       mov    r15b,al
31fc31  84 c0                          test   al,al
31fc33  74 09                          je     0x31fc3e
31fc35  40 38 3d ec 77 0c 00           cmp    BYTE PTR [rip+0xc77ec],dil        # 0x3e7428 ; CONFIG Bools.Scientist value(+0x48)
31fc3c  eb 07                          jmp    0x31fc45
31fc3e  40 38 3d 03 76 0c 00           cmp    BYTE PTR [rip+0xc7603],dil        # 0x3e7248 ; CONFIG Bools.PlayerESP value(+0x48)
31fc45  0f 84 ab 01 00 00              je     0x31fdf6
31fc4b  48 8b 4c 24 20                 mov    rcx,QWORD PTR [rsp+0x20]
31fc50  33 d2                          xor    edx,edx
31fc52  e8 d5 d6 fa ff                 call   0x2cd32c
31fc57  48 8b 4c 24 20                 mov    rcx,QWORD PTR [rsp+0x20]
31fc5c  48 8b d8                       mov    rbx,rax
31fc5f  e8 f4 b2 04 00                 call   0x36af58
31fc64  48 85 db                       test   rbx,rbx
31fc67  74 0b                          je     0x31fc74
31fc69  48 3b 9d b8 00 00 00           cmp    rbx,QWORD PTR [rbp+0xb8]
31fc70  b3 01                          mov    bl,0x1
31fc72  74 03                          je     0x31fc77
31fc74  40 8a df                       mov    bl,dil
31fc77  8b 7d a4                       mov    edi,DWORD PTR [rbp-0x5c]
31fc7a  48 8d 54 24 28                 lea    rdx,[rsp+0x28]
31fc7f  48 8b 4c 24 20                 mov    rcx,QWORD PTR [rsp+0x20]
31fc84  45 33 c0                       xor    r8d,r8d
31fc87  83 cf 01                       or     edi,0x1
31fc8a  e8 e1 a1 04 00                 call   0x369e70
31fc8f  48 8b d0                       mov    rdx,rax
31fc92  48 8d 0d c7 75 0b 00           lea    rcx,[rip+0xb75c7]        # 0x3d7260
31fc99  e8 6a f9 fb ff                 call   0x2df608
31fc9e  83 78 24 01                    cmp    DWORD PTR [rax+0x24],0x1
31fca2  74 09                          je     0x31fcad
31fca4  84 db                          test   bl,bl
31fca6  75 05                          jne    0x31fcad
31fca8  40 32 f6                       xor    sil,sil
31fcab  eb 03                          jmp    0x31fcb0
31fcad  40 b6 01                       mov    sil,0x1
31fcb0  83 e7 fe                       and    edi,0xfffffffe
31fcb3  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31fcb8  89 7d a4                       mov    DWORD PTR [rbp-0x5c],edi
31fcbb  e8 34 c8 fa ff                 call   0x2cc4f4
31fcc0  48 8b 4c 24 20                 mov    rcx,QWORD PTR [rsp+0x20]
31fcc5  48 8d 54 24 28                 lea    rdx,[rsp+0x28]
31fcca  45 33 c0                       xor    r8d,r8d
31fccd  e8 9e a1 04 00                 call   0x369e70
31fcd2  48 8b d0                       mov    rdx,rax
31fcd5  48 8d 0d 84 75 0b 00           lea    rcx,[rip+0xb7584]        # 0x3d7260
31fcdc  e8 27 f9 fb ff                 call   0x2df608
31fce1  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
31fce6  8b 78 24                       mov    edi,DWORD PTR [rax+0x24]
31fce9  e8 06 c8 fa ff                 call   0x2cc4f4
31fcee  83 ff 02                       cmp    edi,0x2
31fcf1  75 22                          jne    0x31fd15
31fcf3  45 33 c0                       xor    r8d,r8d
31fcf6  48 8d 95 78 09 00 00           lea    rdx,[rbp+0x978]
31fcfd  48 8d 0d 74 0a 0d 00           lea    rcx,[rip+0xd0a74]        # 0x3f0778 ; CONFIG VectorBools.EnemyOptions value(+0x48)
31fd04  e8 e7 9b fc ff                 call   0x2e98f0
31fd09  48 8b c8                       mov    rcx,rax
31fd0c  e8 5f 50 fb ff                 call   0x2d4d70
31fd11  84 c0                          test   al,al
31fd13  75 0d                          jne    0x31fd22
31fd15  80 3d 1c 76 0c 00 00           cmp    BYTE PTR [rip+0xc761c],0x0        # 0x3e7338 ; CONFIG Bools.Sleepers value(+0x48)
31fd1c  75 04                          jne    0x31fd22
31fd1e  32 db                          xor    bl,bl
31fd20  eb 02                          jmp    0x31fd24
31fd22  b3 01                          mov    bl,0x1
31fd24  83 ff 02                       cmp    edi,0x2
31fd27  75 23                          jne    0x31fd4c
31fd29  44 8d 47 ff                    lea    r8d,[rdi-0x1]
31fd2d  48 8d 95 88 09 00 00           lea    rdx,[rbp+0x988]
31fd34  48 8d 0d 3d 0a 0d 00           lea    rcx,[rip+0xd0a3d]        # 0x3f0778 ; CONFIG VectorBools.EnemyOptions value(+0x48)
31fd3b  e8 b0 9b fc ff                 call   0x2e98f0
31fd40  48 8b c8                       mov    rcx,rax
31fd43  e8 28 50 fb ff                 call   0x2d4d70
31fd48  84 c0                          test   al,al
31fd4a  75 0d                          jne    0x31fd59
31fd4c  80 3d 85 76 0c 00 00           cmp    BYTE PTR [rip+0xc7685],0x0        # 0x3e73d8 ; CONFIG Bools.Dead value(+0x48)
31fd53  75 04                          jne    0x31fd59
31fd55  32 c0                          xor    al,al
31fd57  eb 02                          jmp    0x31fd5b
31fd59  b0 01                          mov    al,0x1
31fd5b  45 84 e4                       test   r12b,r12b
31fd5e  74 08                          je     0x31fd68
31fd60  84 c0                          test   al,al
31fd62  0f 84 8e 00 00 00              je     0x31fdf6
31fd68  45 84 f6                       test   r14b,r14b
31fd6b  74 08                          je     0x31fd75
31fd6d  84 db                          test   bl,bl
31fd6f  0f 84 81 00 00 00              je     0x31fdf6
31fd75  40 84 f6                       test   sil,sil
31fd78  74 09                          je     0x31fd83
31fd7a  80 3d 07 9e 0c 00 00           cmp    BYTE PTR [rip+0xc9e07],0x0        # 0x3e9b88 ; CONFIG Bools.drawteam value(+0x48)
31fd81  74 73                          je     0x31fdf6
31fd83  83 ff 02                       cmp    edi,0x2
31fd86  75 09                          jne    0x31fd91
31fd88  80 3d e9 a3 0c 00 00           cmp    BYTE PTR [rip+0xca3e9],0x0        # 0x3ea178 ; CONFIG Bools.draweenemy value(+0x48)
31fd8f  74 65                          je     0x31fdf6
31fd91  48 8b 4c 24 20                 mov    rcx,QWORD PTR [rsp+0x20]
31fd96  48 8d 95 88 02 00 00           lea    rdx,[rbp+0x288]
31fd9d  41 b8 35 00 00 00              mov    r8d,0x35
31fda3  e8 40 8e 04 00                 call   0x368be8
31fda8  48 8b 4d b0                    mov    rcx,QWORD PTR [rbp-0x50]
31fdac  48 8d 95 58 07 00 00           lea    rdx,[rbp+0x758]
31fdb3  e8 7c cc 04 00                 call   0x36ca34
31fdb8  48 8b c8                       mov    rcx,rax
31fdbb  48 8d 95 88 02 00 00           lea    rdx,[rbp+0x288]
31fdc2  e8 69 01 fc ff                 call   0x2dff30
31fdc7  45 84 ff                       test   r15b,r15b
31fdca  74 0a                          je     0x31fdd6
31fdcc  66 0f 6e 0d c4 83 0b 00        movd   xmm1,DWORD PTR [rip+0xb83c4]        # 0x3d8198 ; CONFIG i.ScientistMaxDistance value(+0x48)
31fdd4  eb 08                          jmp    0x31fdde
31fdd6  66 0f 6e 0d 6a 83 0b 00        movd   xmm1,DWORD PTR [rip+0xb836a]        # 0x3d8148 ; CONFIG i.PlayerMaxDistance value(+0x48)
31fdde  0f 5b c9                       cvtdq2ps xmm1,xmm1
31fde1  0f 2f c1                       comiss xmm0,xmm1
31fde4  77 10                          ja     0x31fdf6
31fde6  48 8b 54 24 20                 mov    rdx,QWORD PTR [rsp+0x20]
31fdeb  45 33 c0                       xor    r8d,r8d
31fdee  49 8b cd                       mov    rcx,r13
31fdf1  e8 be 79 ff ff                 call   0x3177b4
31fdf6  4c 8b 7c 24 48                 mov    r15,QWORD PTR [rsp+0x48]
31fdfb  8b 85 98 0a 00 00              mov    eax,DWORD PTR [rbp+0xa98]
31fe01  48 8b 9d b0 00 00 00           mov    rbx,QWORD PTR [rbp+0xb0]
31fe08  ff c0                          inc    eax
31fe0a  8b f8                          mov    edi,eax
31fe0c  89 85 98 0a 00 00              mov    DWORD PTR [rbp+0xa98],eax
31fe12  3b 45 a8                       cmp    eax,DWORD PTR [rbp-0x58]
31fe15  0f 8c da af ff ff              jl     0x31adf5
31fe1b  4c 8d 9c 24 40 0b 00 00        lea    r11,[rsp+0xb40]
31fe23  49 8b 5b 40                    mov    rbx,QWORD PTR [r11+0x40]
31fe27  41 0f 28 73 f0                 movaps xmm6,XMMWORD PTR [r11-0x10]
31fe2c  41 0f 28 7b e0                 movaps xmm7,XMMWORD PTR [r11-0x20]
31fe31  45 0f 28 43 d0                 movaps xmm8,XMMWORD PTR [r11-0x30]
31fe36  45 0f 28 4b c0                 movaps xmm9,XMMWORD PTR [r11-0x40]
31fe3b  49 8b e3                       mov    rsp,r11
31fe3e  41 5f                          pop    r15
31fe40  41 5e                          pop    r14
31fe42  41 5d                          pop    r13
31fe44  41 5c                          pop    r12
31fe46  5f                             pop    rdi
31fe47  5e                             pop    rsi
31fe48  5d                             pop    rbp
31fe49  c3                             ret
