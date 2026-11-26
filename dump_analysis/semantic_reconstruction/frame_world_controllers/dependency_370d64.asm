370d64	mov    QWORD PTR [rsp+0x8],rbx
370d69	mov    QWORD PTR [rsp+0x10],rbp
370d6e	push   rsi
370d6f	push   rdi
370d70	push   r14
370d72	sub    rsp,0x50
370d76	mov    rbp,r8
370d79	mov    r14,rdx
370d7c	mov    rsi,rcx
370d7f	call   0x2caf08
370d84	test   al,al
370d86	je     0x370e70
370d8c	mov    eax,DWORD PTR [rip+0x8f9fe]        # 0x400790
370d92	test   al,0x1
370d94	jne    0x370e28
370d9a	or     eax,0x1
370d9d	lea    rdx,[rsp+0x30]
370da2	lea    rcx,[rsp+0x88]
370daa	mov    DWORD PTR [rip+0x8f9e0],eax        # 0x400790
370db0	call   0x370cf4   ; STR "SetColor"
370db5	mov    rcx,rax
370db8	call   0x2e9b8c
370dbd	lea    rdx,[rsp+0x42]
370dc2	mov    rdi,rax
370dc5	lea    rcx,[rsp+0x88]
370dcd	call   0x370c84   ; STR "UnityEngine"
370dd2	mov    rcx,rax
370dd5	call   0x2cde34
370dda	lea    rdx,[rsp+0x39]
370ddf	mov    rbx,rax
370de2	lea    rcx,[rsp+0x88]
370dea	call   0x370c14   ; STR "Material"
370def	mov    rcx,rax
370df2	call   0x2e9b8c
370df7	mov    rcx,rax
370dfa	mov    rdx,rbx
370dfd	call   0x334224
370e02	mov    rcx,rax
370e05	mov    r9b,0x1
370e08	mov    r8d,0x2
370e0e	mov    rdx,rdi
370e11	call   0x334a90
370e16	mov    r8,QWORD PTR [rax]
370e19	mov    eax,DWORD PTR [rip+0x8f971]        # 0x400790
370e1f	mov    QWORD PTR [rip+0x8f962],r8        # 0x400788
370e26	jmp    0x370e2f
370e28	mov    r8,QWORD PTR [rip+0x8f959]        # 0x400788
370e2f	test   al,0x2
370e31	jne    0x370e52
370e33	mov    rcx,QWORD PTR [rip+0x65026]        # 0x3d5e60
370e3a	lea    rdx,[rip+0x8f95f]        # 0x4007a0
370e41	or     eax,0x2
370e44	xor    r9d,r9d
370e47	mov    DWORD PTR [rip+0x8f943],eax        # 0x400790
370e4d	call   0x2cbd24
370e52	mov    rcx,QWORD PTR [rip+0x65007]        # 0x3d5e60
370e59	lea    rdx,[rip+0x8f940]        # 0x4007a0
370e60	mov    r9,r14
370e63	mov    QWORD PTR [rsp+0x20],rbp
370e68	mov    r8,rsi
370e6b	call   0x2cba50
370e70	mov    rbx,QWORD PTR [rsp+0x70]
370e75	mov    rbp,QWORD PTR [rsp+0x78]
370e7a	add    rsp,0x50
370e7e	pop    r14
370e80	pop    rdi
370e81	pop    rsi
370e82	ret
