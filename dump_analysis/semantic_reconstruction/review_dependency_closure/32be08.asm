32be08	mov    QWORD PTR [rsp+0x8],rbx
32be0d	push   rbp
32be0e	push   rsi
32be0f	push   rdi
32be10	sub    rsp,0x60
32be14	mov    rbp,rcx
32be17	call   0x2caf08
32be1c	test   al,al
32be1e	jne    0x32be27
32be20	xor    eax,eax
32be22	jmp    0x32bf26
32be27	mov    eax,DWORD PTR [rip+0xcbcb3]        # 0x3f7ae0
32be2d	test   al,0x1
32be2f	jne    0x32bee6
32be35	or     eax,0x1
32be38	lea    rdx,[rsp+0x88]
32be40	lea    rcx,[rsp+0x88]
32be48	mov    DWORD PTR [rip+0xcbc92],eax        # 0x3f7ae0
32be4e	call   0x2cc730
32be53	mov    rcx,rax
32be56	call   0x2cdca4
32be5b	lea    rdx,[rsp+0x46]
32be60	mov    rsi,rax
32be63	lea    rcx,[rsp+0x90]
32be6b	call   0x32b9ec   ; STR "get_transform"
32be70	mov    rcx,rax
32be73	call   0x2d861c
32be78	lea    rdx,[rsp+0x3a]
32be7d	mov    rdi,rax
32be80	lea    rcx,[rsp+0x90]
32be88	call   0x32b93c   ; STR "UnityEngine"
32be8d	mov    rcx,rax
32be90	call   0x2cde0c
32be95	lea    rdx,[rsp+0x30]
32be9a	mov    rbx,rax
32be9d	lea    rcx,[rsp+0x90]
32bea5	call   0x32b8d4   ; STR "Component"
32beaa	mov    rcx,rax
32bead	call   0x2cdd1c
32beb2	mov    rcx,rax
32beb5	mov    rdx,rbx
32beb8	call   0x334224
32bebd	or     r8d,0xffffffff
32bec1	mov    rcx,rax
32bec4	mov    r9,rsi
32bec7	mov    DWORD PTR [rsp+0x20],r8d
32becc	mov    rdx,rdi
32becf	call   0x3349ac
32bed4	mov    r8,QWORD PTR [rax]
32bed7	mov    eax,DWORD PTR [rip+0xcbc03]        # 0x3f7ae0
32bedd	mov    QWORD PTR [rip+0xcbbf4],r8        # 0x3f7ad8
32bee4	jmp    0x32beed
32bee6	mov    r8,QWORD PTR [rip+0xcbbeb]        # 0x3f7ad8
32beed	test   al,0x2
32beef	jne    0x32bf10
32bef1	mov    rcx,QWORD PTR [rip+0xa9f68]        # 0x3d5e60
32bef8	lea    rdx,[rip+0xcbbf1]        # 0x3f7af0
32beff	or     eax,0x2
32bf02	xor    r9d,r9d
32bf05	mov    DWORD PTR [rip+0xcbbd5],eax        # 0x3f7ae0
32bf0b	call   0x2cbd24
32bf10	mov    rcx,QWORD PTR [rip+0xa9f49]        # 0x3d5e60
32bf17	lea    rdx,[rip+0xcbbd2]        # 0x3f7af0
32bf1e	mov    r8,rbp
32bf21	call   0x2cb9fc
32bf26	mov    rbx,QWORD PTR [rsp+0x80]
32bf2e	add    rsp,0x60
32bf32	pop    rdi
32bf33	pop    rsi
32bf34	pop    rbp
32bf35	ret
