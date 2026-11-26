392614	mov    QWORD PTR [rsp+0x8],rbx
392619	push   rdi
39261a	sub    rsp,0x20
39261e	add    rcx,0xf0
392625	mov    rbx,r8
392628	mov    rdi,rdx
39262b	call   0x39e304
392630	mov    rcx,rbx
392633	sub    rcx,rdi
392636	neg    rbx
392639	mov    r8d,DWORD PTR [rax]
39263c	sbb    rdx,rdx
39263f	and    rdx,rcx
392642	mov    rcx,rdi
392645	mov    rbx,QWORD PTR [rsp+0x30]
39264a	add    rsp,0x20
39264e	pop    rdi
39264f	jmp    0x39334c
