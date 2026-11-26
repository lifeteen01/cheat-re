2e0f10	mov    QWORD PTR [rsp+0x8],rbx
2e0f15	mov    QWORD PTR [rsp+0x10],rsi
2e0f1a	push   rdi
2e0f1b	sub    rsp,0x60
2e0f1f	mov    r9d,DWORD PTR [rip+0x102f7a]        # 0x3e3ea0
2e0f26	mov    ebx,r8d
2e0f29	movaps XMMWORD PTR [rsp+0x50],xmm6
2e0f2e	movaps xmm6,xmm3
2e0f31	mov    rdi,rdx
2e0f34	mov    rsi,rcx
2e0f37	test   r9b,0x1
2e0f3b	jne    0x2e0f5f
2e0f3d	mov    r8,QWORD PTR [rip+0xf5fbc]        # 0x3d6f00
2e0f44	or     r9d,0x1
2e0f48	add    r8,0x3118820
2e0f4f	mov    DWORD PTR [rip+0x102f4a],r9d        # 0x3e3ea0
2e0f56	mov    QWORD PTR [rip+0x102f3b],r8        # 0x3e3e98
2e0f5d	jmp    0x2e0f66
2e0f5f	mov    r8,QWORD PTR [rip+0x102f32]        # 0x3e3e98
2e0f66	test   r9b,0x2
2e0f6a	jne    0x2e0f8d
2e0f6c	mov    rcx,QWORD PTR [rip+0xf4eed]        # 0x3d5e60
2e0f73	lea    rdx,[rip+0x102f36]        # 0x3e3eb0
2e0f7a	or     r9d,0x2
2e0f7e	mov    DWORD PTR [rip+0x102f1b],r9d        # 0x3e3ea0
2e0f85	xor    r9d,r9d
2e0f88	call   0x2cbd24
2e0f8d	movss  xmm0,DWORD PTR [rsp+0x98]
2e0f96	lea    rdx,[rip+0x102f13]        # 0x3e3eb0
2e0f9d	movss  xmm1,DWORD PTR [rsp+0x90]
2e0fa6	mov    r9,rdi
2e0fa9	mov    rcx,QWORD PTR [rip+0xf4eb0]        # 0x3d5e60
2e0fb0	mov    r8,rsi
2e0fb3	mov    DWORD PTR [rsp+0x40],0x0
2e0fbb	movss  DWORD PTR [rsp+0x38],xmm0
2e0fc1	movss  DWORD PTR [rsp+0x30],xmm1
2e0fc7	movss  DWORD PTR [rsp+0x28],xmm6
2e0fcd	mov    DWORD PTR [rsp+0x20],ebx
2e0fd1	call   0x2de874
2e0fd6	mov    rbx,QWORD PTR [rsp+0x70]
2e0fdb	test   al,al
2e0fdd	mov    rsi,QWORD PTR [rsp+0x78]
2e0fe2	movaps xmm6,XMMWORD PTR [rsp+0x50]
2e0fe7	setne  al
2e0fea	add    rsp,0x60
2e0fee	pop    rdi
2e0fef	ret
