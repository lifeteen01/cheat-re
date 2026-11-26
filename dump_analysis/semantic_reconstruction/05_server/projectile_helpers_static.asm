; range 0x2df29c..0x2df320
2df29c	rex push rbx
2df29e	push   rbp
2df29f	push   rsi
2df2a0	push   rdi
2df2a1	sub    rsp,0x28
2df2a5	mov    rsi,r8
2df2a8	mov    rbx,rdx
2df2ab	mov    rbp,rcx
2df2ae	call   0x3c7bbc
2df2b3	lea    rcx,[rbp+0xc]
2df2b7	call   0x3c7bbc
2df2bc	mov    eax,DWORD PTR [rbx+0x8]
2df2bf	movsd  xmm0,QWORD PTR [rbx]
2df2c3	movsd  QWORD PTR [rbp+0x0],xmm0
2df2c8	movsd  xmm0,QWORD PTR [rsi]
2df2cc	mov    DWORD PTR [rbp+0x8],eax
2df2cf	mov    eax,DWORD PTR [rsi+0x8]
2df2d2	movsd  QWORD PTR [rbp+0xc],xmm0
2df2d7	mov    DWORD PTR [rbp+0x14],eax
2df2da	mov    rax,rbp
2df2dd	add    rsp,0x28
2df2e1	pop    rdi
2df2e2	pop    rsi
2df2e3	pop    rbp
2df2e4	pop    rbx
2df2e5	ret
2df2e6	int3
2df2e7	int3
2df2e8	rex push rbx
2df2ea	sub    rsp,0x50
2df2ee	movaps XMMWORD PTR [rsp+0x40],xmm6
2df2f3	mov    rbx,rcx
2df2f6	movaps XMMWORD PTR [rsp+0x30],xmm7
2df2fb	add    rcx,0x10
2df2ff	movaps XMMWORD PTR [rsp+0x20],xmm8
2df305	movaps xmm7,xmm3
2df308	movaps xmm8,xmm2
2df30c	movaps xmm6,xmm1
2df30f	call   0x2d4758
2df314	movss  xmm0,DWORD PTR [rsp+0x80]
2df31d	mov    rax,rbx
; range 0x2e5a80..0x2e5b4c
2e5a80	mov    rax,rsp
2e5a83	mov    QWORD PTR [rax+0x8],rbx
2e5a87	mov    QWORD PTR [rax+0x10],rsi
2e5a8b	push   rdi
2e5a8c	sub    rsp,0x70
2e5a90	mov    rbx,rcx
2e5a93	movaps XMMWORD PTR [rax-0x18],xmm6
2e5a97	mov    rsi,r8
2e5a9a	mov    rdi,rdx
2e5a9d	mov    r8,rbx
2e5aa0	lea    rdx,[rax-0x58]
2e5aa4	add    rcx,0xc
2e5aa8	call   0x2df6cc
2e5aad	lea    rcx,[rsp+0x20]
2e5ab2	call   0x2e0ee8
2e5ab7	movaps xmm6,xmm0
2e5aba	ucomiss xmm6,DWORD PTR [rip+0xfffffffffffa778b]        # 0x28d24c
2e5ac1	jp     0x2e5ad5
2e5ac3	jne    0x2e5ad5
2e5ac5	movsd  xmm0,QWORD PTR [rbx]
2e5ac9	movsd  QWORD PTR [rdi],xmm0
2e5acd	mov    eax,DWORD PTR [rbx+0x8]
2e5ad0	mov    DWORD PTR [rdi+0x8],eax
2e5ad3	jmp    0x2e5b2f
2e5ad5	movaps xmm2,xmm6
2e5ad8	lea    rdx,[rsp+0x30]
2e5add	lea    rcx,[rsp+0x20]
2e5ae2	call   0x2df744
2e5ae7	mov    r8,rbx
2e5aea	lea    rdx,[rsp+0x40]
2e5aef	mov    rcx,rsi
2e5af2	call   0x2df6cc
2e5af7	mov    rcx,rax
2e5afa	lea    rdx,[rsp+0x30]
2e5aff	call   0x2e5bc4
2e5b04	movaps xmm2,xmm6
2e5b07	xorps  xmm1,xmm1
2e5b0a	call   0x2e5a44
2e5b0f	movaps xmm2,xmm0
2e5b12	lea    rdx,[rsp+0x4c]
2e5b17	lea    rcx,[rsp+0x30]
2e5b1c	call   0x2df66c
2e5b21	mov    r8,rax
2e5b24	mov    rdx,rdi
2e5b27	mov    rcx,rbx
2e5b2a	call   0x2df708
2e5b2f	movaps xmm6,XMMWORD PTR [rsp+0x60]
2e5b34	lea    r11,[rsp+0x70]
2e5b39	mov    rbx,QWORD PTR [r11+0x10]
2e5b3d	mov    rax,rdi
2e5b40	mov    rsi,QWORD PTR [r11+0x18]
2e5b44	mov    rsp,r11
2e5b47	pop    rdi
2e5b48	ret
2e5b49	int3
2e5b4a	int3
2e5b4b	int3
; range 0x330830..0x330990
330830	mov    rax,rsp
330833	mov    QWORD PTR [rax+0x8],rbx
330837	push   rdi
330838	sub    rsp,0x60
33083c	movaps XMMWORD PTR [rax-0x18],xmm6
330840	mov    rbx,rdx
330843	movaps XMMWORD PTR [rax-0x28],xmm7
330847	movaps xmm6,xmm3
33084a	movss  xmm7,DWORD PTR [r8+0x8]
330850	mov    rdi,rcx
330853	subss  xmm7,DWORD PTR [rdx+0x8]
330858	movaps XMMWORD PTR [rax-0x38],xmm8
33085d	movss  xmm8,DWORD PTR [r8+0x4]
330863	subss  xmm8,DWORD PTR [rdx+0x4]
330869	movaps XMMWORD PTR [rax-0x48],xmm9
33086e	movss  xmm9,DWORD PTR [r8]
330873	movaps xmm1,xmm7
330876	subss  xmm9,DWORD PTR [rdx]
33087b	mulss  xmm1,xmm7
33087f	movaps xmm2,xmm8
330883	mulss  xmm2,xmm8
330888	movaps xmm0,xmm9
33088c	mulss  xmm0,xmm9
330891	addss  xmm2,xmm0
330895	xorps  xmm0,xmm0
330898	addss  xmm2,xmm1
33089c	ucomiss xmm2,xmm0
33089f	jp     0x3308a3
3308a1	je     0x3308b4
3308a3	comiss xmm6,xmm0
3308a6	jb     0x3308c6
3308a8	movaps xmm0,xmm6
3308ab	mulss  xmm0,xmm6
3308af	comiss xmm0,xmm2
3308b2	jb     0x3308c6
3308b4	movsd  xmm0,QWORD PTR [r8]
3308b9	movsd  QWORD PTR [rcx],xmm0
3308bd	mov    eax,DWORD PTR [r8+0x8]
3308c1	mov    DWORD PTR [rcx+0x8],eax
3308c4	jmp    0x33090d
3308c6	movaps xmm0,xmm2
3308c9	call   0x2e3c88
3308ce	divss  xmm7,xmm0
3308d2	mov    rcx,rdi
3308d5	divss  xmm8,xmm0
3308da	divss  xmm9,xmm0
3308df	mulss  xmm7,xmm6
3308e3	mulss  xmm8,xmm6
3308e8	addss  xmm7,DWORD PTR [rbx+0x8]
3308ed	mulss  xmm9,xmm6
3308f2	addss  xmm8,DWORD PTR [rbx+0x4]
3308f8	addss  xmm9,DWORD PTR [rbx]
3308fd	movaps xmm3,xmm7
330900	movaps xmm2,xmm8
330904	movaps xmm1,xmm9
330908	call   0x3c7ba8
33090d	mov    rbx,QWORD PTR [rsp+0x70]
330912	mov    rax,rdi
330915	movaps xmm6,XMMWORD PTR [rsp+0x50]
33091a	movaps xmm7,XMMWORD PTR [rsp+0x40]
33091f	movaps xmm8,XMMWORD PTR [rsp+0x30]
330925	movaps xmm9,XMMWORD PTR [rsp+0x20]
33092b	add    rsp,0x60
33092f	pop    rdi
330930	ret
330931	int3
330932	int3
330933	int3
330934	rex push rbp
330936	push   rbx
330937	push   rsi
330938	push   rdi
330939	push   r12
33093b	push   r13
33093d	push   r14
33093f	push   r15
330941	mov    rbp,rsp
330944	sub    rsp,0x68
330948	mov    rax,QWORD PTR [rip+0xa65b1]        # 0x3d6f00
33094f	mov    rdx,QWORD PTR [rax+0xf39f0a8]
330956	mov    rcx,rdx
330959	call   0x2caf08
33095e	test   al,al
330960	je     0x330b26
330966	mov    r8,QWORD PTR [rdx+0xb8]
33096d	mov    rcx,r8
330970	call   0x2caf08
330975	test   al,al
330977	je     0x330b26
33097d	mov    rdx,QWORD PTR [r8+0x10]
330981	mov    rcx,rdx
330984	call   0x2caf08
330989	test   al,al
33098b	je     0x330b26
; range 0x32bd4c..0x32c0d4
32bd4c	mov    QWORD PTR [rsp+0x8],rbx
32bd51	mov    QWORD PTR [rsp+0x10],rsi
32bd56	push   rdi
32bd57	sub    rsp,0x40
32bd5b	mov    edx,DWORD PTR [rip+0xcbe6f]        # 0x3f7bd0
32bd61	mov    dil,r9b
32bd64	movaps XMMWORD PTR [rsp+0x30],xmm6
32bd69	mov    rsi,r8
32bd6c	movaps xmm6,xmm1
32bd6f	mov    rbx,rcx
32bd72	test   dl,0x1
32bd75	jne    0x32bd97
32bd77	mov    r8,QWORD PTR [rip+0xab182]        # 0x3d6f00
32bd7e	or     edx,0x1
32bd81	add    r8,0x36586b0
32bd88	mov    DWORD PTR [rip+0xcbe42],edx        # 0x3f7bd0
32bd8e	mov    QWORD PTR [rip+0xcbe33],r8        # 0x3f7bc8
32bd95	jmp    0x32bd9e
32bd97	mov    r8,QWORD PTR [rip+0xcbe2a]        # 0x3f7bc8
32bd9e	test   dl,0x2
32bda1	jne    0x32bdc2
32bda3	mov    rcx,QWORD PTR [rip+0xaa0b6]        # 0x3d5e60
32bdaa	or     edx,0x2
32bdad	mov    DWORD PTR [rip+0xcbe1d],edx        # 0x3f7bd0
32bdb3	xor    r9d,r9d
32bdb6	lea    rdx,[rip+0xcbe23]        # 0x3f7be0
32bdbd	call   0x2cbd24
32bdc2	mov    rcx,rbx
32bdc5	call   0x3c7bbc
32bdca	mov    rcx,QWORD PTR [rip+0xaa08f]        # 0x3d5e60
32bdd1	lea    rdx,[rip+0xcbe08]        # 0x3f7be0
32bdd8	movaps xmm3,xmm6
32bddb	mov    BYTE PTR [rsp+0x28],dil
32bde0	mov    r8,rbx
32bde3	mov    QWORD PTR [rsp+0x20],rsi
32bde8	call   0x32b7a0
32bded	mov    rsi,QWORD PTR [rsp+0x58]
32bdf2	mov    rax,rbx
32bdf5	mov    rbx,QWORD PTR [rsp+0x50]
32bdfa	movaps xmm6,XMMWORD PTR [rsp+0x30]
32bdff	add    rsp,0x40
32be03	pop    rdi
32be04	ret
32be05	int3
32be06	int3
32be07	int3
32be08	mov    QWORD PTR [rsp+0x8],rbx
32be0d	push   rbp
32be0e	push   rsi
32be0f	push   rdi
32be10	sub    rsp,0x60
32be14	mov    rbp,rcx
32be17	call   0x2caf08
32be1c	test   al,al
32be1e	jne    0x32be27
32be20	xor    eax,eax
32be22	jmp    0x32bf26
32be27	mov    eax,DWORD PTR [rip+0xcbcb3]        # 0x3f7ae0
32be2d	test   al,0x1
32be2f	jne    0x32bee6
32be35	or     eax,0x1
32be38	lea    rdx,[rsp+0x88]
32be40	lea    rcx,[rsp+0x88]
32be48	mov    DWORD PTR [rip+0xcbc92],eax        # 0x3f7ae0
32be4e	call   0x2cc730
32be53	mov    rcx,rax
32be56	call   0x2cdca4
32be5b	lea    rdx,[rsp+0x46]
32be60	mov    rsi,rax
32be63	lea    rcx,[rsp+0x90]
32be6b	call   0x32b9ec   ; STR "get_transform"
32be70	mov    rcx,rax
32be73	call   0x2d861c
32be78	lea    rdx,[rsp+0x3a]
32be7d	mov    rdi,rax
32be80	lea    rcx,[rsp+0x90]
32be88	call   0x32b93c   ; STR "UnityEngine"
32be8d	mov    rcx,rax
32be90	call   0x2cde0c
32be95	lea    rdx,[rsp+0x30]
32be9a	mov    rbx,rax
32be9d	lea    rcx,[rsp+0x90]
32bea5	call   0x32b8d4   ; STR "Component"
32beaa	mov    rcx,rax
32bead	call   0x2cdd1c
32beb2	mov    rcx,rax
32beb5	mov    rdx,rbx
32beb8	call   0x334224
32bebd	or     r8d,0xffffffff
32bec1	mov    rcx,rax
32bec4	mov    r9,rsi
32bec7	mov    DWORD PTR [rsp+0x20],r8d
32becc	mov    rdx,rdi
32becf	call   0x3349ac
32bed4	mov    r8,QWORD PTR [rax]
32bed7	mov    eax,DWORD PTR [rip+0xcbc03]        # 0x3f7ae0
32bedd	mov    QWORD PTR [rip+0xcbbf4],r8        # 0x3f7ad8
32bee4	jmp    0x32beed
32bee6	mov    r8,QWORD PTR [rip+0xcbbeb]        # 0x3f7ad8
32beed	test   al,0x2
32beef	jne    0x32bf10
32bef1	mov    rcx,QWORD PTR [rip+0xa9f68]        # 0x3d5e60
32bef8	lea    rdx,[rip+0xcbbf1]        # 0x3f7af0
32beff	or     eax,0x2
32bf02	xor    r9d,r9d
32bf05	mov    DWORD PTR [rip+0xcbbd5],eax        # 0x3f7ae0
32bf0b	call   0x2cbd24
32bf10	mov    rcx,QWORD PTR [rip+0xa9f49]        # 0x3d5e60
32bf17	lea    rdx,[rip+0xcbbd2]        # 0x3f7af0
32bf1e	mov    r8,rbp
32bf21	call   0x2cb9fc
32bf26	mov    rbx,QWORD PTR [rsp+0x80]
32bf2e	add    rsp,0x60
32bf32	pop    rdi
32bf33	pop    rsi
32bf34	pop    rbp
32bf35	ret
32bf36	int3
32bf37	int3
32bf38	mov    QWORD PTR [rsp+0x18],rbx
32bf3d	mov    QWORD PTR [rsp+0x20],rsi
32bf42	push   rbp
32bf43	push   rdi
32bf44	push   r14
32bf46	mov    rbp,rsp
32bf49	sub    rsp,0x50
32bf4d	mov    rax,QWORD PTR [rip+0xaafac]        # 0x3d6f00
32bf54	mov    rdx,QWORD PTR [rax+0xf39f0a8]
32bf5b	mov    rcx,rdx
32bf5e	call   0x2caf08
32bf63	test   al,al
32bf65	je     0x32c0bf
32bf6b	mov    r8,QWORD PTR [rdx+0xb8]
32bf72	mov    rcx,r8
32bf75	call   0x2caf08
32bf7a	test   al,al
32bf7c	je     0x32c0bf
32bf82	mov    rdx,QWORD PTR [r8+0x10]
32bf86	mov    rcx,rdx
32bf89	call   0x2caf08
32bf8e	test   al,al
32bf90	je     0x32c0bf
32bf96	mov    rdx,QWORD PTR [rdx+0x18]
32bf9a	mov    rcx,rdx
32bf9d	call   0x2caf08
32bfa2	test   al,al
32bfa4	je     0x32c0bf
32bfaa	mov    r14,QWORD PTR [rdx+0x10]
32bfae	mov    rcx,r14
32bfb1	call   0x2caf08
32bfb6	test   al,al
32bfb8	je     0x32c0bf
32bfbe	mov    esi,DWORD PTR [rdx+0x18]
32bfc1	xor    edi,edi
32bfc3	test   esi,esi
32bfc5	jle    0x32c0bf
32bfcb	lea    eax,[rdi*8+0x0]
32bfd2	movsxd rcx,eax
32bfd5	mov    rdx,QWORD PTR [r14+rcx*1+0x20]
32bfda	mov    rcx,rdx
32bfdd	mov    QWORD PTR [rbp+0x28],rdx
32bfe1	call   0x2caf08
32bfe6	test   al,al
32bfe8	je     0x32c0b5
32bfee	mov    rcx,rdx
32bff1	call   0x3742d4
32bff6	mov    rbx,rax
32bff9	call   0x2dda9c
32bffe	cmp    rbx,rax
32c001	jne    0x32c0b5
32c007	cmp    BYTE PTR [rip+0xcbd9a],0x0        # 0x3f7da8
32c00e	je     0x32c05a
32c010	mov    rcx,QWORD PTR [rbp+0x28]
32c014	call   0x32be08
32c019	mov    rcx,rax
32c01c	mov    rbx,rax
32c01f	call   0x2caf08
32c024	test   al,al
32c026	je     0x32c05a
32c028	movss  xmm1,DWORD PTR [rip+0xcbe68]        # 0x3f7e98
32c030	lea    rcx,[rbp-0x20]
32c034	movaps xmm3,xmm1
32c037	movaps xmm2,xmm1
32c03a	call   0x3c7ba8
32c03f	lea    rdx,[rbp-0x30]
32c043	mov    rcx,rbx
32c046	movsd  xmm0,QWORD PTR [rax]
32c04a	mov    eax,DWORD PTR [rax+0x8]
32c04d	movsd  QWORD PTR [rbp-0x30],xmm0
32c052	mov    DWORD PTR [rbp-0x28],eax
32c055	call   0x375004
32c05a	cmp    BYTE PTR [rip+0xbdc67],0x0        # 0x3e9cc8
32c061	je     0x32c0a5
32c063	mov    rcx,QWORD PTR [rbp+0x28]
32c067	call   0x3742ac
32c06c	lea    rdx,[rbp+0x20]
32c070	mov    DWORD PTR [rbp+0x20],eax
32c073	lea    rcx,[rip+0xb9f96]        # 0x3e6010
32c07a	call   0x32ade0
32c07f	mov    rcx,QWORD PTR [rbp+0x28]
32c083	lea    rdx,[rbp-0x14]
32c087	mov    rbx,rax
32c08a	call   0x3740e0
32c08f	call   0x31581c
32c094	lea    rdx,[rbp-0x14]
32c098	movss  DWORD PTR [rbp-0x8],xmm0
32c09d	mov    rcx,rbx
32c0a0	call   0x32b1a4
32c0a5	lea    rdx,[rbp+0x28]
32c0a9	lea    rcx,[rip+0xffffffffffeec8c8]        # 0x218978
32c0b0	call   0x2dd5bc
32c0b5	inc    edi
32c0b7	cmp    edi,esi
32c0b9	jl     0x32bfcb
32c0bf	lea    r11,[rsp+0x50]
32c0c4	mov    rbx,QWORD PTR [r11+0x30]
32c0c8	mov    rsi,QWORD PTR [r11+0x38]
32c0cc	mov    rsp,r11
32c0cf	pop    r14
32c0d1	pop    rdi
32c0d2	pop    rbp
32c0d3	ret
; range 0x32bb60..0x32bd4c
32bb60	rex push rbp
32bb62	push   rbx
32bb63	push   rsi
32bb64	push   rdi
32bb65	push   r14
32bb67	push   r15
32bb69	mov    rbp,rsp
32bb6c	sub    rsp,0x78
32bb70	movaps XMMWORD PTR [rsp+0x60],xmm6
32bb75	mov    rdi,rcx
32bb78	call   0x2dda9c
32bb7d	mov    rcx,rax
32bb80	call   0x2caf08
32bb85	test   al,al
32bb87	je     0x32bd34
32bb8d	mov    rcx,rdi
32bb90	call   0x2caf08
32bb95	test   al,al
32bb97	je     0x32bd34
32bb9d	mov    rcx,rdi
32bba0	call   0x371404
32bba5	mov    rcx,rdi
32bba8	mov    rbx,rax
32bbab	call   0x372100
32bbb0	mov    rcx,rdi
32bbb3	mov    r15,rax
32bbb6	call   0x371764
32bbbb	mov    rcx,rdi
32bbbe	mov    r14,rax
32bbc1	call   0x371f24
32bbc6	mov    rcx,rdi
32bbc9	mov    rsi,rax
32bbcc	call   0x371328
32bbd1	mov    rcx,rbx
32bbd4	mov    rdx,rax
32bbd7	call   0x2caf08
32bbdc	test   al,al
32bbde	je     0x32bbed
32bbe0	movss  xmm0,DWORD PTR [rip+0xfffffffffff675d0]        # 0x2931b8
32bbe8	jmp    0x32bd37
32bbed	mov    rcx,r15
32bbf0	call   0x2caf08
32bbf5	test   al,al
32bbf7	jne    0x32bd34
32bbfd	mov    rcx,rdx
32bc00	call   0x2caf08
32bc05	test   al,al
32bc07	jne    0x32bd34
32bc0d	mov    rcx,r14
32bc10	call   0x2caf08
32bc15	test   al,al
32bc17	je     0x32bc26
32bc19	movss  xmm0,DWORD PTR [rip+0xfffffffffff67537]        # 0x293158
32bc21	jmp    0x32bd37
32bc26	mov    rcx,rsi
32bc29	call   0x2caf08
32bc2e	test   al,al
32bc30	je     0x32bd2a
32bc36	lea    rdx,[rbp-0x38]
32bc3a	mov    rcx,rsi
32bc3d	call   0x36b530
32bc42	lea    rcx,[rbp-0x38]
32bc46	call   0x2d8694
32bc4b	test   al,al
32bc4d	jne    0x32bd14
32bc53	lea    rcx,[rbp-0x38]
32bc57	call   0x2cd7ec
32bc5c	mov    rcx,rax
32bc5f	call   0x2d6354
32bc64	lea    rdx,[rbp-0x58]
32bc68	mov    rbx,rax
32bc6b	lea    rcx,[rbp+0x40]
32bc6f	call   0x32b8b8   ; STR "12 Gauge Buckshot"
32bc74	mov    rcx,rax
32bc77	call   0x2e9bdc
32bc7c	movabs rdi,0xcbf29ce484222325
32bc86	mov    rcx,rax
32bc89	mov    rdx,rdi
32bc8c	call   0x2e5b4c
32bc91	cmp    rbx,rax
32bc94	je     0x32bd14
32bc96	lea    rdx,[rbp-0x58]
32bc9a	lea    rcx,[rbp+0x40]
32bc9e	call   0x32b920   ; STR "12 Gauge Incendiary Shell"
32bca3	mov    rcx,rax
32bca6	call   0x32a8d4
32bcab	mov    rcx,rax
32bcae	mov    rdx,rdi
32bcb1	call   0x2e5b4c
32bcb6	cmp    rbx,rax
32bcb9	je     0x32bd14
32bcbb	lea    rdx,[rbp-0x58]
32bcbf	lea    rcx,[rbp+0x40]
32bcc3	call   0x32b9bc   ; STR "Handmade Shell"
32bcc8	mov    rcx,rax
32bccb	call   0x2d866c
32bcd0	mov    rcx,rax
32bcd3	mov    rdx,rdi
32bcd6	call   0x2e5b4c
32bcdb	cmp    rbx,rax
32bcde	jne    0x32bce5
32bce0	xorps  xmm6,xmm6
32bce3	jmp    0x32bd1c
32bce5	lea    rdx,[rbp-0x58]
32bce9	lea    rcx,[rbp+0x40]
32bced	call   0x32ba48   ; STR "12 Gauge Slug"
32bcf2	mov    rcx,rax
32bcf5	call   0x2dd188
32bcfa	mov    rcx,rax
32bcfd	mov    rdx,rdi
32bd00	call   0x2e5b4c
32bd05	cmp    rbx,rax
32bd08	jne    0x32bd14
32bd0a	movss  xmm6,DWORD PTR [rip+0xfffffffffff61e0a]        # 0x28db1c
32bd12	jmp    0x32bd1c
32bd14	movss  xmm6,DWORD PTR [rip+0xfffffffffff6743c]        # 0x293158
32bd1c	lea    rcx,[rbp-0x38]
32bd20	call   0x2cc4f4
32bd25	movaps xmm0,xmm6
32bd28	jmp    0x32bd37
32bd2a	movss  xmm0,DWORD PTR [rip+0xfffffffffff67456]        # 0x293188
32bd32	jmp    0x32bd37
32bd34	xorps  xmm0,xmm0
32bd37	movaps xmm6,XMMWORD PTR [rsp+0x60]
32bd3c	add    rsp,0x78
32bd40	pop    r15
32bd42	pop    r14
32bd44	pop    rdi
32bd45	pop    rsi
32bd46	pop    rbx
32bd47	pop    rbp
32bd48	ret
32bd49	int3
32bd4a	int3
32bd4b	int3
; range 0x330700..0x330830
330700	mov    QWORD PTR [rsp+0x8],rbx
330705	push   rbp
330706	push   rsi
330707	push   rdi
330708	sub    rsp,0x60
33070c	mov    rbp,rcx
33070f	call   0x2caf08
330714	test   al,al
330716	jne    0x33071f
330718	xor    eax,eax
33071a	jmp    0x33081e
33071f	mov    eax,DWORD PTR [rip+0xc8c2b]        # 0x3f9350
330725	test   al,0x1
330727	jne    0x3307de
33072d	or     eax,0x1
330730	lea    rdx,[rsp+0x88]
330738	lea    rcx,[rsp+0x88]
330740	mov    DWORD PTR [rip+0xc8c0a],eax        # 0x3f9350
330746	call   0x2cc730
33074b	mov    rcx,rax
33074e	call   0x2cdca4
330753	lea    rdx,[rsp+0x46]
330758	mov    rsi,rax
33075b	lea    rcx,[rsp+0x90]
330763	call   0x330504   ; STR "get_transform"
330768	mov    rcx,rax
33076b	call   0x2d861c
330770	lea    rdx,[rsp+0x3a]
330775	mov    rdi,rax
330778	lea    rcx,[rsp+0x90]
330780	call   0x330404   ; STR "UnityEngine"
330785	mov    rcx,rax
330788	call   0x2cde0c
33078d	lea    rdx,[rsp+0x30]
330792	mov    rbx,rax
330795	lea    rcx,[rsp+0x90]
33079d	call   0x330294   ; STR "Component"
3307a2	mov    rcx,rax
3307a5	call   0x2cdd1c
3307aa	mov    rcx,rax
3307ad	mov    rdx,rbx
3307b0	call   0x334224
3307b5	or     r8d,0xffffffff
3307b9	mov    rcx,rax
3307bc	mov    r9,rsi
3307bf	mov    DWORD PTR [rsp+0x20],r8d
3307c4	mov    rdx,rdi
3307c7	call   0x3349ac
3307cc	mov    r8,QWORD PTR [rax]
3307cf	mov    eax,DWORD PTR [rip+0xc8b7b]        # 0x3f9350
3307d5	mov    QWORD PTR [rip+0xc8b6c],r8        # 0x3f9348
3307dc	jmp    0x3307e5
3307de	mov    r8,QWORD PTR [rip+0xc8b63]        # 0x3f9348
3307e5	test   al,0x2
3307e7	jne    0x330808
3307e9	mov    rcx,QWORD PTR [rip+0xa5670]        # 0x3d5e60
3307f0	lea    rdx,[rip+0xc8b69]        # 0x3f9360
3307f7	or     eax,0x2
3307fa	xor    r9d,r9d
3307fd	mov    DWORD PTR [rip+0xc8b4d],eax        # 0x3f9350
330803	call   0x2cbd24
330808	mov    rcx,QWORD PTR [rip+0xa5651]        # 0x3d5e60
33080f	lea    rdx,[rip+0xc8b4a]        # 0x3f9360
330816	mov    r8,rbp
330819	call   0x2cb9fc
33081e	mov    rbx,QWORD PTR [rsp+0x80]
330826	add    rsp,0x60
33082a	pop    rdi
33082b	pop    rsi
33082c	pop    rbp
33082d	ret
33082e	int3
33082f	int3
