2d92ec	mov    QWORD PTR [rsp+0x10],rbx
2d92f1	push   rdi
2d92f2	sub    rsp,0x20
2d92f6	mov    rdi,rcx
2d92f9	cmp    QWORD PTR [rcx+0x18],rdx
2d92fd	jae    0x2d9314
2d92ff	mov    rbx,QWORD PTR [rcx+0x10]
2d9303	mov    r8b,BYTE PTR [rsp+0x30]
2d9308	sub    rdx,rbx
2d930b	call   0x2d15a0
2d9310	mov    QWORD PTR [rdi+0x10],rbx
2d9314	mov    rbx,QWORD PTR [rsp+0x38]
2d9319	add    rsp,0x20
2d931d	pop    rdi
2d931e	ret
