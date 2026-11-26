373eb4	sub    rsp,0x28
373eb8	mov    r8,rcx
373ebb	call   0x2caf08
373ec0	test   al,al
373ec2	je     0x373f04
373ec4	mov    eax,DWORD PTR [rip+0x8dd5e]        # 0x401c28
373eca	test   eax,eax
373ecc	jne    0x373edb
373ece	mov    eax,DWORD PTR [r8+0x210]
373ed5	mov    DWORD PTR [rip+0x8dd4d],eax        # 0x401c28
373edb	mov    ecx,DWORD PTR [rip+0x8dd4b]        # 0x401c2c
373ee1	test   ecx,ecx
373ee3	jne    0x373ef2
373ee5	mov    ecx,DWORD PTR [r8+0x200]
373eec	mov    DWORD PTR [rip+0x8dd3a],ecx        # 0x401c2c
373ef2	test   dl,dl
373ef4	je     0x373f04
373ef6	mov    DWORD PTR [r8+0x210],eax
373efd	mov    DWORD PTR [r8+0x200],ecx
373f04	add    rsp,0x28
373f08	ret
