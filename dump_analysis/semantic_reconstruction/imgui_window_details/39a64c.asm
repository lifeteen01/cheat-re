39a64c	mov    rax,rsp
39a64f	mov    QWORD PTR [rax+0x18],rbx
39a653	mov    QWORD PTR [rax+0x20],rbp
39a657	push   rsi
39a658	push   rdi
39a659	push   r14
39a65b	sub    rsp,0x70
39a65f	mov    rbx,QWORD PTR [rip+0x6b4c2]        # 0x405b28
39a666	mov    rbp,rcx
39a669	movss  xmm1,DWORD PTR [rip+0xffffffffffef2be3]        # 0x28d254
39a671	mov    ecx,0x36
39a676	movaps XMMWORD PTR [rax-0x28],xmm6
39a67a	movaps XMMWORD PTR [rax-0x38],xmm7
39a67e	movaps XMMWORD PTR [rax-0x48],xmm8
39a683	movss  xmm8,DWORD PTR [rbx+0x38ac]
39a68c	call   0x392298
39a691	movss  xmm6,DWORD PTR [rbx+0x38b4]
39a699	mov    r14d,eax
39a69c	movaps xmm0,xmm6
39a69f	call   0x3c8e6c
39a6a4	movaps xmm7,xmm0
39a6a7	movaps xmm0,xmm6
39a6aa	call   0x3c899c
39a6af	movaps xmm1,xmm0
39a6b2	lea    rcx,[rsp+0x98]
39a6ba	movaps xmm2,xmm7
39a6bd	call   0x2cc340
39a6c2	movss  xmm2,DWORD PTR [rbx+0x38b0]
39a6ca	lea    rcx,[rsp+0x90]
39a6d2	mov    rdx,rax
39a6d5	call   0x38bc08
39a6da	mov    rbx,QWORD PTR [rbp+0x298]
39a6e1	lea    rsi,[rbp+0x20]
39a6e5	movss  xmm6,DWORD PTR [rbp+0x58]
39a6ea	lea    r8,[rbp+0x28]
39a6ee	mov    rdx,rsi
39a6f1	lea    rcx,[rsp+0x98]
39a6f9	call   0x2ef9d8
39a6fe	movss  DWORD PTR [rsp+0x38],xmm6
39a704	mov    r8,rax
39a707	lea    rax,[rsp+0x90]
39a70f	mov    DWORD PTR [rsp+0x30],0x200
39a717	mov    QWORD PTR [rsp+0x28],rax
39a71c	mov    r9d,r14d
39a71f	mov    rdx,rsi
39a722	movss  DWORD PTR [rsp+0x20],xmm8
39a729	mov    rcx,rbx
39a72c	call   0x3a2010
39a731	mov    rbx,QWORD PTR [rbp+0x298]
39a738	lea    r8,[rbp+0x28]
39a73c	movss  xmm6,DWORD PTR [rbp+0x58]
39a741	lea    rcx,[rsp+0x98]
39a749	mov    rdx,rsi
39a74c	call   0x2ef9d8
39a751	movss  DWORD PTR [rsp+0x38],xmm6
39a757	mov    r8,rax
39a75a	lea    rax,[rsp+0x90]
39a762	mov    DWORD PTR [rsp+0x30],0x200
39a76a	mov    QWORD PTR [rsp+0x28],rax
39a76f	mov    r9d,r14d
39a772	mov    rdx,rsi
39a775	movss  DWORD PTR [rsp+0x20],xmm8
39a77c	mov    rcx,rbx
39a77f	call   0x3a2010
39a784	movaps xmm6,XMMWORD PTR [rsp+0x60]
39a789	lea    r11,[rsp+0x70]
39a78e	mov    rbx,QWORD PTR [r11+0x30]
39a792	mov    rbp,QWORD PTR [r11+0x38]
39a796	movaps xmm8,XMMWORD PTR [r11-0x30]
39a79b	movaps xmm7,XMMWORD PTR [rsp+0x50]
39a7a0	mov    rsp,r11
39a7a3	pop    r14
39a7a5	pop    rdi
39a7a6	pop    rsi
39a7a7	ret
