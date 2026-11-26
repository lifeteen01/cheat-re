2e0e9c	sub    rsp,0x28
2e0ea0	mov    r8,rcx
2e0ea3	call   0x2caf08
2e0ea8	test   al,al
2e0eaa	je     0x2e0ec2
2e0eac	mov    edx,0x48
2e0eb1	mov    rcx,r8
2e0eb4	call   0x2dee3c
2e0eb9	cmp    QWORD PTR [rax],0x0
2e0ebd	setne  al
2e0ec0	jmp    0x2e0ec4
2e0ec2	xor    al,al
2e0ec4	add    rsp,0x28
2e0ec8	ret
