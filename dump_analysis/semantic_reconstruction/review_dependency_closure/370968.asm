370968	mov    QWORD PTR [rsp+0x8],rbx
37096d	mov    QWORD PTR [rsp+0x10],rbp
370972	push   rsi
370973	push   rdi
370974	push   r14
370976	sub    rsp,0x60
37097a	mov    r14,rdx
37097d	mov    rbp,rcx
370980	call   0x2caf08
370985	test   al,al
370987	je     0x370a8f
37098d	mov    eax,DWORD PTR [rip+0x8f94d]        # 0x4002e0
370993	test   al,0x1
370995	jne    0x370a4c
37099b	or     eax,0x1
37099e	lea    rdx,[rsp+0x90]
3709a6	lea    rcx,[rsp+0x90]
3709ae	mov    DWORD PTR [rip+0x8f92c],eax        # 0x4002e0
3709b4	call   0x2cc730
3709b9	mov    rcx,rax
3709bc	call   0x2cdca4
3709c1	lea    rdx,[rsp+0x30]
3709c6	mov    rsi,rax
3709c9	lea    rcx,[rsp+0x98]
3709d1	call   0x3703d0   ; STR "set_size"
3709d6	mov    rcx,rax
3709d9	call   0x2e9b8c
3709de	lea    rdx,[rsp+0x39]
3709e3	mov    rdi,rax
3709e6	lea    rcx,[rsp+0x98]
3709ee	call   0x370308   ; STR "UnityEngine"
3709f3	mov    rcx,rax
3709f6	call   0x2cde34
3709fb	lea    rdx,[rsp+0x45]
370a00	mov    rbx,rax
370a03	lea    rcx,[rsp+0x98]
370a0b	call   0x370258   ; STR "BoxCollider"
370a10	mov    rcx,rax
370a13	call   0x2cde34
370a18	mov    rcx,rax
370a1b	mov    rdx,rbx
370a1e	call   0x334224
370a23	or     r8d,0xffffffff
370a27	mov    rcx,rax
370a2a	mov    r9,rsi
370a2d	mov    DWORD PTR [rsp+0x20],r8d
370a32	mov    rdx,rdi
370a35	call   0x3349ac
370a3a	mov    r8,QWORD PTR [rax]
370a3d	mov    eax,DWORD PTR [rip+0x8f89d]        # 0x4002e0
370a43	mov    QWORD PTR [rip+0x8f88e],r8        # 0x4002d8
370a4a	jmp    0x370a53
370a4c	mov    r8,QWORD PTR [rip+0x8f885]        # 0x4002d8
370a53	test   al,0x2
370a55	jne    0x370a76
370a57	mov    rcx,QWORD PTR [rip+0x65402]        # 0x3d5e60
370a5e	lea    rdx,[rip+0x8f88b]        # 0x4002f0
370a65	or     eax,0x2
370a68	xor    r9d,r9d
370a6b	mov    DWORD PTR [rip+0x8f86f],eax        # 0x4002e0
370a71	call   0x2cbd24
370a76	mov    rcx,QWORD PTR [rip+0x653e3]        # 0x3d5e60
370a7d	lea    rdx,[rip+0x8f86c]        # 0x4002f0
370a84	mov    r9,r14
370a87	mov    r8,rbp
370a8a	call   0x2d2094
370a8f	lea    r11,[rsp+0x60]
370a94	mov    rbx,QWORD PTR [r11+0x20]
370a98	mov    rbp,QWORD PTR [r11+0x28]
370a9c	mov    rsp,r11
370a9f	pop    r14
370aa1	pop    rdi
370aa2	pop    rsi
370aa3	ret
