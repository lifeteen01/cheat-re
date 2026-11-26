329a38	sub    rsp,0x28
329a3c	mov    rax,QWORD PTR [rip+0xad4bd]        # 0x3d6f00
329a43	mov    rdx,QWORD PTR [rax+0xf0083d0]
329a4a	mov    rcx,rdx
329a4d	call   0x2caf08
329a52	test   al,al
329a54	jne    0x329a5a
329a56	xor    eax,eax
329a58	jmp    0x329a61
329a5a	mov    rax,QWORD PTR [rdx+0xb8]
329a61	add    rsp,0x28
329a65	ret
