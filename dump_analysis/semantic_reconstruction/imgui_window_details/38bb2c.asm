38bb2c	rex push rbx
38bb2e	sub    rsp,0x20
38bb32	xorps  xmm2,xmm2
38bb35	xorps  xmm1,xmm1
38bb38	mov    rbx,rcx
38bb3b	call   0x2cc340
38bb40	lea    rcx,[rbx+0x8]
38bb44	xorps  xmm2,xmm2
38bb47	xorps  xmm1,xmm1
38bb4a	call   0x2cc340
38bb4f	mov    rax,rbx
38bb52	add    rsp,0x20
38bb56	pop    rbx
38bb57	ret
