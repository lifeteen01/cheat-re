398b04	rex push rbx
398b06	sub    rsp,0x20
398b0a	mov    rax,QWORD PTR [rip+0x6d017]        # 0x405b28
398b11	mov    rdx,rcx
398b14	xor    r8d,r8d
398b17	mov    rbx,QWORD PTR [rax+0x3f08]
398b1e	mov    rcx,rbx
398b21	call   0x392614
398b26	lea    rcx,[rbx+0xf0]
398b2d	mov    DWORD PTR [rsp+0x38],eax
398b31	lea    rdx,[rsp+0x38]
398b36	call   0x39eee8
398b3b	add    rsp,0x20
398b3f	pop    rbx
398b40	ret
