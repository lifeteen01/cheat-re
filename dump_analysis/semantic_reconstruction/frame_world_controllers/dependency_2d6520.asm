2d6520	mov    QWORD PTR [rsp+0x10],rbx
2d6525	mov    QWORD PTR [rsp+0x18],rbp
2d652a	push   rsi
2d652b	push   rdi
2d652c	push   r14
2d652e	sub    rsp,0x20
2d6532	mov    rbp,rcx
2d6535	mov    rsi,rdx
2d6538	mov    rcx,rdx
2d653b	xor    edi,edi
2d653d	call   0x2d8ad8
2d6542	mov    rbx,rax
2d6545	test   rax,rax
2d6548	je     0x2d656d
2d654a	mov    rdx,rdi
2d654d	mov    rcx,rsi
2d6550	call   0x2d4ccc
2d6555	lea    rcx,[rsp+0x40]
2d655a	mov    dl,BYTE PTR [rax]
2d655c	call   0x2d50e0
2d6561	test   al,al
2d6563	je     0x2d656d
2d6565	inc    rdi
2d6568	cmp    rdi,rbx
2d656b	jb     0x2d654a
2d656d	mov    rcx,rsi
2d6570	call   0x2d8ad8
2d6575	mov    rbx,rax
2d6578	cmp    rax,rdi
2d657b	jbe    0x2d65b2
2d657d	lea    rdx,[rbx-0x1]
2d6581	mov    rcx,rsi
2d6584	call   0x2d4ccc
2d6589	lea    rcx,[rsp+0x40]
2d658e	mov    dl,BYTE PTR [rax]
2d6590	call   0x2d50e0
2d6595	test   al,al
2d6597	jne    0x2d65aa
2d6599	lea    rdx,[rbx-0x1]
2d659d	mov    rcx,rsi
2d65a0	call   0x2d4ccc
2d65a5	cmp    BYTE PTR [rax],0x2e
2d65a8	jne    0x2d65b2
2d65aa	dec    rbx
2d65ad	cmp    rbx,rdi
2d65b0	ja     0x2d657d
2d65b2	sub    rbx,rdi
2d65b5	mov    r8,rdi
2d65b8	mov    r9,rbx
2d65bb	mov    rdx,rbp
2d65be	mov    rcx,rsi
2d65c1	call   0x2d9498
2d65c6	mov    rbx,QWORD PTR [rsp+0x48]
2d65cb	mov    rax,rbp
2d65ce	mov    rbp,QWORD PTR [rsp+0x50]
2d65d3	add    rsp,0x20
2d65d7	pop    r14
2d65d9	pop    rdi
2d65da	pop    rsi
2d65db	ret
