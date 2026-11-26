370e84	mov    QWORD PTR [rsp+0x8],rbx
370e89	push   rbp
370e8a	push   rsi
370e8b	push   rdi
370e8c	sub    rsp,0x50
370e90	mov    rbp,rcx
370e93	call   0x2caf08
370e98	test   al,al
370e9a	jne    0x370ea3
370e9c	xor    eax,eax
370e9e	jmp    0x370f9c
370ea3	mov    eax,DWORD PTR [rip+0x8fac7]        # 0x400970
370ea9	test   al,0x1
370eab	jne    0x370f5c
370eb1	or     eax,0x1
370eb4	lea    rdx,[rsp+0x78]
370eb9	lea    rcx,[rsp+0x78]
370ebe	mov    DWORD PTR [rip+0x8faac],eax        # 0x400970
370ec4	call   0x2cc730
370ec9	mov    rcx,rax
370ecc	call   0x2cdca4
370ed1	lea    rdx,[rsp+0x39]
370ed6	mov    rsi,rax
370ed9	lea    rcx,[rsp+0x80]
370ee1	call   0x370d10   ; STR "get_shader"
370ee6	mov    rcx,rax
370ee9	call   0x2e9c54
370eee	lea    rdx,[rsp+0x44]
370ef3	mov    rdi,rax
370ef6	lea    rcx,[rsp+0x80]
370efe	call   0x370ca0   ; STR "UnityEngine"
370f03	mov    rcx,rax
370f06	call   0x2cde34
370f0b	lea    rdx,[rsp+0x30]
370f10	mov    rbx,rax
370f13	lea    rcx,[rsp+0x80]
370f1b	call   0x370c30   ; STR "Material"
370f20	mov    rcx,rax
370f23	call   0x2e9b8c
370f28	mov    rcx,rax
370f2b	mov    rdx,rbx
370f2e	call   0x334224
370f33	or     r8d,0xffffffff
370f37	mov    rcx,rax
370f3a	mov    r9,rsi
370f3d	mov    DWORD PTR [rsp+0x20],r8d
370f42	mov    rdx,rdi
370f45	call   0x3349ac
370f4a	mov    r8,QWORD PTR [rax]
370f4d	mov    eax,DWORD PTR [rip+0x8fa1d]        # 0x400970
370f53	mov    QWORD PTR [rip+0x8fa0e],r8        # 0x400968
370f5a	jmp    0x370f63
370f5c	mov    r8,QWORD PTR [rip+0x8fa05]        # 0x400968
370f63	test   al,0x2
370f65	jne    0x370f86
370f67	mov    rcx,QWORD PTR [rip+0x64ef2]        # 0x3d5e60
370f6e	lea    rdx,[rip+0x8fa0b]        # 0x400980
370f75	or     eax,0x2
370f78	xor    r9d,r9d
370f7b	mov    DWORD PTR [rip+0x8f9ef],eax        # 0x400970
370f81	call   0x2cbd24
370f86	mov    rcx,QWORD PTR [rip+0x64ed3]        # 0x3d5e60
370f8d	lea    rdx,[rip+0x8f9ec]        # 0x400980
370f94	mov    r8,rbp
370f97	call   0x2cb9fc
370f9c	mov    rbx,QWORD PTR [rsp+0x70]
370fa1	add    rsp,0x50
370fa5	pop    rdi
370fa6	pop    rsi
370fa7	pop    rbp
370fa8	ret
