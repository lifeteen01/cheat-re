370fac	mov    QWORD PTR [rsp+0x8],rbx
370fb1	push   rbp
370fb2	push   rsi
370fb3	push   rdi
370fb4	sub    rsp,0x60
370fb8	mov    rbp,rcx
370fbb	call   0x2caf08
370fc0	test   al,al
370fc2	jne    0x370fcb
370fc4	xor    eax,eax
370fc6	jmp    0x3710ca
370fcb	mov    eax,DWORD PTR [rip+0x8fa8f]        # 0x400a60
370fd1	test   al,0x1
370fd3	jne    0x37108a
370fd9	or     eax,0x1
370fdc	lea    rdx,[rsp+0x88]
370fe4	lea    rcx,[rsp+0x88]
370fec	mov    DWORD PTR [rip+0x8fa6e],eax        # 0x400a60
370ff2	call   0x2cc730
370ff7	mov    rcx,rax
370ffa	call   0x2cdca4
370fff	lea    rdx,[rsp+0x39]
371004	mov    rsi,rax
371007	lea    rcx,[rsp+0x90]
37100f	call   0x370d2c   ; STR "GetMaterial"
371014	mov    rcx,rax
371017	call   0x2cde34
37101c	lea    rdx,[rsp+0x45]
371021	mov    rdi,rax
371024	lea    rcx,[rsp+0x90]
37102c	call   0x370cbc   ; STR "UnityEngine"
371031	mov    rcx,rax
371034	call   0x2cde34
371039	lea    rdx,[rsp+0x30]
37103e	mov    rbx,rax
371041	lea    rcx,[rsp+0x90]
371049	call   0x370c4c   ; STR "Renderer"
37104e	mov    rcx,rax
371051	call   0x2e9b8c
371056	mov    rcx,rax
371059	mov    rdx,rbx
37105c	call   0x334224
371061	or     r8d,0xffffffff
371065	mov    rcx,rax
371068	mov    r9,rsi
37106b	mov    DWORD PTR [rsp+0x20],r8d
371070	mov    rdx,rdi
371073	call   0x3349ac
371078	mov    r8,QWORD PTR [rax]
37107b	mov    eax,DWORD PTR [rip+0x8f9df]        # 0x400a60
371081	mov    QWORD PTR [rip+0x8f9d0],r8        # 0x400a58
371088	jmp    0x371091
37108a	mov    r8,QWORD PTR [rip+0x8f9c7]        # 0x400a58
371091	test   al,0x2
371093	jne    0x3710b4
371095	mov    rcx,QWORD PTR [rip+0x64dc4]        # 0x3d5e60
37109c	lea    rdx,[rip+0x8f9cd]        # 0x400a70
3710a3	or     eax,0x2
3710a6	xor    r9d,r9d
3710a9	mov    DWORD PTR [rip+0x8f9b1],eax        # 0x400a60
3710af	call   0x2cbd24
3710b4	mov    rcx,QWORD PTR [rip+0x64da5]        # 0x3d5e60
3710bb	lea    rdx,[rip+0x8f9ae]        # 0x400a70
3710c2	mov    r8,rbp
3710c5	call   0x2cb9fc
3710ca	mov    rbx,QWORD PTR [rsp+0x80]
3710d2	add    rsp,0x60
3710d6	pop    rdi
3710d7	pop    rsi
3710d8	pop    rbp
3710d9	ret
