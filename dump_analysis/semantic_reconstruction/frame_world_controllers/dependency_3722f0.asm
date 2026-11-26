3722f0	sub    rsp,0x28
3722f4	mov    r8d,edx
3722f7	mov    rdx,rcx
3722fa	call   0x2caf08
3722ff	test   al,al
372301	je     0x372332
372303	mov    rdx,QWORD PTR [rdx+0x20]
372307	mov    rcx,rdx
37230a	call   0x2caf08
37230f	test   al,al
372311	je     0x372332
372313	mov    rdx,QWORD PTR [rdx+0x10]
372317	mov    rcx,rdx
37231a	call   0x2caf08
37231f	test   al,al
372321	je     0x372332
372323	lea    ecx,[r8*8+0x0]
37232b	mov    rax,QWORD PTR [rcx+rdx*1+0x20]
372330	jmp    0x372334
372332	xor    eax,eax
372334	add    rsp,0x28
372338	ret
