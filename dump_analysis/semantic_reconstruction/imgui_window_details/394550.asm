394550	mov    rax,QWORD PTR [rip+0x715d1]        # 0x405b28
394557	movss  xmm1,DWORD PTR [rip+0xfffffffffff15bfd]        # 0x2aa15c
39455f	add    rax,0xe08
394565	test   rcx,rcx
394568	cmovne rax,rcx
39456c	movss  xmm0,DWORD PTR [rax]
394570	comiss xmm0,xmm1
394573	jb     0x394582
394575	movss  xmm0,DWORD PTR [rax+0x4]
39457a	comiss xmm0,xmm1
39457d	jb     0x394582
39457f	mov    al,0x1
394581	ret
394582	xor    al,al
394584	ret
