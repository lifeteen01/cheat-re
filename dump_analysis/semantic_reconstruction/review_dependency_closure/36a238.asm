36a238	rex push rbx
36a23a	sub    rsp,0x20
36a23e	mov    rbx,rcx
36a241	call   0x2caf08
36a246	test   al,al
36a248	je     0x36a2c0
36a24a	mov    ecx,DWORD PTR [rip+0x94460]        # 0x3fe6b0
36a250	test   cl,0x1
36a253	jne    0x36a275
36a255	mov    r8,QWORD PTR [rip+0x6cca4]        # 0x3d6f00
36a25c	or     ecx,0x1
36a25f	add    r8,0x3f464e0
36a266	mov    DWORD PTR [rip+0x94444],ecx        # 0x3fe6b0
36a26c	mov    QWORD PTR [rip+0x94435],r8        # 0x3fe6a8
36a273	jmp    0x36a27c
36a275	mov    r8,QWORD PTR [rip+0x9442c]        # 0x3fe6a8
36a27c	test   cl,0x2
36a27f	jne    0x36a2a0
36a281	or     ecx,0x2
36a284	lea    rdx,[rip+0x94435]        # 0x3fe6c0
36a28b	mov    DWORD PTR [rip+0x9441f],ecx        # 0x3fe6b0
36a291	xor    r9d,r9d
36a294	mov    rcx,QWORD PTR [rip+0x6bbc5]        # 0x3d5e60
36a29b	call   0x2cbd24
36a2a0	mov    rcx,QWORD PTR [rip+0x6bbb9]        # 0x3d5e60
36a2a7	lea    rdx,[rip+0x94412]        # 0x3fe6c0
36a2ae	mov    r8,rbx
36a2b1	call   0x2dea4c
36a2b6	comiss xmm0,DWORD PTR [rip+0xfffffffffff28e0b]        # 0x2930c8
36a2bd	setae  al
36a2c0	add    rsp,0x20
36a2c4	pop    rbx
36a2c5	ret
