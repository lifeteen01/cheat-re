3a7400	mov    QWORD PTR [rsp+0x18],rbx
3a7405	mov    QWORD PTR [rsp+0x20],rsi
3a740a	push   rbp
3a740b	push   rdi
3a740c	push   r14
3a740e	mov    rbp,rsp
3a7411	sub    rsp,0x80
3a7418	mov    rax,QWORD PTR [rcx+0x38]
3a741c	mov    rsi,rcx
3a741f	movaps XMMWORD PTR [rsp+0x70],xmm7
3a7424	lea    rcx,[rbp+0x20]
3a7428	mov    ebx,r9d
3a742b	mov    QWORD PTR [rbp-0x38],rdx
3a742f	mov    r14d,r8d
3a7432	movss  xmm1,DWORD PTR [rax+0x10]
3a7437	movaps xmm7,xmm1
3a743a	mulss  xmm1,DWORD PTR [rip+0xffffffffffee5e0e]        # 0x28d250
3a7442	mulss  xmm7,DWORD PTR [rip+0xffffffffffee669e]        # 0x28dae8
3a744a	movaps xmm2,xmm1
3a744d	mulss  xmm2,DWORD PTR [rbp+0x40]
3a7452	mulss  xmm7,DWORD PTR [rbp+0x40]
3a7457	call   0x2cc340
3a745c	mov    r8,rax
3a745f	lea    rdx,[rbp-0x38]
3a7463	lea    rcx,[rbp-0x40]
3a7467	call   0x2ef9d8
3a746c	lea    rcx,[rbp-0x48]
3a7470	call   0x2d4870
3a7475	lea    rcx,[rbp-0x50]
3a7479	call   0x2d4870
3a747e	lea    rcx,[rbp+0x20]
3a7482	call   0x2d4870
3a7487	mov    ecx,ebx
3a7489	test   ebx,ebx
3a748b	je     0x3a751e
3a7491	sub    ecx,0x1
3a7494	je     0x3a751a
3a749a	sub    ecx,0x1
3a749d	je     0x3a74a8
3a749f	cmp    ecx,0x1
3a74a2	jne    0x3a75b3
3a74a8	cmp    ebx,0x2
3a74ab	jne    0x3a74b4
3a74ad	xorps  xmm7,XMMWORD PTR [rip+0xffffffffffeebdec]        # 0x2932a0
3a74b4	movss  xmm2,DWORD PTR [rip+0xffffffffffeeccf8]        # 0x2941b4
3a74bc	lea    rcx,[rbp+0x20]
3a74c0	xorps  xmm1,xmm1
3a74c3	call   0x2cc340
3a74c8	mov    rdx,rax
3a74cb	lea    rcx,[rbp-0x48]
3a74cf	movaps xmm2,xmm7
3a74d2	call   0x38bc08
3a74d7	movss  xmm2,DWORD PTR [rip+0xffffffffffeecd01]        # 0x2941e0
3a74df	lea    rcx,[rbp+0x20]
3a74e3	movss  xmm1,DWORD PTR [rip+0xfffffffffff05a15]        # 0x2acf00
3a74eb	movsd  xmm0,QWORD PTR [rax]
3a74ef	movsd  QWORD PTR [rbp-0x48],xmm0
3a74f4	call   0x2cc340
3a74f9	mov    rdx,rax
3a74fc	lea    rcx,[rbp-0x50]
3a7500	movaps xmm2,xmm7
3a7503	call   0x38bc08
3a7508	movss  xmm2,DWORD PTR [rip+0xffffffffffeeccd0]        # 0x2941e0
3a7510	movss  xmm1,DWORD PTR [rip+0xfffffffffff059bc]        # 0x2aced4
3a7518	jmp    0x3a7589
3a751a	test   ebx,ebx
3a751c	jne    0x3a7525
3a751e	xorps  xmm7,XMMWORD PTR [rip+0xffffffffffeebd7b]        # 0x2932a0
3a7525	movss  xmm1,DWORD PTR [rip+0xffffffffffeecc87]        # 0x2941b4
3a752d	lea    rcx,[rbp+0x20]
3a7531	xorps  xmm2,xmm2
3a7534	call   0x2cc340
3a7539	mov    rdx,rax
3a753c	lea    rcx,[rbp-0x30]
3a7540	movaps xmm2,xmm7
3a7543	call   0x38bc08
3a7548	movss  xmm2,DWORD PTR [rip+0xfffffffffff05984]        # 0x2aced4
3a7550	lea    rcx,[rbp+0x20]
3a7554	movss  xmm1,DWORD PTR [rip+0xffffffffffeecc84]        # 0x2941e0
3a755c	movsd  xmm0,QWORD PTR [rax]
3a7560	movsd  QWORD PTR [rbp-0x48],xmm0
3a7565	call   0x2cc340
3a756a	mov    rdx,rax
3a756d	lea    rcx,[rbp-0x30]
3a7571	movaps xmm2,xmm7
3a7574	call   0x38bc08
3a7579	movss  xmm2,DWORD PTR [rip+0xfffffffffff0597f]        # 0x2acf00
3a7581	movss  xmm1,DWORD PTR [rip+0xffffffffffeecc57]        # 0x2941e0
3a7589	movsd  xmm0,QWORD PTR [rax]
3a758d	lea    rcx,[rbp+0x20]
3a7591	movsd  QWORD PTR [rbp-0x50],xmm0
3a7596	call   0x2cc340
3a759b	movaps xmm2,xmm7
3a759e	lea    rcx,[rbp-0x30]
3a75a2	mov    rdx,rax
3a75a5	call   0x38bc08
3a75aa	movsd  xmm0,QWORD PTR [rax]
3a75ae	movsd  QWORD PTR [rbp+0x20],xmm0
3a75b3	lea    r8,[rbp+0x20]
3a75b7	lea    rdx,[rbp-0x40]
3a75bb	lea    rcx,[rbp-0x30]
3a75bf	call   0x2ef9d8
3a75c4	lea    r8,[rbp-0x50]
3a75c8	mov    rdi,rax
3a75cb	lea    rdx,[rbp-0x40]
3a75cf	lea    rcx,[rbp-0x28]
3a75d3	call   0x2ef9d8
3a75d8	lea    r8,[rbp-0x48]
3a75dc	mov    rbx,rax
3a75df	lea    rdx,[rbp-0x40]
3a75e3	lea    rcx,[rbp-0x20]
3a75e7	call   0x2ef9d8
3a75ec	mov    rdx,rax
3a75ef	mov    DWORD PTR [rsp+0x20],r14d
3a75f4	mov    r9,rdi
3a75f7	mov    r8,rbx
3a75fa	mov    rcx,rsi
3a75fd	call   0x3a3338
3a7602	movaps xmm7,XMMWORD PTR [rsp+0x70]
3a7607	lea    r11,[rsp+0x80]
3a760f	mov    rbx,QWORD PTR [r11+0x30]
3a7613	mov    rsi,QWORD PTR [r11+0x38]
3a7617	mov    rsp,r11
3a761a	pop    r14
3a761c	pop    rdi
3a761d	pop    rbp
3a761e	ret
