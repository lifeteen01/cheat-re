2e3d5c	mov    r11,rsp
2e3d5f	mov    QWORD PTR [r11+0x8],rbx
2e3d63	mov    QWORD PTR [r11+0x10],rsi
2e3d67	push   rdi
2e3d68	sub    rsp,0x70
2e3d6c	mov    eax,DWORD PTR [rip+0xf3a2e]        # 0x3d77a0
2e3d72	movaps XMMWORD PTR [rsp+0x60],xmm6
2e3d77	movaps xmm6,xmm1
2e3d7a	movaps XMMWORD PTR [rsp+0x50],xmm7
2e3d7f	movaps xmm7,xmm0
2e3d82	test   al,0x1
2e3d84	jne    0x2e3e33
2e3d8a	or     eax,0x1
2e3d8d	lea    rdx,[r11+0x18]
2e3d91	lea    rcx,[r11+0x18]
2e3d95	mov    DWORD PTR [rip+0xf3a05],eax        # 0x3d77a0
2e3d9b	call   0x2cc730
2e3da0	mov    rcx,rax
2e3da3	call   0x2cdca4
2e3da8	lea    rdx,[rsp+0x30]
2e3dad	mov    rsi,rax
2e3db0	lea    rcx,[rsp+0x98]
2e3db8	call   0x2dfbb4   ; STR "Range"
2e3dbd	mov    rcx,rax
2e3dc0	call   0x2d84b4
2e3dc5	lea    rdx,[rsp+0x3d]
2e3dca	mov    rdi,rax
2e3dcd	lea    rcx,[rsp+0x98]
2e3dd5	call   0x2dfa58   ; STR "UnityEngine"
2e3dda	mov    rcx,rax
2e3ddd	call   0x2cde0c
2e3de2	lea    rdx,[rsp+0x36]
2e3de7	mov    rbx,rax
2e3dea	lea    rcx,[rsp+0x98]
2e3df2	call   0x2df93c   ; STR "Random"
2e3df7	mov    rcx,rax
2e3dfa	call   0x2dd110
2e3dff	mov    rcx,rax
2e3e02	mov    rdx,rbx
2e3e05	call   0x334224
2e3e0a	or     r8d,0xffffffff
2e3e0e	mov    rcx,rax
2e3e11	mov    r9,rsi
2e3e14	mov    DWORD PTR [rsp+0x20],r8d
2e3e19	mov    rdx,rdi
2e3e1c	call   0x3349ac
2e3e21	mov    r8,QWORD PTR [rax]
2e3e24	mov    eax,DWORD PTR [rip+0xf3976]        # 0x3d77a0
2e3e2a	mov    QWORD PTR [rip+0xf3967],r8        # 0x3d7798
2e3e31	jmp    0x2e3e3a
2e3e33	mov    r8,QWORD PTR [rip+0xf395e]        # 0x3d7798
2e3e3a	test   al,0x2
2e3e3c	jne    0x2e3e5d
2e3e3e	mov    rcx,QWORD PTR [rip+0xf201b]        # 0x3d5e60
2e3e45	lea    rdx,[rip+0xf3964]        # 0x3d77b0
2e3e4c	or     eax,0x2
2e3e4f	xor    r9d,r9d
2e3e52	mov    DWORD PTR [rip+0xf3948],eax        # 0x3d77a0
2e3e58	call   0x2cbd24
2e3e5d	mov    rcx,QWORD PTR [rip+0xf1ffc]        # 0x3d5e60
2e3e64	lea    rdx,[rip+0xf3945]        # 0x3d77b0
2e3e6b	movaps xmm3,xmm6
2e3e6e	movaps xmm2,xmm7
2e3e71	movaps xmm6,XMMWORD PTR [rsp+0x60]
2e3e76	lea    r11,[rsp+0x70]
2e3e7b	mov    rbx,QWORD PTR [r11+0x10]
2e3e7f	mov    rsi,QWORD PTR [r11+0x18]
2e3e83	movaps xmm7,XMMWORD PTR [rsp+0x50]
2e3e88	mov    rsp,r11
2e3e8b	pop    rdi
2e3e8c	jmp    0x2de9d4
