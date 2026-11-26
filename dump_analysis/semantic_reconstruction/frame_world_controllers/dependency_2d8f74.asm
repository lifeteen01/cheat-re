2d8f74	mov    BYTE PTR [rsp+0x10],dl
2d8f78	push   rbx
2d8f79	sub    rsp,0x20
2d8f7d	mov    rbx,QWORD PTR [rcx+0x10]
2d8f81	cmp    rbx,QWORD PTR [rcx+0x18]
2d8f85	jae    0x2d8fbd
2d8f87	lea    rax,[rbx+0x1]
2d8f8b	mov    QWORD PTR [rcx+0x10],rax
2d8f8f	call   0x2cd4e4
2d8f94	add    rbx,rax
2d8f97	lea    rdx,[rsp+0x38]
2d8f9c	mov    rcx,rbx
2d8f9f	call   0x2cd7e4
2d8fa4	lea    rcx,[rbx+0x1]
2d8fa8	mov    BYTE PTR [rsp+0x30],0x0
2d8fad	lea    rdx,[rsp+0x30]
2d8fb2	call   0x2cd7e4
2d8fb7	add    rsp,0x20
2d8fbb	pop    rbx
2d8fbc	ret
2d8fbd	mov    r8b,BYTE PTR [rsp+0x30]
2d8fc2	mov    r9b,dl
2d8fc5	mov    edx,0x1
2d8fca	add    rsp,0x20
2d8fce	pop    rbx
2d8fcf	jmp    0x2d14a8
