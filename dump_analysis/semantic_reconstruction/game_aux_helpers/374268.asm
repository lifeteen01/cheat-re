374268	rex push rbx
37426a	sub    rsp,0x20
37426e	mov    rbx,rcx
374271	call   0x2caf08
374276	test   al,al
374278	je     0x3742a4
37427a	mov    rcx,rbx
37427d	call   0x37423c
374282	comiss xmm0,DWORD PTR [rip+0xfffffffffff18fc3]        # 0x28d24c
374289	jbe    0x3742a4
37428b	mov    rcx,rbx
37428e	call   0x374300
374293	movss  xmm1,DWORD PTR [rip+0xfffffffffff34c31]        # 0x2a8ecc
37429b	comiss xmm1,xmm0
37429e	jbe    0x3742a4
3742a0	mov    al,0x1
3742a2	jmp    0x3742a6
3742a4	xor    al,al
3742a6	add    rsp,0x20
3742aa	pop    rbx
3742ab	ret
