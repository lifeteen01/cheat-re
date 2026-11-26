37b724	mov    rax,rsp
37b727	mov    QWORD PTR [rax+0x10],rbx
37b72b	push   rbp
37b72c	push   rsi
37b72d	push   rdi
37b72e	lea    rbp,[rax-0x68]
37b732	sub    rsp,0x150
37b739	movaps XMMWORD PTR [rax-0x28],xmm6
37b73d	mov    rdi,rdx
37b740	movaps XMMWORD PTR [rax-0x38],xmm7
37b744	mov    rbx,rcx
37b747	movaps XMMWORD PTR [rax-0x48],xmm8
37b74c	movaps XMMWORD PTR [rax-0x58],xmm9
37b751	movaps XMMWORD PTR [rax-0x68],xmm10
37b756	movaps XMMWORD PTR [rax-0x78],xmm11
37b75b	movaps XMMWORD PTR [rax-0x88],xmm12
37b763	movaps XMMWORD PTR [rax-0x98],xmm13
37b76b	movaps XMMWORD PTR [rax-0xa8],xmm14
37b773	movaps XMMWORD PTR [rax-0xb8],xmm15
37b77b	call   0x392198
37b780	movss  xmm9,DWORD PTR [rbx+0x18]
37b786	lea    rcx,[rbp+0x70]
37b78a	movss  xmm8,DWORD PTR [rbx+0x1c]
37b790	movaps xmm1,xmm9
37b794	movss  xmm7,DWORD PTR [rbx]
37b798	movaps xmm2,xmm8
37b79c	movss  xmm6,DWORD PTR [rbx+0x4]
37b7a1	subss  xmm1,xmm7
37b7a5	movss  xmm12,DWORD PTR [rbx+0x8]
37b7ab	subss  xmm2,xmm6
37b7af	movss  xmm11,DWORD PTR [rbx+0xc]
37b7b5	mov    rsi,rax
37b7b8	movss  xmm15,DWORD PTR [rbx+0x10]
37b7be	movss  xmm14,DWORD PTR [rbx+0x14]
37b7c4	movss  xmm13,DWORD PTR [rip+0x8759b]        # 0x402d68
37b7cd	call   0x2cc340
37b7d2	movss  xmm2,DWORD PTR [rbp+0x74]
37b7d7	lea    rcx,[rbp+0x80]
37b7de	movss  xmm1,DWORD PTR [rbp+0x70]
37b7e3	mulss  xmm2,xmm13
37b7e8	mulss  xmm1,xmm13
37b7ed	addss  xmm2,xmm6
37b7f1	addss  xmm1,xmm7
37b7f5	call   0x2cc340
37b7fa	mov    rcx,rdi
37b7fd	call   0x2ef80c
37b802	movss  xmm2,DWORD PTR [rbp+0x84]
37b80a	lea    rcx,[rsp+0x30]
37b80f	movss  xmm1,DWORD PTR [rbp+0x80]
37b817	mov    ebx,eax
37b819	call   0x2cc340
37b81e	movaps xmm2,xmm6
37b821	lea    rcx,[rsp+0x38]
37b826	movaps xmm1,xmm7
37b829	call   0x2cc340
37b82e	movss  xmm10,DWORD PTR [rip+0xfffffffffff178c1]        # 0x2930f8
37b837	lea    r8,[rsp+0x30]
37b83c	mov    r9d,ebx
37b83f	movss  DWORD PTR [rsp+0x20],xmm10
37b846	lea    rdx,[rsp+0x38]
37b84b	mov    rcx,rsi
37b84e	call   0x3a01f4
37b853	movaps xmm2,xmm11
37b857	lea    rcx,[rbp+0x88]
37b85e	movaps xmm1,xmm12
37b862	subss  xmm2,xmm6
37b866	subss  xmm1,xmm7
37b86a	call   0x2cc340
37b86f	movss  xmm2,DWORD PTR [rbp+0x8c]
37b877	lea    rcx,[rsp+0x40]
37b87c	movss  xmm1,DWORD PTR [rbp+0x88]
37b884	mulss  xmm2,xmm13
37b889	mulss  xmm1,xmm13
37b88e	addss  xmm2,xmm6
37b892	addss  xmm1,xmm7
37b896	call   0x2cc340
37b89b	mov    rcx,rdi
37b89e	call   0x2ef80c
37b8a3	movss  xmm2,DWORD PTR [rsp+0x44]
37b8a9	lea    rcx,[rsp+0x38]
37b8ae	movss  xmm1,DWORD PTR [rsp+0x40]
37b8b4	mov    ebx,eax
37b8b6	call   0x2cc340
37b8bb	movaps xmm2,xmm6
37b8be	lea    rcx,[rsp+0x30]
37b8c3	movaps xmm1,xmm7
37b8c6	call   0x2cc340
37b8cb	movss  DWORD PTR [rsp+0x20],xmm10
37b8d2	mov    r9d,ebx
37b8d5	lea    r8,[rsp+0x38]
37b8da	lea    rdx,[rsp+0x30]
37b8df	mov    rcx,rsi
37b8e2	call   0x3a01f4
37b8e7	movaps xmm2,xmm14
37b8eb	lea    rcx,[rsp+0x48]
37b8f0	movaps xmm1,xmm15
37b8f4	subss  xmm2,xmm11
37b8f9	subss  xmm1,xmm12
37b8fe	call   0x2cc340
37b903	movss  xmm2,DWORD PTR [rsp+0x4c]
37b909	lea    rcx,[rsp+0x50]
37b90e	movss  xmm1,DWORD PTR [rsp+0x48]
37b914	mulss  xmm2,xmm13
37b919	mulss  xmm1,xmm13
37b91e	addss  xmm2,xmm11
37b923	addss  xmm1,xmm12
37b928	call   0x2cc340
37b92d	mov    rcx,rdi
37b930	call   0x2ef80c
37b935	movss  xmm2,DWORD PTR [rsp+0x54]
37b93b	lea    rcx,[rsp+0x38]
37b940	movss  xmm1,DWORD PTR [rsp+0x50]
37b946	mov    ebx,eax
37b948	call   0x2cc340
37b94d	movaps xmm2,xmm11
37b951	lea    rcx,[rsp+0x30]
37b956	movaps xmm1,xmm12
37b95a	call   0x2cc340
37b95f	mov    r9d,ebx
37b962	movss  DWORD PTR [rsp+0x20],xmm10
37b969	lea    r8,[rsp+0x38]
37b96e	mov    rcx,rsi
37b971	lea    rdx,[rsp+0x30]
37b976	call   0x3a01f4
37b97b	movaps xmm2,xmm14
37b97f	lea    rcx,[rsp+0x58]
37b984	movaps xmm1,xmm15
37b988	subss  xmm2,xmm8
37b98d	subss  xmm1,xmm9
37b992	call   0x2cc340
37b997	movss  xmm2,DWORD PTR [rsp+0x5c]
37b99d	lea    rcx,[rsp+0x60]
37b9a2	movss  xmm1,DWORD PTR [rsp+0x58]
37b9a8	mulss  xmm2,xmm13
37b9ad	mulss  xmm1,xmm13
37b9b2	addss  xmm2,xmm8
37b9b7	addss  xmm1,xmm9
37b9bc	call   0x2cc340
37b9c1	mov    rcx,rdi
37b9c4	call   0x2ef80c
37b9c9	movss  xmm2,DWORD PTR [rsp+0x64]
37b9cf	lea    rcx,[rsp+0x38]
37b9d4	movss  xmm1,DWORD PTR [rsp+0x60]
37b9da	mov    ebx,eax
37b9dc	call   0x2cc340
37b9e1	movaps xmm2,xmm8
37b9e5	lea    rcx,[rsp+0x30]
37b9ea	movaps xmm1,xmm9
37b9ee	call   0x2cc340
37b9f3	mov    r9d,ebx
37b9f6	movss  DWORD PTR [rsp+0x20],xmm10
37b9fd	lea    r8,[rsp+0x38]
37ba02	mov    rcx,rsi
37ba05	lea    rdx,[rsp+0x30]
37ba0a	call   0x3a01f4
37ba0f	movaps xmm2,xmm6
37ba12	lea    rcx,[rsp+0x68]
37ba17	movaps xmm1,xmm7
37ba1a	subss  xmm2,xmm8
37ba1f	subss  xmm1,xmm9
37ba24	call   0x2cc340
37ba29	movss  xmm2,DWORD PTR [rsp+0x6c]
37ba2f	lea    rcx,[rsp+0x70]
37ba34	movss  xmm1,DWORD PTR [rsp+0x68]
37ba3a	mulss  xmm2,xmm13
37ba3f	mulss  xmm1,xmm13
37ba44	addss  xmm2,xmm8
37ba49	addss  xmm1,xmm9
37ba4e	call   0x2cc340
37ba53	mov    rcx,rdi
37ba56	call   0x2ef80c
37ba5b	movss  xmm2,DWORD PTR [rsp+0x74]
37ba61	lea    rcx,[rsp+0x38]
37ba66	movss  xmm1,DWORD PTR [rsp+0x70]
37ba6c	mov    ebx,eax
37ba6e	call   0x2cc340
37ba73	movaps xmm2,xmm8
37ba77	lea    rcx,[rsp+0x30]
37ba7c	movaps xmm1,xmm9
37ba80	call   0x2cc340
37ba85	mov    r9d,ebx
37ba88	movss  DWORD PTR [rsp+0x20],xmm10
37ba8f	lea    r8,[rsp+0x38]
37ba94	mov    rcx,rsi
37ba97	lea    rdx,[rsp+0x30]
37ba9c	call   0x3a01f4
37baa1	subss  xmm6,xmm11
37baa6	subss  xmm7,xmm12
37baab	lea    rcx,[rsp+0x78]
37bab0	movaps xmm2,xmm6
37bab3	movaps xmm1,xmm7
37bab6	call   0x2cc340
37babb	movss  xmm2,DWORD PTR [rsp+0x7c]
37bac1	lea    rcx,[rbp-0x80]
37bac5	movss  xmm1,DWORD PTR [rsp+0x78]
37bacb	mulss  xmm2,xmm13
37bad0	mulss  xmm1,xmm13
37bad5	addss  xmm2,xmm11
37bada	addss  xmm1,xmm12
37badf	call   0x2cc340
37bae4	mov    rcx,rdi
37bae7	call   0x2ef80c
37baec	movss  xmm2,DWORD PTR [rbp-0x7c]
37baf1	lea    rcx,[rsp+0x38]
37baf6	movss  xmm1,DWORD PTR [rbp-0x80]
37bafb	mov    ebx,eax
37bafd	call   0x2cc340
37bb02	movaps xmm2,xmm11
37bb06	lea    rcx,[rsp+0x30]
37bb0b	movaps xmm1,xmm12
37bb0f	call   0x2cc340
37bb14	mov    r9d,ebx
37bb17	movss  DWORD PTR [rsp+0x20],xmm10
37bb1e	lea    r8,[rsp+0x38]
37bb23	mov    rcx,rsi
37bb26	lea    rdx,[rsp+0x30]
37bb2b	call   0x3a01f4
37bb30	subss  xmm8,xmm14
37bb35	subss  xmm9,xmm15
37bb3a	lea    rcx,[rbp-0x78]
37bb3e	movaps xmm2,xmm8
37bb42	movaps xmm1,xmm9
37bb46	call   0x2cc340
37bb4b	movss  xmm2,DWORD PTR [rbp-0x74]
37bb50	lea    rcx,[rbp-0x70]
37bb54	movss  xmm1,DWORD PTR [rbp-0x78]
37bb59	mulss  xmm2,xmm13
37bb5e	mulss  xmm1,xmm13
37bb63	addss  xmm2,xmm14
37bb68	addss  xmm1,xmm15
37bb6d	call   0x2cc340
37bb72	mov    rcx,rdi
37bb75	call   0x2ef80c
37bb7a	movss  xmm2,DWORD PTR [rbp-0x6c]
37bb7f	lea    rcx,[rsp+0x38]
37bb84	movss  xmm1,DWORD PTR [rbp-0x70]
37bb89	mov    ebx,eax
37bb8b	call   0x2cc340
37bb90	movaps xmm2,xmm14
37bb94	lea    rcx,[rsp+0x30]
37bb99	movaps xmm1,xmm15
37bb9d	call   0x2cc340
37bba2	mov    r9d,ebx
37bba5	movss  DWORD PTR [rsp+0x20],xmm10
37bbac	lea    r8,[rsp+0x38]
37bbb1	mov    rcx,rsi
37bbb4	lea    rdx,[rsp+0x30]
37bbb9	call   0x3a01f4
37bbbe	subss  xmm11,xmm14
37bbc3	subss  xmm12,xmm15
37bbc8	movaps xmm2,xmm11
37bbcc	lea    rcx,[rbp-0x68]
37bbd0	movaps xmm1,xmm12
37bbd4	call   0x2cc340
37bbd9	movss  xmm2,DWORD PTR [rbp-0x64]
37bbde	lea    rcx,[rbp-0x60]
37bbe2	movss  xmm1,DWORD PTR [rbp-0x68]
37bbe7	mulss  xmm2,xmm13
37bbec	mulss  xmm1,xmm13
37bbf1	addss  xmm2,xmm14
37bbf6	addss  xmm1,xmm15
37bbfb	call   0x2cc340
37bc00	mov    rcx,rdi
37bc03	call   0x2ef80c
37bc08	movss  xmm2,DWORD PTR [rbp-0x5c]
37bc0d	lea    rcx,[rsp+0x38]
37bc12	movss  xmm1,DWORD PTR [rbp-0x60]
37bc17	mov    ebx,eax
37bc19	call   0x2cc340
37bc1e	movaps xmm2,xmm14
37bc22	lea    rcx,[rsp+0x30]
37bc27	movaps xmm1,xmm15
37bc2b	call   0x2cc340
37bc30	mov    r9d,ebx
37bc33	movss  DWORD PTR [rsp+0x20],xmm10
37bc3a	lea    r8,[rsp+0x38]
37bc3f	mov    rcx,rsi
37bc42	lea    rdx,[rsp+0x30]
37bc47	call   0x3a01f4
37bc4c	lea    r11,[rsp+0x150]
37bc54	mov    rbx,QWORD PTR [r11+0x28]
37bc58	movaps xmm6,XMMWORD PTR [r11-0x10]
37bc5d	movaps xmm7,XMMWORD PTR [r11-0x20]
37bc62	movaps xmm8,XMMWORD PTR [r11-0x30]
37bc67	movaps xmm9,XMMWORD PTR [r11-0x40]
37bc6c	movaps xmm10,XMMWORD PTR [r11-0x50]
37bc71	movaps xmm11,XMMWORD PTR [r11-0x60]
37bc76	movaps xmm12,XMMWORD PTR [r11-0x70]
37bc7b	movaps xmm13,XMMWORD PTR [r11-0x80]
37bc80	movaps xmm14,XMMWORD PTR [r11-0x90]
37bc88	movaps xmm15,XMMWORD PTR [r11-0xa0]
37bc90	mov    rsp,r11
37bc93	pop    rdi
37bc94	pop    rsi
37bc95	pop    rbp
37bc96	ret
