392724	rex push rbx
392726	push   rbp
392727	push   rsi
392728	push   rdi
392729	push   r14
39272b	sub    rsp,0x30
39272f	mov    r14,rcx
392732	movaps XMMWORD PTR [rsp+0x20],xmm6
392737	mov    ecx,DWORD PTR [rsp+0x80]
39273e	mov    edi,r9d
392741	mov    esi,r8d
392744	mov    ebp,edx
392746	call   0x392714
39274b	mov    ecx,edi
39274d	mov    rbx,rax
392750	call   0x392714
392755	movss  xmm6,DWORD PTR [rbx+0xc]
39275a	mov    ecx,esi
39275c	subss  xmm6,DWORD PTR [rax+0xc]
392761	call   0x392714
392766	mov    ecx,ebp
392768	mov    rbx,rax
39276b	call   0x392714
392770	movss  xmm1,DWORD PTR [rbx+0xc]
392775	movaps xmm2,xmm6
392778	mov    rcx,r14
39277b	subss  xmm1,DWORD PTR [rax+0xc]
392780	call   0x2cc340
392785	movaps xmm6,XMMWORD PTR [rsp+0x20]
39278a	mov    rax,r14
39278d	add    rsp,0x30
392791	pop    r14
392793	pop    rdi
392794	pop    rsi
392795	pop    rbp
392796	pop    rbx
392797	ret
