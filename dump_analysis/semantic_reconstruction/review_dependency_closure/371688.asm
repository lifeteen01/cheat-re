371688	rex push rbx
37168a	sub    rsp,0x20
37168e	mov    rbx,rcx
371691	call   0x2caf08
371696	test   al,al
371698	je     0x3716d7
37169a	mov    rcx,rbx
37169d	call   0x37154c
3716a2	mov    rcx,rax
3716a5	mov    rdx,rax
3716a8	call   0x2caf08
3716ad	test   al,al
3716af	je     0x3716d7
3716b1	mov    rcx,rdx
3716b4	call   0x37261c
3716b9	cmp    eax,0x2f6656f8
3716be	je     0x3716d2
3716c0	cmp    eax,0xb9ece859
3716c5	je     0x3716d2
3716c7	xor    ecx,ecx
3716c9	cmp    eax,0x6e10f78c
3716ce	cmovne rbx,rcx
3716d2	mov    rax,rbx
3716d5	jmp    0x3716d9
3716d7	xor    eax,eax
3716d9	add    rsp,0x20
3716dd	pop    rbx
3716de	ret
