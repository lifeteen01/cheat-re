374bf8	mov    QWORD PTR [rsp+0x8],rbx
374bfd	mov    QWORD PTR [rsp+0x10],rsi
374c02	push   rbp
374c03	push   rdi
374c04	push   r12
374c06	push   r14
374c08	push   r15
374c0a	mov    rbp,rsp
374c0d	sub    rsp,0x80
374c14	mov    r12,r8
374c17	mov    r14,rdx
374c1a	mov    r15,rcx
374c1d	call   0x2caf08
374c22	test   al,al
374c24	jne    0x374c33
374c26	mov    rcx,rdx
374c29	call   0x3c7bbc
374c2e	jmp    0x374d3e
374c33	mov    eax,DWORD PTR [rip+0x8d4a7]        # 0x4020e0
374c39	test   al,0x1
374c3b	jne    0x374cdb
374c41	or     eax,0x1
374c44	lea    rdx,[rbp+0x48]
374c48	lea    rcx,[rbp+0x48]
374c4c	mov    DWORD PTR [rip+0x8d48e],eax        # 0x4020e0
374c52	call   0x2cc730
374c57	mov    rcx,rax
374c5a	call   0x2cdca4
374c5f	lea    rdx,[rbp-0x24]
374c63	mov    rsi,rax
374c66	lea    rcx,[rbp-0x50]
374c6a	call   0x3746d8   ; STR "InverseTransformDirection"
374c6f	mov    rcx,rax
374c72	call   0x375838
374c77	lea    rdx,[rbp-0x30]
374c7b	mov    rdi,rax
374c7e	lea    rcx,[rbp-0x50]
374c82	call   0x3745b0   ; STR "UnityEngine"
374c87	mov    rcx,rax
374c8a	call   0x375860
374c8f	lea    rdx,[rbp-0x4f]
374c93	mov    rbx,rax
374c96	lea    rcx,[rbp-0x50]
374c9a	call   0x374498   ; STR "Transform"
374c9f	mov    rcx,rax
374ca2	call   0x3757c0
374ca7	mov    rcx,rax
374caa	mov    rdx,rbx
374cad	call   0x334224
374cb2	or     r8d,0xffffffff
374cb6	mov    rcx,rax
374cb9	mov    r9,rsi
374cbc	mov    DWORD PTR [rsp+0x20],r8d
374cc1	mov    rdx,rdi
374cc4	call   0x3349ac
374cc9	mov    r8,QWORD PTR [rax]
374ccc	mov    eax,DWORD PTR [rip+0x8d40e]        # 0x4020e0
374cd2	mov    QWORD PTR [rip+0x8d3ff],r8        # 0x4020d8
374cd9	jmp    0x374ce2
374cdb	mov    r8,QWORD PTR [rip+0x8d3f6]        # 0x4020d8
374ce2	test   al,0x2
374ce4	jne    0x374d05
374ce6	mov    rcx,QWORD PTR [rip+0x61173]        # 0x3d5e60
374ced	lea    rdx,[rip+0x8d3fc]        # 0x4020f0
374cf4	or     eax,0x2
374cf7	xor    r9d,r9d
374cfa	mov    DWORD PTR [rip+0x8d3e0],eax        # 0x4020e0
374d00	call   0x2cbd24
374d05	lea    rcx,[rbp-0x40]
374d09	call   0x3c7bbc
374d0e	mov    rcx,QWORD PTR [rip+0x6114b]        # 0x3d5e60
374d15	lea    r8,[rbp-0x40]
374d19	mov    r9,r15
374d1c	mov    QWORD PTR [rsp+0x20],r12
374d21	lea    rdx,[rip+0x8d3c8]        # 0x4020f0
374d28	call   0x2cba50
374d2d	movsd  xmm0,QWORD PTR [rbp-0x40]
374d32	mov    eax,DWORD PTR [rbp-0x38]
374d35	movsd  QWORD PTR [r14],xmm0
374d3a	mov    DWORD PTR [r14+0x8],eax
374d3e	lea    r11,[rsp+0x80]
374d46	mov    rax,r14
374d49	mov    rbx,QWORD PTR [r11+0x30]
374d4d	mov    rsi,QWORD PTR [r11+0x38]
374d51	mov    rsp,r11
374d54	pop    r15
374d56	pop    r14
374d58	pop    r12
374d5a	pop    rdi
374d5b	pop    rbp
374d5c	ret
