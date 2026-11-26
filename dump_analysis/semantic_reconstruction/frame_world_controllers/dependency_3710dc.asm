3710dc	mov    QWORD PTR [rsp+0x8],rbx
3710e1	mov    QWORD PTR [rsp+0x10],rbp
3710e6	push   rsi
3710e7	push   rdi
3710e8	push   r14
3710ea	sub    rsp,0x50
3710ee	mov    r14,rdx
3710f1	mov    rbp,rcx
3710f4	call   0x2caf08
3710f9	test   al,al
3710fb	je     0x371203
371101	mov    eax,DWORD PTR [rip+0x8f779]        # 0x400880
371107	test   al,0x1
371109	jne    0x3711c0
37110f	or     eax,0x1
371112	lea    rdx,[rsp+0x80]
37111a	lea    rcx,[rsp+0x80]
371122	mov    DWORD PTR [rip+0x8f758],eax        # 0x400880
371128	call   0x2cc730
37112d	mov    rcx,rax
371130	call   0x2cdca4
371135	lea    rdx,[rsp+0x39]
37113a	mov    rsi,rax
37113d	lea    rcx,[rsp+0x88]
371145	call   0x370d48   ; STR "set_shader"
37114a	mov    rcx,rax
37114d	call   0x2e9c54
371152	lea    rdx,[rsp+0x44]
371157	mov    rdi,rax
37115a	lea    rcx,[rsp+0x88]
371162	call   0x370cd8   ; STR "UnityEngine"
371167	mov    rcx,rax
37116a	call   0x2cde34
37116f	lea    rdx,[rsp+0x30]
371174	mov    rbx,rax
371177	lea    rcx,[rsp+0x88]
37117f	call   0x370c68   ; STR "Material"
371184	mov    rcx,rax
371187	call   0x2e9b8c
37118c	mov    rcx,rax
37118f	mov    rdx,rbx
371192	call   0x334224
371197	or     r8d,0xffffffff
37119b	mov    rcx,rax
37119e	mov    r9,rsi
3711a1	mov    DWORD PTR [rsp+0x20],r8d
3711a6	mov    rdx,rdi
3711a9	call   0x3349ac
3711ae	mov    r8,QWORD PTR [rax]
3711b1	mov    eax,DWORD PTR [rip+0x8f6c9]        # 0x400880
3711b7	mov    QWORD PTR [rip+0x8f6ba],r8        # 0x400878
3711be	jmp    0x3711c7
3711c0	mov    r8,QWORD PTR [rip+0x8f6b1]        # 0x400878
3711c7	test   al,0x2
3711c9	jne    0x3711ea
3711cb	mov    rcx,QWORD PTR [rip+0x64c8e]        # 0x3d5e60
3711d2	lea    rdx,[rip+0x8f6b7]        # 0x400890
3711d9	or     eax,0x2
3711dc	xor    r9d,r9d
3711df	mov    DWORD PTR [rip+0x8f69b],eax        # 0x400880
3711e5	call   0x2cbd24
3711ea	mov    rcx,QWORD PTR [rip+0x64c6f]        # 0x3d5e60
3711f1	lea    rdx,[rip+0x8f698]        # 0x400890
3711f8	mov    r9,r14
3711fb	mov    r8,rbp
3711fe	call   0x2d2094
371203	mov    rbx,QWORD PTR [rsp+0x70]
371208	mov    rbp,QWORD PTR [rsp+0x78]
37120d	add    rsp,0x50
371211	pop    r14
371213	pop    rdi
371214	pop    rsi
371215	ret
