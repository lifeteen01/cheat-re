392a9c	mov    rax,rsp
392a9f	mov    QWORD PTR [rax+0x8],rbx
392aa3	mov    QWORD PTR [rax+0x10],rdi
392aa7	push   rbp
392aa8	mov    rbp,rsp
392aab	sub    rsp,0x70
392aaf	movaps XMMWORD PTR [rax-0x18],xmm6
392ab3	mov    rbx,rcx
392ab6	movaps XMMWORD PTR [rax-0x28],xmm7
392aba	mov    edi,r8d
392abd	mov    rax,rdx
392ac0	movaps xmm7,xmm3
392ac3	mov    rcx,rax
392ac6	lea    rdx,[rbp-0x38]
392aca	call   0x398d44
392acf	movss  xmm6,DWORD PTR [rbp+0x30]
392ad4	ucomiss xmm6,DWORD PTR [rip+0xffffffffffefa771]        # 0x28d24c
392adb	jp     0x392aff
392add	jne    0x392aff
392adf	movss  xmm1,DWORD PTR [rip+0xffffffffffefa76d]        # 0x28d254
392ae7	lea    rcx,[rbp-0x40]
392aeb	movaps xmm2,xmm1
392aee	call   0x2cc340
392af3	mov    rdx,rax
392af6	lea    rcx,[rbp-0x30]
392afa	call   0x38cc68
392aff	test   edi,edi
392b01	jne    0x392b35
392b03	movss  xmm1,DWORD PTR [rbp-0x38]
392b08	movss  xmm0,DWORD PTR [rbp-0x2c]
392b0d	movaps xmm3,xmm1
392b10	movss  xmm2,DWORD PTR [rbp-0x34]
392b15	subss  xmm0,xmm7
392b19	addss  xmm3,xmm6
392b1d	addss  xmm2,xmm7
392b21	subss  xmm1,xmm6
392b25	mov    rcx,rbx
392b28	movss  DWORD PTR [rsp+0x20],xmm0
392b2e	call   0x38baf4
392b33	jmp    0x392b9b
392b35	cmp    edi,0x1
392b38	jne    0x392b41
392b3a	movss  xmm1,DWORD PTR [rbp-0x30]
392b3f	jmp    0x392b08
392b41	cmp    edi,0x2
392b44	jne    0x392b6a
392b46	movss  xmm2,DWORD PTR [rbp-0x34]
392b4b	movss  xmm3,DWORD PTR [rbp-0x30]
392b50	movaps xmm0,xmm2
392b53	movss  xmm1,DWORD PTR [rbp-0x38]
392b58	addss  xmm0,xmm6
392b5c	subss  xmm3,xmm7
392b60	subss  xmm2,xmm6
392b64	addss  xmm1,xmm7
392b68	jmp    0x392b25
392b6a	mov    rcx,rbx
392b6d	cmp    edi,0x3
392b70	jne    0x392b96
392b72	movss  xmm2,DWORD PTR [rbp-0x2c]
392b77	movss  xmm3,DWORD PTR [rbp-0x30]
392b7c	movaps xmm0,xmm2
392b7f	movss  xmm1,DWORD PTR [rbp-0x38]
392b84	addss  xmm0,xmm6
392b88	subss  xmm3,xmm7
392b8c	subss  xmm2,xmm6
392b90	addss  xmm1,xmm7
392b94	jmp    0x392b28
392b96	call   0x38bb2c
392b9b	movaps xmm6,XMMWORD PTR [rsp+0x60]
392ba0	lea    r11,[rsp+0x70]
392ba5	mov    rdi,QWORD PTR [r11+0x18]
392ba9	mov    rax,rbx
392bac	mov    rbx,QWORD PTR [r11+0x10]
392bb0	movaps xmm7,XMMWORD PTR [rsp+0x50]
392bb5	mov    rsp,r11
392bb8	pop    rbp
392bb9	ret
