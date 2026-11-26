366d7c	mov    QWORD PTR [rsp+0x8],rbx
366d81	mov    QWORD PTR [rsp+0x10],rsi
366d86	push   rdi
366d87	sub    rsp,0x30
366d8b	mov    rdi,r8
366d8e	mov    rbx,rcx
366d91	call   0x2caf08
366d96	test   al,al
366d98	je     0x366e28
366d9e	mov    rcx,rdx
366da1	call   0x2ce5dc
366da6	mov    rcx,rdi
366da9	mov    rsi,rax
366dac	call   0x2ce5dc
366db1	mov    edx,DWORD PTR [rip+0x96e59]        # 0x3fdc10
366db7	mov    rdi,rax
366dba	test   dl,0x1
366dbd	jne    0x366ddf
366dbf	mov    r8,QWORD PTR [rip+0x7013a]        # 0x3d6f00
366dc6	or     edx,0x1
366dc9	add    r8,0x390c430
366dd0	mov    DWORD PTR [rip+0x96e3a],edx        # 0x3fdc10
366dd6	mov    QWORD PTR [rip+0x96e2b],r8        # 0x3fdc08
366ddd	jmp    0x366de6
366ddf	mov    r8,QWORD PTR [rip+0x96e22]        # 0x3fdc08
366de6	test   dl,0x2
366de9	jne    0x366e0a
366deb	mov    rcx,QWORD PTR [rip+0x6f06e]        # 0x3d5e60
366df2	or     edx,0x2
366df5	mov    DWORD PTR [rip+0x96e15],edx        # 0x3fdc10
366dfb	xor    r9d,r9d
366dfe	lea    rdx,[rip+0x96e1b]        # 0x3fdc20
366e05	call   0x2cbd24
366e0a	mov    rcx,QWORD PTR [rip+0x6f04f]        # 0x3d5e60
366e11	lea    rdx,[rip+0x96e08]        # 0x3fdc20
366e18	mov    r9,rsi
366e1b	mov    QWORD PTR [rsp+0x20],rdi
366e20	mov    r8,rbx
366e23	call   0x2cba50
366e28	mov    rbx,QWORD PTR [rsp+0x40]
366e2d	mov    rsi,QWORD PTR [rsp+0x48]
366e32	add    rsp,0x30
366e36	pop    rdi
366e37	ret
