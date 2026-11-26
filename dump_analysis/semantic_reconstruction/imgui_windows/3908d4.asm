3908d4	mov    QWORD PTR [rsp+0x8],rbx
3908d9	push   rbp
3908da	push   rsi
3908db	push   rdi
3908dc	sub    rsp,0x20
3908e0	mov    rsi,QWORD PTR [rip+0x75241]        # 0x405b28
3908e7	mov    rbx,rcx
3908ea	mov    edi,0x3d8
3908ef	mov    ebp,edx
3908f1	mov    ecx,edi
3908f3	call   0x395158
3908f8	mov    dl,BYTE PTR [rsp+0x48]
3908fc	mov    r8,rax
3908ff	mov    ecx,edi
390901	call   0x38bb6c
390906	test   rax,rax
390909	je     0x39091e
39090b	mov    r8,rbx
39090e	mov    rdx,rsi
390911	mov    rcx,rax
390914	call   0x38b6d4
390919	mov    rbx,rax
39091c	jmp    0x390920
39091e	xor    ebx,ebx
390920	mov    DWORD PTR [rbx+0x14],ebp
390923	lea    rcx,[rsi+0x3ee8]
39092a	mov    edx,DWORD PTR [rbx+0x10]
39092d	mov    r8,rbx
390930	mov    QWORD PTR [rsp+0x50],rbx
390935	call   0x39ba10
39093a	xor    edi,edi
39093c	bt     ebp,0x8
390940	jb     0x390967
390942	mov    rcx,rbx
390945	call   0x391dd0
39094a	mov    rdi,rax
39094d	test   rax,rax
390950	je     0x390967
390952	lea    rcx,[rsi+0x5c20]
390959	mov    rdx,rax
39095c	call   0x39ee98
390961	mov    DWORD PTR [rbx+0x294],eax
390967	mov    rdx,rdi
39096a	mov    rcx,rbx
39096d	call   0x393cbc
390972	lea    rcx,[rsi+0x3ea8]
390979	lea    rdx,[rsp+0x50]
39097e	call   0x37a658
390983	mov    rax,rbx
390986	mov    rbx,QWORD PTR [rsp+0x40]
39098b	add    rsp,0x20
39098f	pop    rdi
390990	pop    rsi
390991	pop    rbp
390992	ret
