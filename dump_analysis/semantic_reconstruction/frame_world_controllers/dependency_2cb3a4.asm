2cb3a4	mov    rax,rcx
2cb3a7	ret
2cb3a8	mov    QWORD PTR [rsp+0x18],rbx
2cb3ad	mov    QWORD PTR [rsp+0x10],rdx
2cb3b2	mov    QWORD PTR [rsp+0x8],rcx
2cb3b7	push   rdi
2cb3b8	sub    rsp,0x20
2cb3bc	mov    rbx,rdx
2cb3bf	mov    rdi,rcx
2cb3c2	call   0x2ce5a4
2cb3c7	test   al,al
2cb3c9	je     0x2cb3d5
2cb3cb	mov    rcx,rdi
2cb3ce	call   0x38a3cc
2cb3d3	jmp    0x2cb402
2cb3d5	cmp    rbx,0x1000
2cb3dc	jb     0x2cb3f7
2cb3de	lea    rdx,[rsp+0x38]
2cb3e3	lea    rcx,[rsp+0x30]
2cb3e8	call   0x2ccf14
2cb3ed	mov    rbx,QWORD PTR [rsp+0x38]
2cb3f2	mov    rdi,QWORD PTR [rsp+0x30]
2cb3f7	mov    rdx,rbx
2cb3fa	mov    rcx,rdi
2cb3fd	call   0x38a3cc
2cb402	mov    rbx,QWORD PTR [rsp+0x40]
2cb407	add    rsp,0x20
2cb40b	pop    rdi
2cb40c	ret
