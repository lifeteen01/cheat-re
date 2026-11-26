2ddbf8	movss  DWORD PTR [rcx],xmm1
2ddbfc	mov    rax,rcx
2ddbff	ret
2ddc00	rex push rbx
2ddc02	sub    rsp,0x40
2ddc06	movsd  xmm0,QWORD PTR [rcx+0x48]
2ddc0b	lea    r8,[rcx+0x8]
2ddc0f	mov    eax,DWORD PTR [rcx+0x50]
2ddc12	lea    r9,[rsp+0x20]
2ddc17	mov    rbx,rcx
2ddc1a	movsd  QWORD PTR [rsp+0x20],xmm0
2ddc20	lea    rcx,[rip+0xf91a9]        # 0x3d6dd0
2ddc27	mov    DWORD PTR [rsp+0x28],eax
2ddc2b	lea    rdx,[rsp+0x30]
2ddc30	call   0x2d33f0
2ddc35	movsd  xmm0,QWORD PTR [rax]
2ddc39	movsd  QWORD PTR [rbx+0x48],xmm0
2ddc3e	mov    eax,DWORD PTR [rax+0x8]
2ddc41	mov    DWORD PTR [rbx+0x50],eax
2ddc44	add    rsp,0x40
2ddc48	pop    rbx
2ddc49	ret
