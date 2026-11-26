36817c	rex push rbx
36817e	sub    rsp,0x20
368182	mov    rbx,rcx
368185	call   0x2caf08
36818a	test   al,al
36818c	je     0x3681fa
36818e	mov    edx,DWORD PTR [rip+0x96abc]        # 0x3fec50
368194	test   dl,0x1
368197	jne    0x3681b9
368199	mov    r8,QWORD PTR [rip+0x6ed60]        # 0x3d6f00
3681a0	or     edx,0x1
3681a3	add    r8,0x3e66250
3681aa	mov    DWORD PTR [rip+0x96aa0],edx        # 0x3fec50
3681b0	mov    QWORD PTR [rip+0x96a91],r8        # 0x3fec48
3681b7	jmp    0x3681c0
3681b9	mov    r8,QWORD PTR [rip+0x96a88]        # 0x3fec48
3681c0	test   dl,0x2
3681c3	jne    0x3681e4
3681c5	mov    rcx,QWORD PTR [rip+0x6dc94]        # 0x3d5e60
3681cc	or     edx,0x2
3681cf	mov    DWORD PTR [rip+0x96a7b],edx        # 0x3fec50
3681d5	xor    r9d,r9d
3681d8	lea    rdx,[rip+0x96a81]        # 0x3fec60
3681df	call   0x2cbd24
3681e4	mov    rcx,QWORD PTR [rip+0x6dc75]        # 0x3d5e60
3681eb	lea    rdx,[rip+0x96a6e]        # 0x3fec60
3681f2	mov    r8,rbx
3681f5	call   0x2cb9fc
3681fa	add    rsp,0x20
3681fe	pop    rbx
3681ff	ret
