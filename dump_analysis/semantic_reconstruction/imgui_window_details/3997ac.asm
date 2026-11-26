3997ac	mov    rax,rsp
3997af	mov    QWORD PTR [rax+0x8],rbx
3997b3	mov    QWORD PTR [rax+0x10],rsi
3997b7	push   rbp
3997b8	push   rdi
3997b9	push   r12
3997bb	push   r14
3997bd	push   r15
3997bf	lea    rbp,[rax-0x5f]
3997c3	sub    rsp,0x90
3997ca	movaps XMMWORD PTR [rax-0x38],xmm6
3997ce	mov    r15d,r8d
3997d1	movaps XMMWORD PTR [rax-0x48],xmm7
3997d5	mov    rax,QWORD PTR [rip+0x6c34c]        # 0x405b28
3997dc	cmp    edx,DWORD PTR [rax+0x48f0]
3997e2	jne    0x39996d
3997e8	cmp    BYTE PTR [rax+0x4926],0x0
3997ef	je     0x3997fb
3997f1	test   r15b,0x4
3997f5	je     0x39996d
3997fb	mov    r14,QWORD PTR [rax+0x3f08]
399802	cmp    BYTE PTR [r14+0x161],0x0
39980a	jne    0x39996d
399810	test   r15b,0x8
399814	je     0x39981b
399816	xorps  xmm7,xmm7
399819	jmp    0x399823
39981b	movss  xmm7,DWORD PTR [rax+0x3814]
399823	movups xmm0,XMMWORD PTR [rcx]
399826	lea    rbx,[r14+0x238]
39982d	mov    rdx,rbx
399830	lea    rcx,[rbp-0x1]
399834	movdqu XMMWORD PTR [rbp-0x1],xmm0
399839	call   0x3901b8
39983e	movss  xmm6,DWORD PTR [rip+0xffffffffffef3a0e]        # 0x28d254
399846	test   r15b,0x1
39984a	je     0x39992f
399850	movss  xmm1,DWORD PTR [rip+0xffffffffffef9920]        # 0x293178
399858	lea    rcx,[rbp+0x7f]
39985c	movaps xmm2,xmm1
39985f	call   0x2cc340
399864	mov    rdx,rax
399867	lea    rcx,[rbp-0x1]
39986b	call   0x3911cc
399870	lea    rdx,[rbp-0x1]
399874	mov    rcx,rbx
399877	call   0x390790
39987c	mov    r12b,al
39987f	test   al,al
399881	jne    0x39989a
399883	mov    rcx,QWORD PTR [r14+0x298]
39988a	lea    r8,[rbp+0x7]
39988e	xor    r9d,r9d
399891	lea    rdx,[rbp-0x1]
399895	call   0x3a7268
39989a	mov    rsi,QWORD PTR [r14+0x298]
3998a1	movaps xmm1,xmm6
3998a4	mov    ecx,0x32
3998a9	call   0x392298
3998ae	movaps xmm2,xmm6
3998b1	lea    rcx,[rbp+0x7f]
3998b5	movaps xmm1,xmm6
3998b8	mov    edi,eax
3998ba	call   0x2cc340
3998bf	mov    r8,rax
3998c2	lea    rdx,[rbp+0x7]
3998c6	lea    rcx,[rbp-0x19]
3998ca	call   0x3367e4
3998cf	movaps xmm2,xmm6
3998d2	lea    rcx,[rbp-0x11]
3998d6	movaps xmm1,xmm6
3998d9	mov    rbx,rax
3998dc	call   0x2cc340
3998e1	mov    r8,rax
3998e4	lea    rdx,[rbp-0x1]
3998e8	lea    rcx,[rbp-0x9]
3998ec	call   0x2ef9d8
3998f1	movss  xmm0,DWORD PTR [rip+0xffffffffffef983b]        # 0x293134
3998f9	mov    rdx,rax
3998fc	movss  DWORD PTR [rsp+0x30],xmm0
399902	mov    r9d,edi
399905	mov    DWORD PTR [rsp+0x28],0x0
39990d	mov    r8,rbx
399910	mov    rcx,rsi
399913	movss  DWORD PTR [rsp+0x20],xmm7
399919	call   0x3a1148
39991e	test   r12b,r12b
399921	jne    0x39992f
399923	mov    rcx,QWORD PTR [r14+0x298]
39992a	call   0x3a6e34
39992f	test   r15b,0x2
399933	je     0x39996d
399935	movaps xmm1,xmm6
399938	mov    ecx,0x32
39993d	call   0x392298
399942	mov    rcx,QWORD PTR [r14+0x298]
399949	lea    r8,[rbp+0x7]
39994d	movss  DWORD PTR [rsp+0x30],xmm6
399953	lea    rdx,[rbp-0x1]
399957	mov    r9d,eax
39995a	mov    DWORD PTR [rsp+0x28],0x0
399962	movss  DWORD PTR [rsp+0x20],xmm7
399968	call   0x3a1148
39996d	movaps xmm7,XMMWORD PTR [rsp+0x70]
399972	lea    r11,[rsp+0x90]
39997a	mov    rbx,QWORD PTR [r11+0x30]
39997e	mov    rsi,QWORD PTR [r11+0x38]
399982	movaps xmm6,XMMWORD PTR [r11-0x10]
399987	mov    rsp,r11
39998a	pop    r15
39998c	pop    r14
39998e	pop    r12
399990	pop    rdi
399991	pop    rbp
399992	ret
