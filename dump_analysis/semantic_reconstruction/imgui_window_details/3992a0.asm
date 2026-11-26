3992a0	mov    rax,rsp
3992a3	mov    QWORD PTR [rax+0x18],rbx
3992a7	mov    QWORD PTR [rax+0x20],rsi
3992ab	push   rbp
3992ac	push   rdi
3992ad	push   r14
3992af	lea    rbp,[rax-0x57]
3992b3	sub    rsp,0xa0
3992ba	mov    rdi,QWORD PTR [rip+0x6c867]        # 0x405b28
3992c1	mov    bl,r9b
3992c4	mov    QWORD PTR [rbp-0x21],rdx
3992c8	mov    r9d,r8d
3992cb	mov    QWORD PTR [rbp-0x19],rcx
3992cf	lea    r8,[rbp-0x21]
3992d3	movaps XMMWORD PTR [rax-0x28],xmm6
3992d7	lea    rdx,[rbp-0x19]
3992db	mov    r14,QWORD PTR [rdi+0x3f08]
3992e2	movaps XMMWORD PTR [rax-0x38],xmm7
3992e6	movaps XMMWORD PTR [rax-0x48],xmm8
3992eb	movss  xmm8,DWORD PTR [rbp+0x7f]
3992f1	mov    rcx,QWORD PTR [r14+0x298]
3992f8	mov    DWORD PTR [rsp+0x28],0x0
399300	movss  DWORD PTR [rsp+0x20],xmm8
399307	call   0x3a1244
39930c	test   bl,bl
39930e	je     0x3993e7
399314	movss  xmm7,DWORD PTR [rdi+0x3818]
39931c	comiss xmm7,DWORD PTR [rip+0xffffffffffef3f29]        # 0x28d24c
399323	jbe    0x3993e7
399329	movss  xmm6,DWORD PTR [rip+0xffffffffffef3f23]        # 0x28d254
399331	mov    ecx,0x7
399336	mov    rsi,QWORD PTR [r14+0x298]
39933d	movaps xmm1,xmm6
399340	call   0x392298
399345	movaps xmm2,xmm6
399348	lea    rcx,[rbp-0x11]
39934c	movaps xmm1,xmm6
39934f	mov    edi,eax
399351	call   0x2cc340
399356	mov    r8,rax
399359	lea    rdx,[rbp-0x21]
39935d	lea    rcx,[rbp-0x9]
399361	call   0x2ef9d8
399366	movaps xmm2,xmm6
399369	lea    rcx,[rbp-0x1]
39936d	movaps xmm1,xmm6
399370	mov    rbx,rax
399373	call   0x2cc340
399378	mov    r8,rax
39937b	lea    rdx,[rbp-0x19]
39937f	lea    rcx,[rbp+0x7]
399383	call   0x2ef9d8
399388	movss  DWORD PTR [rsp+0x30],xmm7
39938e	mov    rdx,rax
399391	mov    DWORD PTR [rsp+0x28],0x0
399399	mov    r9d,edi
39939c	mov    r8,rbx
39939f	movss  DWORD PTR [rsp+0x20],xmm8
3993a6	mov    rcx,rsi
3993a9	call   0x3a1148
3993ae	movaps xmm1,xmm6
3993b1	mov    ecx,0x6
3993b6	call   0x392298
3993bb	mov    rcx,QWORD PTR [r14+0x298]
3993c2	lea    r8,[rbp-0x21]
3993c6	movss  DWORD PTR [rsp+0x30],xmm7
3993cc	lea    rdx,[rbp-0x19]
3993d0	mov    r9d,eax
3993d3	mov    DWORD PTR [rsp+0x28],0x0
3993db	movss  DWORD PTR [rsp+0x20],xmm8
3993e2	call   0x3a1148
3993e7	lea    r11,[rsp+0xa0]
3993ef	mov    rbx,QWORD PTR [r11+0x30]
3993f3	mov    rsi,QWORD PTR [r11+0x38]
3993f7	movaps xmm6,XMMWORD PTR [r11-0x10]
3993fc	movaps xmm7,XMMWORD PTR [r11-0x20]
399401	movaps xmm8,XMMWORD PTR [r11-0x30]
399406	mov    rsp,r11
399409	pop    r14
39940b	pop    rdi
39940c	pop    rbp
39940d	ret
