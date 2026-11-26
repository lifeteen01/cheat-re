3691c0	rex push rbx
3691c2	sub    rsp,0x20
3691c6	mov    rbx,rdx
3691c9	mov    rdx,rcx
3691cc	call   0x2caf08
3691d1	test   al,al
3691d3	je     0x3691f9
3691d5	mov    rcx,rdx
3691d8	call   0x369298
3691dd	mov    rcx,rax
3691e0	mov    r8,rax
3691e3	call   0x2caf08
3691e8	test   al,al
3691ea	je     0x3691f9
3691ec	mov    rdx,rbx
3691ef	mov    rcx,r8
3691f2	call   0x373a68
3691f7	jmp    0x369201
3691f9	mov    rcx,rbx
3691fc	call   0x3c7bbc
369201	mov    rax,rbx
369204	add    rsp,0x20
369208	pop    rbx
369209	ret
