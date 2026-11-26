36ba2c	rex push rbx
36ba2e	sub    rsp,0x40
36ba32	movaps XMMWORD PTR [rsp+0x30],xmm6
36ba37	mov    rbx,rcx
36ba3a	movaps xmm6,xmm1
36ba3d	call   0x2caf08
36ba42	test   al,al
36ba44	je     0x36babf
36ba46	mov    rcx,rbx
36ba49	call   0x36bacc
36ba4e	test   al,al
36ba50	je     0x36babf
36ba52	mov    rcx,rbx
36ba55	call   0x36b9a0
36ba5a	test   al,al
36ba5c	jne    0x36babf
36ba5e	movss  xmm0,DWORD PTR [rip+0xfffffffffff293d6]        # 0x294e3c
36ba66	comiss xmm0,xmm6
36ba69	jbe    0x36babf
36ba6b	lea    rdx,[rsp+0x20]
36ba70	lea    rcx,[rsp+0x60]
36ba75	call   0x36b3bc   ; STR "use_self"
36ba7a	mov    rcx,rax
36ba7d	call   0x2e9b8c
36ba82	mov    rdx,rax
36ba85	mov    rcx,rbx
36ba88	call   0x36c274
36ba8d	movss  xmm1,DWORD PTR [rbx+0x304]
36ba95	mov    rcx,rbx
36ba98	call   0x36c0f0
36ba9d	lea    rdx,[rsp+0x60]
36baa2	lea    rcx,[rsp+0x60]
36baa7	call   0x36b420
36baac	mov    rcx,rax
36baaf	call   0x2e3614
36bab4	mov    rdx,rax
36bab7	mov    rcx,rbx
36baba	call   0x366c30
36babf	movaps xmm6,XMMWORD PTR [rsp+0x30]
36bac4	add    rsp,0x40
36bac8	pop    rbx
36bac9	ret
