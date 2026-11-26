375d30	mov    QWORD PTR [rsp+0x8],rbx
375d35	mov    QWORD PTR [rsp+0x10],rbp
375d3a	push   rsi
375d3b	push   rdi
375d3c	push   r14
375d3e	sub    rsp,0x60
375d42	mov    r14b,dl
375d45	mov    rbp,rcx
375d48	call   0x2caf08
375d4d	test   al,al
375d4f	je     0x375e57
375d55	mov    eax,DWORD PTR [rip+0x8cce5]        # 0x402a40
375d5b	test   al,0x1
375d5d	jne    0x375e14
375d63	or     eax,0x1
375d66	lea    rdx,[rsp+0x90]
375d6e	lea    rcx,[rsp+0x90]
375d76	mov    DWORD PTR [rip+0x8ccc4],eax        # 0x402a40
375d7c	call   0x2cc730
375d81	mov    rcx,rax
375d84	call   0x2cdca4
375d89	lea    rdx,[rsp+0x39]
375d8e	mov    rsi,rax
375d91	lea    rcx,[rsp+0x98]
375d99	call   0x375a84   ; STR "set_enabled"
375d9e	mov    rcx,rax
375da1	call   0x375860
375da6	lea    rdx,[rsp+0x45]
375dab	mov    rdi,rax
375dae	lea    rcx,[rsp+0x98]
375db6	call   0x3759e4   ; STR "UnityEngine"
375dbb	mov    rcx,rax
375dbe	call   0x375860
375dc3	lea    rdx,[rsp+0x30]
375dc8	mov    rbx,rax
375dcb	lea    rcx,[rsp+0x98]
375dd3	call   0x375950   ; STR "Collider"
375dd8	mov    rcx,rax
375ddb	call   0x375798
375de0	mov    rcx,rax
375de3	mov    rdx,rbx
375de6	call   0x334224
375deb	or     r8d,0xffffffff
375def	mov    rcx,rax
375df2	mov    r9,rsi
375df5	mov    DWORD PTR [rsp+0x20],r8d
375dfa	mov    rdx,rdi
375dfd	call   0x3349ac
375e02	mov    r8,QWORD PTR [rax]
375e05	mov    eax,DWORD PTR [rip+0x8cc35]        # 0x402a40
375e0b	mov    QWORD PTR [rip+0x8cc26],r8        # 0x402a38
375e12	jmp    0x375e1b
375e14	mov    r8,QWORD PTR [rip+0x8cc1d]        # 0x402a38
375e1b	test   al,0x2
375e1d	jne    0x375e3e
375e1f	mov    rcx,QWORD PTR [rip+0x6003a]        # 0x3d5e60
375e26	lea    rdx,[rip+0x8cc23]        # 0x402a50
375e2d	or     eax,0x2
375e30	xor    r9d,r9d
375e33	mov    DWORD PTR [rip+0x8cc07],eax        # 0x402a40
375e39	call   0x2cbd24
375e3e	mov    rcx,QWORD PTR [rip+0x6001b]        # 0x3d5e60
375e45	lea    rdx,[rip+0x8cc04]        # 0x402a50
375e4c	mov    r9b,r14b
375e4f	mov    r8,rbp
375e52	call   0x3214f4
375e57	lea    r11,[rsp+0x60]
375e5c	mov    rbx,QWORD PTR [r11+0x20]
375e60	mov    rbp,QWORD PTR [r11+0x28]
375e64	mov    rsp,r11
375e67	pop    r14
375e69	pop    rdi
375e6a	pop    rsi
375e6b	ret
