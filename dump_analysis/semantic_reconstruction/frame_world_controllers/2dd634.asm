2dd634	rex push rbp
2dd636	push   rbx
2dd637	push   rsi
2dd638	push   rdi
2dd639	push   r12
2dd63b	push   r14
2dd63d	push   r15
2dd63f	lea    rbp,[rsp-0xa0]
2dd647	sub    rsp,0x1a0
2dd64e	lea    rcx,[rip+0xf9853]        # 0x3d6ea8
2dd655	call   0x2dcf98
2dd65a	lea    rcx,[rip+0xf9757]        # 0x3d6db8
2dd661	call   0x2d79c0
2dd666	lea    rcx,[rip+0xf974b]        # 0x3d6db8
2dd66d	mov    r12,rax
2dd670	call   0x2d1978
2dd675	mov    r15,rax
2dd678	cmp    rax,r12
2dd67b	je     0x2dd7e4
2dd681	movss  xmm1,DWORD PTR [r15+0x28]
2dd687	lea    rcx,[rbp+0x80]
2dd68e	call   0x2d9540
2dd693	movss  xmm1,DWORD PTR [r15+0x24]
2dd699	lea    rcx,[rbp+0x60]
2dd69d	mov    r14,rax
2dd6a0	call   0x2d9540
2dd6a5	movzx  edx,BYTE PTR [r15+0x2c]
2dd6aa	lea    rcx,[rbp+0x40]
2dd6ae	mov    rsi,rax
2dd6b1	call   0x2d9510
2dd6b6	mov    edx,DWORD PTR [r15+0x20]
2dd6ba	lea    rcx,[rbp+0x20]
2dd6be	mov    rdi,rax
2dd6c1	call   0x2d9510
2dd6c6	lea    r8,[rip+0xfffffffffffaff13]        # 0x28d5e0
2dd6cd	mov    rdx,r15
2dd6d0	lea    rcx,[rbp+0x0]
2dd6d4	mov    rbx,rax
2dd6d7	call   0x2cefd4
2dd6dc	mov    rdx,rax
2dd6df	lea    rcx,[rbp-0x20]
2dd6e3	mov    r8,rbx
2dd6e6	call   0x2cef40
2dd6eb	mov    rdx,rax
2dd6ee	lea    r8,[rip+0xfffffffffffafeeb]        # 0x28d5e0
2dd6f5	lea    rcx,[rbp-0x40]
2dd6f9	call   0x2cad38
2dd6fe	mov    rdx,rax
2dd701	lea    rcx,[rbp-0x60]
2dd705	mov    r8,rdi
2dd708	call   0x2cef40
2dd70d	mov    rdx,rax
2dd710	lea    r8,[rip+0xfffffffffffafec9]        # 0x28d5e0
2dd717	lea    rcx,[rbp-0x80]
2dd71b	call   0x2cad38
2dd720	mov    rdx,rax
2dd723	lea    rcx,[rsp+0x60]
2dd728	mov    r8,rsi
2dd72b	call   0x2cef40
2dd730	mov    rdx,rax
2dd733	lea    r8,[rip+0xfffffffffffafea6]        # 0x28d5e0
2dd73a	lea    rcx,[rsp+0x40]
2dd73f	call   0x2cad38
2dd744	mov    rdx,rax
2dd747	lea    rcx,[rsp+0x20]
2dd74c	mov    r8,r14
2dd74f	call   0x2cef40
2dd754	lea    rcx,[rsp+0x40]
2dd759	call   0x2cc4f4
2dd75e	lea    rcx,[rsp+0x60]
2dd763	call   0x2cc4f4
2dd768	lea    rcx,[rbp-0x80]
2dd76c	call   0x2cc4f4
2dd771	lea    rcx,[rbp-0x60]
2dd775	call   0x2cc4f4
2dd77a	lea    rcx,[rbp-0x40]
2dd77e	call   0x2cc4f4
2dd783	lea    rcx,[rbp-0x20]
2dd787	call   0x2cc4f4
2dd78c	lea    rcx,[rbp+0x0]
2dd790	call   0x2cc4f4
2dd795	lea    rcx,[rbp+0x20]
2dd799	call   0x2cc4f4
2dd79e	lea    rcx,[rbp+0x40]
2dd7a2	call   0x2cc4f4
2dd7a7	lea    rcx,[rbp+0x60]
2dd7ab	call   0x2cc4f4
2dd7b0	lea    rcx,[rbp+0x80]
2dd7b7	call   0x2cc4f4
2dd7bc	lea    rdx,[rsp+0x20]
2dd7c1	lea    rcx,[rip+0xf96e0]        # 0x3d6ea8
2dd7c8	call   0x2d901c
2dd7cd	lea    rcx,[rsp+0x20]
2dd7d2	call   0x2cc4f4
2dd7d7	add    r15,0x68
2dd7db	cmp    r15,r12
2dd7de	jne    0x2dd681
2dd7e4	lea    rcx,[rip+0xfffffffffff3afad]        # 0x218798
2dd7eb	call   0x2d79c0
2dd7f0	lea    rcx,[rip+0xfffffffffff3afa1]        # 0x218798
2dd7f7	mov    rdi,rax
2dd7fa	call   0x2d1978
2dd7ff	mov    rbx,rax
2dd802	cmp    rax,rdi
2dd805	je     0x2dd819
2dd807	mov    rcx,QWORD PTR [rbx]
2dd80a	mov    rdx,QWORD PTR [rcx]
2dd80d	call   QWORD PTR [rdx+0x8]
2dd810	add    rbx,0x8
2dd814	cmp    rbx,rdi
2dd817	jne    0x2dd807
2dd819	add    rsp,0x1a0
2dd820	pop    r15
2dd822	pop    r14
2dd824	pop    r12
2dd826	pop    rdi
2dd827	pop    rsi
2dd828	pop    rbx
2dd829	pop    rbp
2dd82a	jmp    0x2dd9cc
