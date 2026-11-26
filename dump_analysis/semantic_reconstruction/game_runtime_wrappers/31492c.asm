31492c	mov    r11,rsp
31492f	push   rbx
314930	push   rbp
314931	push   rsi
314932	push   rdi
314933	push   r14
314935	push   r15
314937	sub    rsp,0x68
31493b	mov    eax,DWORD PTR [rip+0xd1caf]        # 0x3e65f0
314941	mov    r14,r8
314944	movaps XMMWORD PTR [rsp+0x50],xmm6
314949	movaps xmm6,xmm3
31494c	mov    r15,rdx
31494f	mov    rbp,rcx
314952	test   al,0x1
314954	jne    0x3149fa
31495a	or     eax,0x1
31495d	lea    rdx,[r11+0x8]
314961	lea    rcx,[r11+0x8]
314965	mov    DWORD PTR [rip+0xd1c85],eax        # 0x3e65f0
31496b	call   0x2cc730
314970	mov    rcx,rax
314973	call   0x2cdca4
314978	lea    rdx,[rsp+0x31]
31497d	mov    rsi,rax
314980	lea    rcx,[rsp+0x30]
314985	call   0x2f4204   ; STR "Lerp"
31498a	mov    rcx,rax
31498d	call   0x2e35ec
314992	lea    rdx,[rsp+0x3e]
314997	mov    rdi,rax
31499a	lea    rcx,[rsp+0x30]
31499f	call   0x2f365c   ; STR "UnityEngine"
3149a4	mov    rcx,rax
3149a7	call   0x2cde0c
3149ac	lea    rdx,[rsp+0x36]
3149b1	mov    rbx,rax
3149b4	lea    rcx,[rsp+0x30]
3149b9	call   0x2df850
3149be	mov    rcx,rax
3149c1	call   0x2dd138
3149c6	mov    rcx,rax
3149c9	mov    rdx,rbx
3149cc	call   0x334224
3149d1	or     r8d,0xffffffff
3149d5	mov    rcx,rax
3149d8	mov    r9,rsi
3149db	mov    DWORD PTR [rsp+0x20],r8d
3149e0	mov    rdx,rdi
3149e3	call   0x3349ac
3149e8	mov    r8,QWORD PTR [rax]
3149eb	mov    eax,DWORD PTR [rip+0xd1bff]        # 0x3e65f0
3149f1	mov    QWORD PTR [rip+0xd1bf0],r8        # 0x3e65e8
3149f8	jmp    0x314a01
3149fa	mov    r8,QWORD PTR [rip+0xd1be7]        # 0x3e65e8
314a01	test   al,0x2
314a03	jne    0x314a24
314a05	mov    rcx,QWORD PTR [rip+0xc1454]        # 0x3d5e60
314a0c	lea    rdx,[rip+0xd1bed]        # 0x3e6600
314a13	or     eax,0x2
314a16	xor    r9d,r9d
314a19	mov    DWORD PTR [rip+0xd1bd1],eax        # 0x3e65f0
314a1f	call   0x2cbd24
314a24	mov    rcx,rbp
314a27	call   0x3c7bbc
314a2c	mov    rcx,QWORD PTR [rip+0xc142d]        # 0x3d5e60
314a33	lea    rdx,[rip+0xd1bc6]        # 0x3e6600
314a3a	movss  DWORD PTR [rsp+0x28],xmm6
314a40	mov    r9,r15
314a43	mov    r8,rbp
314a46	mov    QWORD PTR [rsp+0x20],r14
314a4b	call   0x2ed218
314a50	movaps xmm6,XMMWORD PTR [rsp+0x50]
314a55	mov    rax,rbp
314a58	add    rsp,0x68
314a5c	pop    r15
314a5e	pop    r14
314a60	pop    rdi
314a61	pop    rsi
314a62	pop    rbp
314a63	pop    rbx
314a64	ret
