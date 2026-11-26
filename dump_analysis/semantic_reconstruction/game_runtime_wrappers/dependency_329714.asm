329714	sub    rsp,0x28
329718	mov    rax,QWORD PTR [rip+0xad7e1]        # 0x3d6f00
32971f	mov    rdx,QWORD PTR [rax+0xf0a3650]
329726	mov    rcx,rdx
329729	call   0x2caf08
32972e	test   al,al
329730	je     0x32974b
329732	mov    rdx,QWORD PTR [rdx+0xb8]
329739	mov    rcx,rdx
32973c	call   0x2caf08
329741	test   al,al
329743	je     0x32974b
329745	mov    rax,QWORD PTR [rdx+0x20]
329749	jmp    0x32974d
32974b	xor    eax,eax
32974d	add    rsp,0x28
329751	ret
