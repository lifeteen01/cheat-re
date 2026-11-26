3934b4	rex push rbx
3934b6	push   rbp
3934b7	push   rsi
3934b8	push   rdi
3934b9	push   r14
3934bb	sub    rsp,0x20
3934bf	mov    r14,r8
3934c2	mov    rbx,rdx
3934c5	mov    rsi,rcx
3934c8	test   rdx,rdx
3934cb	je     0x3934d2
3934cd	mov    rbp,QWORD PTR [rdx]
3934d0	jmp    0x3934db
3934d2	call   0x3ca904
3934d7	lea    rbp,[rax+0x1]
3934db	mov    rcx,r14
3934de	call   0x3ca904
3934e3	lea    rdi,[rax+0x1]
3934e7	cmp    rbp,rdi
3934ea	jae    0x393507
3934ec	mov    rcx,rsi
3934ef	call   0x39517c
3934f4	mov    rcx,rdi
3934f7	call   0x395158
3934fc	mov    rsi,rax
3934ff	test   rbx,rbx
393502	je     0x393507
393504	mov    QWORD PTR [rbx],rdi
393507	mov    r8,rdi
39350a	mov    rdx,r14
39350d	mov    rcx,rsi
393510	add    rsp,0x20
393514	pop    r14
393516	pop    rdi
393517	pop    rsi
393518	pop    rbp
393519	pop    rbx
39351a	jmp    0x3c8d4c
