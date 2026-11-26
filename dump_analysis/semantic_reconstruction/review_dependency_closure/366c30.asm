366c30	mov    QWORD PTR [rsp+0x8],rbx
366c35	push   rdi
366c36	sub    rsp,0x20
366c3a	mov    rbx,rcx
366c3d	call   0x2caf08
366c42	test   al,al
366c44	je     0x366cc0
366c46	mov    rcx,rdx
366c49	call   0x2ce5dc
366c4e	mov    edx,DWORD PTR [rip+0x96ecc]        # 0x3fdb20
366c54	mov    rdi,rax
366c57	test   dl,0x1
366c5a	jne    0x366c7c
366c5c	mov    r8,QWORD PTR [rip+0x7029d]        # 0x3d6f00
366c63	or     edx,0x1
366c66	add    r8,0x3907c80
366c6d	mov    DWORD PTR [rip+0x96ead],edx        # 0x3fdb20
366c73	mov    QWORD PTR [rip+0x96e9e],r8        # 0x3fdb18
366c7a	jmp    0x366c83
366c7c	mov    r8,QWORD PTR [rip+0x96e95]        # 0x3fdb18
366c83	test   dl,0x2
366c86	jne    0x366ca7
366c88	mov    rcx,QWORD PTR [rip+0x6f1d1]        # 0x3d5e60
366c8f	or     edx,0x2
366c92	mov    DWORD PTR [rip+0x96e88],edx        # 0x3fdb20
366c98	xor    r9d,r9d
366c9b	lea    rdx,[rip+0x96e8e]        # 0x3fdb30
366ca2	call   0x2cbd24
366ca7	mov    rcx,QWORD PTR [rip+0x6f1b2]        # 0x3d5e60
366cae	lea    rdx,[rip+0x96e7b]        # 0x3fdb30
366cb5	mov    r9,rdi
366cb8	mov    r8,rbx
366cbb	call   0x2d2094
366cc0	mov    rbx,QWORD PTR [rsp+0x30]
366cc5	add    rsp,0x20
366cc9	pop    rdi
366cca	ret
