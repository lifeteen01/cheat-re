3a7268	mov    QWORD PTR [rsp+0x8],rbx
3a726d	mov    QWORD PTR [rsp+0x10],rdi
3a7272	push   rbp
3a7273	mov    rbp,rsp
3a7276	sub    rsp,0x40
3a727a	movss  xmm0,DWORD PTR [r8+0x4]
3a7280	mov    rdi,rcx
3a7283	movss  xmm3,DWORD PTR [r8]
3a7288	lea    rcx,[rbp-0x10]
3a728c	movss  xmm2,DWORD PTR [rdx+0x4]
3a7291	mov    bl,r9b
3a7294	movss  xmm1,DWORD PTR [rdx]
3a7298	movss  DWORD PTR [rsp+0x20],xmm0
3a729e	call   0x2cc350
3a72a3	movss  xmm0,DWORD PTR [rbp-0x10]
3a72a8	test   bl,bl
3a72aa	je     0x3a7307
3a72ac	movss  xmm1,DWORD PTR [rdi+0x88]
3a72b4	comiss xmm1,xmm0
3a72b7	movss  xmm3,DWORD PTR [rdi+0x8c]
3a72bf	movss  xmm4,DWORD PTR [rdi+0x90]
3a72c7	movss  xmm5,DWORD PTR [rdi+0x94]
3a72cf	jbe    0x3a72d9
3a72d1	movss  DWORD PTR [rbp-0x10],xmm1
3a72d6	movaps xmm0,xmm1
3a72d9	movss  xmm2,DWORD PTR [rbp-0xc]
3a72de	comiss xmm3,xmm2
3a72e1	jbe    0x3a72eb
3a72e3	movss  DWORD PTR [rbp-0xc],xmm3
3a72e8	movaps xmm2,xmm3
3a72eb	movss  xmm1,DWORD PTR [rbp-0x8]
3a72f0	comiss xmm1,xmm4
3a72f3	jbe    0x3a72f8
3a72f5	movaps xmm1,xmm4
3a72f8	movss  xmm3,DWORD PTR [rbp-0x4]
3a72fd	comiss xmm3,xmm5
3a7300	jbe    0x3a7316
3a7302	movaps xmm3,xmm5
3a7305	jmp    0x3a7316
3a7307	movss  xmm3,DWORD PTR [rbp-0x4]
3a730c	movss  xmm1,DWORD PTR [rbp-0x8]
3a7311	movss  xmm2,DWORD PTR [rbp-0xc]
3a7316	call   0x38a3f4
3a731b	movss  DWORD PTR [rbp-0x8],xmm0
3a7320	movaps xmm1,xmm3
3a7323	movaps xmm0,xmm2
3a7326	call   0x38a3f4
3a732b	lea    rcx,[rdi+0x58]
3a732f	movss  DWORD PTR [rbp-0x4],xmm0
3a7334	lea    rdx,[rbp-0x10]
3a7338	call   0x39f030
3a733d	movups xmm0,XMMWORD PTR [rbp-0x10]
3a7341	mov    rcx,rdi
3a7344	movdqu XMMWORD PTR [rdi+0x88],xmm0
3a734c	mov    rbx,QWORD PTR [rsp+0x50]
3a7351	mov    rdi,QWORD PTR [rsp+0x58]
3a7356	add    rsp,0x40
3a735a	pop    rbp
3a735b	jmp    0x3a8d94
