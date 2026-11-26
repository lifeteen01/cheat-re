369e70	rex push rbp
369e72	push   rbx
369e73	push   rsi
369e74	push   rdi
369e75	mov    rbp,rsp
369e78	sub    rsp,0x78
369e7c	mov    rsi,rdx
369e7f	mov    rdx,rcx
369e82	call   0x2caf08
369e87	test   al,al
369e89	je     0x369f50
369e8f	test   r8b,r8b
369e92	jne    0x369f50
369e98	mov    rdx,QWORD PTR [rdx+0x640]
369e9f	mov    rcx,rdx
369ea2	call   0x2caf08
369ea7	test   al,al
369ea9	je     0x369f50
369eaf	add    rdx,0x14
369eb3	lea    rcx,[rbp-0x48]
369eb7	call   0x2d45c8
369ebc	lea    rcx,[rbp-0x48]
369ec0	call   0x2d8694
369ec5	test   al,al
369ec7	je     0x369ee3
369ec9	lea    rdx,[rip+0xfffffffffff23458]        # 0x28d328
369ed0	mov    rcx,rsi
369ed3	call   0x2cc2cc
369ed8	lea    rcx,[rbp-0x48]
369edc	call   0x2d4a50
369ee1	jmp    0x369f5f
369ee3	lea    rdx,[rbp-0x58]
369ee7	lea    rcx,[rbp-0x48]
369eeb	call   0x2d8728
369ef0	lea    rdx,[rbp-0x50]
369ef4	lea    rcx,[rbp-0x48]
369ef8	mov    rbx,QWORD PTR [rax]
369efb	call   0x2d7d40
369f00	lea    rcx,[rbp+0x40]
369f04	mov    rdi,rax
369f07	call   0x2cb3a4
369f0c	mov    rdx,QWORD PTR [rdi]
369f0f	lea    rcx,[rbp-0x28]
369f13	mov    r9,rax
369f16	mov    r8,rbx
369f19	call   0x2cee44
369f1e	lea    rcx,[rbp-0x28]
369f22	call   0x2d8694
369f27	mov    rcx,rsi
369f2a	test   al,al
369f2c	je     0x369f45
369f2e	lea    rdx,[rip+0xfffffffffff233f3]        # 0x28d328
369f35	call   0x2cc2cc
369f3a	lea    rcx,[rbp-0x28]
369f3e	call   0x2cc4f4
369f43	jmp    0x369ed8
369f45	lea    rdx,[rbp-0x28]
369f49	call   0x2cc284
369f4e	jmp    0x369f3a
369f50	lea    rdx,[rip+0xfffffffffff233d1]        # 0x28d328
369f57	mov    rcx,rsi
369f5a	call   0x2cc2cc
369f5f	mov    rax,rsi
369f62	add    rsp,0x78
369f66	pop    rdi
369f67	pop    rsi
369f68	pop    rbx
369f69	pop    rbp
369f6a	ret
