315a24	sub    rsp,0x28
315a28	mov    rax,QWORD PTR [rip+0xc14d1]        # 0x3d6f00
315a2f	mov    rdx,QWORD PTR [rax+0xf0c8518]
315a36	mov    rcx,rdx
315a39	call   0x2caf08
315a3e	test   al,al
315a40	jne    0x315a46
315a42	xor    eax,eax
315a44	jmp    0x315a4d
315a46	mov    rax,QWORD PTR [rdx+0xb8]
315a4d	add    rsp,0x28
315a51	ret
