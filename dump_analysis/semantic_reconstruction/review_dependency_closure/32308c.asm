32308c	mov    QWORD PTR [rsp+0x8],rbx
323091	mov    QWORD PTR [rsp+0x10],rsi
323096	push   rdi
323097	sub    rsp,0x20
32309b	mov    rsi,r8
32309e	mov    rdi,rdx
3230a1	mov    rbx,rcx
3230a4	call   0x3164fc
3230a9	test   al,al
3230ab	jne    0x3230bd
3230ad	mov    rax,QWORD PTR [rdi]
3230b0	mov    QWORD PTR [rbx],rax
3230b3	mov    QWORD PTR [rdi],rsi
3230b6	mov    DWORD PTR [rbx+0x30],0x4
3230bd	mov    rbx,QWORD PTR [rsp+0x30]
3230c2	mov    al,0x1
3230c4	mov    rsi,QWORD PTR [rsp+0x38]
3230c9	add    rsp,0x20
3230cd	pop    rdi
3230ce	ret
