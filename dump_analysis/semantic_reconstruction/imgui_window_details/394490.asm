394490	mov    rax,QWORD PTR [rip+0x71691]        # 0x405b28
394497	movsxd rdx,ecx
39449a	cmp    BYTE PTR [rdx+rax*1+0xe10],0x0
3944a2	jne    0x3944a7
3944a4	xor    al,al
3944a6	ret
3944a7	jmp    0x394464
