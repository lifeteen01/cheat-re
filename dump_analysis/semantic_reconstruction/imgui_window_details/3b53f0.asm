3b53f0	mov    QWORD PTR [rsp+0x8],rbx
3b53f5	mov    QWORD PTR [rsp+0x10],rsi
3b53fa	push   rdi
3b53fb	sub    rsp,0x30
3b53ff	mov    rbx,QWORD PTR [rip+0x50722]        # 0x405b28
3b5406	mov    rdi,rcx
3b5409	lea    ecx,[rdx-0x1]
3b540c	movaps XMMWORD PTR [rsp+0x20],xmm6
3b5411	mov    esi,edx
3b5413	call   0x3b5320
3b5418	mov    rax,QWORD PTR [rbx+0x3f08]
3b541f	movaps xmm1,xmm0
3b5422	movss  xmm0,DWORD PTR [rbx+0xe08]
3b542a	subss  xmm0,DWORD PTR [rbx+0x3f7c]
3b5432	addss  xmm1,DWORD PTR [rbx+0x3840]
3b543a	addss  xmm0,DWORD PTR [rip+0xffffffffffeddd36]        # 0x293178
3b5442	subss  xmm0,DWORD PTR [rax+0x20]
3b5447	call   0x38a3f4
3b544c	test   BYTE PTR [rdi+0x4],0x4
3b5450	movaps xmm6,xmm0
3b5453	je     0x3b5473
3b5455	lea    ecx,[rsi+0x1]
3b5458	call   0x3b5320
3b545d	subss  xmm0,DWORD PTR [rbx+0x3840]
3b5465	movaps xmm1,xmm0
3b5468	movaps xmm0,xmm6
3b546b	call   0x3762cc
3b5470	movaps xmm6,xmm0
3b5473	mov    rbx,QWORD PTR [rsp+0x40]
3b5478	movaps xmm0,xmm6
3b547b	movaps xmm6,XMMWORD PTR [rsp+0x20]
3b5480	mov    rsi,QWORD PTR [rsp+0x48]
3b5485	add    rsp,0x30
3b5489	pop    rdi
3b548a	ret
