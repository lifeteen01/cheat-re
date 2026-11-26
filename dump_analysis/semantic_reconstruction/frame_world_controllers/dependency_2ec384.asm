2ec384	mov    QWORD PTR [rsp+0x8],rbx
2ec389	mov    QWORD PTR [rsp+0x10],rsi
2ec38e	push   rdi
2ec38f	sub    rsp,0x20
2ec393	mov    rbx,r8
2ec396	mov    rsi,rdx
2ec399	mov    rdi,rcx
2ec39c	cmp    rcx,rdx
2ec39f	je     0x2ec3c1
2ec3a1	mov    rcx,rdi
2ec3a4	call   0x2cb3a4
2ec3a9	mov    rdx,rax
2ec3ac	mov    rcx,rbx
2ec3af	call   0x2ef634
2ec3b4	add    rbx,0x40
2ec3b8	add    rdi,0x40
2ec3bc	cmp    rdi,rsi
2ec3bf	jne    0x2ec3a1
2ec3c1	mov    rsi,QWORD PTR [rsp+0x38]
2ec3c6	mov    rax,rbx
2ec3c9	mov    rbx,QWORD PTR [rsp+0x30]
2ec3ce	add    rsp,0x20
2ec3d2	pop    rdi
2ec3d3	ret
