391d84	mov    QWORD PTR [rsp+0x8],rbx
391d89	push   rdi
391d8a	sub    rsp,0x20
391d8e	mov    rbx,QWORD PTR [rip+0x73d93]        # 0x405b28
391d95	mov    edi,ecx
391d97	lea    rcx,[rbx+0x5c20]
391d9e	call   0x39e390
391da3	jmp    0x391dbe
391da5	cmp    DWORD PTR [rax],edi
391da7	jne    0x391daf
391da9	cmp    BYTE PTR [rax+0xe],0x0
391dad	je     0x391dc3
391daf	mov    rdx,rax
391db2	lea    rcx,[rbx+0x5c20]
391db9	call   0x39ee58
391dbe	test   rax,rax
391dc1	jne    0x391da5
391dc3	mov    rbx,QWORD PTR [rsp+0x30]
391dc8	add    rsp,0x20
391dcc	pop    rdi
391dcd	ret
