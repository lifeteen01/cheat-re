f900	rex push rdi
f902	sub    rsp,0x20
f906	mov    edi,DWORD PTR [rip+0x5c7bc]        # 0x6c0c8
f90c	cmp    edi,0xffffffff
f90f	jne    0xf97e
f911	lea    rcx,[rip+0x96b98]        # 0xa64b0
f918	call   0x39efec
f91d	xor    al,0x39
f91f	cmp    eax,0x5c7a4
f924	jne    0xf932
f926	call   0x247cdd
f92b	xchg   edx,eax
f92c	mov    DWORD PTR [rip+0x5c796],eax        # 0x6c0c8
f932	lea    rcx,[rip+0x96b77]        # 0xa64b0
f939	push   rbp
f93a	call   0x2fd08b
f93f	mov    edi,DWORD PTR [rip+0x5c783]        # 0x6c0c8
f945	cmp    edi,0xffffffff
f948	jne    0xf97e
f94a	mov    ecx,DWORD PTR [rip+0x95ed4]        # 0xa5824
f950	mov    rax,QWORD PTR gs:0x58
f959	mov    edx,0x4
f95e	mov    rax,QWORD PTR [rax+rcx*8]
f962	mov    eax,DWORD PTR [rdx+rax*1]
f965	cmp    DWORD PTR [rip+0x973c5],eax        # 0xa6d30
f96b	jg     0xf9ea
f96d	lea    rax,[rip+0x96acc]        # 0xa6440
f974	add    rax,0x18
f978	add    rsp,0x20
f97c	pop    rdi
f97d	ret
f97e	mov    ecx,edi
f980	mov    QWORD PTR [rsp+0x30],rbx
f985	push   rdx
f986	call   0xc9996
f98b	mov    rbx,rax
f98e	test   rax,rax
f991	jne    0xf9db
f993	mov    ecx,0x50
f998	call   0x2e5d0
f99d	xor    edx,edx
f99f	mov    ecx,edi
f9a1	mov    rbx,rax
f9a4	mov    QWORD PTR [rax+0x38],rdx
f9a8	mov    DWORD PTR [rax+0x4a],edx
f9ab	mov    WORD PTR [rax+0x4e],dx
f9af	mov    QWORD PTR [rax],rdx
f9b2	mov    QWORD PTR [rax+0x8],rdx
f9b6	mov    QWORD PTR [rax+0x10],rdx
f9ba	mov    QWORD PTR [rax+0x18],rdx
f9be	mov    QWORD PTR [rax+0x20],rdx
f9c2	mov    QWORD PTR [rax+0x28],rdx
f9c6	mov    QWORD PTR [rax+0x30],rdx
f9ca	mov    QWORD PTR [rax+0x40],rdx
f9ce	mov    WORD PTR [rax+0x48],dx
f9d2	mov    rdx,rax
f9d5	push   rax
f9d6	call   0x3fb762
f9db	lea    rax,[rbx+0x18]
f9df	mov    rbx,QWORD PTR [rsp+0x30]
f9e4	add    rsp,0x20
f9e8	pop    rdi
f9e9	ret
f9ea	lea    rcx,[rip+0x9733f]        # 0xa6d30
f9f1	call   0x2e530
f9f6	cmp    DWORD PTR [rip+0x97333],0xffffffff        # 0xa6d30
f9fd	jne    0xf96d
fa03	lea    rcx,[rip+0x39486]        # 0x48e90
fa0a	call   0x2e970
fa0f	lea    rcx,[rip+0x9731a]        # 0xa6d30
fa16	call   0x2e4c0
fa1b	lea    rax,[rip+0x96a1e]        # 0xa6440
fa22	add    rax,0x18
fa26	add    rsp,0x20
fa2a	pop    rdi
fa2b	ret
fa2c	int3
fa2d	int3
fa2e	int3
fa2f	int3
fa30	rex push rdi
fa32	sub    rsp,0x20
fa36	mov    edi,DWORD PTR [rip+0x5c68c]        # 0x6c0c8
fa3c	cmp    edi,0xffffffff
fa3f	jne    0xfaae
fa41	lea    rcx,[rip+0x96a68]        # 0xa64b0
fa48	push   rbp
fa49	call   0xb31c2
fa4e	cmp    DWORD PTR [rip+0x5c674],edi        # 0x6c0c8
fa54	jne    0xfa62
fa56	call   0x2ee65f
fa5b	udb
fa5c	mov    DWORD PTR [rip+0x5c666],eax        # 0x6c0c8
fa62	lea    rcx,[rip+0x96a47]        # 0xa64b0
fa69	call   0x38c4eb
fa6e	loop   0xf9fb
fa70	cmp    eax,0x5c653
fa75	cmp    edi,0xffffffff
fa78	jne    0xfaae
fa7a	mov    ecx,DWORD PTR [rip+0x95da4]        # 0xa5824
fa80	mov    rax,QWORD PTR gs:0x58
fa89	mov    edx,0x4
fa8e	mov    rax,QWORD PTR [rax+rcx*8]
fa92	mov    eax,DWORD PTR [rdx+rax*1]
fa95	cmp    DWORD PTR [rip+0x97295],eax        # 0xa6d30
fa9b	jg     0xfb1a
fa9d	lea    rax,[rip+0x9699c]        # 0xa6440
faa4	add    rax,0x30
faa8	add    rsp,0x20
faac	pop    rdi
faad	ret
faae	mov    ecx,edi
fab0	mov    QWORD PTR [rsp+0x30],rbx
fab5	push   rdx
fab6	call   0x267d22
fabb	mov    rbx,rax
fabe	test   rax,rax
fac1	jne    0xfb0b
fac3	mov    ecx,0x50
fac8	call   0x2e5d0
facd	xor    edx,edx
facf	mov    ecx,edi
fad1	mov    rbx,rax
fad4	mov    QWORD PTR [rax+0x38],rdx
fad8	mov    DWORD PTR [rax+0x4a],edx
fadb	mov    WORD PTR [rax+0x4e],dx
fadf	mov    QWORD PTR [rax],rdx
fae2	mov    QWORD PTR [rax+0x8],rdx
fae6	mov    QWORD PTR [rax+0x10],rdx
faea	mov    QWORD PTR [rax+0x18],rdx
faee	mov    QWORD PTR [rax+0x20],rdx
faf2	mov    QWORD PTR [rax+0x28],rdx
faf6	mov    QWORD PTR [rax+0x30],rdx
fafa	mov    QWORD PTR [rax+0x40],rdx
fafe	mov    WORD PTR [rax+0x48],dx
fb02	mov    rdx,rax
fb05	push   rdi
fb06	call   0x280ef2
fb0b	lea    rax,[rbx+0x30]
fb0f	mov    rbx,QWORD PTR [rsp+0x30]
fb14	add    rsp,0x20
fb18	pop    rdi
fb19	ret
fb1a	lea    rcx,[rip+0x9720f]        # 0xa6d30
fb21	call   0x2e530
fb26	cmp    DWORD PTR [rip+0x97203],0xffffffff        # 0xa6d30
fb2d	jne    0xfa9d
fb33	lea    rcx,[rip+0x39356]        # 0x48e90
fb3a	call   0x2e970
fb3f	lea    rcx,[rip+0x971ea]        # 0xa6d30
fb46	call   0x2e4c0
fb4b	lea    rax,[rip+0x968ee]        # 0xa6440
fb52	add    rax,0x30
fb56	add    rsp,0x20
fb5a	pop    rdi
fb5b	ret
fb5c	int3
fb5d	int3
fb5e	int3
fb5f	int3
fb60	rex push rbp
fb62	lea    rbp,[rsp-0x260]
fb6a	sub    rsp,0x360
fb71	mov    rax,QWORD PTR [rip+0x554c8]        # 0x65040
fb78	xor    rax,rsp
fb7b	mov    QWORD PTR [rbp+0x258],rax
fb82	cmp    QWORD PTR [rip+0x969c6],0x0        # 0xa6550
fb8a	je     0xfb9d
fb8c	cmp    QWORD PTR [rip+0x96914],0x0        # 0xa64a8
fb94	je     0xfb9d
fb96	mov    al,0x1
fb98	jmp    0xffaa
fb9d	mov    QWORD PTR [rsp+0x370],rbx
fba5	lea    r8,[rip+0x48a54]        # 0x58600   ; "W:Microsoft Primitive Provider"
fbac	mov    QWORD PTR [rsp+0x378],rsi
fbb4	lea    rdx,[rip+0x47475]        # 0x57030
fbbb	xor    esi,esi
fbbd	mov    QWORD PTR [rsp+0x380],rdi
fbc5	xor    r9d,r9d
fbc8	mov    QWORD PTR [rbp+0x1f0],rsi
fbcf	lea    rcx,[rbp+0x1f0]
fbd6	mov    QWORD PTR [rbp+0x1f8],rsi
fbdd	call   0x38a7f7
fbe2	addr32 mov ebx,eax
fbe5	test   eax,eax
fbe7	js     0xfc2c
fbe9	movups xmm0,XMMWORD PTR [rip+0x47448]        # 0x57038   ; "W:ChainingModeGCM"
fbf0	mov    rcx,QWORD PTR [rbp+0x1f0]
fbf7	mov    r9d,0x20
fbfd	movups xmm1,XMMWORD PTR [rip+0x47444]        # 0x57048
fc04	lea    r8,[rbp+0x238]
fc0b	mov    DWORD PTR [rsp+0x20],esi
fc0f	lea    rdx,[rip+0x47442]        # 0x57058   ; "W:ChainingMode"
fc16	movups XMMWORD PTR [rbp+0x238],xmm0
fc1d	movups XMMWORD PTR [rbp+0x248],xmm1
fc24	push   rcx
fc25	call   0x3261c8
fc2a	mov    ebx,eax
fc2c	xor    ecx,ecx
fc2e	mov    edx,esi
fc30	mov    QWORD PTR [rbp+0x208],rcx
fc37	mov    DWORD PTR [rbp+0x210],ecx
fc3d	mov    DWORD PTR [rbp+0x200],edx
fc43	test   ebx,ebx
fc45	js     0xfd26
fc4b	mov    rcx,QWORD PTR [rbp+0x1f0]
fc52	lea    rax,[rbp+0x200]
fc59	mov    DWORD PTR [rsp+0x28],esi
fc5d	lea    r8,[rbp+0x208]
fc64	mov    r9d,0xc
fc6a	mov    QWORD PTR [rsp+0x20],rax
fc6f	lea    rdx,[rip+0x489ca]        # 0x58640   ; "W:AuthTagLength"
fc76	push   rax
fc77	call   0xc3b30
fc7c	mov    ecx,DWORD PTR [rbp+0x210]
fc82	mov    ebx,eax
fc84	mov    edx,DWORD PTR [rbp+0x200]
fc8a	test   eax,eax
fc8c	js     0xfd26
fc92	xor    al,al
fc94	cmp    edx,0xc
fc97	jne    0xfcc6
fc99	mov    edx,DWORD PTR [rbp+0x208]
fc9f	cmp    edx,0x10
fca2	ja     0xfcc6
fca4	cmp    DWORD PTR [rbp+0x20c],0x10
fcab	jb     0xfcc6
fcad	test   ecx,ecx
fcaf	jne    0xfcb6
fcb1	cmp    edx,0x10
fcb4	jmp    0xfcc3
fcb6	mov    eax,0x10
fcbb	sub    eax,edx
fcbd	xor    edx,edx
fcbf	div    ecx
fcc1	test   edx,edx
fcc3	sete   al
fcc6	movups xmm0,XMMWORD PTR [rip+0x4996b]        # 0x59638
fccd	test   al,al
fccf	mov    ecx,0x80070032
fcd4	movups xmm1,XMMWORD PTR [rip+0x4996d]        # 0x59648
fcdb	cmove  ebx,ecx
fcde	movups XMMWORD PTR [rbp+0x218],xmm0
fce5	movups XMMWORD PTR [rbp+0x228],xmm1
fcec	test   ebx,ebx
fcee	js     0xfd42
fcf0	mov    rcx,QWORD PTR [rbp+0x1f0]
fcf7	lea    rax,[rbp+0x218]
fcfe	mov    DWORD PTR [rsp+0x30],esi
fd02	lea    rdx,[rbp+0x1f8]
fd09	mov    DWORD PTR [rsp+0x28],0x20
fd11	xor    r9d,r9d
fd14	xor    r8d,r8d
fd17	mov    QWORD PTR [rsp+0x20],rax
fd1c	call   0x2de9bf
fd21	rex.RX mov r11d,eax
fd24	jmp    0xfd42
fd26	movups xmm0,XMMWORD PTR [rip+0x4990b]        # 0x59638
fd2d	movups xmm1,XMMWORD PTR [rip+0x49914]        # 0x59648
fd34	movups XMMWORD PTR [rbp+0x218],xmm0
fd3b	movups XMMWORD PTR [rbp+0x228],xmm1
fd42	xor    eax,eax
fd44	lea    rdi,[rbp+0x218]
fd4b	mov    ecx,0x20
fd50	rep stos BYTE PTR [rdi],al
fd52	test   ebx,ebx
fd54	jns    0xfe3f
fd5a	mov    rcx,QWORD PTR [rbp+0x1f8]
fd61	test   rcx,rcx
fd64	je     0xfd6c
fd66	call   0x22b3d7
fd6b	adc    al,0x48
fd6d	mov    ecx,DWORD PTR [rbp+0x1f0]
fd73	test   rcx,rcx
fd76	je     0xfd80
fd78	xor    edx,edx
fd7a	call   0x291f16
fd7f	(bad)
fd80	movaps xmm0,XMMWORD PTR [rip+0x49169]        # 0x58ef0
fd87	xor    eax,eax
fd89	movaps xmm1,XMMWORD PTR [rip+0x49170]        # 0x58f00
fd90	mov    rdx,rsi
fd93	movaps XMMWORD PTR [rbp-0x50],xmm0
fd97	mov    edi,0xf9
fd9c	movaps xmm0,XMMWORD PTR [rip+0x4916d]        # 0x58f10
fda3	movaps XMMWORD PTR [rbp-0x40],xmm1
fda7	movaps xmm1,XMMWORD PTR [rip+0x49172]        # 0x58f20
fdae	movaps XMMWORD PTR [rbp-0x30],xmm0
fdb2	movaps xmm0,XMMWORD PTR [rip+0x49177]        # 0x58f30
fdb9	movaps XMMWORD PTR [rbp-0x10],xmm0
fdbd	xorps  xmm0,xmm0
fdc0	movaps XMMWORD PTR [rbp-0x20],xmm1
fdc4	movups xmm1,XMMWORD PTR [rip+0x4916f]        # 0x58f3a
fdcb	mov    DWORD PTR [rip+0x5c2f3],ebx        # 0x6c0c4
fdd1	movups XMMWORD PTR [rsp+0x50],xmm0
fdd6	mov    QWORD PTR [rbp-0x60],rax
fdda	movups XMMWORD PTR [rsp+0x60],xmm0
fddf	movups XMMWORD PTR [rsp+0x70],xmm0
fde4	movups XMMWORD PTR [rbp-0x80],xmm0
fde8	movups XMMWORD PTR [rbp-0x70],xmm0
fdec	movups XMMWORD PTR [rbp-0x6],xmm1
fdf0	movzx  eax,dx
fdf3	imul   ecx,eax,0xd
fdf6	mov    rax,rdx
fdf9	shr    rax,0x3
fdfd	add    ax,cx
fe00	add    ax,di
fe03	xor    ax,WORD PTR [rbp+rdx*2-0x50]
fe08	mov    WORD PTR [rsp+0x40],ax
fe0d	movzx  eax,WORD PTR [rsp+0x40]
fe12	mov    WORD PTR [rsp+rdx*2+0x50],ax
fe17	inc    rdx
fe1a	cmp    rdx,0x2c
fe1e	jb     0xfdf0
fe20	mov    edx,ebx
fe22	lea    rcx,[rsp+0x50]
fe27	call   0x8a20
fe2c	xor    eax,eax
fe2e	lea    rdi,[rsp+0x50]
fe33	mov    ecx,0x58
fe38	rep stos BYTE PTR [rdi],al
fe3a	jmp    0xff92
fe3f	movaps xmm0,XMMWORD PTR [rip+0x4a4ca]        # 0x5a310   ; "W:AV"6R2"
fe46	lea    rcx,[rbp+0x100]
fe4d	movaps xmm1,XMMWORD PTR [rip+0x4a4cc]        # 0x5a320
fe54	xor    edx,edx
fe56	mov    rax,QWORD PTR [rbp+0x1f0]
fe5d	mov    r8d,0xe8
fe63	movups XMMWORD PTR [rbp+0x10],xmm0
fe67	mov    QWORD PTR [rip+0x966e2],rax        # 0xa6550
fe6e	movaps xmm0,XMMWORD PTR [rip+0x4a4bb]        # 0x5a330
fe75	mov    rax,QWORD PTR [rbp+0x1f8]
fe7c	movups XMMWORD PTR [rbp+0x30],xmm0
fe80	mov    QWORD PTR [rip+0x96621],rax        # 0xa64a8
fe87	movaps xmm0,XMMWORD PTR [rip+0x4a4c2]        # 0x5a350
fe8e	movups XMMWORD PTR [rbp+0x20],xmm1
fe92	mov    DWORD PTR [rip+0x5c22c],ebx        # 0x6c0c4
fe98	movaps xmm1,XMMWORD PTR [rip+0x4a4a1]        # 0x5a340
fe9f	movups XMMWORD PTR [rbp+0x50],xmm0
fea3	movaps xmm0,XMMWORD PTR [rip+0x4a4c6]        # 0x5a370
feaa	movups XMMWORD PTR [rbp+0x40],xmm1
feae	movaps xmm1,XMMWORD PTR [rip+0x4a4ab]        # 0x5a360
feb5	movups XMMWORD PTR [rbp+0x70],xmm0
feb9	movaps xmm0,XMMWORD PTR [rip+0x4a4d0]        # 0x5a390
fec0	movups XMMWORD PTR [rbp+0x60],xmm1
fec4	movaps xmm1,XMMWORD PTR [rip+0x4a4b5]        # 0x5a380
fecb	movups XMMWORD PTR [rbp+0x90],xmm0
fed2	movaps xmm0,XMMWORD PTR [rip+0x4a4d7]        # 0x5a3b0
fed9	movups XMMWORD PTR [rbp+0x80],xmm1
fee0	movaps xmm1,XMMWORD PTR [rip+0x4a4b9]        # 0x5a3a0
fee7	movups XMMWORD PTR [rbp+0xb0],xmm0
feee	movaps xmm0,XMMWORD PTR [rip+0x4a4db]        # 0x5a3d0
fef5	movups XMMWORD PTR [rbp+0xa0],xmm1
fefc	movaps xmm1,XMMWORD PTR [rip+0x4a4bd]        # 0x5a3c0
ff03	movups XMMWORD PTR [rbp+0xd0],xmm0
ff0a	movups xmm0,XMMWORD PTR [rip+0x4a4d9]        # 0x5a3ea
ff11	movups XMMWORD PTR [rbp+0xc0],xmm1
ff18	movaps xmm1,XMMWORD PTR [rip+0x4a4c1]        # 0x5a3e0
ff1f	movups XMMWORD PTR [rbp+0xe0],xmm1
ff26	movups XMMWORD PTR [rbp+0xea],xmm0
ff2d	call   0x478c0
ff32	mov    rax,rsi
ff35	data16 data16 nop WORD PTR [rax+rax*1+0x0]
ff40	movzx  ecx,ax
ff43	mov    rdi,rax
ff46	shr    rdi,0x3
ff4a	imul   edx,ecx,0xd   ; DEC "mode2_crypto status=ready algorithm=aes-256-gcm slot=slot0 key_bytes=32 tag_bytes=16 aad_bytes=0 provider=primitive"
ff4d	add    dx,0x2c
ff51	add    di,dx
ff54	xor    di,WORD PTR [rbp+rax*2+0x10]
ff59	mov    WORD PTR [rsp+0x40],di
ff5e	movzx  edx,WORD PTR [rsp+0x40]
ff63	mov    WORD PTR [rbp+rax*2+0x100],dx
ff6b	inc    rax
ff6e	cmp    rax,0x74
ff72	jb     0xff40
ff74	lea    rcx,[rbp+0x100]
ff7b	call   0x8a20
ff80	xor    eax,eax
ff82	lea    rdi,[rbp+0x100]
ff89	mov    ecx,0xe8
ff8e	rep stos BYTE PTR [rdi],al
ff90	mov    al,0x1
ff92	mov    rsi,QWORD PTR [rsp+0x378]
ff9a	mov    rbx,QWORD PTR [rsp+0x370]
ffa2	mov    rdi,QWORD PTR [rsp+0x380]
ffaa	mov    rcx,QWORD PTR [rbp+0x258]
ffb1	xor    rcx,rsp
ffb4	call   0x2e460
ffb9	add    rsp,0x360
ffc0	pop    rbp
ffc1	ret
ffc2	int3
ffc3	int3
ffc4	int3
ffc5	int3
ffc6	int3
ffc7	int3
ffc8	int3
ffc9	int3
ffca	int3
ffcb	int3
ffcc	int3
ffcd	int3
ffce	int3
ffcf	int3
ffd0	mov    QWORD PTR [rsp+0x8],rcx
ffd5	push   rbx
ffd6	push   rsi
ffd7	push   rdi
ffd8	push   r12
ffda	push   r13
ffdc	push   r14
ffde	push   r15
ffe0	sub    rsp,0x100
ffe7	mov    rax,QWORD PTR [rip+0x55052]        # 0x65040
ffee	xor    rax,rsp
fff1	mov    QWORD PTR [rsp+0xf0],rax
fff9	mov    r14,r9
fffc	mov    eax,r8d
ffff	mov    DWORD PTR [rsp+0x54],eax
10003	mov    r15,rdx
10006	mov    rbx,rcx
10009	test   rdx,rdx
1000c	jne    0x10054
1000e	mov    BYTE PTR [rcx],0x1
10011	movzx  eax,WORD PTR [rsp+0xc1]
10019	mov    WORD PTR [rcx+0x1],ax
1001d	movzx  eax,BYTE PTR [rsp+0xc3]
10025	mov    BYTE PTR [rcx+0x3],al
10028	xor    edi,edi
1002a	mov    DWORD PTR [rcx+0x4],edi
1002d	mov    BYTE PTR [rcx+0x8],0xff
10031	movzx  eax,WORD PTR [rsp+0xc9]
10039	mov    WORD PTR [rcx+0x9],ax
1003d	movzx  eax,BYTE PTR [rsp+0xcb]
10045	mov    BYTE PTR [rcx+0xb],al
10048	mov    QWORD PTR [rcx+0xc],rdi
1004c	mov    rax,rbx
1004f	jmp    0x103da
10054	test   al,0x7
10056	je     0x1005d
10058	mov    BYTE PTR [rcx],0x2
1005b	jmp    0x10011
1005d	cmp    r14,0x17
10061	jae    0x10068
10063	mov    BYTE PTR [rcx],0x3
10066	jmp    0x10011
10068	cmp    BYTE PTR [r9+rdx*1-0x12],0x1
1006e	jbe    0x10075
10070	mov    BYTE PTR [rcx],0x4
10073	jmp    0x10011
10075	lea    r12,[r9-0x17]
10079	mov    eax,0xffffffff
1007e	cmp    r12,rax
10081	jbe    0x10088
10083	mov    BYTE PTR [rcx],0x5
10086	jmp    0x10011
10088	movzx  r13d,BYTE PTR [r9+rdx*1-0x11]
1008e	movzx  esi,r13b
10092	and    sil,0x1
10096	mov    BYTE PTR [rsp+0x50],sil
1009b	mov    ecx,DWORD PTR [rip+0x5c023]        # 0x6c0c4
100a1	test   ecx,ecx
100a3	jns    0x100eb
100a5	mov    BYTE PTR [rbx],0x7
100a8	movzx  eax,WORD PTR [rsp+0xc1]
100b0	mov    WORD PTR [rbx+0x1],ax
100b4	movzx  eax,BYTE PTR [rsp+0xc3]
100bc	mov    BYTE PTR [rbx+0x3],al
100bf	mov    DWORD PTR [rbx+0x4],ecx
100c2	mov    BYTE PTR [rbx+0x8],sil
100c6	movzx  eax,WORD PTR [rsp+0xc9]
100ce	mov    WORD PTR [rbx+0x9],ax
100d2	movzx  eax,BYTE PTR [rsp+0xcb]
100da	mov    BYTE PTR [rbx+0xb],al
100dd	xor    edi,edi
100df	mov    QWORD PTR [rbx+0xc],rdi
100e3	mov    rax,rbx
100e6	jmp    0x103da
100eb	call   0xf7d0
100f0	mov    edx,r12d
100f3	mov    rcx,rax
100f6	call   0x16100
100fb	nop
100fc	xor    eax,eax
100fe	mov    QWORD PTR [rsp+0xe0],rax
10106	mov    DWORD PTR [rsp+0xe8],eax
1010d	mov    eax,DWORD PTR [r14+r15*1-0x16]
10112	mov    DWORD PTR [rsp+0xe0],eax
10119	lea    eax,[rsi+0x1]
1011c	mov    BYTE PTR [rsp+0xe8],al
10123	movups xmm0,XMMWORD PTR [r14+r15*1-0x10]
10129	movups XMMWORD PTR [rsp+0xc0],xmm0
10131	xorps  xmm1,xmm1
10134	xor    eax,eax
10136	movups XMMWORD PTR [rsp+0x60],xmm1
1013b	movups XMMWORD PTR [rsp+0x70],xmm1
10140	movups XMMWORD PTR [rsp+0x80],xmm1
10148	movups XMMWORD PTR [rsp+0x90],xmm1
10150	movups XMMWORD PTR [rsp+0xa0],xmm1
10158	mov    QWORD PTR [rsp+0xb0],rax
10160	mov    DWORD PTR [rsp+0x60],0x58
10168	mov    DWORD PTR [rsp+0x64],0x1
10170	lea    rax,[rsp+0xe0]
10178	mov    QWORD PTR [rsp+0x68],rax
1017d	mov    DWORD PTR [rsp+0x70],0xc
10185	xor    edi,edi
10187	mov    QWORD PTR [rsp+0x78],rdi
1018c	mov    DWORD PTR [rsp+0x80],edi
10193	lea    rax,[rsp+0xc0]
1019b	mov    QWORD PTR [rsp+0x88],rax
101a3	mov    DWORD PTR [rsp+0x90],0x10
101ae	mov    DWORD PTR [rsp+0xdc],edi
101b5	mov    BYTE PTR [rsp+0xd8],dil
101bd	test   r12d,r12d
101c0	jne    0x101cc
101c2	lea    rax,[rsp+0xd8]
101ca	jmp    0x101d4
101cc	call   0xf7d0
101d1	mov    rax,QWORD PTR [rax]
101d4	mov    QWORD PTR [rsp+0x58],rax
101d9	lea    rcx,[rip+0x96398]        # 0xa6578
101e0	push   rbx
101e1	call   0x35bd58
101e6	mov    rcx,QWORD PTR [rip+0x9635b]        # 0xa6548
101ed	test   sil,sil
101f0	cmove  rcx,QWORD PTR [rip+0x962b0]        # 0xa64a8
101f8	test   rcx,rcx
101fb	je     0x1032f
10201	lea    rdx,[r15+0x1]
10205	mov    DWORD PTR [rsp+0x48],edi
10209	lea    rax,[rsp+0xdc]
10211	mov    QWORD PTR [rsp+0x40],rax
10216	mov    DWORD PTR [rsp+0x38],r12d
1021b	mov    rax,QWORD PTR [rsp+0x58]
10220	mov    QWORD PTR [rsp+0x30],rax
10225	mov    DWORD PTR [rsp+0x28],edi
10229	mov    QWORD PTR [rsp+0x20],rdi
1022e	lea    r9,[rsp+0x60]
10233	mov    r8d,r12d
10236	call   0x36e903
1023b	xchg   DWORD PTR [rbx+rcx*4-0x18],eax
1023f	lea    rcx,[rip+0x96332]        # 0xa6578
10246	push   rbp
10247	call   0x280c16
1024c	test   r13d,r13d
1024f	jns    0x10296
10251	mov    BYTE PTR [rbx],0x9
10254	movzx  ecx,WORD PTR [rsp+0xc1]
1025c	mov    WORD PTR [rbx+0x1],cx
10260	movzx  ecx,BYTE PTR [rsp+0xc3]
10268	mov    BYTE PTR [rbx+0x3],cl
1026b	mov    DWORD PTR [rbx+0x4],r13d
1026f	mov    BYTE PTR [rbx+0x8],sil
10273	movzx  eax,WORD PTR [rsp+0xc9]
1027b	mov    WORD PTR [rbx+0x9],ax
1027f	movzx  eax,BYTE PTR [rsp+0xcb]
10287	mov    BYTE PTR [rbx+0xb],al
1028a	mov    QWORD PTR [rbx+0xc],rdi
1028e	mov    rax,rbx
10291	jmp    0x103da
10296	mov    eax,DWORD PTR [rsp+0xdc]
1029d	cmp    eax,r12d
102a0	je     0x102be
102a2	mov    BYTE PTR [rbx],0xa
102a5	movzx  eax,WORD PTR [rsp+0xc1]
102ad	mov    WORD PTR [rbx+0x1],ax
102b1	movzx  eax,BYTE PTR [rsp+0xc3]
102b9	mov    BYTE PTR [rbx+0x3],al
102bc	jmp    0x1026b
102be	test   eax,eax
102c0	je     0x102db
102c2	call   0xf7d0
102c7	mov    r8d,DWORD PTR [rsp+0xdc]
102cf	lea    rcx,[r15+0x1]
102d3	mov    rdx,QWORD PTR [rax]
102d6	call   0x47120
102db	mov    BYTE PTR [rbx],dil
102de	movzx  eax,WORD PTR [rsp+0xc1]
102e6	mov    WORD PTR [rbx+0x1],ax
102ea	movzx  eax,BYTE PTR [rsp+0xc3]
102f2	mov    BYTE PTR [rbx+0x3],al
102f5	mov    DWORD PTR [rbx+0x4],r13d
102f9	mov    BYTE PTR [rbx+0x8],sil
102fd	movzx  eax,WORD PTR [rsp+0xc9]
10305	mov    WORD PTR [rbx+0x9],ax
10309	movzx  eax,BYTE PTR [rsp+0xcb]
10311	mov    BYTE PTR [rbx+0xb],al
10314	lea    eax,[r14-0x16]
10318	mov    DWORD PTR [rbx+0xc],eax
1031b	mov    eax,DWORD PTR [rsp+0x54]
1031f	add    eax,0xffffff50
10324	mov    DWORD PTR [rbx+0x10],eax
10327	mov    rax,rbx
1032a	jmp    0x103da
1032f	lea    rcx,[rip+0x96242]        # 0xa6578
10336	push   rcx
10337	call   0x222a0d
1033c	movzx  eax,WORD PTR [rsp+0xc1]
10344	mov    DWORD PTR [rbx+0x4],0x80070015
1034b	mov    QWORD PTR [rbx+0xc],rdi
1034f	mov    WORD PTR [rbx+0x1],ax
10353	movzx  eax,BYTE PTR [rsp+0xc3]
1035b	mov    BYTE PTR [rbx+0x3],al
1035e	movzx  eax,WORD PTR [rsp+0xc9]
10366	mov    WORD PTR [rbx+0x9],ax
1036a	movzx  eax,BYTE PTR [rsp+0xcb]
10372	mov    BYTE PTR [rbx+0xb],al
10375	mov    rax,rbx
10378	test   r13b,0x1
1037c	je     0x10387
1037e	mov    BYTE PTR [rbx],0x6
10381	mov    BYTE PTR [rbx+0x8],0x1
10385	jmp    0x103da
10387	mov    BYTE PTR [rbx],0x7
1038a	mov    BYTE PTR [rbx+0x8],sil
1038e	jmp    0x103da
10390	mov    rax,QWORD PTR [rsp+0x140]
10398	mov    BYTE PTR [rax],0x8
1039b	movzx  ecx,WORD PTR [rsp+0xc1]
103a3	mov    WORD PTR [rax+0x1],cx
103a7	movzx  ecx,BYTE PTR [rsp+0xc3]
103af	mov    BYTE PTR [rax+0x3],cl
103b2	xor    edi,edi
103b4	mov    DWORD PTR [rax+0x4],edi
103b7	movzx  ecx,BYTE PTR [rsp+0x50]
103bc	mov    BYTE PTR [rax+0x8],cl
103bf	movzx  ecx,WORD PTR [rsp+0xc9]
103c7	mov    WORD PTR [rax+0x9],cx
103cb	movzx  ecx,BYTE PTR [rsp+0xcb]
103d3	mov    BYTE PTR [rax+0xb],cl
103d6	mov    QWORD PTR [rax+0xc],rdi
103da	mov    rcx,QWORD PTR [rsp+0xf0]
103e2	xor    rcx,rsp
103e5	call   0x2e460
103ea	add    rsp,0x100
103f1	pop    r15
103f3	pop    r14
103f5	pop    r13
103f7	pop    r12
103f9	pop    rdi
103fa	pop    rsi
103fb	pop    rbx
103fc	ret
103fd	int3
103fe	int3
103ff	int3
10400	mov    QWORD PTR [rsp+0x8],rcx
10405	push   rbx
10406	push   rsi
10407	push   rdi
10408	push   r12
1040a	push   r13
1040c	push   r14
1040e	push   r15
10410	sub    rsp,0x110
10417	mov    rax,QWORD PTR [rip+0x54c22]        # 0x65040
1041e	xor    rax,rsp
10421	mov    QWORD PTR [rsp+0x108],rax
10429	mov    rsi,rdx
1042c	mov    rdi,rcx
1042f	test   rdx,rdx
10432	jne    0x1043c
10434	mov    BYTE PTR [rcx],0x1
10437	jmp    0x107ad
1043c	lea    r12d,[r8-0x1]
10440	cmp    r12d,0x7fffffe8
10447	ja     0x107aa
1044d	mov    ecx,DWORD PTR [rip+0x5bc71]        # 0x6c0c4
10453	test   ecx,ecx
10455	jns    0x1049a
10457	mov    BYTE PTR [rdi],0x3
1045a	movzx  eax,WORD PTR [rsp+0xd9]
10462	mov    WORD PTR [rdi+0x1],ax
10466	movzx  eax,BYTE PTR [rsp+0xdb]
1046e	mov    BYTE PTR [rdi+0x3],al
10471	mov    DWORD PTR [rdi+0x4],ecx
10474	mov    BYTE PTR [rdi+0x8],0xff
10478	movzx  eax,WORD PTR [rsp+0xe1]
10480	mov    WORD PTR [rdi+0x9],ax
10484	movzx  eax,BYTE PTR [rsp+0xe3]
1048c	mov    BYTE PTR [rdi+0xb],al
1048f	xor    ebx,ebx
10491	mov    QWORD PTR [rdi+0xc],rbx
10495	jmp    0x107e8
1049a	movsxd r14,r8d
1049d	call   0xf900
104a2	lea    rdx,[r14+0x16]
104a6	mov    rcx,rax
104a9	call   0x16100
104ae	nop
104af	movzx  eax,BYTE PTR [rip+0x960ba]        # 0xa6570
104b6	mov    BYTE PTR [rsp+0x50],al
104ba	test   al,al
104bc	setne  r15b
104c0	neg    al
104c2	sbb    eax,eax
104c4	add    eax,0x2
104c7	mov    DWORD PTR [rsp+0x54],eax
104cb	movzx  ebx,BYTE PTR [rsi]
104ce	call   0xf900
104d3	mov    rcx,QWORD PTR [rax]
104d6	mov    BYTE PTR [rcx],bl
104d8	call   0xf900
104dd	mov    rcx,QWORD PTR [rax]
104e0	mov    QWORD PTR [rsp+0x60],rcx
104e5	xor    eax,eax
104e7	mov    QWORD PTR [rsp+0xf8],rax
104ef	mov    DWORD PTR [rsp+0x100],eax
104f6	xorps  xmm0,xmm0
104f9	movups XMMWORD PTR [rsp+0xd8],xmm0
10501	xorps  xmm1,xmm1
10504	movups XMMWORD PTR [rsp+0x70],xmm1
10509	movups XMMWORD PTR [rsp+0x80],xmm1
10511	movups XMMWORD PTR [rsp+0x90],xmm1
10519	movups XMMWORD PTR [rsp+0xa0],xmm1
10521	movups XMMWORD PTR [rsp+0xb0],xmm1
10529	mov    QWORD PTR [rsp+0xc0],rax
10531	mov    DWORD PTR [rsp+0x70],0x58
10539	mov    DWORD PTR [rsp+0x74],0x1
10541	lea    rax,[rsp+0xf8]
10549	mov    QWORD PTR [rsp+0x78],rax
1054e	mov    DWORD PTR [rsp+0x80],0xc
10559	xor    ebx,ebx
1055b	mov    QWORD PTR [rsp+0x88],rbx
10563	mov    DWORD PTR [rsp+0x90],ebx
1056a	lea    rax,[rsp+0xd8]
10572	mov    QWORD PTR [rsp+0x98],rax
1057a	mov    DWORD PTR [rsp+0xa0],0x10
10585	mov    DWORD PTR [rsp+0xf0],ebx
1058c	mov    BYTE PTR [rsp+0xd0],bl
10593	mov    BYTE PTR [rsp+0xd1],bl
1059a	test   r12d,r12d
1059d	jne    0x105b6
1059f	lea    rax,[rsp+0xd0]
105a7	mov    QWORD PTR [rsp+0x58],rax
105ac	lea    r13,[rsp+0xd1]
105b4	jmp    0x105ca
105b6	lea    rax,[rsi+0x1]
105ba	mov    QWORD PTR [rsp+0x58],rax
105bf	call   0xf900
105c4	mov    r13,QWORD PTR [rax]
105c7	inc    r13
105ca	lea    rcx,[rip+0x95fa7]        # 0xa6578
105d1	push   rbx
105d2	call   0x2de92e
105d7	mov    rcx,QWORD PTR [rip+0x95eca]        # 0xa64a8
105de	cmp    BYTE PTR [rsp+0x50],bl
105e2	cmovne rcx,QWORD PTR [rip+0x95f5e]        # 0xa6548
105ea	mov    esi,0x1
105ef	lock xadd DWORD PTR [rip+0x95ea5],esi        # 0xa649c
105f7	inc    esi
105f9	mov    DWORD PTR [rsp+0xf8],esi
10600	mov    eax,DWORD PTR [rsp+0x54]
10604	mov    DWORD PTR [rsp+0x100],eax
1060b	test   rcx,rcx
1060e	je     0x10728
10614	mov    DWORD PTR [rsp+0x48],ebx
10618	lea    rax,[rsp+0xf0]
10620	mov    QWORD PTR [rsp+0x40],rax
10625	mov    DWORD PTR [rsp+0x38],r12d
1062a	mov    QWORD PTR [rsp+0x30],r13
1062f	mov    DWORD PTR [rsp+0x28],ebx
10633	mov    QWORD PTR [rsp+0x20],rbx
10638	lea    r9,[rsp+0x70]
1063d	mov    r8d,r12d
10640	mov    rdx,QWORD PTR [rsp+0x58]
10645	push   rsi
10646	call   0x3dd95d
1064b	mov    r13d,eax
1064e	lea    rcx,[rip+0x95f23]        # 0xa6578
10655	push   rax
10656	call   0x22b3fe
1065b	mov    DWORD PTR [rdi+0x4],r13d
1065f	mov    BYTE PTR [rdi+0x8],r15b
10663	mov    DWORD PTR [rdi+0xc],esi
10666	test   r13d,r13d
10669	jns    0x106a4
1066b	mov    BYTE PTR [rdi],0x5
1066e	movzx  ecx,WORD PTR [rsp+0xd9]
10676	mov    WORD PTR [rdi+0x1],cx
1067a	movzx  ecx,BYTE PTR [rsp+0xdb]
10682	mov    BYTE PTR [rdi+0x3],cl
10685	movzx  eax,WORD PTR [rsp+0xe1]
1068d	mov    WORD PTR [rdi+0x9],ax
10691	movzx  eax,BYTE PTR [rsp+0xe3]
10699	mov    BYTE PTR [rdi+0xb],al
1069c	mov    DWORD PTR [rdi+0x10],ebx
1069f	jmp    0x107e8
106a4	cmp    DWORD PTR [rsp+0xf0],r12d
106ac	je     0x106ca
106ae	mov    BYTE PTR [rdi],0x6
106b1	movzx  eax,WORD PTR [rsp+0xd9]
106b9	mov    WORD PTR [rdi+0x1],ax
106bd	movzx  eax,BYTE PTR [rsp+0xdb]
106c5	mov    BYTE PTR [rdi+0x3],al
106c8	jmp    0x10685
106ca	mov    rax,QWORD PTR [rsp+0x60]
106cf	mov    DWORD PTR [rax+r14*1],esi
106d3	mov    BYTE PTR [rax+r14*1+0x4],0x1
106d9	mov    BYTE PTR [rax+r14*1+0x5],r15b
106de	movups xmm0,XMMWORD PTR [rsp+0xd8]
106e6	movups XMMWORD PTR [rax+r14*1+0x6],xmm0
106ec	mov    BYTE PTR [rdi],bl
106ee	movzx  eax,WORD PTR [rsp+0xd9]
106f6	mov    WORD PTR [rdi+0x1],ax
106fa	movzx  eax,BYTE PTR [rsp+0xdb]
10702	mov    BYTE PTR [rdi+0x3],al
10705	movzx  eax,WORD PTR [rsp+0xe1]
1070d	mov    WORD PTR [rdi+0x9],ax
10711	movzx  eax,BYTE PTR [rsp+0xe3]
10719	mov    BYTE PTR [rdi+0xb],al
1071c	lea    rax,[r14+0x16]
10720	mov    DWORD PTR [rdi+0x10],eax
10723	jmp    0x107e8
10728	lea    rcx,[rip+0x95e49]        # 0xa6578
1072f	call   0x3a3d00
10734	pop    rbp
10735	mov    BYTE PTR [rdi],0x3
10738	movzx  eax,WORD PTR [rsp+0xd9]
10740	mov    WORD PTR [rdi+0x1],ax
10744	movzx  eax,BYTE PTR [rsp+0xdb]
1074c	mov    BYTE PTR [rdi+0x3],al
1074f	mov    DWORD PTR [rdi+0x4],0x80070015
10756	mov    BYTE PTR [rdi+0x8],r15b
1075a	mov    DWORD PTR [rdi+0xc],esi
1075d	jmp    0x10685
10762	mov    rax,QWORD PTR [rsp+0x150]
1076a	mov    BYTE PTR [rax],0x4
1076d	movzx  ecx,WORD PTR [rsp+0xd9]
10775	mov    WORD PTR [rax+0x1],cx
10779	movzx  ecx,BYTE PTR [rsp+0xdb]
10781	mov    BYTE PTR [rax+0x3],cl
10784	xor    ebx,ebx
10786	mov    DWORD PTR [rax+0x4],ebx
10789	mov    BYTE PTR [rax+0x8],0xff
1078d	movzx  ecx,WORD PTR [rsp+0xe1]
10795	mov    WORD PTR [rax+0x9],cx
10799	movzx  ecx,BYTE PTR [rsp+0xe3]
107a1	mov    BYTE PTR [rax+0xb],cl
107a4	mov    QWORD PTR [rax+0xc],rbx
107a8	jmp    0x107eb
107aa	mov    BYTE PTR [rcx],0x2
107ad	movzx  eax,WORD PTR [rsp+0xd9]
107b5	mov    WORD PTR [rcx+0x1],ax
107b9	movzx  eax,BYTE PTR [rsp+0xdb]
107c1	mov    BYTE PTR [rcx+0x3],al
107c4	movzx  eax,WORD PTR [rsp+0xe1]
107cc	mov    WORD PTR [rcx+0x9],ax
107d0	movzx  eax,BYTE PTR [rsp+0xe3]
107d8	mov    BYTE PTR [rcx+0xb],al
107db	xor    ebx,ebx
107dd	mov    QWORD PTR [rcx+0xc],rbx
107e1	mov    BYTE PTR [rcx+0x8],0xff
107e5	mov    DWORD PTR [rcx+0x4],ebx
107e8	mov    rax,rdi
107eb	mov    rcx,QWORD PTR [rsp+0x108]
107f3	xor    rcx,rsp
107f6	call   0x2e460
107fb	add    rsp,0x110
10802	pop    r15
10804	pop    r14
10806	pop    r13
10808	pop    r12
1080a	pop    rdi
1080b	pop    rsi
1080c	pop    rbx
1080d	ret
1080e	int3
1080f	int3
10810	mov    QWORD PTR [rsp+0x10],rbx
