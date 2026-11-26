; math independent pdata/next-pdata extent 2dff68..2e0080 unwind3d29bc
2dff68 mov    r11,rsp
2dff6b push   rbx
2dff6c push   rsi
2dff6d push   rdi
2dff6e sub    rsp,0x60
2dff72 mov    eax,DWORD PTR [rip+0xf7af8]        # 0x3d7a70
2dff78 movaps XMMWORD PTR [rsp+0x50],xmm6
2dff7d movaps xmm6,xmm0
2dff80 test   al,0x1
2dff82 jne    0x2e0034
2dff88 or     eax,0x1
2dff8b lea    rdx,[r11+0x10]
2dff8f lea    rcx,[r11+0x10]
2dff93 mov    DWORD PTR [rip+0xf7ad7],eax        # 0x3d7a70
2dff99 call   0x2cc730
2dff9e mov    rcx,rax
2dffa1 call   0x2cdca4
2dffa6 lea    rdx,[rsp+0x98]
2dffad 
2dffae mov    rsi,rax
2dffb1 lea    rcx,[rsp+0x90]
2dffb8 
2dffb9 call   0x2dfad0
2dffbe mov    rcx,rax
2dffc1 call   0x2dd0e8
2dffc6 lea    rdx,[rsp+0x36]
2dffcb mov    rdi,rax
2dffce lea    rcx,[rsp+0x90]
2dffd5 
2dffd6 call   0x2df95c
2dffdb mov    rcx,rax
2dffde call   0x2cde0c
2dffe3 lea    rdx,[rsp+0x30]
2dffe8 mov    rbx,rax
2dffeb lea    rcx,[rsp+0x90]
2dfff2 
2dfff3 call   0x2df838
2dfff8 mov    rcx,rax
2dfffb call   0x2d84b4
2e0000 mov    rcx,rax
2e0003 mov    rdx,rbx
2e0006 call   0x334224
2e000b or     r8d,0xffffffff
2e000f mov    rcx,rax
2e0012 mov    r9,rsi
2e0015 mov    DWORD PTR [rsp+0x20],r8d
2e001a mov    rdx,rdi
2e001d call   0x3349ac
2e0022 mov    r8,QWORD PTR [rax]
2e0025 mov    eax,DWORD PTR [rip+0xf7a45]        # 0x3d7a70
2e002b mov    QWORD PTR [rip+0xf7a36],r8        # 0x3d7a68
2e0032 jmp    0x2e003b
2e0034 mov    r8,QWORD PTR [rip+0xf7a2d]        # 0x3d7a68
2e003b test   al,0x2
2e003d jne    0x2e005e
2e003f mov    rcx,QWORD PTR [rip+0xf5e1a]        # 0x3d5e60
2e0046 lea    rdx,[rip+0xf7a33]        # 0x3d7a80
2e004d or     eax,0x2
2e0050 xor    r9d,r9d
2e0053 mov    DWORD PTR [rip+0xf7a17],eax        # 0x3d7a70
2e0059 call   0x2cbd24
2e005e mov    rcx,QWORD PTR [rip+0xf5dfb]        # 0x3d5e60
2e0065 lea    rdx,[rip+0xf7a14]        # 0x3d7a80
2e006c movaps xmm2,xmm6
2e006f movaps xmm6,XMMWORD PTR [rsp+0x50]
2e0074 add    rsp,0x60
2e0078 pop    rdi
2e0079 pop    rsi
2e007a pop    rbx
2e007b jmp    0x2de97c

; math independent pdata/next-pdata extent 2e0198..2e02b0 unwind3d29bc
2e0198 mov    r11,rsp
2e019b push   rbx
2e019c push   rsi
2e019d push   rdi
2e019e sub    rsp,0x60
2e01a2 mov    eax,DWORD PTR [rip+0xf77d8]        # 0x3d7980
2e01a8 movaps XMMWORD PTR [rsp+0x50],xmm6
2e01ad movaps xmm6,xmm0
2e01b0 test   al,0x1
2e01b2 jne    0x2e0264
2e01b8 or     eax,0x1
2e01bb lea    rdx,[r11+0x10]
2e01bf lea    rcx,[r11+0x10]
2e01c3 mov    DWORD PTR [rip+0xf77b7],eax        # 0x3d7980
2e01c9 call   0x2cc730
2e01ce mov    rcx,rax
2e01d1 call   0x2cdca4
2e01d6 lea    rdx,[rsp+0x98]
2e01dd 
2e01de mov    rsi,rax
2e01e1 lea    rcx,[rsp+0x90]
2e01e8 
2e01e9 call   0x2dfaf8
2e01ee mov    rcx,rax
2e01f1 call   0x2dd0e8
2e01f6 lea    rdx,[rsp+0x36]
2e01fb mov    rdi,rax
2e01fe lea    rcx,[rsp+0x90]
2e0205 
2e0206 call   0x2df994
2e020b mov    rcx,rax
2e020e call   0x2cde0c
2e0213 lea    rdx,[rsp+0x30]
2e0218 mov    rbx,rax
2e021b lea    rcx,[rsp+0x90]
2e0222 
2e0223 call   0x2df864
2e0228 mov    rcx,rax
2e022b call   0x2d84b4
2e0230 mov    rcx,rax
2e0233 mov    rdx,rbx
2e0236 call   0x334224
2e023b or     r8d,0xffffffff
2e023f mov    rcx,rax
2e0242 mov    r9,rsi
2e0245 mov    DWORD PTR [rsp+0x20],r8d
2e024a mov    rdx,rdi
2e024d call   0x3349ac
2e0252 mov    r8,QWORD PTR [rax]
2e0255 mov    eax,DWORD PTR [rip+0xf7725]        # 0x3d7980
2e025b mov    QWORD PTR [rip+0xf7716],r8        # 0x3d7978
2e0262 jmp    0x2e026b
2e0264 mov    r8,QWORD PTR [rip+0xf770d]        # 0x3d7978
2e026b test   al,0x2
2e026d jne    0x2e028e
2e026f mov    rcx,QWORD PTR [rip+0xf5bea]        # 0x3d5e60
2e0276 lea    rdx,[rip+0xf7713]        # 0x3d7990
2e027d or     eax,0x2
2e0280 xor    r9d,r9d
2e0283 mov    DWORD PTR [rip+0xf76f7],eax        # 0x3d7980
2e0289 call   0x2cbd24
2e028e mov    rcx,QWORD PTR [rip+0xf5bcb]        # 0x3d5e60
2e0295 lea    rdx,[rip+0xf76f4]        # 0x3d7990
2e029c movaps xmm2,xmm6
2e029f movaps xmm6,XMMWORD PTR [rsp+0x50]
2e02a4 add    rsp,0x60
2e02a8 pop    rdi
2e02a9 pop    rsi
2e02aa pop    rbx
2e02ab jmp    0x2de97c

; math independent pdata/next-pdata extent 2e3d5c..2e3e91 unwind3d29a4
2e3d5c mov    r11,rsp
2e3d5f mov    QWORD PTR [r11+0x8],rbx
2e3d63 mov    QWORD PTR [r11+0x10],rsi
2e3d67 push   rdi
2e3d68 sub    rsp,0x70
2e3d6c mov    eax,DWORD PTR [rip+0xf3a2e]        # 0x3d77a0
2e3d72 movaps XMMWORD PTR [rsp+0x60],xmm6
2e3d77 movaps xmm6,xmm1
2e3d7a movaps XMMWORD PTR [rsp+0x50],xmm7
2e3d7f movaps xmm7,xmm0
2e3d82 test   al,0x1
2e3d84 jne    0x2e3e33
2e3d8a or     eax,0x1
2e3d8d lea    rdx,[r11+0x18]
2e3d91 lea    rcx,[r11+0x18]
2e3d95 mov    DWORD PTR [rip+0xf3a05],eax        # 0x3d77a0
2e3d9b call   0x2cc730
2e3da0 mov    rcx,rax
2e3da3 call   0x2cdca4
2e3da8 lea    rdx,[rsp+0x30]
2e3dad mov    rsi,rax
2e3db0 lea    rcx,[rsp+0x98]
2e3db7 
2e3db8 call   0x2dfbb4
2e3dbd mov    rcx,rax
2e3dc0 call   0x2d84b4
2e3dc5 lea    rdx,[rsp+0x3d]
2e3dca mov    rdi,rax
2e3dcd lea    rcx,[rsp+0x98]
2e3dd4 
2e3dd5 call   0x2dfa58
2e3dda mov    rcx,rax
2e3ddd call   0x2cde0c
2e3de2 lea    rdx,[rsp+0x36]
2e3de7 mov    rbx,rax
2e3dea lea    rcx,[rsp+0x98]
2e3df1 
2e3df2 call   0x2df93c
2e3df7 mov    rcx,rax
2e3dfa call   0x2dd110
2e3dff mov    rcx,rax
2e3e02 mov    rdx,rbx
2e3e05 call   0x334224
2e3e0a or     r8d,0xffffffff
2e3e0e mov    rcx,rax
2e3e11 mov    r9,rsi
2e3e14 mov    DWORD PTR [rsp+0x20],r8d
2e3e19 mov    rdx,rdi
2e3e1c call   0x3349ac
2e3e21 mov    r8,QWORD PTR [rax]
2e3e24 mov    eax,DWORD PTR [rip+0xf3976]        # 0x3d77a0
2e3e2a mov    QWORD PTR [rip+0xf3967],r8        # 0x3d7798
2e3e31 jmp    0x2e3e3a
2e3e33 mov    r8,QWORD PTR [rip+0xf395e]        # 0x3d7798
2e3e3a test   al,0x2
2e3e3c jne    0x2e3e5d
2e3e3e mov    rcx,QWORD PTR [rip+0xf201b]        # 0x3d5e60
2e3e45 lea    rdx,[rip+0xf3964]        # 0x3d77b0
2e3e4c or     eax,0x2
2e3e4f xor    r9d,r9d
2e3e52 mov    DWORD PTR [rip+0xf3948],eax        # 0x3d77a0
2e3e58 call   0x2cbd24
2e3e5d mov    rcx,QWORD PTR [rip+0xf1ffc]        # 0x3d5e60
2e3e64 lea    rdx,[rip+0xf3945]        # 0x3d77b0
2e3e6b movaps xmm3,xmm6
2e3e6e movaps xmm2,xmm7
2e3e71 movaps xmm6,XMMWORD PTR [rsp+0x60]
2e3e76 lea    r11,[rsp+0x70]
2e3e7b mov    rbx,QWORD PTR [r11+0x10]
2e3e7f mov    rsi,QWORD PTR [r11+0x18]
2e3e83 movaps xmm7,XMMWORD PTR [rsp+0x50]
2e3e88 mov    rsp,r11
2e3e8b pop    rdi
2e3e8c jmp    0x2de9d4

; math independent pdata/next-pdata extent 2de97c..2de9d3 unwind3d2038
2de97c rex push rbx
2de97e sub    rsp,0x20
2de982 movaps xmm1,xmm2
2de985 lea    rcx,[rsp+0x48]
2de98a mov    rbx,rdx
2de98d call   0x2ddbf8
2de992 mov    rax,QWORD PTR [rsp+0x48]
2de997 mov    rcx,rbx
2de99a mov    QWORD PTR [rbx+0x88],rax
2de9a1 mov    BYTE PTR [rsp+0x38],0x1
2de9a6 mov    eax,DWORD PTR [rsp+0x38]
2de9aa mov    DWORD PTR [rbx+0xd0],eax
2de9b0 lea    rax,[rsp+0x28]
2de9b5 mov    QWORD PTR [rbx+0x78],rax
2de9b9 mov    QWORD PTR [rbx+0x80],0x1
2de9c0 
2de9c4 call   0x3cdbd4
2de9c9 add    rsp,0x20
2de9cd pop    rbx
2de9ce jmp    0x3cdbb0

; math independent pdata/next-pdata extent 2de9d4..2dea4c unwind3d298c
2de9d4 rex push rbx
2de9d6 sub    rsp,0x40
2de9da movaps XMMWORD PTR [rsp+0x30],xmm6
2de9df lea    rcx,[rsp+0x20]
2de9e4 movaps xmm1,xmm2
2de9e7 movaps xmm6,xmm3
2de9ea mov    rbx,rdx
2de9ed call   0x2ddbf8
2de9f2 movaps xmm1,xmm6
2de9f5 lea    rcx,[rsp+0x28]
2de9fa call   0x2ddbf8
2de9ff movzx  eax,WORD PTR [rsp+0x5a]
2dea04 mov    rcx,rbx
2dea07 movups xmm0,XMMWORD PTR [rsp+0x20]
2dea0c mov    WORD PTR [rbx+0xd2],ax
2dea13 lea    rax,[rsp+0x48]
2dea18 mov    QWORD PTR [rbx+0x78],rax
2dea1c movdqu XMMWORD PTR [rbx+0x88],xmm0
2dea23 
2dea24 mov    WORD PTR [rbx+0xd0],0x101
2dea2b 
2dea2d mov    QWORD PTR [rbx+0x80],0x2
2dea34 
2dea38 call   0x3cdbd4
2dea3d movaps xmm6,XMMWORD PTR [rsp+0x30]
2dea42 add    rsp,0x40
2dea46 pop    rbx
2dea47 jmp    0x3cdbb0
