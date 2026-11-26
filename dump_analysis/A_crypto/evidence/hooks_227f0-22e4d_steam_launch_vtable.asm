227f0	mov    QWORD PTR [rsp+0x20],rbx
227f5	push   rbp
227f6	push   rsi
227f7	push   rdi
227f8	sub    rsp,0x140
227ff	mov    rax,QWORD PTR [rip+0x4283a]        # 0x65040
22806	xor    rax,rsp
22809	mov    QWORD PTR [rsp+0x130],rax
22811	mov    rax,QWORD PTR [rip+0x841b0]        # 0xa69c8
22818	mov    ebp,r8d
2281b	mov    rsi,rdx
2281e	call   rax
22820	mov    ebx,eax
22822	test   eax,eax
22824	jle    0x22887
22826	test   rsi,rsi
22829	je     0x22887
2282b	cmp    eax,0x9
2282e	jl     0x22887
22830	xor    edi,edi
22832	movsxd rcx,edi
22835	lea    rdx,[rip+0x35fa4]        # 0x587e0   ; "A:127.0.0.1"
2283c	add    rcx,rsi
2283f	mov    r8d,0x9
22845	call   0x39ff0
2284a	test   eax,eax
2284c	je     0x228ac
2284e	mov    eax,edi
22850	inc    edi
22852	add    eax,0xa
22855	cmp    eax,ebx
22857	jle    0x22832
22859	xor    edi,edi
2285b	nop    DWORD PTR [rax+rax*1+0x0]
22860	movsxd rcx,edi
22863	lea    rdx,[rip+0x35f86]        # 0x587f0   ; "A:localhost"
2286a	add    rcx,rsi
2286d	mov    r8d,0x9
22873	call   0x39ff0
22878	test   eax,eax
2287a	je     0x228ac
2287c	mov    eax,edi
2287e	inc    edi
22880	add    eax,0xa
22883	cmp    eax,ebx
22885	jle    0x22860
22887	mov    eax,ebx
22889	mov    rcx,QWORD PTR [rsp+0x130]
22891	xor    rcx,rsp
22894	call   0x2e460
22899	mov    rbx,QWORD PTR [rsp+0x178]
228a1	add    rsp,0x140
228a8	pop    rdi
228a9	pop    rsi
228aa	pop    rbp
228ab	ret
228ac	xorps  xmm0,xmm0
228af	lea    rcx,[rsp+0xd0]
228b7	mov    eax,0x5f
228bc	mov    rdx,rsi
228bf	cmp    ebx,eax
228c1	movups XMMWORD PTR [rsp+0xd0],xmm0
228c9	cmovl  eax,ebx
228cc	movsxd r8,eax
228cf	movups XMMWORD PTR [rsp+0xe0],xmm0
228d7	movups XMMWORD PTR [rsp+0xf0],xmm0
228df	movups XMMWORD PTR [rsp+0x100],xmm0
228e7	movups XMMWORD PTR [rsp+0x110],xmm0
228ef	movups XMMWORD PTR [rsp+0x120],xmm0
228f7	call   0x47120
228fc	movaps xmm1,XMMWORD PTR [rip+0x3aded]        # 0x5d6f0
22903	xor    eax,eax
22905	movaps xmm0,XMMWORD PTR [rip+0x3add4]        # 0x5d6e0
2290c	movaps XMMWORD PTR [rsp+0x90],xmm1
22914	movaps xmm1,XMMWORD PTR [rip+0x3adf5]        # 0x5d710
2291b	movaps XMMWORD PTR [rsp+0x80],xmm0
22923	movaps xmm0,XMMWORD PTR [rip+0x3add6]        # 0x5d700
2292a	movaps XMMWORD PTR [rsp+0xb0],xmm1
22932	xorps  xmm1,xmm1
22935	movaps XMMWORD PTR [rsp+0xa0],xmm0
2293d	movaps xmm0,XMMWORD PTR [rip+0x3addc]        # 0x5d720
22944	movups XMMWORD PTR [rsp+0x60],xmm1
22949	movups XMMWORD PTR [rsp+0x6e],xmm1
2294e	movaps XMMWORD PTR [rsp+0xc0],xmm0
22956	movups XMMWORD PTR [rsp+0x30],xmm1
2295b	movups XMMWORD PTR [rsp+0x40],xmm1
22960	movups XMMWORD PTR [rsp+0x50],xmm1
22965	data16 data16 nop WORD PTR [rax+rax*1+0x0]
22970	movzx  ecx,ax
22973	imul   edx,ecx,0xd   ; DEC "steam_launch status=swallowed text=%hs"
22976	mov    rcx,rax
22979	shr    rcx,0x3
2297d	add    cx,0x6e
22981	add    cx,dx
22984	xor    cx,WORD PTR [rsp+rax*2+0x80]
2298c	mov    WORD PTR [rsp+0x20],cx
22991	movzx  ecx,WORD PTR [rsp+0x20]
22996	mov    WORD PTR [rsp+rax*2+0x30],cx
2299b	inc    rax
2299e	cmp    rax,0x27
229a2	jb     0x22970
229a4	lea    rdx,[rsp+0xd0]
229ac	lea    rcx,[rsp+0x30]
229b1	call   0x8a20
229b6	xor    eax,eax
229b8	lea    rdi,[rsp+0x30]
229bd	mov    ecx,0x4e
229c2	rep stos BYTE PTR [rdi],al
229c4	test   ebp,ebp
229c6	jle    0x22889
229cc	mov    BYTE PTR [rsi],al
229ce	jmp    0x22889
229d3	int3
229d4	int3
229d5	int3
229d6	int3
229d7	int3
229d8	int3
229d9	int3
229da	int3
229db	int3
229dc	int3
229dd	int3
229de	int3
229df	int3
229e0	rex push rbp
229e2	push   rbx
229e3	push   rsi
229e4	push   rdi
229e5	push   r14
229e7	lea    rbp,[rsp-0x80]
229ec	sub    rsp,0x180
229f3	mov    rax,QWORD PTR [rip+0x42646]        # 0x65040
229fa	xor    rax,rsp
229fd	mov    QWORD PTR [rbp+0x78],rax
22a01	cmp    BYTE PTR [rip+0x83fd0],0x0        # 0xa69d8
22a08	jne    0x22e2e
22a0e	lea    rcx,[rip+0x3abbb]        # 0x5d5d0   ; "W:steam_api64.dll"
22a15	push   rbp
22a16	call   0x2f92fe
22a1b	mov    rdi,rax
22a1e	test   rax,rax
22a21	je     0x22e32
22a27	lea    rdx,[rip+0x3abc2]        # 0x5d5f0   ; "A:SteamAPI_GetHSteamUser"
22a2e	mov    rcx,rax
22a31	push   rbp
22a32	call   0x3989d0
22a37	mov    r14,rax
22a3a	lea    rdx,[rip+0x3abc7]        # 0x5d608   ; "A:SteamAPI_GetHSteamPipe"
22a41	mov    rcx,rdi
22a44	call   0x35625c
22a49	xchg   edx,eax
22a4a	mov    rbx,rax
22a4d	lea    rdx,[rip+0x3abcc]        # 0x5d620   ; "A:SteamInternal_FindOrCreateUserInterface"
22a54	mov    rcx,rdi
22a57	call   0x3f3165
22a5c	(bad)
22a5d	mov    rsi,rax
22a60	test   r14,r14
22a63	je     0x22aa4
22a65	test   rbx,rbx
22a68	je     0x22aa4
22a6a	test   rax,rax
22a6d	je     0x22aa4
22a6f	call   r14
22a72	mov    edi,eax
22a74	call   rbx
22a76	test   edi,edi
22a78	je     0x22a9b
22a7a	test   eax,eax
22a7c	je     0x22a9b
22a7e	lea    rdx,[rip+0x3aaab]        # 0x5d530   ; "A:STEAMAPPS_INTERFACE_VERSION008"
22a85	mov    ecx,edi
22a87	call   rsi
22a89	mov    rsi,rax
22a8c	xor    ebx,ebx
22a8e	mov    ecx,ebx
22a90	test   rax,rax
22a93	setne  cl
22a96	add    ecx,0x2
22a99	jmp    0x22aab
22a9b	xor    ebx,ebx
22a9d	mov    ecx,0x1
22aa2	jmp    0x22aa8
22aa4	xor    ebx,ebx
22aa6	mov    ecx,ebx
22aa8	mov    rsi,rbx
22aab	cmp    BYTE PTR [rip+0x83f0e],0x0        # 0xa69c0
22ab2	je     0x22ac0
22ab4	cmp    DWORD PTR [rip+0x83f22],ecx        # 0xa69dc
22aba	je     0x22bf9
22ac0	mov    BYTE PTR [rip+0x83ef9],0x1        # 0xa69c0
22ac7	mov    DWORD PTR [rip+0x83f0f],ecx        # 0xa69dc
22acd	sub    ecx,0x1
22ad0	je     0x22af7
22ad2	sub    ecx,0x1
22ad5	je     0x22aee
22ad7	cmp    ecx,0x1
22ada	je     0x22ae5
22adc	lea    rdx,[rip+0x3aa6d]        # 0x5d550   ; "W:exports_missing"
22ae3	jmp    0x22afe
22ae5	lea    rdx,[rip+0x3aad4]        # 0x5d5c0   ; "W:ready"
22aec	jmp    0x22afe
22aee	lea    rdx,[rip+0x3aaa3]        # 0x5d598   ; "W:interface_pending"
22af5	jmp    0x22afe
22af7	lea    rdx,[rip+0x3aa72]        # 0x5d570   ; "W:waiting_for_handles"
22afe	movaps xmm0,XMMWORD PTR [rip+0x3ac2b]        # 0x5d730
22b05	movaps XMMWORD PTR [rbp-0x30],xmm0
22b09	movaps xmm1,XMMWORD PTR [rip+0x3ac30]        # 0x5d740
22b10	movaps XMMWORD PTR [rbp-0x20],xmm1
22b14	movaps xmm0,XMMWORD PTR [rip+0x3ac35]        # 0x5d750
22b1b	movaps XMMWORD PTR [rbp-0x10],xmm0
22b1f	movaps xmm1,XMMWORD PTR [rip+0x3ac3a]        # 0x5d760
22b26	movaps XMMWORD PTR [rbp+0x0],xmm1
22b2a	movaps xmm0,XMMWORD PTR [rip+0x3ac3f]        # 0x5d770
22b31	movaps XMMWORD PTR [rbp+0x10],xmm0
22b35	movaps xmm1,XMMWORD PTR [rip+0x3ac44]        # 0x5d780
22b3c	movaps XMMWORD PTR [rbp+0x20],xmm1
22b40	movaps xmm0,XMMWORD PTR [rip+0x3ac49]        # 0x5d790
22b47	movaps XMMWORD PTR [rbp+0x30],xmm0
22b4b	movaps xmm1,XMMWORD PTR [rip+0x3ac4e]        # 0x5d7a0
22b52	movaps XMMWORD PTR [rbp+0x40],xmm1
22b56	movaps xmm0,XMMWORD PTR [rip+0x3ac53]        # 0x5d7b0
22b5d	movaps XMMWORD PTR [rbp+0x50],xmm0
22b61	movups xmm1,XMMWORD PTR [rip+0x3ac56]        # 0x5d7be
22b68	movups XMMWORD PTR [rbp+0x5e],xmm1
22b6c	xorps  xmm0,xmm0
22b6f	movups XMMWORD PTR [rsp+0x30],xmm0
22b74	movups XMMWORD PTR [rsp+0x40],xmm0
22b79	movups XMMWORD PTR [rsp+0x50],xmm0
22b7e	movups XMMWORD PTR [rsp+0x60],xmm0
22b83	movups XMMWORD PTR [rsp+0x70],xmm0
22b88	movups XMMWORD PTR [rbp-0x80],xmm0
22b8c	movups XMMWORD PTR [rbp-0x70],xmm0
22b90	movups XMMWORD PTR [rbp-0x60],xmm0
22b94	movups XMMWORD PTR [rbp-0x50],xmm0
22b98	movups XMMWORD PTR [rbp-0x44],xmm0
22b9c	mov    rdi,rbx
22b9f	mov    r8d,0xc4
22ba5	data16 data16 nop WORD PTR [rax+rax*1+0x0]
22bb0	movzx  eax,di
22bb3	imul   ecx,eax,0xd
22bb6	mov    rax,rdi
22bb9	shr    rax,0x3
22bbd	add    ax,cx
22bc0	add    ax,r8w
22bc4	xor    ax,WORD PTR [rbp+rdi*2-0x30]
22bc9	mov    WORD PTR [rsp+0x20],ax
22bce	movzx  eax,WORD PTR [rsp+0x20]
22bd3	mov    WORD PTR [rsp+rdi*2+0x30],ax
22bd8	inc    rdi
22bdb	cmp    rdi,0x4e
22bdf	jb     0x22bb0
22be1	lea    rcx,[rsp+0x30]
22be6	call   0x8a20
22beb	lea    rdi,[rsp+0x30]
22bf0	xor    eax,eax
22bf2	mov    ecx,0x9c
22bf7	rep stos BYTE PTR [rdi],al
22bf9	test   rsi,rsi
22bfc	je     0x22e32
22c02	mov    rcx,QWORD PTR [rsi]
22c05	test   rcx,rcx
22c08	je     0x22e32
22c0e	add    rcx,0xd0
22c15	mov    QWORD PTR [rip+0x83db4],rcx        # 0xa69d0
22c1c	mov    rax,QWORD PTR [rcx]
22c1f	mov    QWORD PTR [rip+0x83da2],rax        # 0xa69c8
22c26	test   rax,rax
22c29	je     0x22e32
22c2f	mov    DWORD PTR [rbp+0x70],ebx
22c32	lea    r9,[rbp+0x70]
22c36	mov    edx,0x8
22c3b	mov    r8d,0x4
22c41	push   rdi
22c42	call   0xb3d94
22c47	test   eax,eax
22c49	jne    0x22d1c
22c4f	call   0x2f1ba6
22c54	mov    rdi,rax
22c57	movaps xmm0,XMMWORD PTR [rip+0x3ab72]        # 0x5d7d0
22c5e	movaps XMMWORD PTR [rsp+0x30],xmm0
22c63	movaps xmm1,XMMWORD PTR [rip+0x3ab76]        # 0x5d7e0
22c6a	movaps XMMWORD PTR [rsp+0x40],xmm1
22c6f	movaps xmm0,XMMWORD PTR [rip+0x3ab7a]        # 0x5d7f0
22c76	movaps XMMWORD PTR [rsp+0x50],xmm0
22c7b	movaps xmm1,XMMWORD PTR [rip+0x3ab7e]        # 0x5d800
22c82	movaps XMMWORD PTR [rsp+0x60],xmm1
22c87	movaps xmm0,XMMWORD PTR [rip+0x3ab82]        # 0x5d810
22c8e	movaps XMMWORD PTR [rsp+0x70],xmm0
22c93	movsd  xmm1,QWORD PTR [rip+0x3ab85]        # 0x5d820
22c9b	movsd  QWORD PTR [rbp-0x80],xmm1
22ca0	xorps  xmm0,xmm0
22ca3	xor    eax,eax
22ca5	movups XMMWORD PTR [rbp-0x30],xmm0
22ca9	movups XMMWORD PTR [rbp-0x20],xmm0
22cad	movups XMMWORD PTR [rbp-0x10],xmm0
22cb1	movups XMMWORD PTR [rbp+0x0],xmm0
22cb5	movups XMMWORD PTR [rbp+0x10],xmm0
22cb9	mov    QWORD PTR [rbp+0x1e],rax
22cbd	mov    rdx,rbx
22cc0	movzx  eax,dx
22cc3	imul   ecx,eax,0xd   ; DEC "?partial steam_launch status=protect_failed err=%\u025e\u026b\u0278"
22cc6	mov    rax,rdx
22cc9	shr    rax,0x3
22ccd	add    ax,0x51
22cd1	add    ax,cx
22cd4	xor    ax,WORD PTR [rsp+rdx*2+0x30]
22cd9	mov    WORD PTR [rsp+0x20],ax
22cde	movzx  eax,WORD PTR [rsp+0x20]
22ce3	mov    WORD PTR [rbp+rdx*2-0x30],ax
22ce8	inc    rdx
22ceb	cmp    rdx,0x2b
22cef	jb     0x22cc0
22cf1	mov    edx,edi
22cf3	lea    rcx,[rbp-0x30]
22cf7	call   0x8a20
22cfc	lea    rdi,[rbp-0x30]
22d00	xor    eax,eax
22d02	mov    ecx,0x56
22d07	rep stos BYTE PTR [rdi],al
22d09	mov    QWORD PTR [rip+0x83cb8],rbx        # 0xa69c8
22d10	mov    QWORD PTR [rip+0x83cb9],rbx        # 0xa69d0
22d17	jmp    0x22e34
22d1c	lea    rax,[rip+0xfffffffffffffacd]        # 0x227f0
22d23	mov    rcx,QWORD PTR [rip+0x83ca6]        # 0xa69d0
22d2a	mov    QWORD PTR [rcx],rax
22d2d	lea    r9,[rbp+0x70]
22d31	mov    r8d,DWORD PTR [rbp+0x70]
22d35	mov    edx,0x8
22d3a	push   rsi
22d3b	call   0x3b778c
22d40	mov    BYTE PTR [rip+0x83c91],0x1        # 0xa69d8
22d47	mov    r8,QWORD PTR [rip+0x83c7a]        # 0xa69c8
22d4e	movaps xmm0,XMMWORD PTR [rip+0x3a8fb]        # 0x5d650
22d55	movaps XMMWORD PTR [rbp-0x30],xmm0
22d59	movaps xmm1,XMMWORD PTR [rip+0x3a900]        # 0x5d660
22d60	movaps XMMWORD PTR [rbp-0x20],xmm1
22d64	movaps xmm0,XMMWORD PTR [rip+0x3a905]        # 0x5d670
22d6b	movaps XMMWORD PTR [rbp-0x10],xmm0
22d6f	movaps xmm1,XMMWORD PTR [rip+0x3a90a]        # 0x5d680
22d76	movaps XMMWORD PTR [rbp+0x0],xmm1
22d7a	movaps xmm0,XMMWORD PTR [rip+0x3a90f]        # 0x5d690
22d81	movaps XMMWORD PTR [rbp+0x10],xmm0
22d85	movaps xmm1,XMMWORD PTR [rip+0x3a914]        # 0x5d6a0
22d8c	movaps XMMWORD PTR [rbp+0x20],xmm1
22d90	movaps xmm0,XMMWORD PTR [rip+0x3a919]        # 0x5d6b0
22d97	movaps XMMWORD PTR [rbp+0x30],xmm0
22d9b	movaps xmm1,XMMWORD PTR [rip+0x3a91e]        # 0x5d6c0
22da2	movaps XMMWORD PTR [rbp+0x40],xmm1
22da6	mov    eax,DWORD PTR [rip+0x3a924]        # 0x5d6d0
22dac	mov    DWORD PTR [rbp+0x50],eax
22daf	xorps  xmm0,xmm0
22db2	xor    eax,eax
22db4	movups XMMWORD PTR [rsp+0x30],xmm0
22db9	movups XMMWORD PTR [rsp+0x40],xmm0
22dbe	movups XMMWORD PTR [rsp+0x50],xmm0
22dc3	movups XMMWORD PTR [rsp+0x60],xmm0
22dc8	movups XMMWORD PTR [rsp+0x70],xmm0
22dcd	movups XMMWORD PTR [rbp-0x80],xmm0
22dd1	movups XMMWORD PTR [rbp-0x70],xmm0
22dd5	movups XMMWORD PTR [rbp-0x60],xmm0
22dd9	mov    WORD PTR [rbp-0x50],ax
22ddd	nop    DWORD PTR [rax]
22de0	movzx  eax,bx
22de3	imul   ecx,eax,0xd   ; DEC "steam_launch status=installed how=vtable slot=0x%02X original=%p"
22de6	mov    rax,rbx
22de9	shr    rax,0x3
22ded	add    ax,0x6e
22df1	add    ax,cx
22df4	xor    ax,WORD PTR [rbp+rbx*2-0x30]
22df9	mov    WORD PTR [rsp+0x20],ax
22dfe	movzx  eax,WORD PTR [rsp+0x20]
22e03	mov    WORD PTR [rsp+rbx*2+0x30],ax
22e08	inc    rbx
22e0b	cmp    rbx,0x41
22e0f	jb     0x22de0
22e11	mov    edx,0xd0
22e16	lea    rcx,[rsp+0x30]
22e1b	call   0x8a20
22e20	lea    rdi,[rsp+0x30]
22e25	xor    eax,eax
22e27	mov    ecx,0x82
22e2c	rep stos BYTE PTR [rdi],al
22e2e	mov    al,0x1
22e30	jmp    0x22e34
22e32	xor    al,al
22e34	mov    rcx,QWORD PTR [rbp+0x78]
22e38	xor    rcx,rsp
22e3b	call   0x2e460
22e40	add    rsp,0x180
22e47	pop    r14
22e49	pop    rdi
22e4a	pop    rsi
22e4b	pop    rbx
22e4c	pop    rbp
22e4d	ret
22e4e	int3
22e4f	int3
22e50	rex push rdi
