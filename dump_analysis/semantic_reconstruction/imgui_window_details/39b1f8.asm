39b1f8	sub    rsp,0x28
39b1fc	mov    rdx,rcx
39b1ff	mov    rcx,QWORD PTR [rip+0x6a922]        # 0x405b28
39b206	mov    rax,QWORD PTR [rcx+0xb8]
39b20d	test   rax,rax
39b210	je     0x39b21b
39b212	mov    rcx,QWORD PTR [rcx+0xc0]
39b219	call   rax
39b21b	add    rsp,0x28
39b21f	ret
