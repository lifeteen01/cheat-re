; pdata function 0x3b2b38..0x3b2ee9 unwind=0x3d55a8
3b2b38  48 8b c4                       mov    rax,rsp
3b2b3b  48 89 58 18                    mov    QWORD PTR [rax+0x18],rbx
3b2b3f  55                             push   rbp
3b2b40  56                             push   rsi
3b2b41  57                             push   rdi
3b2b42  48 8d 68 a1                    lea    rbp,[rax-0x5f]
3b2b46  48 81 ec f0 00 00 00           sub    rsp,0xf0
3b2b4d  0f 29 70 d8                    movaps XMMWORD PTR [rax-0x28],xmm6
3b2b51  e8 56 fb fd ff                 call   0x3926ac
3b2b56  48 8d 55 67                    lea    rdx,[rbp+0x67]
3b2b5a  48 8b d8                       mov    rbx,rax
3b2b5d  48 8d 4d 67                    lea    rcx,[rbp+0x67]
3b2b61  e8 4e e2 ff ff                 call   0x3b0db4 ; STRING getter=0x3b0db4 UI
3b2b66  48 8b c8                       mov    rcx,rax
3b2b69  e8 82 74 fc ff                 call   0x379ff0
3b2b6e  83 4b 04 0e                    or     DWORD PTR [rbx+0x4],0xe
3b2b72  48 8d 55 97                    lea    rdx,[rbp-0x69]
3b2b76  66 0f 6f 05 52 ac ef ff        movdqa xmm0,XMMWORD PTR [rip+0xffffffffffefac52]        # 0x2ad7d0
3b2b7e  48 89 83 88 00 00 00           mov    QWORD PTR [rbx+0x88],rax
3b2b85  48 c7 83 b8 00 00 00 00 00 00 00 mov    QWORD PTR [rbx+0xb8],0x0
3b2b90  48 8d 1d 89 a5 05 00           lea    rbx,[rip+0x5a589]        # 0x40d120
3b2b97  48 8b cb                       mov    rcx,rbx
3b2b9a  f3 0f 7f 45 97                 movdqu XMMWORD PTR [rbp-0x69],xmm0
3b2b9f  e8 00 86 f7 ff                 call   0x32b1a4
3b2ba4  66 0f 6f 05 34 ac ef ff        movdqa xmm0,XMMWORD PTR [rip+0xffffffffffefac34]        # 0x2ad7e0
3b2bac  48 8d 55 97                    lea    rdx,[rbp-0x69]
3b2bb0  48 8b cb                       mov    rcx,rbx
3b2bb3  f3 0f 7f 45 97                 movdqu XMMWORD PTR [rbp-0x69],xmm0
3b2bb8  e8 e7 85 f7 ff                 call   0x32b1a4
3b2bbd  66 0f 6f 05 fb ab ef ff        movdqa xmm0,XMMWORD PTR [rip+0xffffffffffefabfb]        # 0x2ad7c0
3b2bc5  48 8d 55 97                    lea    rdx,[rbp-0x69]
3b2bc9  48 8b cb                       mov    rcx,rbx
3b2bcc  f3 0f 7f 45 97                 movdqu XMMWORD PTR [rbp-0x69],xmm0
3b2bd1  e8 ce 85 f7 ff                 call   0x32b1a4
3b2bd6  48 8d 55 87                    lea    rdx,[rbp-0x79]
3b2bda  48 8d 4d 67                    lea    rcx,[rbp+0x67]
3b2bde  e8 c5 e7 ff ff                 call   0x3b13a8 ; STRING getter=0x3b13a8 _Texture
3b2be3  48 8b c8                       mov    rcx,rax
3b2be6  e8 ad 2b fc ff                 call   0x375798
3b2beb  48 8b c8                       mov    rcx,rax
3b2bee  e8 e9 b9 f1 ff                 call   0x2ce5dc
3b2bf3  48 8b c8                       mov    rcx,rax
3b2bf6  e8 f9 ca ff ff                 call   0x3af6f4
3b2bfb  89 05 4f a5 05 00              mov    DWORD PTR [rip+0x5a54f],eax        # 0x40d150
3b2c01  e8 6e 09 00 00                 call   0x3b3574
3b2c06  48 8b c8                       mov    rcx,rax
3b2c09  48 89 05 48 a5 05 00           mov    QWORD PTR [rip+0x5a548],rax        # 0x40d158
3b2c10  e8 6b d9 ff ff                 call   0x3b0580
3b2c15  48 8b 0d 3c a5 05 00           mov    rcx,QWORD PTR [rip+0x5a53c]        # 0x40d158
3b2c1c  48 8d 15 dd ae 05 00           lea    rdx,[rip+0x5aedd]        # 0x40db00
3b2c23  e8 70 0b 00 00                 call   0x3b3798
3b2c28  48 8d 55 87                    lea    rdx,[rbp-0x79]
3b2c2c  48 89 05 25 a5 05 00           mov    QWORD PTR [rip+0x5a525],rax        # 0x40d158
3b2c33  48 8d 4d 67                    lea    rcx,[rbp+0x67]
3b2c37  e8 40 eb ff ff                 call   0x3b177c ; STRING getter=0x3b177c UnityEngine
3b2c3c  48 8b c8                       mov    rcx,rax
3b2c3f  e8 1c 2c fc ff                 call   0x375860
3b2c44  48 8d 55 6f                    lea    rdx,[rbp+0x6f]
3b2c48  48 8b d8                       mov    rbx,rax
3b2c4b  48 8d 4d 67                    lea    rcx,[rbp+0x67]
3b2c4f  e8 18 ea ff ff                 call   0x3b166c ; STRING getter=0x3b166c Shader
3b2c54  48 8b c8                       mov    rcx,rax
3b2c57  e8 14 2b fc ff                 call   0x375770
3b2c5c  48 8b c8                       mov    rcx,rax
3b2c5f  48 8b d3                       mov    rdx,rbx
3b2c62  e8 75 9f f1 ff                 call   0x2ccbdc
3b2c67  e8 b8 08 00 00                 call   0x3b3524
3b2c6c  48 8b c8                       mov    rcx,rax
3b2c6f  48 89 05 0a a5 05 00           mov    QWORD PTR [rip+0x5a50a],rax        # 0x40d180
3b2c76  e8 85 d8 ff ff                 call   0x3b0500
3b2c7b  48 8b 0d fe a4 05 00           mov    rcx,QWORD PTR [rip+0x5a4fe]        # 0x40d180
3b2c82  48 8d 15 7f ae 05 00           lea    rdx,[rip+0x5ae7f]        # 0x40db08
3b2c89  e8 0a 0b 00 00                 call   0x3b3798
3b2c8e  48 8d 55 87                    lea    rdx,[rbp-0x79]
3b2c92  48 89 05 e7 a4 05 00           mov    QWORD PTR [rip+0x5a4e7],rax        # 0x40d180
3b2c99  48 8d 4d 67                    lea    rcx,[rbp+0x67]
3b2c9d  e8 b2 eb ff ff                 call   0x3b1854 ; STRING getter=0x3b1854 System.GUI
3b2ca2  48 8b c8                       mov    rcx,rax
3b2ca5  e8 52 8a fc ff                 call   0x37b6fc
3b2caa  48 8b c8                       mov    rcx,rax
3b2cad  e8 2a b9 f1 ff                 call   0x2ce5dc
3b2cb2  48 8b 0d c7 a4 05 00           mov    rcx,QWORD PTR [rip+0x5a4c7]        # 0x40d180
3b2cb9  48 8b d0                       mov    rdx,rax
3b2cbc  e8 1f db ff ff                 call   0x3b07e0
3b2cc1  e8 b6 06 00 00                 call   0x3b337c
3b2cc6  e8 25 dd f2 ff                 call   0x2e09f0
3b2ccb  66 0f 6e f0                    movd   xmm6,eax
3b2ccf  0f 5b f6                       cvtdq2ps xmm6,xmm6
3b2cd2  e8 19 de f2 ff                 call   0x2e0af0
3b2cd7  0f 57 d2                       xorps  xmm2,xmm2
3b2cda  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
3b2ce0  0f 57 c9                       xorps  xmm1,xmm1
3b2ce3  48 8d 4d b3                    lea    rcx,[rbp-0x4d]
3b2ce7  66 0f 6e d8                    movd   xmm3,eax
3b2ceb  0f 5b db                       cvtdq2ps xmm3,xmm3
3b2cee  e8 5d 96 f1 ff                 call   0x2cc350
3b2cf3  48 8d 55 c3                    lea    rdx,[rbp-0x3d]
3b2cf7  48 8d 4d 67                    lea    rcx,[rbp+0x67]
3b2cfb  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
3b2cfe  f3 0f 7f 05 a2 45 02 00        movdqu XMMWORD PTR [rip+0x245a2],xmm0        # 0x3d72a8
3b2d06  e8 9d eb ff ff                 call   0x3b18a8 ; STRING getter=0x3b18a8 UnityEngine
3b2d0b  48 8b c8                       mov    rcx,rax
3b2d0e  e8 4d 2b fc ff                 call   0x375860
3b2d13  48 8d 55 87                    lea    rdx,[rbp-0x79]
3b2d17  48 8b d8                       mov    rbx,rax
3b2d1a  48 8d 4d 67                    lea    rcx,[rbp+0x67]
3b2d1e  e8 69 eb ff ff                 call   0x3b188c ; STRING getter=0x3b188c GameObject
3b2d23  48 8b c8                       mov    rcx,rax
3b2d26  e8 d1 89 fc ff                 call   0x37b6fc
3b2d2b  48 8b c8                       mov    rcx,rax
3b2d2e  48 8b d3                       mov    rdx,rbx
3b2d31  e8 a6 9e f1 ff                 call   0x2ccbdc
3b2d36  48 8d 55 a7                    lea    rdx,[rbp-0x59]
3b2d3a  48 8b f0                       mov    rsi,rax
3b2d3d  48 8d 4d 67                    lea    rcx,[rbp+0x67]
3b2d41  e8 a2 eb ff ff                 call   0x3b18e8 ; STRING getter=0x3b18e8 UnityEngine
3b2d46  48 8b c8                       mov    rcx,rax
3b2d49  e8 12 2b fc ff                 call   0x375860
3b2d4e  48 8d 55 b3                    lea    rdx,[rbp-0x4d]
3b2d52  48 8b d8                       mov    rbx,rax
3b2d55  48 8d 4d 67                    lea    rcx,[rbp+0x67]
3b2d59  e8 66 eb ff ff                 call   0x3b18c4 ; STRING getter=0x3b18c4 RenderTexture
3b2d5e  48 8b c8                       mov    rcx,rax
3b2d61  e8 4a 2b fc ff                 call   0x3758b0
3b2d66  48 8b c8                       mov    rcx,rax
3b2d69  48 8b d3                       mov    rdx,rbx
3b2d6c  e8 6b 9e f1 ff                 call   0x2ccbdc
3b2d71  48 8d 55 cf                    lea    rdx,[rbp-0x31]
3b2d75  48 8b f8                       mov    rdi,rax
3b2d78  48 8d 4d 67                    lea    rcx,[rbp+0x67]
3b2d7c  e8 77 dd ff ff                 call   0x3b0af8 ; STRING getter=0x3b0af8 Assets/AssetBundleData/SystemUI.prefab
3b2d81  48 8b c8                       mov    rcx,rax
3b2d84  e8 4f 1b 00 00                 call   0x3b48d8
3b2d89  48 8b 0d 68 31 03 00           mov    rcx,QWORD PTR [rip+0x33168]        # 0x3e5ef8
3b2d90  4c 8b c6                       mov    r8,rsi
3b2d93  48 8b d0                       mov    rdx,rax
3b2d96  e8 b1 c7 ff ff                 call   0x3af54c
3b2d9b  48 8d 55 f6                    lea    rdx,[rbp-0xa]
3b2d9f  48 8b d8                       mov    rbx,rax
3b2da2  48 8d 4d 67                    lea    rcx,[rbp+0x67]
3b2da6  e8 75 dd ff ff                 call   0x3b0b20 ; STRING getter=0x3b0b20 Assets/AssetBundleData/RenderTexture.renderTexture
3b2dab  48 8b c8                       mov    rcx,rax
3b2dae  e8 75 1b 00 00                 call   0x3b4928
3b2db3  48 8b 0d 3e 31 03 00           mov    rcx,QWORD PTR [rip+0x3313e]        # 0x3e5ef8
3b2dba  4c 8b c7                       mov    r8,rdi
3b2dbd  48 8b d0                       mov    rdx,rax
3b2dc0  e8 5f c6 ff ff                 call   0x3af424
3b2dc5  48 8b cb                       mov    rcx,rbx
3b2dc8  48 89 05 a9 a3 05 00           mov    QWORD PTR [rip+0x5a3a9],rax        # 0x40d178
3b2dcf  e8 d0 c5 ff ff                 call   0x3af3a4
3b2dd4  48 8b c8                       mov    rcx,rax
3b2dd7  e8 88 c4 ff ff                 call   0x3af264
3b2ddc  48 8d 55 87                    lea    rdx,[rbp-0x79]
3b2de0  48 8d 4d 67                    lea    rcx,[rbp+0x67]
3b2de4  e8 67 dd ff ff                 call   0x3b0b50 ; STRING getter=0x3b0b50 RawImageUI
3b2de9  48 8b c8                       mov    rcx,rax
3b2dec  e8 0b 89 fc ff                 call   0x37b6fc
3b2df1  48 8b c8                       mov    rcx,rax
3b2df4  e8 e3 b7 f1 ff                 call   0x2ce5dc
3b2df9  48 8b c8                       mov    rcx,rax
3b2dfc  e8 37 03 fc ff                 call   0x373138
3b2e01  48 8d 55 a7                    lea    rdx,[rbp-0x59]
3b2e05  48 8b f8                       mov    rdi,rax
3b2e08  48 8d 4d 67                    lea    rcx,[rbp+0x67]
3b2e0c  e8 7f dd ff ff                 call   0x3b0b90 ; STRING getter=0x3b0b90 UnityEngine
3b2e11  48 8b c8                       mov    rcx,rax
3b2e14  e8 47 2a fc ff                 call   0x375860
3b2e19  48 8b d8                       mov    rbx,rax
3b2e1c  48 8d 55 b3                    lea    rdx,[rbp-0x4d]
3b2e20  48 8d 4d 67                    lea    rcx,[rbp+0x67]
3b2e24  e8 43 dd ff ff                 call   0x3b0b6c ; STRING getter=0x3b0b6c RectTransform
3b2e29  48 8b c8                       mov    rcx,rax
3b2e2c  e8 7f 2a fc ff                 call   0x3758b0
3b2e31  48 8b d0                       mov    rdx,rax
3b2e34  4c 8b c3                       mov    r8,rbx
3b2e37  48 8b cf                       mov    rcx,rdi
3b2e3a  e8 39 05 fc ff                 call   0x373378
3b2e3f  48 8d 55 87                    lea    rdx,[rbp-0x79]
3b2e43  48 89 05 1e a3 05 00           mov    QWORD PTR [rip+0x5a31e],rax        # 0x40d168
3b2e4a  48 8d 4d 67                    lea    rcx,[rbp+0x67]
3b2e4e  e8 59 dd ff ff                 call   0x3b0bac ; STRING getter=0x3b0bac CameraUI
3b2e53  48 8b c8                       mov    rcx,rax
3b2e56  e8 3d 29 fc ff                 call   0x375798
3b2e5b  48 8b c8                       mov    rcx,rax
3b2e5e  e8 79 b7 f1 ff                 call   0x2ce5dc
3b2e63  48 8b c8                       mov    rcx,rax
3b2e66  e8 cd 02 fc ff                 call   0x373138
3b2e6b  48 8d 55 a7                    lea    rdx,[rbp-0x59]
3b2e6f  48 8b f8                       mov    rdi,rax
3b2e72  48 8d 4d 67                    lea    rcx,[rbp+0x67]
3b2e76  e8 6d dd ff ff                 call   0x3b0be8 ; STRING getter=0x3b0be8 UnityEngine
3b2e7b  48 8b c8                       mov    rcx,rax
3b2e7e  e8 dd 29 fc ff                 call   0x375860
3b2e83  48 8d 55 6f                    lea    rdx,[rbp+0x6f]
3b2e87  48 8b d8                       mov    rbx,rax
3b2e8a  48 8d 4d 67                    lea    rcx,[rbp+0x67]
3b2e8e  e8 35 dd ff ff                 call   0x3b0bc8 ; STRING getter=0x3b0bc8 Camera
3b2e93  48 8b c8                       mov    rcx,rax
3b2e96  e8 d5 28 fc ff                 call   0x375770
3b2e9b  48 8b d0                       mov    rdx,rax
3b2e9e  4c 8b c3                       mov    r8,rbx
3b2ea1  48 8b cf                       mov    rcx,rdi
3b2ea4  e8 cf 04 fc ff                 call   0x373378
3b2ea9  33 d2                          xor    edx,edx
3b2eab  48 89 05 be a2 05 00           mov    QWORD PTR [rip+0x5a2be],rax        # 0x40d170
3b2eb2  48 8b cf                       mov    rcx,rdi
3b2eb5  e8 8a 08 fc ff                 call   0x373744
3b2eba  f3 0f 10 0d f2 43 02 00        movss  xmm1,DWORD PTR [rip+0x243f2]        # 0x3d72b4
3b2ec2  f3 0f 10 05 e6 43 02 00        movss  xmm0,DWORD PTR [rip+0x243e6]        # 0x3d72b0
3b2eca  e8 35 ea ff ff                 call   0x3b1904
3b2ecf  4c 8d 9c 24 f0 00 00 00        lea    r11,[rsp+0xf0]
3b2ed7  b0 01                          mov    al,0x1
3b2ed9  49 8b 5b 30                    mov    rbx,QWORD PTR [r11+0x30]
3b2edd  41 0f 28 73 f0                 movaps xmm6,XMMWORD PTR [r11-0x10]
3b2ee2  49 8b e3                       mov    rsp,r11
3b2ee5  5f                             pop    rdi
3b2ee6  5e                             pop    rsi
3b2ee7  5d                             pop    rbp
3b2ee8  c3                             ret
