3a31bc	mov    r11,rsp
3a31bf	sub    rsp,0x58
3a31c3	mov    rax,QWORD PTR [rsp+0x80]
3a31cb	xorps  xmm2,xmm2
3a31ce	mov    QWORD PTR [r11-0x18],0x0
3a31d6	movss  DWORD PTR [rsp+0x38],xmm2
3a31dc	mov    QWORD PTR [r11-0x28],rax
3a31e0	mov    QWORD PTR [r11-0x30],r9
3a31e4	mov    r9,rdx
3a31e7	xor    edx,edx
3a31e9	mov    DWORD PTR [r11-0x38],r8d
3a31ed	call   0x3a31f8
3a31f2	add    rsp,0x58
3a31f6	ret
