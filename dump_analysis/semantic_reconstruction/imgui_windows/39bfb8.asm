39bfb8	mov    QWORD PTR [rsp+0x10],rbx
39bfbd	mov    QWORD PTR [rsp+0x18],rsi
39bfc2	push   rdi
39bfc3	sub    rsp,0x20
39bfc7	mov    rsi,rdx
39bfca	mov    rbx,rcx
39bfcd	call   0x39bf80
39bfd2	addss  xmm0,DWORD PTR [rbx+0x24]
39bfd7	movss  xmm1,DWORD PTR [rbx+0x30]
39bfdc	lea    rcx,[rsp+0x30]
39bfe1	addss  xmm1,DWORD PTR [rbx+0x20]
39bfe6	movaps xmm2,xmm0
39bfe9	call   0x2cc340
39bfee	mov    r8,rax
39bff1	lea    rdx,[rbx+0x20]
39bff5	mov    rcx,rsi
39bff8	call   0x2db388
39bffd	mov    rbx,QWORD PTR [rsp+0x38]
39c002	mov    rax,rsi
39c005	mov    rsi,QWORD PTR [rsp+0x40]
39c00a	add    rsp,0x20
39c00e	pop    rdi
39c00f	ret
