334224	rex push rbx
334226	push   rbp
334227	push   rsi
334228	push   rdi
334229	sub    rsp,0x28
33422d	mov    rsi,rdx
334230	mov    rbp,rcx
334233	call   0x33479c
334238	lea    rdx,[rsp+0x60]
33423d	mov    QWORD PTR [rsp+0x60],0x0
334246	mov    rcx,rax
334249	call   0x33480c
33424e	xor    ebx,ebx
334250	mov    rdi,rax
334253	cmp    QWORD PTR [rsp+0x60],rbx
334258	jbe    0x33428a
33425a	movsxd rcx,ebx
33425d	mov    rcx,QWORD PTR [rdi+rcx*8]
334261	call   0x3344b0
334266	test   rax,rax
334269	je     0x33427e
33426b	mov    r8,rbp
33426e	mov    rdx,rsi
334271	mov    rcx,rax
334274	call   0x334528
334279	test   rax,rax
33427c	jne    0x33428c
33427e	inc    ebx
334280	movsxd rax,ebx
334283	cmp    rax,QWORD PTR [rsp+0x60]
334288	jb     0x33425a
33428a	xor    eax,eax
33428c	add    rsp,0x28
334290	pop    rdi
334291	pop    rsi
334292	pop    rbp
334293	pop    rbx
334294	ret
