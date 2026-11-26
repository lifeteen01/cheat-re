374d60	mov    QWORD PTR [rsp+0x8],rbx
374d65	mov    QWORD PTR [rsp+0x10],rsi
374d6a	push   rbp
374d6b	push   rdi
374d6c	push   r12
374d6e	push   r14
374d70	push   r15
374d72	mov    rbp,rsp
374d75	sub    rsp,0x80
374d7c	mov    r12,r8
374d7f	mov    r14,rdx
374d82	mov    r15,rcx
374d85	call   0x2caf08
374d8a	test   al,al
374d8c	jne    0x374d9b
374d8e	mov    rcx,rdx
374d91	call   0x3c7bbc
374d96	jmp    0x374ea6
374d9b	mov    eax,DWORD PTR [rip+0x8d24f]        # 0x401ff0
374da1	test   al,0x1
374da3	jne    0x374e43
374da9	or     eax,0x1
374dac	lea    rdx,[rbp+0x48]
374db0	lea    rcx,[rbp+0x48]
374db4	mov    DWORD PTR [rip+0x8d236],eax        # 0x401ff0
374dba	call   0x2cc730
374dbf	mov    rcx,rax
374dc2	call   0x2cdca4
374dc7	lea    rdx,[rbp-0x24]
374dcb	mov    rsi,rax
374dce	lea    rcx,[rbp-0x50]
374dd2	call   0x3746f4   ; STR "InverseTransformPoint"
374dd7	mov    rcx,rax
374dda	call   0x375810
374ddf	lea    rdx,[rbp-0x30]
374de3	mov    rdi,rax
374de6	lea    rcx,[rbp-0x50]
374dea	call   0x3745cc   ; STR "UnityEngine"
374def	mov    rcx,rax
374df2	call   0x375860
374df7	lea    rdx,[rbp-0x4f]
374dfb	mov    rbx,rax
374dfe	lea    rcx,[rbp-0x50]
374e02	call   0x3744b4   ; STR "Transform"
374e07	mov    rcx,rax
374e0a	call   0x3757c0
374e0f	mov    rcx,rax
374e12	mov    rdx,rbx
374e15	call   0x334224
374e1a	or     r8d,0xffffffff
374e1e	mov    rcx,rax
374e21	mov    r9,rsi
374e24	mov    DWORD PTR [rsp+0x20],r8d
374e29	mov    rdx,rdi
374e2c	call   0x3349ac
374e31	mov    r8,QWORD PTR [rax]
374e34	mov    eax,DWORD PTR [rip+0x8d1b6]        # 0x401ff0
374e3a	mov    QWORD PTR [rip+0x8d1a7],r8        # 0x401fe8
374e41	jmp    0x374e4a
374e43	mov    r8,QWORD PTR [rip+0x8d19e]        # 0x401fe8
374e4a	test   al,0x2
374e4c	jne    0x374e6d
374e4e	mov    rcx,QWORD PTR [rip+0x6100b]        # 0x3d5e60
374e55	lea    rdx,[rip+0x8d1a4]        # 0x402000
374e5c	or     eax,0x2
374e5f	xor    r9d,r9d
374e62	mov    DWORD PTR [rip+0x8d188],eax        # 0x401ff0
374e68	call   0x2cbd24
374e6d	lea    rcx,[rbp-0x40]
374e71	call   0x3c7bbc
374e76	mov    rcx,QWORD PTR [rip+0x60fe3]        # 0x3d5e60
374e7d	lea    r8,[rbp-0x40]
374e81	mov    r9,r15
374e84	mov    QWORD PTR [rsp+0x20],r12
374e89	lea    rdx,[rip+0x8d170]        # 0x402000
374e90	call   0x2cba50
374e95	movsd  xmm0,QWORD PTR [rbp-0x40]
374e9a	mov    eax,DWORD PTR [rbp-0x38]
374e9d	movsd  QWORD PTR [r14],xmm0
374ea2	mov    DWORD PTR [r14+0x8],eax
374ea6	lea    r11,[rsp+0x80]
374eae	mov    rax,r14
374eb1	mov    rbx,QWORD PTR [r11+0x30]
374eb5	mov    rsi,QWORD PTR [r11+0x38]
374eb9	mov    rsp,r11
374ebc	pop    r15
374ebe	pop    r14
374ec0	pop    r12
374ec2	pop    rdi
374ec3	pop    rbp
374ec4	ret
