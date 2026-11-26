38b6d4	mov    QWORD PTR [rsp+0x18],rbx
38b6d9	mov    QWORD PTR [rsp+0x8],rcx
38b6de	push   rbp
38b6df	push   rsi
38b6e0	push   rdi
38b6e1	push   r12
38b6e3	push   r13
38b6e5	push   r14
38b6e7	push   r15
38b6e9	sub    rsp,0x20
38b6ed	mov    rsi,rcx
38b6f0	mov    rbp,r8
38b6f3	add    rcx,0x20
38b6f7	mov    rbx,rdx
38b6fa	call   0x2d4870
38b6ff	lea    rcx,[rsi+0x28]
38b703	call   0x2d4870
38b708	lea    rcx,[rsi+0x30]
38b70c	call   0x2d4870
38b711	lea    rcx,[rsi+0x38]
38b715	call   0x2d4870
38b71a	lea    rcx,[rsi+0x40]
38b71e	call   0x2d4870
38b723	lea    rcx,[rsi+0x48]
38b727	call   0x2d4870
38b72c	lea    rcx,[rsi+0x50]
38b730	call   0x2d4870
38b735	lea    rcx,[rsi+0x84]
38b73c	call   0x2d4870
38b741	lea    rcx,[rsi+0x8c]
38b748	call   0x2d4870
38b74d	lea    r14,[rsi+0x94]
38b754	mov    rcx,r14
38b757	call   0x2d4870
38b75c	lea    r15,[rsi+0x9c]
38b763	mov    rcx,r15
38b766	call   0x2d4870
38b76b	lea    rcx,[rsi+0xa4]
38b772	call   0x2d4870
38b777	lea    rcx,[rsi+0xac]
38b77e	call   0x2d4870
38b783	lea    r13,[rsi+0xe0]
38b78a	mov    rcx,r13
38b78d	call   0x2d4870
38b792	lea    r12,[rsi+0xe8]
38b799	mov    rcx,r12
38b79c	call   0x2d4870
38b7a1	lea    rdi,[rsi+0xf0]
38b7a8	mov    rcx,rdi
38b7ab	call   0x2db3a0
38b7b0	lea    rcx,[rsi+0x100]
38b7b7	call   0x38ba0c
38b7bc	lea    rcx,[rsi+0x1e8]
38b7c3	call   0x38bb2c
38b7c8	lea    rcx,[rsi+0x1f8]
38b7cf	call   0x38bb2c
38b7d4	lea    rcx,[rsi+0x208]
38b7db	call   0x38bb2c
38b7e0	lea    rcx,[rsi+0x218]
38b7e7	call   0x38bb2c
38b7ec	lea    rcx,[rsi+0x228]
38b7f3	call   0x38bb2c
38b7f8	lea    rcx,[rsi+0x238]
38b7ff	call   0x38bb2c
38b804	lea    rcx,[rsi+0x248]
38b80b	call   0x38bb2c
38b810	lea    rcx,[rsi+0x258]
38b817	call   0x38bb64
38b81c	lea    rcx,[rsi+0x25c]
38b823	call   0x38bb64
38b828	lea    rcx,[rsi+0x270]
38b82f	call   0x2eecfc
38b834	lea    rcx,[rsi+0x280]
38b83b	call   0x2db3a0
38b840	add    rsi,0x2a0
38b847	xor    edx,edx
38b849	mov    rcx,rsi
38b84c	call   0x38a4ac
38b851	mov    rcx,QWORD PTR [rsp+0x60]
38b856	lea    r9,[rip+0x2cf]        # 0x38bb2c
38b85d	mov    edx,0x10
38b862	add    rcx,0x3a8
38b869	lea    r8d,[rdx-0xe]
38b86d	call   0x2dfe34
38b872	mov    rcx,QWORD PTR [rsp+0x60]
38b877	xor    edx,edx
38b879	add    rcx,0x8
38b87d	mov    r8d,0x3d0
38b883	call   0x3c8d70
38b888	mov    rax,QWORD PTR [rsp+0x60]
38b88d	mov    QWORD PTR [rax],rbx
38b890	mov    rcx,rbp
38b893	call   0x39347c
38b898	mov    rbx,QWORD PTR [rsp+0x60]
38b89d	mov    rcx,rbp
38b8a0	mov    QWORD PTR [rbx+0x8],rax
38b8a4	call   0x3ca904
38b8a9	inc    eax
38b8ab	xor    r8d,r8d
38b8ae	xor    edx,edx
38b8b0	mov    DWORD PTR [rbx+0x78],eax
38b8b3	mov    rcx,rbp
38b8b6	call   0x39334c
38b8bb	lea    rdx,[rbx+0x10]
38b8bf	mov    DWORD PTR [rbx+0x10],eax
38b8c2	mov    rcx,rdi
38b8c5	call   0x39eee8
38b8ca	lea    rdx,[rsp+0x68]
38b8cf	lea    rcx,[rsp+0x68]
38b8d4	call   0x38c5c4   ; STR "#MOVE"
38b8d9	mov    rcx,rax
38b8dc	call   0x39e8ac
38b8e1	mov    rdx,rax
38b8e4	xor    r8d,r8d
38b8e7	mov    rcx,rbx
38b8ea	call   0x392614
38b8ef	movss  xmm2,DWORD PTR [rip+0xfffffffffff0225d]        # 0x28db54
38b8f7	lea    rcx,[rsp+0x60]
38b8fc	movaps xmm1,xmm2
38b8ff	mov    DWORD PTR [rbx+0x7c],eax
38b902	call   0x2cc340
38b907	movss  xmm1,DWORD PTR [rip+0xfffffffffff01941]        # 0x28d250
38b90f	lea    rcx,[rsp+0x60]
38b914	movaps xmm2,xmm1
38b917	movsd  xmm0,QWORD PTR [rax]
38b91b	movsd  QWORD PTR [r14],xmm0
38b920	call   0x2cc340
38b925	movss  xmm2,DWORD PTR [rip+0xfffffffffff02227]        # 0x28db54
38b92d	lea    rcx,[rsp+0x60]
38b932	or     edi,0xffffffff
38b935	movaps xmm1,xmm2
38b938	movsd  xmm0,QWORD PTR [rax]
38b93c	xor    eax,eax
38b93e	mov    WORD PTR [rbx+0xdd],ax
38b945	mov    BYTE PTR [rbx+0xdc],al
38b94b	movsd  QWORD PTR [r15],xmm0
38b950	mov    BYTE PTR [rbx+0xd1],dil
38b957	mov    BYTE PTR [rbx+0xd0],dil
38b95e	mov    DWORD PTR [rbx+0xd4],edi
38b964	call   0x2cc340
38b969	movss  xmm0,DWORD PTR [rax]
38b96d	movss  xmm1,DWORD PTR [rax+0x4]
38b972	mov    rax,QWORD PTR [rbx]
38b975	add    rax,0x3c38
38b97b	movss  DWORD PTR [rbx+0xec],xmm1
38b983	movss  DWORD PTR [rbx+0xe4],xmm1
38b98b	mov    DWORD PTR [rbx+0x260],edi
38b991	mov    DWORD PTR [rbx+0x264],0xbf800000
38b99b	mov    DWORD PTR [rbx+0x290],0x3f800000
38b9a5	mov    DWORD PTR [rbx+0x294],edi
38b9ab	mov    QWORD PTR [rbx+0x298],rsi
38b9b2	movss  DWORD PTR [r12],xmm0
38b9b8	movss  DWORD PTR [r13+0x0],xmm0
38b9be	mov    QWORD PTR [rbx+0x2d8],rax
38b9c5	mov    rax,QWORD PTR [rbx+0x8]
38b9c9	mov    QWORD PTR [rbx+0x2e0],rax
38b9d0	mov    rax,rbx
38b9d3	mov    rbx,QWORD PTR [rsp+0x70]
38b9d8	add    rsp,0x20
38b9dc	pop    r15
38b9de	pop    r14
38b9e0	pop    r13
38b9e2	pop    r12
38b9e4	pop    rdi
38b9e5	pop    rsi
38b9e6	pop    rbp
38b9e7	ret
