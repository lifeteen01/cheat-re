321484	rex push rbx
321486	sub    rsp,0x20
32148a	mov    rbx,rcx
32148d	call   0x2e0e4c
321492	test   al,al
321494	jne    0x3214d1
321496	call   0x2e069c
32149b	mov    rcx,rax
32149e	call   0x2caf08
3214a3	test   al,al
3214a5	je     0x3214d1
3214a7	call   0x2dda9c
3214ac	mov    rcx,rax
3214af	call   0x2caf08
3214b4	test   al,al
3214b6	je     0x3214d1
3214b8	test   rbx,rbx
3214bb	je     0x3214d1
3214bd	mov    rcx,QWORD PTR [rbx]
3214c0	test   rcx,rcx
3214c3	je     0x3214d1
3214c5	call   0x2e0e9c
3214ca	test   al,al
3214cc	setne  al
3214cf	jmp    0x3214d3
3214d1	xor    al,al
3214d3	add    rsp,0x20
3214d7	pop    rbx
3214d8	ret
