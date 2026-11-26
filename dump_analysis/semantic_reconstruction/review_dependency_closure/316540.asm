316540	rex push rbx
316542	sub    rsp,0x20
316546	mov    rcx,rdx
316549	mov    rbx,rdx
31654c	call   0x2caf08
316551	test   al,al
316553	je     0x31656e
316555	mov    rcx,rdx
316558	call   0x2e0e9c
31655d	test   al,al
31655f	je     0x31656e
316561	mov    rcx,rbx
316564	call   0x2fabf8
316569	call   0x2fb2f4
31656e	add    rsp,0x20
316572	pop    rbx
316573	ret
