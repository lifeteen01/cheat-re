3a31f8	rex push rbx
3a31fa	push   rbp
3a31fb	push   rsi
3a31fc	push   rdi
3a31fd	push   r14
3a31ff	sub    rsp,0x70
3a3203	mov    ebp,DWORD PTR [rsp+0xc0]
3a320a	mov    r14,r9
3a320d	movaps XMMWORD PTR [rsp+0x60],xmm6
3a3212	movaps xmm6,xmm2
3a3215	mov    rsi,rdx
3a3218	mov    rbx,rcx
3a321b	test   ebp,0xff000000
3a3221	je     0x3a3325
3a3227	mov    r8,QWORD PTR [rsp+0xd0]
3a322f	mov    rdi,QWORD PTR [rsp+0xc8]
3a3237	test   r8,r8
3a323a	jne    0x3a3248
3a323c	mov    rcx,rdi
3a323f	call   0x3ca904
3a3244	lea    r8,[rax+rdi*1]
3a3248	cmp    rdi,r8
3a324b	je     0x3a3325
3a3251	test   rsi,rsi
3a3254	jne    0x3a325e
3a3256	mov    rax,QWORD PTR [rbx+0x38]
3a325a	mov    rsi,QWORD PTR [rax+0x8]
3a325e	ucomiss xmm6,DWORD PTR [rip+0xffffffffffee9fe7]        # 0x28d24c
3a3265	jp     0x3a3272
3a3267	jne    0x3a3272
3a3269	mov    rax,QWORD PTR [rbx+0x38]
3a326d	movss  xmm6,DWORD PTR [rax+0x10]
3a3272	movups xmm0,XMMWORD PTR [rbx+0x88]
3a3279	mov    rax,QWORD PTR [rsp+0xe0]
3a3281	movdqu XMMWORD PTR [rsp+0x50],xmm0
3a3287	test   rax,rax
3a328a	je     0x3a32e6
3a328c	movss  xmm1,DWORD PTR [rax]
3a3290	movss  xmm0,DWORD PTR [rsp+0x50]
3a3296	call   0x38a3f4
3a329b	movss  xmm1,DWORD PTR [rax+0x4]
3a32a0	movss  DWORD PTR [rsp+0x50],xmm0
3a32a6	movss  xmm0,DWORD PTR [rsp+0x54]
3a32ac	call   0x38a3f4
3a32b1	movss  xmm1,DWORD PTR [rax+0x8]
3a32b6	movss  DWORD PTR [rsp+0x54],xmm0
3a32bc	movss  xmm0,DWORD PTR [rsp+0x58]
3a32c2	call   0x3762cc
3a32c7	movss  xmm1,DWORD PTR [rax+0xc]
3a32cc	movss  DWORD PTR [rsp+0x58],xmm0
3a32d2	movss  xmm0,DWORD PTR [rsp+0x5c]
3a32d8	call   0x3762cc
3a32dd	movss  DWORD PTR [rsp+0x5c],xmm0
3a32e3	test   rax,rax
3a32e6	movss  xmm0,DWORD PTR [rsp+0xd8]
3a32ef	setne  al
3a32f2	mov    BYTE PTR [rsp+0x48],al
3a32f6	mov    r9,r14
3a32f9	movss  DWORD PTR [rsp+0x40],xmm0
3a32ff	lea    rax,[rsp+0x50]
3a3304	mov    QWORD PTR [rsp+0x38],r8
3a3309	movaps xmm2,xmm6
3a330c	mov    QWORD PTR [rsp+0x30],rdi
3a3311	mov    rdx,rbx
3a3314	mov    QWORD PTR [rsp+0x28],rax
3a3319	mov    rcx,rsi
3a331c	mov    DWORD PTR [rsp+0x20],ebp
3a3320	call   0x3a792c
3a3325	movaps xmm6,XMMWORD PTR [rsp+0x60]
3a332a	add    rsp,0x70
3a332e	pop    r14
3a3330	pop    rdi
3a3331	pop    rsi
3a3332	pop    rbp
3a3333	pop    rbx
3a3334	ret
