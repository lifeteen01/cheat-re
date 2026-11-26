3717c0	mov    QWORD PTR [rsp+0x8],rbx
3717c5	push   rdi
3717c6	sub    rsp,0x20
3717ca	mov    rbx,rcx
3717cd	call   0x2caf08
3717d2	test   al,al
3717d4	je     0x371819
3717d6	mov    rcx,rbx
3717d9	call   0x37154c
3717de	mov    rcx,rax
3717e1	mov    rdi,rax
3717e4	call   0x2caf08
3717e9	test   al,al
3717eb	je     0x371819
3717ed	mov    rcx,rdi
3717f0	call   0x37261c
3717f5	cmp    eax,0x5ef97b9
3717fa	je     0x371803
3717fc	cmp    eax,0xc652dc60
371801	jne    0x371819
371803	mov    rcx,rdi
371806	call   0x37236c
37180b	xor    ecx,ecx
37180d	cmp    eax,0x1
371810	cmovne rbx,rcx
371814	mov    rax,rbx
371817	jmp    0x37181b
371819	xor    eax,eax
37181b	mov    rbx,QWORD PTR [rsp+0x30]
371820	add    rsp,0x20
371824	pop    rdi
371825	ret
