3714c4	mov    QWORD PTR [rsp+0x8],rbx
3714c9	mov    QWORD PTR [rsp+0x10],rsi
3714ce	push   rdi
3714cf	sub    rsp,0x20
3714d3	mov    rbx,rcx
3714d6	call   0x2caf08
3714db	test   al,al
3714dd	je     0x371538
3714df	mov    rcx,rbx
3714e2	call   0x37154c
3714e7	mov    rcx,rax
3714ea	mov    rdi,rax
3714ed	call   0x2caf08
3714f2	test   al,al
3714f4	je     0x371538
3714f6	mov    rcx,rdi
3714f9	call   0x37261c
3714fe	mov    ecx,eax
371500	mov    esi,eax
371502	call   0x3719e8
371507	test   al,al
371509	jne    0x371516
37150b	mov    ecx,esi
37150d	call   0x371828
371512	test   al,al
371514	je     0x371538
371516	mov    rcx,rdi
371519	call   0x37236c
37151e	test   eax,eax
371520	je     0x371533
371522	mov    rcx,rdi
371525	call   0x37236c
37152a	xor    ecx,ecx
37152c	cmp    eax,0x5
37152f	cmovne rbx,rcx
371533	mov    rax,rbx
371536	jmp    0x37153a
371538	xor    eax,eax
37153a	mov    rbx,QWORD PTR [rsp+0x30]
37153f	mov    rsi,QWORD PTR [rsp+0x38]
371544	add    rsp,0x20
371548	pop    rdi
371549	ret
