; pdata function 0x2f8574..0x2f8dae unwind=0x3d3064
2f8574  48 8b c4                       mov    rax,rsp
2f8577  55                             push   rbp
2f8578  53                             push   rbx
2f8579  56                             push   rsi
2f857a  57                             push   rdi
2f857b  48 8d 68 a1                    lea    rbp,[rax-0x5f]
2f857f  48 81 ec b8 00 00 00           sub    rsp,0xb8
2f8586  33 f6                          xor    esi,esi
2f8588  0f 29 70 c8                    movaps XMMWORD PTR [rax-0x38],xmm6
2f858c  40 38 35 2d d7 0e 00           cmp    BYTE PTR [rip+0xed72d],sil        # 0x3e5cc0
2f8593  48 8b f9                       mov    rdi,rcx
2f8596  75 16                          jne    0x2f85ae
2f8598  e8 e7 4c fe ff                 call   0x2dd284
2f859d  e8 22 0c fe ff                 call   0x2d91c4
2f85a2  e8 8d d6 01 00                 call   0x315c34
2f85a7  c6 05 12 d7 0e 00 01           mov    BYTE PTR [rip+0xed712],0x1        # 0x3e5cc0
2f85ae  48 8d 0d f3 03 f2 ff           lea    rcx,[rip+0xfffffffffff203f3]        # 0x2189a8
2f85b5  e8 16 db fd ff                 call   0x2d60d0
2f85ba  48 8d 0d 0f 02 f2 ff           lea    rcx,[rip+0xfffffffffff2020f]        # 0x2187d0
2f85c1  e8 2a 8c 02 00                 call   0x3211f0
2f85c6  f3 0f 10 0d 1a 55 f9 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff9551a]        # 0x28dae8 ; f32=0.4
2f85ce  48 8d 0d 3f 91 0f 00           lea    rcx,[rip+0xf913f]        # 0x3f1714
2f85d5  e8 a2 d5 fe ff                 call   0x2e5b7c
2f85da  84 c0                          test   al,al
2f85dc  74 0c                          je     0x2f85ea
2f85de  48 8d 0d eb 01 f2 ff           lea    rcx,[rip+0xfffffffffff201eb]        # 0x2187d0
2f85e5  e8 e6 26 02 00                 call   0x31acd0
2f85ea  48 39 35 07 d9 0e 00           cmp    QWORD PTR [rip+0xed907],rsi        # 0x3e5ef8
2f85f1  75 20                          jne    0x2f8613
2f85f3  45 33 c9                       xor    r9d,r9d
2f85f6  48 8d 15 e3 f3 f3 ff           lea    rdx,[rip+0xfffffffffff3f3e3]        # 0x2379e0
2f85fd  41 b8 46 2a 00 00              mov    r8d,0x2a46
2f8603  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
2f8607  e8 fc d5 07 00                 call   0x375c08
2f860c  48 89 05 e5 d8 0e 00           mov    QWORD PTR [rip+0xed8e5],rax        # 0x3e5ef8
2f8613  48 39 35 6e d8 0e 00           cmp    QWORD PTR [rip+0xed86e],rsi        # 0x3e5e88
2f861a  75 20                          jne    0x2f863c
2f861c  45 33 c9                       xor    r9d,r9d
2f861f  48 8d 15 9a 03 f2 ff           lea    rdx,[rip+0xfffffffffff2039a]        # 0x2189c0
2f8626  41 b8 f4 45 00 00              mov    r8d,0x45f4
2f862c  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
2f8630  e8 d3 d5 07 00                 call   0x375c08
2f8635  48 89 05 4c d8 0e 00           mov    QWORD PTR [rip+0xed84c],rax        # 0x3e5e88
2f863c  48 39 35 4d d8 0e 00           cmp    QWORD PTR [rip+0xed84d],rsi        # 0x3e5e90
2f8643  75 20                          jne    0x2f8665
2f8645  45 33 c9                       xor    r9d,r9d
2f8648  48 8d 15 71 49 f2 ff           lea    rdx,[rip+0xfffffffffff24971]        # 0x21cfc0
2f864f  41 b8 a4 4a 00 00              mov    r8d,0x4aa4
2f8655  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
2f8659  e8 aa d5 07 00                 call   0x375c08
2f865e  48 89 05 2b d8 0e 00           mov    QWORD PTR [rip+0xed82b],rax        # 0x3e5e90
2f8665  48 39 35 2c d8 0e 00           cmp    QWORD PTR [rip+0xed82c],rsi        # 0x3e5e98
2f866c  75 20                          jne    0x2f868e
2f866e  45 33 c9                       xor    r9d,r9d
2f8671  48 8d 15 f8 93 f2 ff           lea    rdx,[rip+0xfffffffffff293f8]        # 0x221a70
2f8678  41 b8 db 44 00 00              mov    r8d,0x44db
2f867e  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
2f8682  e8 81 d5 07 00                 call   0x375c08
2f8687  48 89 05 0a d8 0e 00           mov    QWORD PTR [rip+0xed80a],rax        # 0x3e5e98
2f868e  48 39 35 0b d8 0e 00           cmp    QWORD PTR [rip+0xed80b],rsi        # 0x3e5ea0
2f8695  75 20                          jne    0x2f86b7
2f8697  45 33 c9                       xor    r9d,r9d
2f869a  48 8d 15 af d8 f2 ff           lea    rdx,[rip+0xfffffffffff2d8af]        # 0x225f50
2f86a1  41 b8 ae 45 00 00              mov    r8d,0x45ae
2f86a7  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
2f86ab  e8 58 d5 07 00                 call   0x375c08
2f86b0  48 89 05 e9 d7 0e 00           mov    QWORD PTR [rip+0xed7e9],rax        # 0x3e5ea0
2f86b7  48 39 35 ea d7 0e 00           cmp    QWORD PTR [rip+0xed7ea],rsi        # 0x3e5ea8
2f86be  75 20                          jne    0x2f86e0
2f86c0  45 33 c9                       xor    r9d,r9d
2f86c3  48 8d 15 36 1e f3 ff           lea    rdx,[rip+0xfffffffffff31e36]        # 0x22a500
2f86ca  41 b8 94 47 00 00              mov    r8d,0x4794
2f86d0  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
2f86d4  e8 2f d5 07 00                 call   0x375c08
2f86d9  48 89 05 c8 d7 0e 00           mov    QWORD PTR [rip+0xed7c8],rax        # 0x3e5ea8
2f86e0  48 39 35 c9 d7 0e 00           cmp    QWORD PTR [rip+0xed7c9],rsi        # 0x3e5eb0
2f86e7  75 20                          jne    0x2f8709
2f86e9  45 33 c9                       xor    r9d,r9d
2f86ec  48 8d 15 1d ab f3 ff           lea    rdx,[rip+0xfffffffffff3ab1d]        # 0x233210
2f86f3  41 b8 c1 47 00 00              mov    r8d,0x47c1
2f86f9  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
2f86fd  e8 06 d5 07 00                 call   0x375c08
2f8702  48 89 05 a7 d7 0e 00           mov    QWORD PTR [rip+0xed7a7],rax        # 0x3e5eb0
2f8709  48 39 35 a8 d7 0e 00           cmp    QWORD PTR [rip+0xed7a8],rsi        # 0x3e5eb8
2f8710  75 20                          jne    0x2f8732
2f8712  45 33 c9                       xor    r9d,r9d
2f8715  48 8d 15 84 65 f3 ff           lea    rdx,[rip+0xfffffffffff36584]        # 0x22eca0
2f871c  41 b8 64 45 00 00              mov    r8d,0x4564
2f8722  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
2f8726  e8 dd d4 07 00                 call   0x375c08
2f872b  48 89 05 86 d7 0e 00           mov    QWORD PTR [rip+0xed786],rax        # 0x3e5eb8
2f8732  e8 b9 83 fe ff                 call   0x2e0af0
2f8737  e8 b4 82 fe ff                 call   0x2e09f0
2f873c  8b 1d de 8f 0f 00              mov    ebx,DWORD PTR [rip+0xf8fde]        # 0x3f1720
2f8742  f6 c3 01                       test   bl,0x1
2f8745  75 1e                          jne    0x2f8765
2f8747  83 cb 01                       or     ebx,0x1
2f874a  48 8d 0d ff e1 0e 00           lea    rcx,[rip+0xee1ff]        # 0x3e6950
2f8751  89 1d c9 8f 0f 00              mov    DWORD PTR [rip+0xf8fc9],ebx        # 0x3f1720
2f8757  e8 7c 5e fd ff                 call   0x2ce5d8
2f875c  48 89 05 b5 8f 0f 00           mov    QWORD PTR [rip+0xf8fb5],rax        # 0x3f1718
2f8763  eb 07                          jmp    0x2f876c
2f8765  48 8b 05 ac 8f 0f 00           mov    rax,QWORD PTR [rip+0xf8fac]        # 0x3f1718
2f876c  f6 c3 02                       test   bl,0x2
2f876f  75 22                          jne    0x2f8793
2f8771  48 8b 0d e8 d6 0d 00           mov    rcx,QWORD PTR [rip+0xdd6e8]        # 0x3d5e60
2f8778  48 8d 15 b1 8f 0f 00           lea    rdx,[rip+0xf8fb1]        # 0x3f1730
2f877f  83 cb 02                       or     ebx,0x2
2f8782  45 33 c9                       xor    r9d,r9d
2f8785  4c 8b c0                       mov    r8,rax
2f8788  89 1d 92 8f 0f 00              mov    DWORD PTR [rip+0xf8f92],ebx        # 0x3f1720
2f878e  e8 91 35 fd ff                 call   0x2cbd24
2f8793  48 8b 0d c6 d6 0d 00           mov    rcx,QWORD PTR [rip+0xdd6c6]        # 0x3d5e60
2f879a  48 8d 15 8f 8f 0f 00           lea    rdx,[rip+0xf8f8f]        # 0x3f1730
2f87a1  4c 8b c7                       mov    r8,rdi
2f87a4  e8 53 32 fd ff                 call   0x2cb9fc
2f87a9  48 39 35 48 d7 0e 00           cmp    QWORD PTR [rip+0xed748],rsi        # 0x3e5ef8
2f87b0  0f 84 e4 05 00 00              je     0x2f8d9a
2f87b6  e8 e1 7e fe ff                 call   0x2e069c
2f87bb  48 8b d8                       mov    rbx,rax
2f87be  e8 89 86 fe ff                 call   0x2e0e4c
2f87c3  34 01                          xor    al,0x1
2f87c5  8a c8                          mov    cl,al
2f87c7  e8 ac 46 fd ff                 call   0x2cce78
2f87cc  48 8b cb                       mov    rcx,rbx
2f87cf  e8 34 27 fd ff                 call   0x2caf08
2f87d4  40 8a f8                       mov    dil,al
2f87d7  84 c0                          test   al,al
2f87d9  0f 85 f5 00 00 00              jne    0x2f88d4
2f87df  48 8d 0d 3a 00 f2 ff           lea    rcx,[rip+0xfffffffffff2003a]        # 0x218820
2f87e6  40 88 35 63 ba 0e 00           mov    BYTE PTR [rip+0xeba63],sil        # 0x3e4250
2f87ed  e8 72 24 02 00                 call   0x31ac64
2f87f2  48 8d 0d f7 d9 0e 00           lea    rcx,[rip+0xed9f7]        # 0x3e61f0
2f87f9  e8 62 23 02 00                 call   0x31ab60
2f87fe  48 8d 0d 6b d9 0e 00           lea    rcx,[rip+0xed96b]        # 0x3e6170
2f8805  e8 56 23 02 00                 call   0x31ab60
2f880a  48 8d 0d 9f d9 0e 00           lea    rcx,[rip+0xed99f]        # 0x3e61b0
2f8811  e8 4a 23 02 00                 call   0x31ab60
2f8816  48 8d 0d 93 d8 0e 00           lea    rcx,[rip+0xed893]        # 0x3e60b0
2f881d  e8 3e 23 02 00                 call   0x31ab60
2f8822  48 8d 0d c7 d8 0e 00           lea    rcx,[rip+0xed8c7]        # 0x3e60f0
2f8829  e8 32 23 02 00                 call   0x31ab60
2f882e  48 8d 0d fb d8 0e 00           lea    rcx,[rip+0xed8fb]        # 0x3e6130
2f8835  e8 26 23 02 00                 call   0x31ab60
2f883a  48 8d 0d 8f ff f1 ff           lea    rcx,[rip+0xfffffffffff1ff8f]        # 0x2187d0
2f8841  e8 6a 24 02 00                 call   0x31acb0
2f8846  48 8d 0d 2b 01 f2 ff           lea    rcx,[rip+0xfffffffffff2012b]        # 0x218978
2f884d  e8 12 24 02 00                 call   0x31ac64
2f8852  48 8d 0d 37 01 f2 ff           lea    rcx,[rip+0xfffffffffff20137]        # 0x218990
2f8859  e8 06 24 02 00                 call   0x31ac64
2f885e  48 8d 0d ab d7 0e 00           lea    rcx,[rip+0xed7ab]        # 0x3e6010
2f8865  e8 26 22 02 00                 call   0x31aa90
2f886a  0f 57 c0                       xorps  xmm0,xmm0
2f886d  40 88 35 fd d5 0e 00           mov    BYTE PTR [rip+0xed5fd],sil        # 0x3e5e71
2f8874  0f 57 c9                       xorps  xmm1,xmm1
2f8877  40 88 35 f2 d5 0e 00           mov    BYTE PTR [rip+0xed5f2],sil        # 0x3e5e70
2f887e  f3 0f 7f 05 3a d6 0e 00        movdqu XMMWORD PTR [rip+0xed63a],xmm0        # 0x3e5ec0
2f8886  89 35 10 d8 0e 00              mov    DWORD PTR [rip+0xed810],esi        # 0x3e609c
2f888c  f3 0f 7f 0d 3c d6 0e 00        movdqu XMMWORD PTR [rip+0xed63c],xmm1        # 0x3e5ed0
2f8894  48 89 35 e5 d5 0e 00           mov    QWORD PTR [rip+0xed5e5],rsi        # 0x3e5e80
2f889b  f3 0f 7f 05 3d d6 0e 00        movdqu XMMWORD PTR [rip+0xed63d],xmm0        # 0x3e5ee0
2f88a3  48 89 35 0e ea 0d 00           mov    QWORD PTR [rip+0xdea0e],rsi        # 0x3d72b8
2f88aa  48 89 35 0f ea 0d 00           mov    QWORD PTR [rip+0xdea0f],rsi        # 0x3d72c0
2f88b1  48 89 35 90 b9 0e 00           mov    QWORD PTR [rip+0xeb990],rsi        # 0x3e4248
2f88b8  48 89 35 09 ea 0d 00           mov    QWORD PTR [rip+0xdea09],rsi        # 0x3d72c8
2f88bf  48 89 35 3a d6 0e 00           mov    QWORD PTR [rip+0xed63a],rsi        # 0x3e5f00
2f88c6  48 89 35 3b d6 0e 00           mov    QWORD PTR [rip+0xed63b],rsi        # 0x3e5f08
2f88cd  48 89 35 1c d6 0e 00           mov    QWORD PTR [rip+0xed61c],rsi        # 0x3e5ef0
2f88d4  33 d2                          xor    edx,edx
2f88d6  48 8d 0d fb 6e 0f 00           lea    rcx,[rip+0xf6efb]        # 0x3ef7d8 ; CONFIG K.MenuHotkey value(+0x48)
2f88dd  e8 02 01 ff ff                 call   0x2e89e4
2f88e2  84 c0                          test   al,al
2f88e4  74 0e                          je     0x2f88f4
2f88e6  40 38 35 2b ff f1 ff           cmp    BYTE PTR [rip+0xfffffffffff1ff2b],sil        # 0x218818
2f88ed  0f 94 05 24 ff f1 ff           sete   BYTE PTR [rip+0xfffffffffff1ff24]        # 0x218818
2f88f4  e8 53 85 fe ff                 call   0x2e0e4c
2f88f9  84 c0                          test   al,al
2f88fb  0f 84 d0 00 00 00              je     0x2f89d1
2f8901  48 8d 0d e8 d8 0e 00           lea    rcx,[rip+0xed8e8]        # 0x3e61f0
2f8908  40 88 35 41 b9 0e 00           mov    BYTE PTR [rip+0xeb941],sil        # 0x3e4250
2f890f  e8 4c 22 02 00                 call   0x31ab60
2f8914  48 8d 0d 55 d8 0e 00           lea    rcx,[rip+0xed855]        # 0x3e6170
2f891b  e8 40 22 02 00                 call   0x31ab60
2f8920  48 8d 0d 89 d8 0e 00           lea    rcx,[rip+0xed889]        # 0x3e61b0
2f8927  e8 34 22 02 00                 call   0x31ab60
2f892c  48 8d 0d ed fe f1 ff           lea    rcx,[rip+0xfffffffffff1feed]        # 0x218820
2f8933  e8 2c 23 02 00                 call   0x31ac64
2f8938  48 8d 0d 71 d7 0e 00           lea    rcx,[rip+0xed771]        # 0x3e60b0
2f893f  e8 1c 22 02 00                 call   0x31ab60
2f8944  48 8d 0d a5 d7 0e 00           lea    rcx,[rip+0xed7a5]        # 0x3e60f0
2f894b  e8 10 22 02 00                 call   0x31ab60
2f8950  48 8d 0d d9 d7 0e 00           lea    rcx,[rip+0xed7d9]        # 0x3e6130
2f8957  e8 04 22 02 00                 call   0x31ab60
2f895c  48 8d 0d 6d fe f1 ff           lea    rcx,[rip+0xfffffffffff1fe6d]        # 0x2187d0
2f8963  e8 48 23 02 00                 call   0x31acb0
2f8968  48 8d 0d 09 00 f2 ff           lea    rcx,[rip+0xfffffffffff20009]        # 0x218978
2f896f  e8 f0 22 02 00                 call   0x31ac64
2f8974  48 8d 0d 15 00 f2 ff           lea    rcx,[rip+0xfffffffffff20015]        # 0x218990
2f897b  e8 e4 22 02 00                 call   0x31ac64
2f8980  48 8d 0d 89 d6 0e 00           lea    rcx,[rip+0xed689]        # 0x3e6010
2f8987  e8 04 21 02 00                 call   0x31aa90
2f898c  89 35 0a d7 0e 00              mov    DWORD PTR [rip+0xed70a],esi        # 0x3e609c
2f8992  48 89 35 e7 d4 0e 00           mov    QWORD PTR [rip+0xed4e7],rsi        # 0x3e5e80
2f8999  40 88 35 d1 d4 0e 00           mov    BYTE PTR [rip+0xed4d1],sil        # 0x3e5e71
2f89a0  40 88 35 c9 d4 0e 00           mov    BYTE PTR [rip+0xed4c9],sil        # 0x3e5e70
2f89a7  48 89 35 0a e9 0d 00           mov    QWORD PTR [rip+0xde90a],rsi        # 0x3d72b8
2f89ae  48 89 35 0b e9 0d 00           mov    QWORD PTR [rip+0xde90b],rsi        # 0x3d72c0
2f89b5  48 89 35 8c b8 0e 00           mov    QWORD PTR [rip+0xeb88c],rsi        # 0x3e4248
2f89bc  48 89 35 05 e9 0d 00           mov    QWORD PTR [rip+0xde905],rsi        # 0x3d72c8
2f89c3  48 89 35 36 d5 0e 00           mov    QWORD PTR [rip+0xed536],rsi        # 0x3e5f00
2f89ca  48 89 35 37 d5 0e 00           mov    QWORD PTR [rip+0xed537],rsi        # 0x3e5f08
2f89d1  e8 76 84 fe ff                 call   0x2e0e4c
2f89d6  84 c0                          test   al,al
2f89d8  0f 85 bc 03 00 00              jne    0x2f8d9a
2f89de  e8 41 cf 01 00                 call   0x315924
2f89e3  48 8b c8                       mov    rcx,rax
2f89e6  e8 1d 25 fd ff                 call   0x2caf08
2f89eb  84 c0                          test   al,al
2f89ed  0f 84 a7 03 00 00              je     0x2f8d9a
2f89f3  40 38 35 77 d4 0e 00           cmp    BYTE PTR [rip+0xed477],sil        # 0x3e5e71
2f89fa  75 70                          jne    0x2f8a6c
2f89fc  40 38 35 45 10 0f 00           cmp    BYTE PTR [rip+0xf1045],sil        # 0x3e9a48 ; CONFIG Bools.FovChanger value(+0x48)
2f8a03  8a 15 8f 10 0f 00              mov    dl,BYTE PTR [rip+0xf108f]        # 0x3e9a98 ; CONFIG Bools.Zoom value(+0x48)
2f8a09  75 04                          jne    0x2f8a0f
2f8a0b  84 d2                          test   dl,dl
2f8a0d  74 5d                          je     0x2f8a6c
2f8a0f  48 8b 05 ea e4 0d 00           mov    rax,QWORD PTR [rip+0xde4ea]        # 0x3d6f00
2f8a16  4c 8b 80 a8 e0 0e 0f           mov    r8,QWORD PTR [rax+0xf0ee0a8]
2f8a1d  49 8b c8                       mov    rcx,r8
2f8a20  e8 e3 24 fd ff                 call   0x2caf08
2f8a25  84 c0                          test   al,al
2f8a27  74 43                          je     0x2f8a6c
2f8a29  49 8b 98 b8 00 00 00           mov    rbx,QWORD PTR [r8+0xb8]
2f8a30  48 8b cb                       mov    rcx,rbx
2f8a33  e8 d0 24 fd ff                 call   0x2caf08
2f8a38  84 c0                          test   al,al
2f8a3a  74 30                          je     0x2f8a6c
2f8a3c  f3 0f 10 35 04 4e 0f 00        movss  xmm6,DWORD PTR [rip+0xf4e04]        # 0x3ed848 ; CONFIG F.FovValue value(+0x48)
2f8a44  84 d2                          test   dl,dl
2f8a46  74 19                          je     0x2f8a61
2f8a48  8b 0d 6a 6c 0f 00              mov    ecx,DWORD PTR [rip+0xf6c6a]        # 0x3ef6b8 ; CONFIG K.zoomvirtualkey value(+0x48)
2f8a4e  b2 01                          mov    dl,0x1
2f8a50  e8 f7 d3 fe ff                 call   0x2e5e4c
2f8a55  84 c0                          test   al,al
2f8a57  74 08                          je     0x2f8a61
2f8a59  f3 0f 10 35 37 4e 0f 00        movss  xmm6,DWORD PTR [rip+0xf4e37]        # 0x3ed898 ; CONFIG F.ZoomValue value(+0x48)
2f8a61  0f 28 ce                       movaps xmm1,xmm6
2f8a64  48 8b cb                       mov    rcx,rbx
2f8a67  e8 b0 f1 01 00                 call   0x317c1c
2f8a6c  e8 2b 50 fe ff                 call   0x2dda9c
2f8a71  40 38 35 d0 14 0f 00           cmp    BYTE PTR [rip+0xf14d0],sil        # 0x3e9f48 ; CONFIG Bools.VisCheck value(+0x48)
2f8a78  48 8b d8                       mov    rbx,rax
2f8a7b  75 24                          jne    0x2f8aa1
2f8a7d  40 38 35 14 e8 0e 00           cmp    BYTE PTR [rip+0xee814],sil        # 0x3e7298 ; CONFIG Bools.IsOutside value(+0x48)
2f8a84  75 1b                          jne    0x2f8aa1
2f8a86  40 38 35 9b f3 0d 00           cmp    BYTE PTR [rip+0xdf39b],sil        # 0x3d7e28 ; CONFIG Bools.autoenemy value(+0x48)
2f8a8d  75 12                          jne    0x2f8aa1
2f8a8f  40 38 35 f2 f2 0d 00           cmp    BYTE PTR [rip+0xdf2f2],sil        # 0x3d7d88 ; CONFIG Bools.AimbotVischeck value(+0x48)
2f8a96  75 09                          jne    0x2f8aa1
2f8a98  40 38 35 a9 0a 0f 00           cmp    BYTE PTR [rip+0xf0aa9],sil        # 0x3e9548 ; CONFIG Bools.lookingat value(+0x48)
2f8a9f  74 20                          je     0x2f8ac1
2f8aa1  f3 0f 10 0d e3 a5 f9 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff9a5e3]        # 0x29308c ; f32=0.01
2f8aa9  48 8d 0d 58 8d 0f 00           lea    rcx,[rip+0xf8d58]        # 0x3f1808
2f8ab0  e8 c7 d0 fe ff                 call   0x2e5b7c
2f8ab5  84 c0                          test   al,al
2f8ab7  74 08                          je     0x2f8ac1
2f8ab9  48 8b cb                       mov    rcx,rbx
2f8abc  e8 1f fa 06 00                 call   0x3684e0
2f8ac1  40 84 ff                       test   dil,dil
2f8ac4  74 40                          je     0x2f8b06
2f8ac6  e8 51 48 06 00                 call   0x35d31c
2f8acb  48 8b c8                       mov    rcx,rax
2f8ace  48 8b d3                       mov    rdx,rbx
2f8ad1  e8 6a da 01 00                 call   0x316540
2f8ad6  e8 41 48 06 00                 call   0x35d31c
2f8adb  48 8b c8                       mov    rcx,rax
2f8ade  48 8b d3                       mov    rdx,rbx
2f8ae1  e8 3e 05 02 00                 call   0x319024
2f8ae6  e8 31 48 06 00                 call   0x35d31c
2f8aeb  48 8b c8                       mov    rcx,rax
2f8aee  48 8b d3                       mov    rdx,rbx
2f8af1  e8 3e 04 02 00                 call   0x318f34
2f8af6  e8 21 48 06 00                 call   0x35d31c
2f8afb  48 8b c8                       mov    rcx,rax
2f8afe  48 8b d3                       mov    rdx,rbx
2f8b01  e8 82 0e 00 00                 call   0x2f9988
2f8b06  40 38 35 ff 8c 0f 00           cmp    BYTE PTR [rip+0xf8cff],sil        # 0x3f180c
2f8b0d  75 79                          jne    0x2f8b88
2f8b0f  e8 08 48 06 00                 call   0x35d31c
2f8b14  48 8b c8                       mov    rcx,rax
2f8b17  e8 d8 41 06 00                 call   0x35ccf4
2f8b1c  e8 17 a0 0b 00                 call   0x3b2b38
2f8b21  48 8d 0d 08 fe f1 ff           lea    rcx,[rip+0xfffffffffff1fe08]        # 0x218930
2f8b28  e8 37 21 02 00                 call   0x31ac64
2f8b2d  48 8d 0d b4 fd f1 ff           lea    rcx,[rip+0xfffffffffff1fdb4]        # 0x2188e8
2f8b34  e8 2b 21 02 00                 call   0x31ac64
2f8b39  48 8d 0d d8 fd f1 ff           lea    rcx,[rip+0xfffffffffff1fdd8]        # 0x218918
2f8b40  e8 1f 21 02 00                 call   0x31ac64
2f8b45  48 8d 0d b4 fd f1 ff           lea    rcx,[rip+0xfffffffffff1fdb4]        # 0x218900
2f8b4c  e8 13 21 02 00                 call   0x31ac64
2f8b51  48 8d 0d 78 fd f1 ff           lea    rcx,[rip+0xfffffffffff1fd78]        # 0x2188d0
2f8b58  e8 07 21 02 00                 call   0x31ac64
2f8b5d  48 8d 0d 54 fd f1 ff           lea    rcx,[rip+0xfffffffffff1fd54]        # 0x2188b8
2f8b64  e8 fb 20 02 00                 call   0x31ac64
2f8b69  48 8d 0d 30 fd f1 ff           lea    rcx,[rip+0xfffffffffff1fd30]        # 0x2188a0
2f8b70  e8 ef 20 02 00                 call   0x31ac64
2f8b75  48 8d 0d cc fd f1 ff           lea    rcx,[rip+0xfffffffffff1fdcc]        # 0x218948
2f8b7c  e8 e3 20 02 00                 call   0x31ac64
2f8b81  c6 05 84 8c 0f 00 01           mov    BYTE PTR [rip+0xf8c84],0x1        # 0x3f180c
2f8b88  e8 1f 9b 09 00                 call   0x3926ac
2f8b8d  48 8b c8                       mov    rcx,rax
2f8b90  48 8b d8                       mov    rbx,rax
2f8b93  e8 54 a3 0b 00                 call   0x3b2eec
2f8b98  e8 07 f2 09 00                 call   0x397da4
2f8b9d  40 38 35 f0 02 f5 ff           cmp    BYTE PTR [rip+0xfffffffffff502f0],sil        # 0x248e94
2f8ba4  74 6d                          je     0x2f8c13
2f8ba6  f3 0f 10 0d 62 8c 0f 00        movss  xmm1,DWORD PTR [rip+0xf8c62]        # 0x3f1810
2f8bae  f3 0f 58 4b 10                 addss  xmm1,DWORD PTR [rbx+0x10]
2f8bb3  f3 0f 10 05 c5 a5 f9 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff9a5c5]        # 0x293180 ; f32=5
2f8bbb  0f 2f c1                       comiss xmm0,xmm1
2f8bbe  f3 0f 11 0d 4a 8c 0f 00        movss  DWORD PTR [rip+0xf8c4a],xmm1        # 0x3f1810
2f8bc6  72 3a                          jb     0x2f8c02
2f8bc8  f3 0f 10 05 a8 a5 f9 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff9a5a8]        # 0x293178 ; f32=4
2f8bd0  0f 2f c8                       comiss xmm1,xmm0
2f8bd3  76 12                          jbe    0x2f8be7
2f8bd5  f3 0f 5c c8                    subss  xmm1,xmm0
2f8bd9  f3 0f 10 05 73 46 f9 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff94673]        # 0x28d254 ; f32=1
2f8be1  f3 0f 5c c1                    subss  xmm0,xmm1
2f8be5  eb 08                          jmp    0x2f8bef
2f8be7  f3 0f 10 05 65 46 f9 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff94665]        # 0x28d254 ; f32=1
2f8bef  0f 28 c8                       movaps xmm1,xmm0
2f8bf2  48 8b cb                       mov    rcx,rbx
2f8bf5  e8 ca 0a 01 00                 call   0x3096c4
2f8bfa  8a 05 94 02 f5 ff              mov    al,BYTE PTR [rip+0xfffffffffff50294]        # 0x248e94
2f8c00  eb 09                          jmp    0x2f8c0b
2f8c02  40 8a c6                       mov    al,sil
2f8c05  88 05 89 02 f5 ff              mov    BYTE PTR [rip+0xfffffffffff50289],al        # 0x248e94
2f8c0b  84 c0                          test   al,al
2f8c0d  0f 85 6b 01 00 00              jne    0x2f8d7e
2f8c13  40 38 35 fa 8b 0f 00           cmp    BYTE PTR [rip+0xf8bfa],sil        # 0x3f1814
2f8c1a  0f 85 0b 01 00 00              jne    0x2f8d2b
2f8c20  48 8d 4d 07                    lea    rcx,[rbp+0x7]
2f8c24  e8 47 2f fe ff                 call   0x2dbb70
2f8c29  48 8d 4d e7                    lea    rcx,[rbp-0x19]
2f8c2d  e8 ce 2e fe ff                 call   0x2dbb00
2f8c32  48 8d 4d e7                    lea    rcx,[rbp-0x19]
2f8c36  e8 b1 4b fd ff                 call   0x2cd7ec
2f8c3b  48 8b c8                       mov    rcx,rax
2f8c3e  e8 a1 cf fd ff                 call   0x2d5be4
2f8c43  84 c0                          test   al,al
2f8c45  74 2a                          je     0x2f8c71
2f8c47  e8 94 2f fe ff                 call   0x2dbbe0
2f8c4c  48 8d 55 a7                    lea    rdx,[rbp-0x59]
2f8c50  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
2f8c54  e8 1f 97 ff ff                 call   0x2f2378 ; STRING getter=0x2f2378 Loaded Samsites
2f8c59  48 8b c8                       mov    rcx,rax
2f8c5c  e8 ff 44 fe ff                 call   0x2dd160
2f8c61  48 8b d0                       mov    rdx,rax
2f8c64  48 8d 4d c7                    lea    rcx,[rbp-0x39]
2f8c68  e8 5f 36 fd ff                 call   0x2cc2cc
2f8c6d  33 d2                          xor    edx,edx
2f8c6f  eb 26                          jmp    0x2f8c97
2f8c71  48 8d 55 a7                    lea    rdx,[rbp-0x59]
2f8c75  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
2f8c79  e8 72 a9 ff ff                 call   0x2f35f0 ; STRING getter=0x2f35f0 Failed to find samsite config
2f8c7e  48 8b c8                       mov    rcx,rax
2f8c81  e8 76 79 02 00                 call   0x3205fc
2f8c86  48 8b d0                       mov    rdx,rax
2f8c89  48 8d 4d c7                    lea    rcx,[rbp-0x39]
2f8c8d  e8 3a 36 fd ff                 call   0x2cc2cc
2f8c92  ba 01 00 00 00                 mov    edx,0x1
2f8c97  45 33 c0                       xor    r8d,r8d
2f8c9a  48 8b c8                       mov    rcx,rax
2f8c9d  e8 76 6c 08 00                 call   0x37f918
2f8ca2  48 8d 4d 07                    lea    rcx,[rbp+0x7]
2f8ca6  e8 41 4b fd ff                 call   0x2cd7ec
2f8cab  48 8b c8                       mov    rcx,rax
2f8cae  e8 31 cf fd ff                 call   0x2d5be4
2f8cb3  84 c0                          test   al,al
2f8cb5  74 2a                          je     0x2f8ce1
2f8cb7  e8 04 32 fe ff                 call   0x2dbec0
2f8cbc  48 8d 55 a7                    lea    rdx,[rbp-0x59]
2f8cc0  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
2f8cc4  e8 5b b6 ff ff                 call   0x2f4324 ; STRING getter=0x2f4324 Loaded Stashes
2f8cc9  48 8b c8                       mov    rcx,rax
2f8ccc  e8 9b f9 fd ff                 call   0x2d866c
2f8cd1  48 8b d0                       mov    rdx,rax
2f8cd4  48 8d 4d c7                    lea    rcx,[rbp-0x39]
2f8cd8  e8 ef 35 fd ff                 call   0x2cc2cc
2f8cdd  33 d2                          xor    edx,edx
2f8cdf  eb 26                          jmp    0x2f8d07
2f8ce1  48 8d 55 a7                    lea    rdx,[rbp-0x59]
2f8ce5  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
2f8ce9  e8 5a bc ff ff                 call   0x2f4948 ; STRING getter=0x2f4948 Failed to find stash config
2f8cee  48 8b c8                       mov    rcx,rax
2f8cf1  e8 8e 78 02 00                 call   0x320584
2f8cf6  48 8b d0                       mov    rdx,rax
2f8cf9  48 8d 4d c7                    lea    rcx,[rbp-0x39]
2f8cfd  e8 ca 35 fd ff                 call   0x2cc2cc
2f8d02  ba 01 00 00 00                 mov    edx,0x1
2f8d07  45 33 c0                       xor    r8d,r8d
2f8d0a  48 8b c8                       mov    rcx,rax
2f8d0d  e8 06 6c 08 00                 call   0x37f918
2f8d12  48 8d 4d e7                    lea    rcx,[rbp-0x19]
2f8d16  c6 05 f7 8a 0f 00 01           mov    BYTE PTR [rip+0xf8af7],0x1        # 0x3f1814
2f8d1d  e8 d2 37 fd ff                 call   0x2cc4f4
2f8d22  48 8d 4d 07                    lea    rcx,[rbp+0x7]
2f8d26  e8 c9 37 fd ff                 call   0x2cc4f4
2f8d2b  e8 ec 45 06 00                 call   0x35d31c
2f8d30  48 8b c8                       mov    rcx,rax
2f8d33  e8 a0 1d 06 00                 call   0x35aad8
2f8d38  e8 df 45 06 00                 call   0x35d31c
2f8d3d  48 8b c8                       mov    rcx,rax
2f8d40  e8 5f 0b 01 00                 call   0x3098a4
2f8d45  e8 d2 45 06 00                 call   0x35d31c
2f8d4a  48 8b c8                       mov    rcx,rax
2f8d4d  e8 da 29 00 00                 call   0x2fb72c
2f8d52  e8 31 6a 07 00                 call   0x36f788
2f8d57  e8 c0 45 06 00                 call   0x35d31c
2f8d5c  48 8b c8                       mov    rcx,rax
2f8d5f  e8 b4 3d 06 00                 call   0x35cb18
2f8d64  e8 b3 45 06 00                 call   0x35d31c
2f8d69  48 8b c8                       mov    rcx,rax
2f8d6c  e8 c7 e8 00 00                 call   0x307638
2f8d71  e8 a6 45 06 00                 call   0x35d31c
2f8d76  48 8b c8                       mov    rcx,rax
2f8d79  e8 2e 48 06 00                 call   0x35d5ac
2f8d7e  e8 11 7c 09 00                 call   0x390994
2f8d83  e8 64 7f 09 00                 call   0x390cec
2f8d88  e8 f7 ff 09 00                 call   0x398d84
2f8d8d  e8 2a 97 09 00                 call   0x3924bc
2f8d92  48 8b c8                       mov    rcx,rax
2f8d95  e8 8e a2 0b 00                 call   0x3b3028
2f8d9a  0f 28 b4 24 a0 00 00 00        movaps xmm6,XMMWORD PTR [rsp+0xa0]
2f8da2  48 81 c4 b8 00 00 00           add    rsp,0xb8
2f8da9  5f                             pop    rdi
2f8daa  5e                             pop    rsi
2f8dab  5b                             pop    rbx
2f8dac  5d                             pop    rbp
2f8dad  c3                             ret
