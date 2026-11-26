2e0bf0	rex push rbx
2e0bf2	push   rsi
2e0bf3	push   rdi
2e0bf4	sub    rsp,0x50
2e0bf8	mov    eax,DWORD PTR [rip+0xf66fa]        # 0x3d72f8
2e0bfe	test   al,0x1
2e0c00	jne    0x2e0cab
2e0c06	or     eax,0x1
2e0c09	lea    rdx,[rsp+0x70]
2e0c0e	lea    rcx,[rsp+0x70]
2e0c13	mov    DWORD PTR [rip+0xf66df],eax        # 0x3d72f8
2e0c19	call   0x2cc730
2e0c1e	mov    rcx,rax
2e0c21	call   0x2cdca4
2e0c26	lea    rdx,[rsp+0x3c]
2e0c2b	mov    rsi,rax
2e0c2e	lea    rcx,[rsp+0x78]
2e0c33	call   0x2dfb78   ; STR "get_smoothDeltaTime"
2e0c38	mov    rcx,rax
2e0c3b	call   0x2cddbc
2e0c40	lea    rdx,[rsp+0x30]
2e0c45	mov    rdi,rax
2e0c48	lea    rcx,[rsp+0x78]
2e0c4d	call   0x2dfa20   ; STR "UnityEngine"
2e0c52	mov    rcx,rax
2e0c55	call   0x2cde0c
2e0c5a	lea    rdx,[rsp+0x80]
2e0c62	mov    rbx,rax
2e0c65	lea    rcx,[rsp+0x78]
2e0c6a	call   0x2df908   ; STR "Time"
2e0c6f	mov    rcx,rax
2e0c72	call   0x2e35ec
2e0c77	mov    rcx,rax
2e0c7a	mov    rdx,rbx
2e0c7d	call   0x334224
2e0c82	or     r8d,0xffffffff
2e0c86	mov    rcx,rax
2e0c89	mov    r9,rsi
2e0c8c	mov    DWORD PTR [rsp+0x20],r8d
2e0c91	mov    rdx,rdi
2e0c94	call   0x3349ac
2e0c99	mov    r8,QWORD PTR [rax]
2e0c9c	mov    eax,DWORD PTR [rip+0xf6656]        # 0x3d72f8
2e0ca2	mov    QWORD PTR [rip+0xf6647],r8        # 0x3d72f0
2e0ca9	jmp    0x2e0cb2
2e0cab	mov    r8,QWORD PTR [rip+0xf663e]        # 0x3d72f0
2e0cb2	test   al,0x2
2e0cb4	jne    0x2e0cd5
2e0cb6	mov    rcx,QWORD PTR [rip+0xf51a3]        # 0x3d5e60
2e0cbd	lea    rdx,[rip+0xf663c]        # 0x3d7300
2e0cc4	or     eax,0x2
2e0cc7	xor    r9d,r9d
2e0cca	mov    DWORD PTR [rip+0xf6628],eax        # 0x3d72f8
2e0cd0	call   0x2cbd24
2e0cd5	mov    rcx,QWORD PTR [rip+0xf5184]        # 0x3d5e60
2e0cdc	lea    rdx,[rip+0xf661d]        # 0x3d7300
2e0ce3	add    rsp,0x50
2e0ce7	pop    rdi
2e0ce8	pop    rsi
2e0ce9	pop    rbx
2e0cea	jmp    0x2de950
