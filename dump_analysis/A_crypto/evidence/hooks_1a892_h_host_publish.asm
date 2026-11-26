1a890	rep stos BYTE PTR [rdi],al
1a892	lea    rcx,[rip+0x8c0cf]        # 0xa6968
1a899	mov    QWORD PTR [rip+0x8c060],rax        # 0xa6900
1a8a0	call   0x290516
1a8a5	(bad)
1a8a6	mov    rcx,QWORD PTR [rip+0x8c09b]        # 0xa6948
1a8ad	mov    BYTE PTR [rip+0x8bf88],0x0        # 0xa683c
1a8b4	test   rcx,rcx
1a8b7	je     0x1a8bf
1a8b9	call   0x296dc3
1a8be	push   rbx
1a8bf	mov    eax,DWORD PTR [rip+0x427ab]        # 0x5d070
1a8c5	xorps  xmm0,xmm0
1a8c8	mov    DWORD PTR [rbp-0x10],eax
1a8cb	mov    r15d,0x90
1a8d1	xor    eax,eax
1a8d3	movaps XMMWORD PTR [rbp-0x50],xmm10
1a8d8	mov    WORD PTR [rbp-0x60],ax
1a8dc	xor    edx,edx
1a8de	movaps XMMWORD PTR [rbp-0x40],xmm9
1a8e3	movaps XMMWORD PTR [rbp-0x30],xmm8
1a8e8	movaps XMMWORD PTR [rbp-0x20],xmm7
1a8ec	movups XMMWORD PTR [rsp+0x60],xmm0
1a8f1	movups XMMWORD PTR [rsp+0x70],xmm0
1a8f6	movups XMMWORD PTR [rbp-0x80],xmm0
1a8fa	movups XMMWORD PTR [rbp-0x70],xmm0
1a8fe	xchg   ax,ax
1a900	movzx  eax,dx
1a903	imul   ecx,eax,0xd
1a906	mov    rax,rdx
1a909	shr    rax,0x3
1a90d	add    ax,cx
1a910	add    ax,r15w
1a914	xor    ax,WORD PTR [rbp+rdx*2-0x50]
1a919	mov    WORD PTR [rsp+0x30],ax
1a91e	movzx  eax,WORD PTR [rsp+0x30]
1a923	mov    WORD PTR [rsp+rdx*2+0x60],ax
1a928	inc    rdx
1a92b	cmp    rdx,0x21
1a92f	jb     0x1a900
1a931	lea    rcx,[rsp+0x60]
1a936	call   0x8a20
1a93b	xor    eax,eax
1a93d	lea    rdi,[rsp+0x60]
1a942	mov    ecx,0x42
1a947	rep stos BYTE PTR [rdi],al
1a949	lock inc QWORD PTR [rbx+0x18]
1a94e	lock or DWORD PTR [rsp],eax
1a952	xchg   QWORD PTR [rbx+0x20],rax
1a956	xor    eax,eax
1a958	lea    rdi,[rbx+0x40]
1a95c	mov    ecx,0x10
1a961	rep stos BYTE PTR [rdi],al
1a963	lock or DWORD PTR [rsp],eax
1a967	lock inc QWORD PTR [rbx+0x18]
1a96c	xorps  xmm0,xmm0
1a96f	lea    rdx,[rip+0x41de2]        # 0x5c758   ; "A:epoch=%llu"
1a976	mov    rax,r13
1a979	lea    rcx,[rbp+0x30]
1a97d	xchg   QWORD PTR [rbx+0x38],rax
1a981	mov    r8,r13
1a984	movups XMMWORD PTR [rbp+0x30],xmm0
1a988	movups XMMWORD PTR [rbp+0x40],xmm0
1a98c	movups XMMWORD PTR [rbp+0x50],xmm0
1a990	movups XMMWORD PTR [rbp+0x60],xmm0
1a994	call   0xcdd0
1a999	mov    r14,QWORD PTR [rip+0x8bdb0]        # 0xa6750
1a9a0	mov    r15d,0x1
1a9a6	test   r14,r14
1a9a9	je     0x1aa47
1a9af	mov    esi,r15d
1a9b2	lock xadd QWORD PTR [r14+0x90],rsi
1a9bb	inc    rsi
1a9be	lea    rcx,[r14+0xac]
1a9c5	mov    r9,0xffffffffffffffff
1a9cc	lea    r8,[rip+0x41d95]        # 0x5c768   ; "A:epoch_reset"
1a9d3	mov    edx,0x20
1a9d8	lea    rax,[rsi-0x1]
1a9dc	and    eax,0xf
1a9df	lea    rdi,[rax+rax*4]
1a9e3	xor    eax,eax
1a9e5	shl    rdi,0x5
1a9e9	add    rcx,rdi
1a9ec	xchg   QWORD PTR [rdi+r14*1+0xa0],rax
1a9f4	call   0x39130
1a9f9	lea    rcx,[r14+0xcc]
1aa00	mov    r9,0xffffffffffffffff
1aa07	add    rcx,rdi
1aa0a	lea    r8,[rip+0x3c8f3]        # 0x57304
1aa11	mov    edx,0x10
1aa16	call   0x39130
1aa1b	lea    rcx,[r14+0xdc]
1aa22	mov    r9,0xffffffffffffffff
1aa29	add    rcx,rdi
1aa2c	lea    r8,[rbp+0x30]
1aa30	mov    edx,0x60
1aa35	call   0x39130
1aa3a	lock or DWORD PTR [rsp],0x0
1aa3f	xchg   QWORD PTR [rdi+r14*1+0xa0],rsi
1aa47	mov    r14,QWORD PTR [rsp+0x48]
1aa4c	mov    r12,r13
1aa4f	movzx  eax,BYTE PTR [rip+0x8bde6]        # 0xa683c
1aa56	xor    ecx,ecx
1aa58	test   al,al
1aa5a	setne  cl
1aa5d	mov    DWORD PTR [rbx+0x10],ecx
1aa60	lea    rcx,[rip+0x8bf01]        # 0xa6968
1aa67	push   rax
1aa68	call   0x37684d
1aa6d	mov    rdi,QWORD PTR [rip+0x8be8c]        # 0xa6900
1aa74	test   rdi,rdi
1aa77	je     0x1ad4e
1aa7d	mov    rax,QWORD PTR [rip+0x51654]        # 0x6c0d8
1aa84	cmp    rdi,rax
1aa87	jne    0x1ad4e
1aa8d	mov    rax,QWORD PTR [rip+0x8be94]        # 0xa6928
1aa94	cmp    rdi,rax
1aa97	je     0x1ad4e
1aa9d	movups xmm6,XMMWORD PTR [rip+0x8bed4]        # 0xa6978
1aaa4	lea    rcx,[rip+0x8bebd]        # 0xa6968
1aaab	mov    QWORD PTR [rip+0x8be76],rdi        # 0xa6928
1aab2	push   rsi
1aab3	call   0x330241
1aab8	xor    ecx,ecx
1aaba	xor    eax,eax
1aabc	lock cmpxchg QWORD PTR [rbx+0x30],rcx
1aac2	mov    rdx,rax
1aac5	xor    eax,eax
1aac7	lock cmpxchg QWORD PTR [rbx+0x38],rcx
1aacd	cmp    rdx,rax
1aad0	jne    0x1abc6
1aad6	lock inc QWORD PTR [rbx+0x18]
1aadb	lock or DWORD PTR [rsp],ecx
1aadf	mov    rax,rdi
1aae2	movups XMMWORD PTR [rbx+0x40],xmm6
1aae6	xchg   QWORD PTR [rbx+0x20],rax
1aaea	lock or DWORD PTR [rsp],ecx
1aaee	lock inc QWORD PTR [rbx+0x18]
1aaf3	xorps  xmm0,xmm0
1aaf6	lea    rdx,[rip+0x41b2b]        # 0x5c628   ; "A:generation=%llu"
1aafd	mov    r8,rdi
1ab00	lea    rcx,[rbp+0x30]
1ab04	movups XMMWORD PTR [rbp+0x30],xmm0
1ab08	movups XMMWORD PTR [rbp+0x40],xmm0
1ab0c	movups XMMWORD PTR [rbp+0x50],xmm0
1ab10	movups XMMWORD PTR [rbp+0x60],xmm0
1ab14	call   0xcdd0
1ab19	mov    r14,QWORD PTR [rip+0x8bc30]        # 0xa6750
1ab20	test   r14,r14
1ab23	je     0x1abc1
1ab29	mov    rsi,r15
1ab2c	lock xadd QWORD PTR [r14+0x90],rsi
1ab35	inc    rsi
1ab38	lea    rcx,[r14+0xac]
1ab3f	mov    r9,0xffffffffffffffff
1ab46	lea    r8,[rip+0x41b9b]        # 0x5c6e8   ; "A:h_host_publish"
1ab4d	mov    edx,0x20
1ab52	lea    rax,[rsi-0x1]
1ab56	and    eax,0xf
1ab59	lea    rdi,[rax+rax*4]
1ab5d	xor    eax,eax
1ab5f	shl    rdi,0x5
1ab63	add    rcx,rdi
1ab66	xchg   QWORD PTR [rdi+r14*1+0xa0],rax
1ab6e	call   0x39130
1ab73	lea    rcx,[r14+0xcc]
1ab7a	mov    r9,0xffffffffffffffff
1ab81	add    rcx,rdi
1ab84	lea    r8,[rip+0x3c779]        # 0x57304
1ab8b	mov    edx,0x10
1ab90	call   0x39130
