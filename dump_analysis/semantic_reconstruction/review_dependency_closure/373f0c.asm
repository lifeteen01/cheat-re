373f0c	mov    QWORD PTR [rsp+0x8],rbx
373f11	push   rbp
373f12	push   rsi
373f13	push   rdi
373f14	sub    rsp,0x80
373f1b	movaps XMMWORD PTR [rsp+0x70],xmm6
373f20	mov    rbp,rcx
373f23	movaps xmm6,xmm1
373f26	call   0x2caf08
373f2b	test   al,al
373f2d	je     0x374035
373f33	mov    eax,DWORD PTR [rip+0x8dc07]        # 0x401b40
373f39	test   al,0x1
373f3b	jne    0x373ff2
373f41	or     eax,0x1
373f44	lea    rdx,[rsp+0xb0]
373f4c	lea    rcx,[rsp+0xb0]
373f54	mov    DWORD PTR [rip+0x8dbe6],eax        # 0x401b40
373f5a	call   0x2cc730
373f5f	mov    rcx,rax
373f62	call   0x2cdca4
373f67	lea    rdx,[rsp+0x44]
373f6c	mov    rsi,rax
373f6f	lea    rcx,[rsp+0xb8]
373f77	call   0x373e90   ; STR "%adb7a5f1f195e60174cae56fc8b24e1362215881"
373f7c	mov    rcx,rax
373f7f	call   0x2e3704
373f84	lea    rdx,[rsp+0x30]
373f89	mov    rdi,rax
373f8c	lea    rcx,[rsp+0xb8]
373f94	call   0x2cc730
373f99	mov    rcx,rax
373f9c	call   0x2cdca4
373fa1	lea    rdx,[rsp+0x31]
373fa6	mov    rbx,rax
373fa9	lea    rcx,[rsp+0xb8]
373fb1	call   0x373e78   ; STR "PlayerWalkMovement"
373fb6	mov    rcx,rax
373fb9	call   0x2cdd94
373fbe	mov    rcx,rax
373fc1	mov    rdx,rbx
373fc4	call   0x334224
373fc9	or     r8d,0xffffffff
373fcd	mov    rcx,rax
373fd0	mov    r9,rsi
373fd3	mov    DWORD PTR [rsp+0x20],r8d
373fd8	mov    rdx,rdi
373fdb	call   0x3349ac
373fe0	mov    r8,QWORD PTR [rax]
373fe3	mov    eax,DWORD PTR [rip+0x8db57]        # 0x401b40
373fe9	mov    QWORD PTR [rip+0x8db48],r8        # 0x401b38
373ff0	jmp    0x373ff9
373ff2	mov    r8,QWORD PTR [rip+0x8db3f]        # 0x401b38
373ff9	test   al,0x2
373ffb	jne    0x37401c
373ffd	mov    rcx,QWORD PTR [rip+0x61e5c]        # 0x3d5e60
374004	lea    rdx,[rip+0x8db45]        # 0x401b50
37400b	or     eax,0x2
37400e	xor    r9d,r9d
374011	mov    DWORD PTR [rip+0x8db29],eax        # 0x401b40
374017	call   0x2cbd24
37401c	mov    rcx,QWORD PTR [rip+0x61e3d]        # 0x3d5e60
374023	lea    rdx,[rip+0x8db26]        # 0x401b50
37402a	movaps xmm3,xmm6
37402d	mov    r8,rbp
374030	call   0x32225c
374035	mov    rbx,QWORD PTR [rsp+0xa0]
37403d	movaps xmm6,XMMWORD PTR [rsp+0x70]
374042	add    rsp,0x80
374049	pop    rdi
37404a	pop    rsi
37404b	pop    rbp
37404c	ret
