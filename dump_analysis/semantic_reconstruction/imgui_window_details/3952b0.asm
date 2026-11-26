3952b0	mov    QWORD PTR [rsp+0x8],rbx
3952b5	push   rbp
3952b6	push   rsi
3952b7	push   rdi
3952b8	mov    rbp,rsp
3952bb	sub    rsp,0x40
3952bf	mov    rdi,QWORD PTR [rip+0x70862]        # 0x405b28
3952c6	mov    rsi,rcx
3952c9	movaps XMMWORD PTR [rsp+0x30],xmm6
3952ce	cmp    BYTE PTR [rdi+0x4926],0x0
3952d5	jne    0x395409
3952db	cmp    BYTE PTR [rdi+0x4927],0x0
3952e2	je     0x395409
3952e8	mov    rbx,QWORD PTR [rdi+0x48e8]
3952ef	test   rbx,rbx
3952f2	je     0x395409
3952f8	movsxd r8,DWORD PTR [rdi+0x4920]
3952ff	lea    rcx,[rbp-0x20]
395303	shl    r8,0x4
395307	mov    rdx,rbx
39530a	add    r8,0x3a8
395311	add    r8,rbx
395314	call   0x39e234
395319	mov    eax,DWORD PTR [rdi+0x3e60]
39531f	cmp    DWORD PTR [rbx+0x260],eax
395325	je     0x395379
395327	movss  xmm0,DWORD PTR [rbx+0x94]
39532f	movss  xmm1,DWORD PTR [rip+0xffffffffffef881d]        # 0x28db54
395337	ucomiss xmm0,xmm1
39533a	jp     0x39534d
39533c	jne    0x39534d
39533e	movss  xmm0,DWORD PTR [rbx+0x98]
395346	ucomiss xmm0,xmm1
395349	jp     0x39534d
39534b	je     0x395379
39534d	mov    rdx,rbx
395350	lea    rcx,[rbp+0x28]
395354	call   0x38f3ec
395359	lea    rdx,[rbx+0x84]
395360	lea    r8,[rbp+0x28]
395364	lea    rcx,[rbp+0x30]
395368	call   0x3367e4
39536d	mov    rdx,rax
395370	lea    rcx,[rbp-0x20]
395374	call   0x39c044
395379	lea    rcx,[rbp-0x20]
39537d	call   0x378934
395382	movaps xmm1,xmm0
395385	movss  xmm0,DWORD PTR [rdi+0x3810]
39538d	call   0x3762cc
395392	movss  xmm6,DWORD PTR [rbp-0x14]
395397	lea    rcx,[rbp-0x20]
39539b	subss  xmm6,xmm0
39539f	call   0x378970
3953a4	movaps xmm1,xmm0
3953a7	movss  xmm0,DWORD PTR [rdi+0x380c]
3953af	mulss  xmm0,DWORD PTR [rip+0xffffffffffefddc1]        # 0x293178
3953b7	call   0x3762cc
3953bc	addss  xmm0,DWORD PTR [rbp-0x20]
3953c1	movaps xmm2,xmm6
3953c4	lea    rcx,[rbp+0x28]
3953c8	movaps xmm1,xmm0
3953cb	call   0x2cc340
3953d0	call   0x392868
3953d5	lea    rcx,[rbp+0x30]
3953d9	lea    rbx,[rax+0x4]
3953dd	mov    rdx,rbx
3953e0	lea    r8,[rax+0xc]
3953e4	call   0x2ef9d8
3953e9	mov    r8,rbx
3953ec	lea    rdx,[rbp+0x28]
3953f0	lea    rcx,[rbp+0x38]
3953f4	mov    r9,QWORD PTR [rax]
3953f7	call   0x393018
3953fc	mov    rdx,rax
3953ff	mov    rcx,rsi
395402	call   0x39307c
395407	jmp    0x395450
395409	lea    rcx,[rdi+0xe08]
395410	call   0x394550
395415	mov    cl,al
395417	neg    cl
395419	mov    rcx,0xffffffffffffc1f8
395420	sbb    rdx,rdx
395423	and    rdx,rcx
395426	neg    al
395428	sbb    rax,rax
39542b	movss  xmm1,DWORD PTR [rdx+rdi*1+0x4c10]
395434	and    rax,rcx
395437	addss  xmm1,DWORD PTR [rip+0xffffffffffef7e15]        # 0x28d254
39543f	mov    rcx,rsi
395442	movss  xmm2,DWORD PTR [rax+rdi*1+0x4c14]
39544b	call   0x2cc340
395450	mov    rbx,QWORD PTR [rsp+0x60]
395455	mov    rax,rsi
395458	movaps xmm6,XMMWORD PTR [rsp+0x30]
39545d	add    rsp,0x40
395461	pop    rdi
395462	pop    rsi
395463	pop    rbp
395464	ret
