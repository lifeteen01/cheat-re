2d4c70	mov    QWORD PTR [rsp+0x8],rbx
2d4c75	push   rdi
2d4c76	sub    rsp,0x20
2d4c7a	mov    rbx,rcx
2d4c7d	mov    rdi,rdx
2d4c80	mov    rcx,rdx
2d4c83	call   0x2cb3a4
2d4c88	cmp    rbx,rax
2d4c8b	je     0x2d4ca3
2d4c8d	mov    r8,QWORD PTR [rdi+0x8]
2d4c91	mov    rcx,rbx
2d4c94	sub    r8,QWORD PTR [rdi]
2d4c97	mov    rdx,QWORD PTR [rdi]
2d4c9a	sar    r8,0x5
2d4c9e	call   0x2cf200
2d4ca3	mov    rax,rbx
2d4ca6	mov    rbx,QWORD PTR [rsp+0x30]
2d4cab	add    rsp,0x20
2d4caf	pop    rdi
2d4cb0	ret
