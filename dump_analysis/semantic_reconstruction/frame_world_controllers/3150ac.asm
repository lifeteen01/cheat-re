3150ac	sub    rsp,0x28
3150b0	mov    ecx,DWORD PTR [rip+0xdb6ea]        # 0x3f07a0
3150b6	test   cl,0x1
3150b9	jne    0x3150db
3150bb	mov    r8,QWORD PTR [rip+0xc1e3e]        # 0x3d6f00
3150c2	or     ecx,0x1
3150c5	add    r8,0x2bfaec0
3150cc	mov    DWORD PTR [rip+0xdb6ce],ecx        # 0x3f07a0
3150d2	mov    QWORD PTR [rip+0xdb6bf],r8        # 0x3f0798
3150d9	jmp    0x3150e2
3150db	mov    r8,QWORD PTR [rip+0xdb6b6]        # 0x3f0798
3150e2	test   cl,0x2
3150e5	jne    0x315106
3150e7	or     ecx,0x2
3150ea	lea    rdx,[rip+0xdb6bf]        # 0x3f07b0
3150f1	mov    DWORD PTR [rip+0xdb6a9],ecx        # 0x3f07a0
3150f7	xor    r9d,r9d
3150fa	mov    rcx,QWORD PTR [rip+0xc0d5f]        # 0x3d5e60
315101	call   0x2cbd24
315106	mov    rcx,QWORD PTR [rip+0xc0d53]        # 0x3d5e60
31510d	lea    rdx,[rip+0xdb69c]        # 0x3f07b0
315114	add    rsp,0x28
315118	jmp    0x2dda18
