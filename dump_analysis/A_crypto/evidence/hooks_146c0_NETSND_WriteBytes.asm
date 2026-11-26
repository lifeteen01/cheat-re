146c0	mov    QWORD PTR [rsp+0x20],rbx
146c5	push   rbp
146c6	push   rsi
146c7	push   rdi
146c8	push   r12
146ca	push   r13
146cc	push   r14
146ce	push   r15
146d0	lea    rbp,[rsp-0x300]
146d8	sub    rsp,0x400
146df	movsxd r14,r8d
146e2	mov    r13,rdx
146e5	mov    r12,rcx
146e8	mov    QWORD PTR [rbp-0x50],rcx
146ec	mov    DWORD PTR [rsp+0x58],0x0
146f4	test   rdx,rdx
146f7	je     0x150a0
146fd	test   r8d,r8d
14700	jle    0x150a0
14706	movzx  ebx,BYTE PTR [rdx]
14709	mov    eax,0x1
1470e	mov    QWORD PTR [rbp-0x60],rax
14712	lock xadd QWORD PTR [rip+0x91f7d],rax        # 0xa6698
1471b	lea    rsi,[rax+0x1]
1471f	mov    QWORD PTR [rbp-0x58],rsi
14723	mov    QWORD PTR [rbp-0x48],r14
14727	mov    r9,r14
1472a	mov    r8,rdx
1472d	mov    rdx,rsi
14730	lea    rcx,[rip+0x441c9]        # 0x58900   ; "W:write_packet_hex"
14737	call   0x10b50
1473c	movzx  edi,BYTE PTR [rip+0x91d5d]        # 0xa64a0
14743	movaps xmm0,XMMWORD PTR [rip+0x44a56]        # 0x591a0
1474a	movaps XMMWORD PTR [rbp+0x160],xmm0
14751	movaps xmm1,XMMWORD PTR [rip+0x44a58]        # 0x591b0
14758	movaps XMMWORD PTR [rbp+0x170],xmm1
1475f	movaps xmm0,XMMWORD PTR [rip+0x44a5a]        # 0x591c0
14766	movaps XMMWORD PTR [rbp+0x180],xmm0
1476d	movaps xmm1,XMMWORD PTR [rip+0x44a5c]        # 0x591d0
14774	movaps XMMWORD PTR [rbp+0x190],xmm1
1477b	movaps xmm0,XMMWORD PTR [rip+0x44a5e]        # 0x591e0
14782	movaps XMMWORD PTR [rbp+0x1a0],xmm0
14789	movaps xmm1,XMMWORD PTR [rip+0x44a60]        # 0x591f0
14790	movaps XMMWORD PTR [rbp+0x1b0],xmm1
14797	movaps xmm0,XMMWORD PTR [rip+0x44a62]        # 0x59200
1479e	movaps XMMWORD PTR [rbp+0x1c0],xmm0
147a5	movaps xmm1,XMMWORD PTR [rip+0x44a64]        # 0x59210
147ac	movaps XMMWORD PTR [rbp+0x1d0],xmm1
147b3	movsd  xmm0,QWORD PTR [rip+0x44a65]        # 0x59220
147bb	movsd  QWORD PTR [rbp+0x1e0],xmm0
147c3	xorps  xmm1,xmm1
147c6	xor    eax,eax
147c8	movups XMMWORD PTR [rbp-0x40],xmm1
147cc	movups XMMWORD PTR [rbp-0x30],xmm1
147d0	movups XMMWORD PTR [rbp-0x20],xmm1
147d4	movups XMMWORD PTR [rbp-0x10],xmm1
147d8	movups XMMWORD PTR [rbp+0x0],xmm1
147dc	movups XMMWORD PTR [rbp+0x10],xmm1
147e0	movups XMMWORD PTR [rbp+0x20],xmm1
147e4	movups XMMWORD PTR [rbp+0x30],xmm1
147e8	mov    QWORD PTR [rbp+0x3e],rax
147ec	xor    edx,edx
147ee	mov    r8d,0xf1
147f4	nop    DWORD PTR [rax+0x0]
147f8	nop    DWORD PTR [rax+rax*1+0x0]
14800	movzx  eax,dx
14803	imul   ecx,eax,0xd
14806	mov    rax,rdx
14809	shr    rax,0x3
1480d	add    ax,cx
14810	add    ax,r8w
14814	xor    ax,WORD PTR [rbp+rdx*2+0x160]
1481c	mov    WORD PTR [rsp+0x50],ax
14821	movzx  eax,WORD PTR [rsp+0x50]
14826	mov    WORD PTR [rbp+rdx*2-0x40],ax
1482b	inc    rdx
1482e	cmp    rdx,0x43
14832	jb     0x14800
14834	mov    DWORD PTR [rsp+0x54],ebx
14838	mov    DWORD PTR [rsp+0x20],edi
1483c	mov    r9d,r14d
1483f	mov    r8d,ebx
14842	mov    rdx,rsi
14845	lea    rcx,[rbp-0x40]
14849	call   0x8a20
1484e	lea    rdi,[rbp-0x40]
14852	xor    eax,eax
14854	mov    ecx,0x86
14859	rep stos BYTE PTR [rdi],al
1485b	cmp    bl,0xa2
1485e	jne    0x14978
14864	movaps xmm0,XMMWORD PTR [rip+0x45385]        # 0x59bf0
1486b	movups XMMWORD PTR [rbp-0x40],xmm0
1486f	movaps xmm1,XMMWORD PTR [rip+0x4538a]        # 0x59c00
14876	movups XMMWORD PTR [rbp-0x30],xmm1
1487a	movaps xmm0,XMMWORD PTR [rip+0x4538f]        # 0x59c10
14881	movups XMMWORD PTR [rbp-0x20],xmm0
14885	movaps xmm1,XMMWORD PTR [rip+0x45394]        # 0x59c20
1488c	movups XMMWORD PTR [rbp-0x10],xmm1
14890	movaps xmm0,XMMWORD PTR [rip+0x45399]        # 0x59c30
14897	movups XMMWORD PTR [rbp+0x0],xmm0
1489b	movaps xmm1,XMMWORD PTR [rip+0x4539e]        # 0x59c40
148a2	movups XMMWORD PTR [rbp+0x10],xmm1
148a6	movaps xmm0,XMMWORD PTR [rip+0x453a3]        # 0x59c50
148ad	movups XMMWORD PTR [rbp+0x20],xmm0
148b1	movaps xmm1,XMMWORD PTR [rip+0x453a8]        # 0x59c60
148b8	movups XMMWORD PTR [rbp+0x30],xmm1
148bc	movaps xmm0,XMMWORD PTR [rip+0x453ad]        # 0x59c70
148c3	movups XMMWORD PTR [rbp+0x40],xmm0
148c7	movaps xmm1,XMMWORD PTR [rip+0x453b2]        # 0x59c80
148ce	movups XMMWORD PTR [rbp+0x50],xmm1
148d2	movaps xmm0,XMMWORD PTR [rip+0x453b7]        # 0x59c90
148d9	movups XMMWORD PTR [rbp+0x60],xmm0
148dd	movups xmm1,XMMWORD PTR [rip+0x453ba]        # 0x59c9e
148e4	movups XMMWORD PTR [rbp+0x6e],xmm1
148e8	xor    edx,edx
148ea	mov    r8d,0xbc
148f0	lea    rcx,[rbp+0x160]
148f7	call   0x478c0
148fc	xor    edx,edx
148fe	xchg   ax,ax
14900	movzx  eax,dx
14903	imul   ecx,eax,0xd   ; DEC "a2_packet direction=outbound context=%p write_index=%llu data=%p bytes=%d source=GameAssembly"
14906	mov    rax,rdx
14909	shr    rax,0x3
1490d	add    ax,0x7e
14911	add    ax,cx
14914	xor    ax,WORD PTR [rbp+rdx*2-0x40]
14919	mov    WORD PTR [rsp+0x50],ax
1491e	movzx  eax,WORD PTR [rsp+0x50]
14923	mov    WORD PTR [rbp+rdx*2+0x160],ax
1492b	inc    rdx
1492e	cmp    rdx,0x5e
14932	jb     0x14900
14934	mov    DWORD PTR [rsp+0x20],r14d
14939	mov    r9,r13
1493c	mov    r8,rsi
1493f	mov    rdx,r12
14942	lea    rcx,[rbp+0x160]
14949	call   0x8a20
1494e	lea    rdi,[rbp+0x160]
14955	xor    eax,eax
14957	mov    ecx,0xbc
1495c	rep stos BYTE PTR [rdi],al
1495e	mov    r9,r14
14961	mov    r8,r13
14964	mov    rdx,rsi
14967	lea    rcx,[rip+0x43fba]        # 0x58928   ; "W:a2_outbound_packet_hex"
1496e	call   0x10b50
14973	jmp    0x14c4f
14978	cmp    bl,0x9e
1497b	jne    0x14c4f
14981	xorps  xmm0,xmm0
14984	movdqu XMMWORD PTR [rsp+0x70],xmm0
1498a	mov    QWORD PTR [rbp-0x80],rax
1498e	mov    DWORD PTR [rbp-0x78],eax
14991	mov    QWORD PTR [rbp-0x70],rax
14995	lea    rdx,[rsp+0x70]
1499a	call   0xdd30
1499f	test   al,al
149a1	je     0x14b24
149a7	mov    rbx,QWORD PTR [rsp+0x70]
149ac	mov    r14,QWORD PTR [rsp+0x78]
149b1	cmp    rbx,r14
149b4	jne    0x149ba
149b6	xor    edi,edi
149b8	jmp    0x149bd
149ba	movzx  edi,BYTE PTR [rbx]
149bd	mov    r15,r14
149c0	sub    r15,rbx
149c3	lea    rax,[rbp-0x40]
149c7	lea    rcx,[rip+0x44ee2]        # 0x598b0   ; "W:tFY("
149ce	mov    esi,0x2
149d3	nop    DWORD PTR [rax+0x0]
149d7	nop    WORD PTR [rax+rax*1+0x0]
149e0	movups xmm0,XMMWORD PTR [rcx]
149e3	movups XMMWORD PTR [rax],xmm0
149e6	movups xmm1,XMMWORD PTR [rcx+0x10]
149ea	movups XMMWORD PTR [rax+0x10],xmm1
149ee	movups xmm0,XMMWORD PTR [rcx+0x20]
149f2	movups XMMWORD PTR [rax+0x20],xmm0
149f6	movups xmm1,XMMWORD PTR [rcx+0x30]
149fa	movups XMMWORD PTR [rax+0x30],xmm1
149fe	movups xmm0,XMMWORD PTR [rcx+0x40]
14a02	movups XMMWORD PTR [rax+0x40],xmm0
14a06	movups xmm1,XMMWORD PTR [rcx+0x50]
14a0a	movups XMMWORD PTR [rax+0x50],xmm1
14a0e	movups xmm0,XMMWORD PTR [rcx+0x60]
14a12	movups XMMWORD PTR [rax+0x60],xmm0
14a16	movups xmm1,XMMWORD PTR [rcx+0x70]
14a1a	movups XMMWORD PTR [rax+0x70],xmm1
14a1e	lea    rax,[rax+0x80]
14a25	lea    rcx,[rcx+0x80]
14a2c	sub    rsi,0x1
14a30	jne    0x149e0
14a32	movups xmm0,XMMWORD PTR [rcx]
14a35	movups XMMWORD PTR [rax],xmm0
14a38	xor    edx,edx
14a3a	mov    r8d,0x10e
14a40	lea    rcx,[rbp+0x160]
14a47	call   0x478c0
14a4c	xor    edx,edx
14a4e	xchg   ax,ax
14a50	movzx  eax,dx
14a53	imul   ecx,eax,0xd   ; DEC "?partial \x1c)6CP]jw\x85\x92\x9f\xac\xb9\xc6\xd3\xe0\xee\xfb\u0108\u0115\u0122\u012f\u013c\u0149\u0157\u0164\u0171\u017e\u018b\u0198\u01a5\u"
14a56	mov    rax,rdx
14a59	shr    rax,0x3
14a5d	add    ax,0x1c
14a61	add    ax,cx
14a64	xor    ax,WORD PTR [rbp+rdx*2-0x40]
14a69	mov    WORD PTR [rsp+0x50],ax
14a6e	movzx  eax,WORD PTR [rsp+0x50]
14a73	mov    WORD PTR [rbp+rdx*2+0x160],ax
14a7b	inc    rdx
14a7e	cmp    rdx,0x87
14a85	jb     0x14a50
14a87	mov    DWORD PTR [rsp+0x20],edi
14a8b	mov    r9,QWORD PTR [rbp-0x70]
14a8f	mov    r8d,DWORD PTR [rbp-0x78]
14a93	mov    rdx,r15
14a96	lea    rcx,[rbp+0x160]
14a9d	call   0x8a20
14aa2	lea    rdi,[rbp+0x160]
14aa9	xor    eax,eax
14aab	mov    ecx,0x10e
14ab0	rep stos BYTE PTR [rdi],al
14ab2	mov    r9,r15
14ab5	mov    r8,rbx
14ab8	mov    rdx,QWORD PTR [rbp-0x58]
14abc	lea    rcx,[rip+0x43e95]        # 0x58958   ; "W:write_cached_auth_packet_hex"
14ac3	call   0x10b50
14ac8	sub    r14d,ebx
14acb	mov    r8d,r14d
14ace	mov    rdx,rbx
14ad1	mov    rcx,r12
14ad4	call   QWORD PTR [rip+0x91a1e]        # 0xa64f8
14ada	nop
14adb	test   rbx,rbx
14ade	je     0x150af
14ae4	mov    rdx,QWORD PTR [rbp-0x80]
14ae8	sub    rdx,rbx
14aeb	cmp    rdx,0x1000
14af2	jb     0x14b17
14af4	mov    rcx,QWORD PTR [rbx-0x8]
14af8	sub    rbx,rcx
14afb	sub    rbx,0x8
14aff	cmp    rbx,0x1f
14b03	ja     0x14c40
14b09	add    rdx,0x27
14b0d	call   0x2e9c0
14b12	jmp    0x150af
14b17	mov    rcx,rbx
14b1a	call   0x2e9c0
14b1f	jmp    0x150af
14b24	movaps xmm0,XMMWORD PTR [rip+0x45b85]        # 0x5a6b0
14b2b	movups XMMWORD PTR [rbp-0x40],xmm0
14b2f	movaps xmm1,XMMWORD PTR [rip+0x45b8a]        # 0x5a6c0
14b36	movups XMMWORD PTR [rbp-0x30],xmm1
14b3a	movaps xmm0,XMMWORD PTR [rip+0x45b8f]        # 0x5a6d0
14b41	movups XMMWORD PTR [rbp-0x20],xmm0
14b45	movaps xmm1,XMMWORD PTR [rip+0x45b94]        # 0x5a6e0
14b4c	movups XMMWORD PTR [rbp-0x10],xmm1
14b50	movaps xmm0,XMMWORD PTR [rip+0x45b99]        # 0x5a6f0
14b57	movups XMMWORD PTR [rbp+0x0],xmm0
14b5b	movaps xmm1,XMMWORD PTR [rip+0x45b9e]        # 0x5a700
14b62	movups XMMWORD PTR [rbp+0x10],xmm1
14b66	movaps xmm0,XMMWORD PTR [rip+0x45ba3]        # 0x5a710
14b6d	movups XMMWORD PTR [rbp+0x20],xmm0
14b71	movaps xmm1,XMMWORD PTR [rip+0x45ba8]        # 0x5a720
14b78	movups XMMWORD PTR [rbp+0x30],xmm1
14b7c	movaps xmm0,XMMWORD PTR [rip+0x45bad]        # 0x5a730
14b83	movups XMMWORD PTR [rbp+0x40],xmm0
14b87	movaps xmm1,XMMWORD PTR [rip+0x45bb2]        # 0x5a740
14b8e	movups XMMWORD PTR [rbp+0x50],xmm1
14b92	movups xmm0,XMMWORD PTR [rip+0x45bb3]        # 0x5a74c
14b99	movups XMMWORD PTR [rbp+0x5c],xmm0
14b9d	xor    edx,edx
14b9f	mov    r8d,0xaa
14ba5	lea    rcx,[rbp+0x160]
14bac	call   0x478c0
14bb1	xor    edx,edx
14bb3	mov    edi,0x90
14bb8	nop    DWORD PTR [rax+rax*1+0x0]
14bc0	movzx  eax,dx
14bc3	imul   ecx,eax,0xd
14bc6	mov    rax,rdx
14bc9	shr    rax,0x3
14bcd	add    ax,cx
14bd0	add    ax,di
14bd3	xor    ax,WORD PTR [rbp+rdx*2-0x40]
14bd8	mov    WORD PTR [rsp+0x50],ax
14bdd	movzx  eax,WORD PTR [rsp+0x50]
14be2	mov    WORD PTR [rbp+rdx*2+0x160],ax
14bea	inc    rdx
14bed	cmp    rdx,0x55
14bf1	jb     0x14bc0
14bf3	lea    rcx,[rbp+0x160]
14bfa	call   0x8a20
14bff	lea    rdi,[rbp+0x160]
14c06	xor    eax,eax
14c08	mov    ecx,0xaa
14c0d	rep stos BYTE PTR [rdi],al
14c0f	mov    rax,QWORD PTR [rsp+0x70]
14c14	test   rax,rax
14c17	je     0x14c4f
14c19	mov    rdx,QWORD PTR [rbp-0x80]
14c1d	sub    rdx,rax
14c20	cmp    rdx,0x1000
14c27	jb     0x14c47
14c29	mov    rcx,QWORD PTR [rax-0x8]
14c2d	sub    rax,rcx
14c30	sub    rax,0x8
14c34	cmp    rax,0x1f
14c38	ja     0x14c40
14c3a	add    rdx,0x27
14c3e	jmp    0x14c4a
14c40	mov    ecx,0x5
14c45	int    0x29
14c47	mov    rcx,rax
14c4a	call   0x2e9c0
14c4f	movzx  eax,BYTE PTR [rip+0x9184a]        # 0xa64a0
14c56	cmp    al,0x2
14c58	jne    0x150a0
14c5e	sub    bl,0x91
14c61	cmp    bl,0x18
14c64	ja     0x150a0
14c6a	mov    ecx,0x1c5cfff
14c6f	bt     ecx,ebx
14c72	jae    0x150a0
14c78	mov    r8d,r14d
14c7b	mov    rdx,r13
14c7e	lea    rcx,[rsp+0x70]
14c83	call   0x10400
14c88	movzx  ecx,BYTE PTR [rax]
14c8b	mov    r15d,DWORD PTR [rax+0x4]
14c8f	mov    DWORD PTR [rbp-0x68],r15d
14c93	movzx  r12d,BYTE PTR [rax+0x8]
14c98	test   cl,cl
14c9a	jne    0x14f41
14ca0	mov    ecx,DWORD PTR [rax+0xc]
14ca3	mov    DWORD PTR [rsp+0x58],ecx
14ca7	mov    ecx,DWORD PTR [rax+0x10]
14caa	mov    DWORD PTR [rbp-0x64],ecx
14cad	movzx  eax,r12b
14cb1	neg    al
14cb3	sbb    r15d,r15d
14cb6	add    r15d,0x2
14cba	mov    edi,0xd0
14cbf	test   r12b,r12b
14cc2	jne    0x14d2e
14cc4	movsd  xmm0,QWORD PTR [rip+0x460e4]        # 0x5adb0
14ccc	movsd  QWORD PTR [rsp+0x60],xmm0
14cd2	mov    eax,DWORD PTR [rip+0x460e0]        # 0x5adb8
14cd8	mov    DWORD PTR [rsp+0x68],eax
14cdc	mov    WORD PTR [rsp+0x6c],di
14ce1	xor    eax,eax
14ce3	mov    QWORD PTR [rsp+0x70],rax
14ce8	mov    DWORD PTR [rsp+0x78],eax
14cec	xor    edx,edx
14cee	xchg   ax,ax
14cf0	movzx  eax,dx
14cf3	imul   ecx,eax,0xd
14cf6	mov    rax,rdx
14cf9	shr    rax,0x3
14cfd	add    ax,cx
14d00	add    ax,di
14d03	xor    ax,WORD PTR [rsp+rdx*2+0x60]
14d08	mov    WORD PTR [rsp+0x50],ax
14d0d	movzx  eax,WORD PTR [rsp+0x50]
14d12	mov    WORD PTR [rsp+rdx*2+0x70],ax
14d17	inc    rdx
14d1a	cmp    rdx,0x6
14d1e	jb     0x14cf0
14d20	lea    rdi,[rsp+0x70]
14d25	xor    esi,esi
14d27	mov    ebx,0x1
14d2c	jmp    0x14d9f
14d2e	movsd  xmm0,QWORD PTR [rip+0x4572a]        # 0x5a460
14d36	movsd  QWORD PTR [rsp+0x70],xmm0
14d3c	mov    eax,DWORD PTR [rip+0x45726]        # 0x5a468
14d42	mov    DWORD PTR [rsp+0x78],eax
14d46	mov    WORD PTR [rsp+0x7c],0xd0
14d4d	xor    eax,eax
14d4f	mov    QWORD PTR [rsp+0x60],rax
14d54	mov    DWORD PTR [rsp+0x68],eax
14d58	xor    edx,edx
14d5a	nop    WORD PTR [rax+rax*1+0x0]
14d60	movzx  eax,dx
14d63	imul   ecx,eax,0xd
14d66	mov    rax,rdx
14d69	shr    rax,0x3
14d6d	add    ax,cx
14d70	add    ax,di
14d73	xor    ax,WORD PTR [rsp+rdx*2+0x70]
14d78	mov    WORD PTR [rsp+0x50],ax
14d7d	movzx  eax,WORD PTR [rsp+0x50]
14d82	mov    WORD PTR [rsp+rdx*2+0x60],ax
14d87	inc    rdx
14d8a	cmp    rdx,0x6
14d8e	jb     0x14d60
14d90	lea    rdi,[rsp+0x60]
14d95	mov    esi,0x2
14d9a	mov    DWORD PTR [rbp-0x60],esi
14d9d	xor    ebx,ebx
14d9f	lea    rax,[rbp-0x40]
14da3	lea    rcx,[rip+0x43d46]        # 0x58af0   ; "W:FW!7m3"
14daa	mov    edx,0x3
14daf	nop
14db0	movups xmm0,XMMWORD PTR [rcx]
14db3	movups XMMWORD PTR [rax],xmm0
14db6	movups xmm1,XMMWORD PTR [rcx+0x10]
14dba	movups XMMWORD PTR [rax+0x10],xmm1
14dbe	movups xmm0,XMMWORD PTR [rcx+0x20]
14dc2	movups XMMWORD PTR [rax+0x20],xmm0
14dc6	movups xmm1,XMMWORD PTR [rcx+0x30]
14dca	movups XMMWORD PTR [rax+0x30],xmm1
14dce	movups xmm0,XMMWORD PTR [rcx+0x40]
14dd2	movups XMMWORD PTR [rax+0x40],xmm0
14dd6	movups xmm1,XMMWORD PTR [rcx+0x50]
14dda	movups XMMWORD PTR [rax+0x50],xmm1
14dde	movups xmm0,XMMWORD PTR [rcx+0x60]
14de2	movups XMMWORD PTR [rax+0x60],xmm0
14de6	movups xmm1,XMMWORD PTR [rcx+0x70]
14dea	movups XMMWORD PTR [rax+0x70],xmm1
14dee	lea    rax,[rax+0x80]
14df5	lea    rcx,[rcx+0x80]
14dfc	sub    rdx,0x1
14e00	jne    0x14db0
14e02	movups xmm0,XMMWORD PTR [rcx]
14e05	movups XMMWORD PTR [rax],xmm0
14e08	movups xmm1,XMMWORD PTR [rcx+0xe]
14e0c	movups XMMWORD PTR [rax+0xe],xmm1
14e10	mov    r8d,0x19c
14e16	lea    rcx,[rbp+0x160]
14e1d	call   0x478c0
14e22	xor    edx,edx
14e24	nop    DWORD PTR [rax+0x0]
14e28	nop    DWORD PTR [rax+rax*1+0x0]
14e30	movzx  eax,dx
14e33	imul   ecx,eax,0xd   ; DEC "?partial +8ER_ly\x86\x94\xa1\xae\xbb\xc8\xd5\xe2\xef\xfd\u010a\u0117\u0124\u0131\u013e\u014b\u0158\u0166\u0173\u0180\u018d\u019a\u01a7\u01b4"
14e36	mov    rax,rdx
14e39	shr    rax,0x3
14e3d	add    ax,0x2b
14e41	add    ax,cx
14e44	xor    ax,WORD PTR [rbp+rdx*2-0x40]
14e49	mov    WORD PTR [rsp+0x50],ax
14e4e	movzx  eax,WORD PTR [rsp+0x50]
14e53	mov    WORD PTR [rbp+rdx*2+0x160],ax
14e5b	inc    rdx
14e5e	cmp    rdx,0xce
14e65	jb     0x14e30
14e67	mov    r9d,r12d
14e6a	mov    eax,DWORD PTR [rbp-0x68]
14e6d	mov    DWORD PTR [rsp+0x48],eax
14e71	movsxd r12,DWORD PTR [rbp-0x64]
14e75	mov    DWORD PTR [rsp+0x40],r12d
14e7a	mov    DWORD PTR [rsp+0x38],r14d
14e7f	mov    eax,DWORD PTR [rsp+0x58]
14e83	mov    DWORD PTR [rsp+0x30],eax
14e87	mov    DWORD PTR [rsp+0x28],r15d
14e8c	mov    QWORD PTR [rsp+0x20],rdi
14e91	mov    r8d,DWORD PTR [rsp+0x54]
14e96	mov    r14,QWORD PTR [rbp-0x50]
14e9a	mov    rdx,r14
14e9d	lea    rcx,[rbp+0x160]
14ea4	call   0x8a20
14ea9	lea    rdi,[rbp+0x160]
14eb0	xor    eax,eax
14eb2	mov    ecx,0x19c
14eb7	rep stos BYTE PTR [rdi],al
14eb9	test   esi,esi
14ebb	je     0x14ecc
14ebd	mov    DWORD PTR [rbp-0x60],ebx
14ec0	lea    rdi,[rsp+0x60]
14ec5	mov    ecx,0xc
14eca	rep stos BYTE PTR [rdi],al
14ecc	test   BYTE PTR [rbp-0x60],0x1
14ed0	je     0x14ee0
14ed2	lea    rdi,[rsp+0x70]
14ed7	xor    eax,eax
14ed9	mov    ecx,0xc
14ede	rep stos BYTE PTR [rdi],al
14ee0	mov    r8,QWORD PTR [rbp-0x48]
14ee4	mov    rdx,r13
14ee7	lea    rcx,[rip+0x43ab2]        # 0x589a0   ; "W:mode2_outbound_plaintext_preview"
14eee	call   0x10810
14ef3	call   0xf900
14ef8	mov    r8,r12
14efb	mov    rdx,QWORD PTR [rax]
14efe	lea    rcx,[rip+0x43aeb]        # 0x589f0   ; "W:mode2_outbound_envelope_preview"
14f05	call   0x10810
14f0a	call   0xf900
14f0f	mov    r9,r12
14f12	mov    r8,QWORD PTR [rax]
14f15	mov    rdx,QWORD PTR [rbp-0x58]
14f19	lea    rcx,[rip+0x43b10]        # 0x58a30   ; "W:mode2_outbound_envelope_hex"
14f20	call   0x10b50
14f25	mov    rdi,QWORD PTR [rip+0x915cc]        # 0xa64f8
14f2c	call   0xf900
14f31	mov    r8d,r12d
14f34	mov    rdx,QWORD PTR [rax]
14f37	mov    rcx,r14
14f3a	call   rdi
14f3c	jmp    0x150af
14f41	cmp    cl,0x6
14f44	ja     0x14f98
14f46	lea    rdx,[rip+0xfffffffffffeb0b3]        # 0x0
14f4d	mov    eax,DWORD PTR [rdx+rcx*4+0x150cc]
14f54	add    rax,rdx
14f57	jmp    rax
14f59	lea    rbx,[rip+0x43648]        # 0x585a8   ; "W:encrypted"
14f60	jmp    0x14f9f
14f62	lea    rbx,[rip+0x43487]        # 0x583f0   ; "W:null_data"
14f69	jmp    0x14f9f
14f6b	lea    rbx,[rip+0x4364e]        # 0x585c0   ; "W:invalid_length"
14f72	jmp    0x14f9f
14f74	lea    rbx,[rip+0x4355d]        # 0x584d8   ; "W:crypto_unavailable"
14f7b	jmp    0x14f9f
14f7d	lea    rbx,[rip+0x4357c]        # 0x58500   ; "W:scratch_allocation_failed"
14f84	jmp    0x14f9f
14f86	lea    rbx,[rip+0x43653]        # 0x585e0   ; "W:encrypt_failed"
14f8d	jmp    0x14f9f
14f8f	lea    rbx,[rip+0x435d2]        # 0x58568   ; "W:output_length_mismatch"
14f96	jmp    0x14f9f
14f98	lea    rbx,[rip+0x435f9]        # 0x58598   ; "W:unknown"
14f9f	lea    rax,[rbp-0x40]
14fa3	lea    rcx,[rip+0x44f06]        # 0x59eb0
14faa	mov    esi,0x2
14faf	nop
14fb0	movups xmm0,XMMWORD PTR [rcx]
14fb3	movups XMMWORD PTR [rax],xmm0
14fb6	movups xmm1,XMMWORD PTR [rcx+0x10]
14fba	movups XMMWORD PTR [rax+0x10],xmm1
14fbe	movups xmm0,XMMWORD PTR [rcx+0x20]
14fc2	movups XMMWORD PTR [rax+0x20],xmm0
14fc6	movups xmm1,XMMWORD PTR [rcx+0x30]
14fca	movups XMMWORD PTR [rax+0x30],xmm1
14fce	movups xmm0,XMMWORD PTR [rcx+0x40]
14fd2	movups XMMWORD PTR [rax+0x40],xmm0
14fd6	movups xmm1,XMMWORD PTR [rcx+0x50]
14fda	movups XMMWORD PTR [rax+0x50],xmm1
14fde	movups xmm0,XMMWORD PTR [rcx+0x60]
14fe2	movups XMMWORD PTR [rax+0x60],xmm0
14fe6	movups xmm1,XMMWORD PTR [rcx+0x70]
14fea	movups XMMWORD PTR [rax+0x70],xmm1
14fee	lea    rax,[rax+0x80]
14ff5	lea    rcx,[rcx+0x80]
14ffc	sub    rsi,0x1
15000	jne    0x14fb0
15002	movups xmm0,XMMWORD PTR [rcx]
15005	movups XMMWORD PTR [rax],xmm0
15008	movups xmm1,XMMWORD PTR [rcx+0xa]
1500c	movups XMMWORD PTR [rax+0xa],xmm1
15010	xor    edx,edx
15012	mov    r8d,0x118
15018	lea    rcx,[rbp+0x160]
1501f	call   0x478c0
15024	xor    edi,edi
15026	mov    edx,0x85
1502b	nop    DWORD PTR [rax+rax*1+0x0]
15030	movzx  eax,di
15033	imul   ecx,eax,0xd
15036	mov    rax,rdi
15039	shr    rax,0x3
1503d	add    ax,cx
15040	add    ax,dx
15043	xor    ax,WORD PTR [rbp+rdi*2-0x40]
15048	mov    WORD PTR [rsp+0x50],ax
1504d	movzx  eax,WORD PTR [rsp+0x50]
15052	mov    WORD PTR [rbp+rdi*2+0x160],ax
1505a	inc    rdi
1505d	cmp    rdi,0x8c
15064	jb     0x15030
15066	mov    DWORD PTR [rsp+0x30],r15d
1506b	mov    DWORD PTR [rsp+0x28],r14d
15070	mov    DWORD PTR [rsp+0x20],r12d
15075	mov    r9d,DWORD PTR [rsp+0x54]
1507a	mov    r12,QWORD PTR [rbp-0x50]
1507e	mov    r8,r12
15081	mov    rdx,rbx
15084	lea    rcx,[rbp+0x160]
1508b	call   0x8a20
15090	lea    rdi,[rbp+0x160]
15097	xor    eax,eax
15099	mov    ecx,0x118
1509e	rep stos BYTE PTR [rdi],al
150a0	mov    r8d,r14d
150a3	mov    rdx,r13
150a6	mov    rcx,r12
150a9	call   QWORD PTR [rip+0x91449]        # 0xa64f8
150af	mov    rbx,QWORD PTR [rsp+0x458]
150b7	add    rsp,0x400
150be	pop    r15
150c0	pop    r14
150c2	pop    r13
150c4	pop    r12
150c6	pop    rdi
150c7	pop    rsi
150c8	pop    rbp
150c9	ret
150ca	xchg   ax,ax
150cc	pop    rcx
150cd	rex.WRXB add QWORD PTR [r8],r8
150d0	(bad)
150d5	rex.WRXB add QWORD PTR [r8],r8
150d8	je     0x15129
150da	add    DWORD PTR [rax],eax
150dc	jge    0x1512d
150de	add    DWORD PTR [rax],eax
150e0	xchg   BYTE PTR [rdi+0x1],cl
150e3	add    BYTE PTR [rdi-0x33fffeb1],cl
150e9	int3
150ea	int3
150eb	int3
150ec	int3
150ed	int3
150ee	int3
150ef	int3
150f0	mov    rax,rsp
