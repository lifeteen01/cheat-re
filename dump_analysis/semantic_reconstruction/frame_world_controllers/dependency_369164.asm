369164	rex push rbx
369166	sub    rsp,0x20
36916a	mov    rbx,rdx
36916d	mov    r8,rcx
369170	call   0x2caf08
369175	test   al,al
369177	je     0x3691ad
369179	cmp    BYTE PTR [rip+0x8ecc8],0x0        # 0x3f7e48
369180	mov    rcx,r8
369183	je     0x36918c
369185	call   0x36924c
36918a	jmp    0x3691b5
36918c	call   0x369298
369191	mov    rcx,rax
369194	mov    r8,rax
369197	call   0x2caf08
36919c	test   al,al
36919e	je     0x3691ad
3691a0	mov    rdx,rbx
3691a3	mov    rcx,r8
3691a6	call   0x373a68
3691ab	jmp    0x3691b5
3691ad	mov    rcx,rbx
3691b0	call   0x3c7bbc
3691b5	mov    rax,rbx
3691b8	add    rsp,0x20
3691bc	pop    rbx
3691bd	ret
