3bff14	rex push rbx
3bff16	sub    rsp,0x40
3bff1a	mov    rbx,rcx
3bff1d	lea    rcx,[rsp+0x58]
3bff22	test   edx,edx
3bff24	jne    0x3bff32
3bff26	lea    rdx,[rsp+0x20]
3bff2b	call   0x3bc2f8   ; STR "#SCROLLX"
3bff30	jmp    0x3bff3c
3bff32	lea    rdx,[rsp+0x29]
3bff37	call   0x3bc37c   ; STR "#SCROLLY"
3bff3c	mov    rcx,rax
3bff3f	call   0x39e924
3bff44	mov    rdx,rax
3bff47	xor    r8d,r8d
3bff4a	mov    rcx,rbx
3bff4d	call   0x392614
3bff52	add    rsp,0x40
3bff56	pop    rbx
3bff57	ret
