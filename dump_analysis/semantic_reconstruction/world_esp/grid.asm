315518	mov    rax,rsp
31551b	push   rbp
31551c	push   rbx
31551d	push   rsi
31551e	push   rdi
31551f	lea    rbp,[rax-0x5f]
315523	sub    rsp,0xb8
31552a	movaps XMMWORD PTR [rax-0x38],xmm6
31552e	mov    rsi,rdx
315531	movaps XMMWORD PTR [rax-0x48],xmm7
315535	mov    rdi,rcx
315538	call   0x315a24
31553d	mov    rcx,rax
315540	mov    rbx,rax
315543	call   0x2caf08
315548	test   al,al
31554a	jne    0x315571
31554c	lea    rdx,[rbp+0x77]
315550	lea    rcx,[rbp+0x77]
315554	call   0x2f1f54
315559	mov    rcx,rax
31555c	call   0x2dd138
315561	mov    rdx,rax
315564	mov    rcx,rdi
315567	call   0x2cc2cc
31556c	jmp    0x315671
315571	lea    rdx,[rbp-0x59]
315575	mov    rcx,rbx
315578	call   0x3743b4
31557d	lea    rdx,[rbp-0x39]
315581	mov    rcx,rbx
315584	call   0x3743f8
315589	lea    rdx,[rbp-0x49]
31558d	mov    rcx,rbx
315590	call   0x374370
315595	movss  xmm0,DWORD PTR [rbp-0x39]
31559a	divss  xmm0,DWORD PTR [rip+0xfffffffffff7dc82]        # 0x293224
3155a2	cvttss2si ecx,xmm0
3155a6	test   ecx,ecx
3155a8	jg     0x3155c1
3155aa	lea    rdx,[rbp+0x77]
3155ae	lea    rcx,[rbp+0x77]
3155b2	call   0x2cc730
3155b7	mov    rcx,rax
3155ba	call   0x2cdca4
3155bf	jmp    0x315561
3155c1	movss  xmm1,DWORD PTR [rsi+0x8]
3155c6	subss  xmm1,DWORD PTR [rbp-0x51]
3155cb	movss  xmm7,DWORD PTR [rsi]
3155cf	subss  xmm7,DWORD PTR [rbp-0x59]
3155d4	movd   xmm6,ecx
3155d8	cvtdq2ps xmm6,xmm6
3155db	mulss  xmm1,DWORD PTR [rbp-0x41]
3155e0	mulss  xmm7,DWORD PTR [rbp-0x49]
3155e5	movaps xmm0,xmm6
3155e8	mulss  xmm0,xmm1
3155ec	movaps xmm2,xmm6
3155ef	movss  xmm1,DWORD PTR [rip+0xfffffffffff77c5d]        # 0x28d254
3155f7	cvttss2si eax,xmm0
3155fb	sub    ecx,eax
3155fd	dec    ecx
3155ff	movd   xmm0,ecx
315603	cvtdq2ps xmm0,xmm0
315606	call   0x2e5a44
31560b	cvttss2si edx,xmm0
31560f	lea    rcx,[rbp-0x9]
315613	call   0x2d9510
315618	movss  xmm2,DWORD PTR [rip+0xfffffffffff7dbb4]        # 0x2931d4
315620	xorps  xmm1,xmm1
315623	mulss  xmm6,xmm7
315627	mov    rbx,rax
31562a	cvttss2si ecx,xmm6
31562e	movd   xmm0,ecx
315632	cvtdq2ps xmm0,xmm0
315635	call   0x2e5a44
31563a	cvttss2si r8d,xmm0
31563f	mov    edx,0x1
315644	lea    rcx,[rbp-0x29]
315648	add    r8b,0x41
31564c	call   0x2d4584
315651	mov    rdx,rax
315654	mov    r8,rbx
315657	mov    rcx,rdi
31565a	call   0x2cef40
31565f	lea    rcx,[rbp-0x29]
315663	call   0x2cc4f4
315668	lea    rcx,[rbp-0x9]
31566c	call   0x2cc4f4
315671	lea    r11,[rsp+0xb8]
315679	mov    rax,rdi
31567c	movaps xmm6,XMMWORD PTR [r11-0x18]
315681	movaps xmm7,XMMWORD PTR [r11-0x28]
315686	mov    rsp,r11
315689	pop    rdi
31568a	pop    rsi
31568b	pop    rbx
31568c	pop    rbp
31568d	ret
