13300	rex push rbp
13302	push   rbx
13303	push   rsi
13304	push   rdi
13305	push   r12
13307	push   r13
13309	push   r14
1330b	push   r15
1330d	lea    rbp,[rsp-0x388]
13315	sub    rsp,0x488
1331c	mov    r15,rcx
1331f	call   0xfa30
13324	xor    r13d,r13d
13327	mov    QWORD PTR [rax],r13
1332a	mov    DWORD PTR [rax+0x8],r13d
1332e	mov    ecx,DWORD PTR [rbp+0x36c]
13334	mov    DWORD PTR [rax+0xc],ecx
13337	mov    QWORD PTR [rax+0x10],r13
1333b	mov    WORD PTR [rax+0x18],r13w
13340	mov    ecx,DWORD PTR [rbp+0x37a]
13346	mov    DWORD PTR [rax+0x1a],ecx
13349	movzx  ecx,WORD PTR [rbp+0x37e]
13350	mov    WORD PTR [rax+0x1e],cx
13354	mov    rcx,r15
13357	call   QWORD PTR [rip+0x93173]        # 0xa64d0
1335d	movzx  edi,al
13360	push   rsi
13361	call   0x2fac37
13366	mov    DWORD PTR [rsp+0x78],eax
1336a	test   dil,dil
1336d	je     0x13a6f
13373	mov    rax,QWORD PTR [rip+0x9315e]        # 0xa64d8
1337a	mov    rcx,r15
1337d	call   rax
1337f	mov    rsi,rax
13382	mov    rdx,QWORD PTR [rip+0x93157]        # 0xa64e0
13389	mov    rcx,r15
1338c	call   rdx
1338e	mov    r12d,eax
13391	mov    ebx,eax
13393	mov    eax,0x1
13398	lock xadd QWORD PTR [rip+0x930ef],rax        # 0xa6490
133a1	inc    rax
133a4	mov    QWORD PTR [rsp+0x70],rax
133a9	lea    r9,[r12+0x7]
133ae	shr    r9,0x3
133b2	mov    r8,rsi
133b5	mov    rdx,rax
133b8	lea    rcx,[rip+0x45441]        # 0x58800
133bf	call   0x10b50
133c4	test   rsi,rsi
133c7	je     0x1444a
133cd	cmp    r12d,0x8
133d1	jb     0x1444a
133d7	shr    rbx,0x3
133db	movzx  edi,BYTE PTR [rsi]
133de	lea    eax,[rdi-0x91]
133e4	cmp    al,0x18
133e6	ja     0x133ff
133e8	mov    ecx,0x1c5cfff
133ed	bt     ecx,eax
133f0	jae    0x133ff
133f2	mov    r14b,0x1
133f5	mov    DWORD PTR [rsp+0x68],0x1
133fd	jmp    0x13407
133ff	xor    r14b,r14b
13402	mov    DWORD PTR [rsp+0x68],r13d
13407	mov    rax,QWORD PTR [rip+0x930da]        # 0xa64e8
1340e	mov    rcx,r15
13411	call   rax
13413	mov    r13,rax
13416	mov    QWORD PTR [rbp-0x78],rax
1341a	lea    rcx,[rip+0x93117]        # 0xa6538
13421	call   0x3d79e5
13426	pop    rdx
13427	mov    rcx,QWORD PTR [rip+0x93272]        # 0xa66a0
1342e	cmp    rcx,r15
13431	jne    0x1343a
13433	mov    QWORD PTR [rip+0x9326e],r13        # 0xa66a8
1343a	lea    rcx,[rip+0x930f7]        # 0xa6538
13441	push   rdx
13442	call   0x2c5e69
13447	cmp    dil,0xa2
1344b	jne    0x13a76
13451	xor    eax,eax
13453	mov    ecx,0x1
13458	lock cmpxchg BYTE PTR [rip+0x930c0],cl        # 0xa6520
13460	jne    0x13583
13466	movzx  eax,BYTE PTR [rip+0x93103]        # 0xa6570
1346d	xor    r8d,r8d
13470	test   al,al
13472	setne  r8b
13476	movaps xmm0,XMMWORD PTR [rip+0x47943]        # 0x5adc0
1347d	movaps XMMWORD PTR [rbp-0x60],xmm0
13481	movaps xmm1,XMMWORD PTR [rip+0x47948]        # 0x5add0
13488	movaps XMMWORD PTR [rbp-0x50],xmm1
1348c	movaps xmm0,XMMWORD PTR [rip+0x4794d]        # 0x5ade0
13493	movaps XMMWORD PTR [rbp-0x40],xmm0
13497	movaps xmm1,XMMWORD PTR [rip+0x47952]        # 0x5adf0
1349e	movaps XMMWORD PTR [rbp-0x30],xmm1
134a2	movaps xmm0,XMMWORD PTR [rip+0x47957]        # 0x5ae00
134a9	movaps XMMWORD PTR [rbp-0x20],xmm0
134ad	movaps xmm1,XMMWORD PTR [rip+0x4795c]        # 0x5ae10
134b4	movaps XMMWORD PTR [rbp-0x10],xmm1
134b8	movaps xmm0,XMMWORD PTR [rip+0x47961]        # 0x5ae20
134bf	movaps XMMWORD PTR [rbp+0x0],xmm0
134c3	movaps xmm1,XMMWORD PTR [rip+0x47966]        # 0x5ae30
134ca	movaps XMMWORD PTR [rbp+0x10],xmm1
134ce	movaps xmm0,XMMWORD PTR [rip+0x4796b]        # 0x5ae40
134d5	movaps XMMWORD PTR [rbp+0x20],xmm0
134d9	movzx  eax,WORD PTR [rip+0x47970]        # 0x5ae50
134e0	mov    WORD PTR [rbp+0x30],ax
134e4	xorps  xmm0,xmm0
134e7	movups XMMWORD PTR [rbp+0x180],xmm0
134ee	movups XMMWORD PTR [rbp+0x190],xmm0
134f5	movups XMMWORD PTR [rbp+0x1a0],xmm0
134fc	movups XMMWORD PTR [rbp+0x1b0],xmm0
13503	movups XMMWORD PTR [rbp+0x1c0],xmm0
1350a	movups XMMWORD PTR [rbp+0x1d0],xmm0
13511	movups XMMWORD PTR [rbp+0x1e0],xmm0
13518	movups XMMWORD PTR [rbp+0x1f0],xmm0
1351f	movups XMMWORD PTR [rbp+0x200],xmm0
13526	xor    edi,edi
13528	mov    r9d,0x94
1352e	xchg   ax,ax
13530	mov    rdx,rdi
13533	shr    rdx,0x3
13537	movzx  eax,di
1353a	imul   ecx,eax,0xd
1353d	add    dx,cx
13540	add    dx,r9w
13544	xor    dx,WORD PTR [rbp+rdi*2-0x60]
13549	mov    WORD PTR [rsp+0x60],dx
1354e	movzx  eax,WORD PTR [rsp+0x60]
13553	mov    WORD PTR [rbp+rdi*2+0x180],ax
1355b	inc    rdi
1355e	cmp    rdi,0x48
13562	jb     0x13530
13564	mov    edx,r8d
13567	lea    rcx,[rbp+0x180]
1356e	call   0x8a20
13573	lea    rdi,[rbp+0x180]
1357a	xor    eax,eax
1357c	mov    ecx,0x90
13581	rep stos BYTE PTR [rdi],al
13583	movaps xmm0,XMMWORD PTR [rip+0x45b36]        # 0x590c0
1358a	movups XMMWORD PTR [rbp-0x60],xmm0
1358e	movaps xmm1,XMMWORD PTR [rip+0x45b3b]        # 0x590d0
13595	movups XMMWORD PTR [rbp-0x50],xmm1
13599	movaps xmm0,XMMWORD PTR [rip+0x45b40]        # 0x590e0
135a0	movups XMMWORD PTR [rbp-0x40],xmm0
135a4	movaps xmm1,XMMWORD PTR [rip+0x45b45]        # 0x590f0
135ab	movups XMMWORD PTR [rbp-0x30],xmm1
135af	movaps xmm0,XMMWORD PTR [rip+0x45b4a]        # 0x59100
135b6	movups XMMWORD PTR [rbp-0x20],xmm0
135ba	movaps xmm1,XMMWORD PTR [rip+0x45b4f]        # 0x59110
135c1	movups XMMWORD PTR [rbp-0x10],xmm1
135c5	movaps xmm0,XMMWORD PTR [rip+0x45b54]        # 0x59120
135cc	movups XMMWORD PTR [rbp+0x0],xmm0
135d0	movaps xmm1,XMMWORD PTR [rip+0x45b59]        # 0x59130
135d7	movups XMMWORD PTR [rbp+0x10],xmm1
135db	movaps xmm0,XMMWORD PTR [rip+0x45b5e]        # 0x59140
135e2	movups XMMWORD PTR [rbp+0x20],xmm0
135e6	movaps xmm1,XMMWORD PTR [rip+0x45b63]        # 0x59150
135ed	movups XMMWORD PTR [rbp+0x30],xmm1
135f1	movaps xmm0,XMMWORD PTR [rip+0x45b68]        # 0x59160
135f8	movups XMMWORD PTR [rbp+0x40],xmm0
135fc	movaps xmm1,XMMWORD PTR [rip+0x45b6d]        # 0x59170
13603	movups XMMWORD PTR [rbp+0x50],xmm1
13607	movaps xmm0,XMMWORD PTR [rip+0x45b72]        # 0x59180
1360e	movups XMMWORD PTR [rbp+0x60],xmm0
13612	mov    rax,QWORD PTR [rip+0x45b75]        # 0x5918e
13619	mov    QWORD PTR [rbp+0x6e],rax
1361d	mov    r14d,0xd4
13623	mov    r8d,r14d
13626	xor    edx,edx
13628	lea    rcx,[rbp+0x180]
1362f	call   0x478c0
13634	xor    edi,edi
13636	data16 nop WORD PTR [rax+rax*1+0x0]
13640	mov    rdx,rdi
13643	shr    rdx,0x3
13647	movzx  eax,di
1364a	imul   ecx,eax,0xd   ; DEC "a2_packet direction=inbound context=%p guid=0x%016llX packet_index=%llu data=%p unread_bits=%u bytes=%llu"
1364d	add    dx,0x43
13651	add    dx,cx
13654	xor    dx,WORD PTR [rbp+rdi*2-0x60]
13659	mov    WORD PTR [rsp+0x60],dx
1365e	movzx  eax,WORD PTR [rsp+0x60]
13663	mov    WORD PTR [rbp+rdi*2+0x180],ax
1366b	inc    rdi
1366e	cmp    rdi,0x6a
13672	jb     0x13640
13674	mov    QWORD PTR [rsp+0x30],rbx
13679	mov    DWORD PTR [rsp+0x28],r12d
1367e	mov    QWORD PTR [rsp+0x20],rsi
13683	mov    r12,QWORD PTR [rsp+0x70]
13688	mov    r9,r12
1368b	mov    r8,r13
1368e	mov    rdx,r15
13691	lea    rcx,[rbp+0x180]
13698	call   0x8a20
1369d	lea    rdi,[rbp+0x180]
136a4	xor    eax,eax
136a6	mov    rcx,r14
136a9	rep stos BYTE PTR [rdi],al
136ab	mov    r9,rbx
136ae	mov    r8,rsi
136b1	mov    rdx,r12
136b4	lea    rcx,[rip+0x4516d]        # 0x58828   ; "W:a2_packet_hex"
136bb	call   0x10b50
136c0	mov    r8,rbx
136c3	mov    rdx,rsi
136c6	xor    ecx,ecx
136c8	call   0x19fa0
136cd	test   ebx,ebx
136cf	je     0x1396b
136d5	lea    rcx,[rip+0x93034]        # 0xa6710
136dc	push   rbx
136dd	call   0x3771b4
136e2	mov    r14,QWORD PTR [rip+0x92fef]        # 0xa66d8
136e9	mov    r12,QWORD PTR [rip+0x92ff0]        # 0xa66e0
136f0	test   r14,r14
136f3	je     0x13853
136f9	test   r12,r12
136fc	je     0x13853
13702	movzx  r9d,BYTE PTR [rsi]
13706	movaps xmm0,XMMWORD PTR [rip+0x47c83]        # 0x5b390
1370d	movaps XMMWORD PTR [rbp+0x180],xmm0
13714	movaps xmm1,XMMWORD PTR [rip+0x47c85]        # 0x5b3a0
1371b	movaps XMMWORD PTR [rbp+0x190],xmm1
13722	movaps xmm0,XMMWORD PTR [rip+0x47c87]        # 0x5b3b0
13729	movaps XMMWORD PTR [rbp+0x1a0],xmm0
13730	movaps xmm1,XMMWORD PTR [rip+0x47c89]        # 0x5b3c0
13737	movaps XMMWORD PTR [rbp+0x1b0],xmm1
1373e	movaps xmm0,XMMWORD PTR [rip+0x47c8b]        # 0x5b3d0
13745	movaps XMMWORD PTR [rbp+0x1c0],xmm0
1374c	movaps xmm1,XMMWORD PTR [rip+0x47c8d]        # 0x5b3e0
13753	movaps XMMWORD PTR [rbp+0x1d0],xmm1
1375a	movaps xmm0,XMMWORD PTR [rip+0x47c8f]        # 0x5b3f0
13761	movaps XMMWORD PTR [rbp+0x1e0],xmm0
13768	movsd  xmm1,QWORD PTR [rip+0x47c90]        # 0x5b400
13770	movsd  QWORD PTR [rbp+0x1f0],xmm1
13778	xorps  xmm0,xmm0
1377b	xor    eax,eax
1377d	movups XMMWORD PTR [rbp-0x60],xmm0
13781	movups XMMWORD PTR [rbp-0x50],xmm0
13785	movups XMMWORD PTR [rbp-0x40],xmm0
13789	movups XMMWORD PTR [rbp-0x30],xmm0
1378d	movups XMMWORD PTR [rbp-0x20],xmm0
13791	movups XMMWORD PTR [rbp-0x10],xmm0
13795	movups XMMWORD PTR [rbp+0x0],xmm0
13799	mov    QWORD PTR [rbp+0xe],rax
1379d	xor    edi,edi
1379f	nop
137a0	mov    rdx,rdi
137a3	shr    rdx,0x3
137a7	movzx  eax,di
137aa	imul   ecx,eax,0xd   ; DEC "server_relay status=send guid=0x%016llX bytes=%d id=0x%02X"
137ad	add    dx,0x47
137b1	add    dx,cx
137b4	xor    dx,WORD PTR [rbp+rdi*2+0x180]
137bc	mov    WORD PTR [rsp+0x60],dx
137c1	movzx  eax,WORD PTR [rsp+0x60]
137c6	mov    WORD PTR [rbp+rdi*2-0x60],ax
137cb	inc    rdi
137ce	cmp    rdi,0x3b
137d2	jb     0x137a0
137d4	mov    r8d,ebx
137d7	mov    rdx,r12
137da	lea    rcx,[rbp-0x60]
137de	call   0x8a20
137e3	lea    rdi,[rbp-0x60]
137e7	xor    eax,eax
137e9	mov    ecx,0x76
137ee	rep stos BYTE PTR [rdi],al
137f0	mov    rcx,r14
137f3	call   QWORD PTR [rip+0x92cf7]        # 0xa64f0
137f9	nop
137fa	mov    edx,0x1
137ff	lock xadd QWORD PTR [rip+0x92c30],rdx        # 0xa6438
13808	mov    r9d,ebx
1380b	inc    rdx
1380e	mov    r8,rsi
13811	lea    rcx,[rip+0x452a8]        # 0x58ac0   ; "W:relay_write_packet_hex"
13818	call   0x10b50
1381d	mov    r8d,ebx
13820	mov    rdx,rsi
13823	mov    rcx,r14
13826	call   QWORD PTR [rip+0x92ccc]        # 0xa64f8
1382c	nop
1382d	mov    DWORD PTR [rsp+0x20],0x0
13835	mov    r9d,0x3
1383b	mov    r8d,0x2
13841	mov    rdx,r12
13844	mov    rcx,r14
13847	call   QWORD PTR [rip+0x92cb3]        # 0xa6500
1384d	nop
1384e	jmp    0x13959
13853	movaps xmm0,XMMWORD PTR [rip+0x47f26]        # 0x5b780
1385a	movaps XMMWORD PTR [rbp-0x60],xmm0
1385e	movaps xmm1,XMMWORD PTR [rip+0x47f2b]        # 0x5b790
13865	movaps XMMWORD PTR [rbp-0x50],xmm1
13869	movaps xmm0,XMMWORD PTR [rip+0x47f30]        # 0x5b7a0
13870	movaps XMMWORD PTR [rbp-0x40],xmm0
13874	movaps xmm1,XMMWORD PTR [rip+0x47f35]        # 0x5b7b0
1387b	movaps XMMWORD PTR [rbp-0x30],xmm1
1387f	movaps xmm0,XMMWORD PTR [rip+0x47f3a]        # 0x5b7c0
13886	movaps XMMWORD PTR [rbp-0x20],xmm0
1388a	movaps xmm1,XMMWORD PTR [rip+0x47f3f]        # 0x5b7d0
13891	movaps XMMWORD PTR [rbp-0x10],xmm1
13895	movaps xmm0,XMMWORD PTR [rip+0x47f44]        # 0x5b7e0
1389c	movaps XMMWORD PTR [rbp+0x0],xmm0
138a0	movaps xmm1,XMMWORD PTR [rip+0x47f49]        # 0x5b7f0
138a7	movaps XMMWORD PTR [rbp+0x10],xmm1
138ab	mov    eax,DWORD PTR [rip+0x47f4f]        # 0x5b800
138b1	mov    DWORD PTR [rbp+0x20],eax
138b4	xorps  xmm0,xmm0
138b7	xor    eax,eax
138b9	movups XMMWORD PTR [rbp+0x180],xmm0
138c0	movups XMMWORD PTR [rbp+0x190],xmm0
138c7	movups XMMWORD PTR [rbp+0x1a0],xmm0
138ce	movups XMMWORD PTR [rbp+0x1b0],xmm0
138d5	movups XMMWORD PTR [rbp+0x1c0],xmm0
138dc	movups XMMWORD PTR [rbp+0x1d0],xmm0
138e3	movups XMMWORD PTR [rbp+0x1e0],xmm0
138ea	movups XMMWORD PTR [rbp+0x1f0],xmm0
138f1	mov    WORD PTR [rbp+0x200],ax
138f8	xor    edx,edx
138fa	nop    WORD PTR [rax+rax*1+0x0]
13900	movzx  eax,dx
13903	imul   ecx,eax,0xd   ; DEC "server_relay status=not_ready context=%p guid=0x%016llX bytes=%d"
13906	mov    rax,rdx
13909	shr    rax,0x3
1390d	add    ax,0x51
13911	add    ax,cx
13914	xor    ax,WORD PTR [rbp+rdx*2-0x60]
13919	mov    WORD PTR [rsp+0x60],ax
1391e	movzx  eax,WORD PTR [rsp+0x60]
13923	mov    WORD PTR [rbp+rdx*2+0x180],ax
1392b	inc    rdx
1392e	cmp    rdx,0x41
13932	jb     0x13900
13934	mov    r9d,ebx
13937	mov    r8,r12
1393a	mov    rdx,r14
1393d	lea    rcx,[rbp+0x180]
13944	call   0x8a20
13949	lea    rdi,[rbp+0x180]
13950	xor    eax,eax
13952	mov    ecx,0x82
13957	rep stos BYTE PTR [rdi],al
13959	lea    rcx,[rip+0x92db0]        # 0xa6710
13960	call   0x23eb38
13965	ds mov r12,QWORD PTR [rsp+0x70]
1396b	movaps xmm0,XMMWORD PTR [rip+0x46cae]        # 0x5a620
13972	movaps XMMWORD PTR [rbp-0x60],xmm0
13976	movaps xmm1,XMMWORD PTR [rip+0x46cb3]        # 0x5a630
1397d	movaps XMMWORD PTR [rbp-0x50],xmm1
13981	movaps xmm0,XMMWORD PTR [rip+0x46cb8]        # 0x5a640
13988	movaps XMMWORD PTR [rbp-0x40],xmm0
1398c	movaps xmm1,XMMWORD PTR [rip+0x46cbd]        # 0x5a650
13993	movaps XMMWORD PTR [rbp-0x30],xmm1
13997	movaps xmm0,XMMWORD PTR [rip+0x46cc2]        # 0x5a660
1399e	movaps XMMWORD PTR [rbp-0x20],xmm0
139a2	movaps xmm1,XMMWORD PTR [rip+0x46cc7]        # 0x5a670
139a9	movaps XMMWORD PTR [rbp-0x10],xmm1
139ad	movaps xmm0,XMMWORD PTR [rip+0x46ccc]        # 0x5a680
139b4	movaps XMMWORD PTR [rbp+0x0],xmm0
139b8	movaps xmm1,XMMWORD PTR [rip+0x46cd1]        # 0x5a690
139bf	movaps XMMWORD PTR [rbp+0x10],xmm1
139c3	movzx  eax,WORD PTR [rip+0x46cd6]        # 0x5a6a0
139ca	mov    WORD PTR [rbp+0x20],ax
139ce	xorps  xmm0,xmm0
139d1	movups XMMWORD PTR [rbp+0x180],xmm0
139d8	movups XMMWORD PTR [rbp+0x190],xmm0
139df	movups XMMWORD PTR [rbp+0x1a0],xmm0
139e6	movups XMMWORD PTR [rbp+0x1b0],xmm0
139ed	movups XMMWORD PTR [rbp+0x1c0],xmm0
139f4	movups XMMWORD PTR [rbp+0x1d0],xmm0
139fb	movups XMMWORD PTR [rbp+0x1e0],xmm0
13a02	movups XMMWORD PTR [rbp+0x1f0],xmm0
13a09	xor    edi,edi
13a0b	mov    edx,0xb8
13a10	movzx  eax,di
13a13	imul   ecx,eax,0xd
13a16	mov    rax,rdi
13a19	shr    rax,0x3
13a1d	add    ax,cx
13a20	add    ax,dx
13a23	xor    ax,WORD PTR [rbp+rdi*2-0x60]
13a28	mov    WORD PTR [rsp+0x60],ax
13a2d	movzx  eax,WORD PTR [rsp+0x60]
13a32	mov    WORD PTR [rbp+rdi*2+0x180],ax
13a3a	inc    rdi
13a3d	cmp    rdi,0x40
13a41	jb     0x13a10
13a43	mov    r8,r12
13a46	mov    rdx,r15
13a49	lea    rcx,[rbp+0x180]
13a50	call   0x8a20
13a55	lea    rdi,[rbp+0x180]
13a5c	xor    eax,eax
13a5e	mov    ecx,0x80
13a63	rep stos BYTE PTR [rdi],al
13a65	mov    ecx,DWORD PTR [rsp+0x78]
13a69	call   0x24f8b9
13a6e	outs   dx,DWORD PTR [rsi]
13a6f	xor    eax,eax
13a71	jmp    0x14459
13a76	cmp    dil,0x8f
13a7a	jne    0x13e86
13a80	movaps xmm0,XMMWORD PTR [rip+0x469f9]        # 0x5a480
13a87	movups XMMWORD PTR [rbp-0x60],xmm0
13a8b	movaps xmm1,XMMWORD PTR [rip+0x469fe]        # 0x5a490
13a92	movups XMMWORD PTR [rbp-0x50],xmm1
13a96	movaps xmm0,XMMWORD PTR [rip+0x46a03]        # 0x5a4a0
13a9d	movups XMMWORD PTR [rbp-0x40],xmm0
13aa1	movaps xmm1,XMMWORD PTR [rip+0x46a08]        # 0x5a4b0
13aa8	movups XMMWORD PTR [rbp-0x30],xmm1
13aac	movaps xmm0,XMMWORD PTR [rip+0x46a0d]        # 0x5a4c0
13ab3	movups XMMWORD PTR [rbp-0x20],xmm0
13ab7	movaps xmm1,XMMWORD PTR [rip+0x46a12]        # 0x5a4d0
13abe	movups XMMWORD PTR [rbp-0x10],xmm1
13ac2	movaps xmm0,XMMWORD PTR [rip+0x46a17]        # 0x5a4e0
13ac9	movups XMMWORD PTR [rbp+0x0],xmm0
13acd	movaps xmm1,XMMWORD PTR [rip+0x46a1c]        # 0x5a4f0
13ad4	movups XMMWORD PTR [rbp+0x10],xmm1
13ad8	movaps xmm0,XMMWORD PTR [rip+0x46a21]        # 0x5a500
13adf	movups XMMWORD PTR [rbp+0x20],xmm0
13ae3	movaps xmm1,XMMWORD PTR [rip+0x46a26]        # 0x5a510
13aea	movups XMMWORD PTR [rbp+0x30],xmm1
13aee	movaps xmm0,XMMWORD PTR [rip+0x46a2b]        # 0x5a520
13af5	movups XMMWORD PTR [rbp+0x40],xmm0
13af9	movaps xmm1,XMMWORD PTR [rip+0x46a30]        # 0x5a530
13b00	movups XMMWORD PTR [rbp+0x50],xmm1
13b04	movaps xmm0,XMMWORD PTR [rip+0x46a35]        # 0x5a540
13b0b	movups XMMWORD PTR [rbp+0x60],xmm0
13b0f	movaps xmm1,XMMWORD PTR [rip+0x46a3a]        # 0x5a550
13b16	movups XMMWORD PTR [rbp+0x70],xmm1
13b1a	mov    rax,QWORD PTR [rip+0x46a3f]        # 0x5a560
13b21	mov    QWORD PTR [rbp+0x80],rax
13b28	xor    edx,edx
13b2a	mov    r8d,0xe6
13b30	lea    rcx,[rbp+0x180]
13b37	call   0x478c0
13b3c	xor    edx,edx
13b3e	mov    r14d,0xd4
13b44	nop    DWORD PTR [rax+0x0]
13b48	nop    DWORD PTR [rax+rax*1+0x0]
13b50	movzx  eax,dx
13b53	imul   ecx,eax,0xd
13b56	mov    rax,rdx
13b59	shr    rax,0x3
13b5d	add    ax,cx
13b60	add    ax,r14w
13b64	xor    ax,WORD PTR [rbp+rdx*2-0x60]
13b69	mov    WORD PTR [rsp+0x60],ax
13b6e	movzx  eax,WORD PTR [rsp+0x60]
13b73	mov    WORD PTR [rbp+rdx*2+0x180],ax
13b7b	inc    rdx
13b7e	cmp    rdx,0x73
13b82	jb     0x13b50
13b84	mov    QWORD PTR [rsp+0x30],rbx
13b89	mov    DWORD PTR [rsp+0x28],r12d
13b8e	mov    QWORD PTR [rsp+0x20],rsi
13b93	mov    r14,QWORD PTR [rsp+0x70]
13b98	mov    r9,r14
13b9b	mov    r8,r13
13b9e	mov    rdx,r15
13ba1	lea    rcx,[rbp+0x180]
13ba8	call   0x8a20
13bad	lea    rdi,[rbp+0x180]
13bb4	xor    eax,eax
13bb6	mov    ecx,0xe6
13bbb	rep stos BYTE PTR [rdi],al
13bbd	mov    r9,rbx
13bc0	mov    r8,rsi
13bc3	mov    rdx,r14
13bc6	lea    rcx,[rip+0x44c7b]        # 0x58848   ; "W:mode_select_packet_hex"
13bcd	call   0x10b50
13bd2	xor    r15d,r15d
13bd5	xor    r11b,r11b
13bd8	cmp    rbx,0x2
13bdc	jb     0x13d47
13be2	cmp    BYTE PTR [rsi],0x8f
13be5	jne    0x13d47
13beb	mov    eax,0x1
13bf0	xor    r8d,r8d
13bf3	xor    ecx,ecx
13bf5	cmp    rax,rbx
13bf8	jae    0x13d47
13bfe	xchg   ax,ax
13c00	cmp    ecx,0x3f
13c03	jg     0x13d47
13c09	mov    r9,rax
13c0c	movzx  edi,BYTE PTR [rax+rsi*1]
13c10	inc    rax
13c13	mov    edx,edi
13c15	and    edx,0x7f
13c18	shl    rdx,cl
13c1b	or     r8,rdx
13c1e	test   dil,dil
13c21	jns    0x13c31
13c23	cmp    rax,rbx
13c26	jae    0x13d47
13c2c	add    ecx,0x7
13c2f	jmp    0x13c00
13c31	test   r8,r8
13c34	je     0x13d47
13c3a	mov    ecx,r8d
13c3d	and    ecx,0x7
13c40	jne    0x13cc6
13c46	mov    r10,rax
13c49	xor    r9d,r9d
13c4c	cmp    rax,rbx
13c4f	jae    0x13d47
13c55	cmp    ecx,0x3f
13c58	jg     0x13d47
13c5e	movzx  edi,BYTE PTR [rax+rsi*1]
13c62	inc    rax
13c65	mov    edx,edi
13c67	and    edx,0x7f
13c6a	shl    rdx,cl
13c6d	or     r9,rdx
13c70	test   dil,dil
13c73	jns    0x13c83
13c75	cmp    rax,rbx
13c78	jae    0x13d47
13c7e	add    ecx,0x7
13c81	jmp    0x13c55
13c83	shr    r8,0x3
13c87	cmp    r8d,0xc
13c8b	jne    0x13d3e
13c91	mov    r15,r10
13c94	movzx  r11d,r9b
13c98	mov    eax,0xff
13c9d	cmp    r9,rax
13ca0	cmova  r11d,eax
13ca4	mov    edi,0x1
13ca9	movzx  eax,BYTE PTR [r10+rsi*1]
13cae	test   al,al
13cb0	js     0x13d49
13cb6	je     0x13d49
13cbc	mov    BYTE PTR [r10+rsi*1],0x0
13cc1	jmp    0x13d49
13cc6	cmp    ecx,0x2
13cc9	jne    0x13d12
13ccb	xor    r8d,r8d
13cce	xor    ecx,ecx
13cd0	cmp    rax,rbx
13cd3	jae    0x13d47
13cd5	cmp    ecx,0x3f
13cd8	jg     0x13d47
13cda	mov    r9,rax
13cdd	movzx  edi,BYTE PTR [rax+rsi*1]
13ce1	inc    rax
13ce4	mov    edx,edi
13ce6	and    edx,0x7f
13ce9	shl    rdx,cl
13cec	or     r8,rdx
13cef	test   dil,dil
13cf2	jns    0x13cfe
13cf4	cmp    rax,rbx
13cf7	jae    0x13d47
13cf9	add    ecx,0x7
13cfc	jmp    0x13cd5
13cfe	mov    rcx,rbx
13d01	sub    rcx,rax
13d04	cmp    r8,rcx
13d07	ja     0x13d47
13d09	lea    rax,[r9+0x1]
13d0d	add    rax,r8
13d10	jmp    0x13d3e
13d12	cmp    ecx,0x5
13d15	jne    0x13d29
13d17	mov    rcx,rbx
13d1a	sub    rcx,rax
13d1d	cmp    rcx,0x4
13d21	jb     0x13d47
13d23	lea    rax,[r9+0x5]
13d27	jmp    0x13d3e
13d29	cmp    ecx,0x1
13d2c	jne    0x13d47
13d2e	mov    rcx,rbx
13d31	sub    rcx,rax
13d34	cmp    rcx,0x8
13d38	jb     0x13d47
13d3a	lea    rax,[r9+0x9]
13d3e	cmp    rax,rbx
13d41	jb     0x13bf0
13d47	xor    edi,edi
13d49	mov    BYTE PTR [rip+0x92750],r11b        # 0xa64a0
13d50	xor    ebx,ebx
13d52	cmp    r11b,0x2
13d56	sete   bl
13d59	movzx  esi,r11b
13d5d	movaps xmm0,XMMWORD PTR [rip+0x4626c]        # 0x59fd0
13d64	movups XMMWORD PTR [rbp-0x60],xmm0
13d68	movaps xmm1,XMMWORD PTR [rip+0x46271]        # 0x59fe0
13d6f	movups XMMWORD PTR [rbp-0x50],xmm1
13d73	movaps xmm0,XMMWORD PTR [rip+0x46276]        # 0x59ff0
13d7a	movups XMMWORD PTR [rbp-0x40],xmm0
13d7e	movaps xmm1,XMMWORD PTR [rip+0x4627b]        # 0x5a000
13d85	movups XMMWORD PTR [rbp-0x30],xmm1
13d89	movaps xmm0,XMMWORD PTR [rip+0x46280]        # 0x5a010
13d90	movups XMMWORD PTR [rbp-0x20],xmm0
13d94	movaps xmm1,XMMWORD PTR [rip+0x46285]        # 0x5a020
13d9b	movups XMMWORD PTR [rbp-0x10],xmm1
13d9f	movaps xmm0,XMMWORD PTR [rip+0x4628a]        # 0x5a030
13da6	movups XMMWORD PTR [rbp+0x0],xmm0
13daa	movaps xmm1,XMMWORD PTR [rip+0x4628f]        # 0x5a040
13db1	movups XMMWORD PTR [rbp+0x10],xmm1
13db5	movaps xmm0,XMMWORD PTR [rip+0x46294]        # 0x5a050
13dbc	movups XMMWORD PTR [rbp+0x20],xmm0
13dc0	movaps xmm1,XMMWORD PTR [rip+0x46299]        # 0x5a060
13dc7	movups XMMWORD PTR [rbp+0x30],xmm1
13dcb	movaps xmm0,XMMWORD PTR [rip+0x4629e]        # 0x5a070
13dd2	movups XMMWORD PTR [rbp+0x40],xmm0
13dd6	movaps xmm1,XMMWORD PTR [rip+0x462a3]        # 0x5a080
13ddd	movups XMMWORD PTR [rbp+0x50],xmm1
13de1	movaps xmm0,XMMWORD PTR [rip+0x462a8]        # 0x5a090
13de8	movups XMMWORD PTR [rbp+0x60],xmm0
13dec	mov    eax,DWORD PTR [rip+0x462ae]        # 0x5a0a0
13df2	mov    DWORD PTR [rbp+0x70],eax
13df5	xor    edx,edx
13df7	mov    r8d,0xd2
13dfd	lea    rcx,[rbp+0x180]
13e04	call   0x478c0
13e09	xor    edx,edx
13e0b	mov    r8d,0x8c
13e11	nop    DWORD PTR [rax+0x0]
13e15	data16 data16 nop WORD PTR [rax+rax*1+0x0]
13e20	movzx  eax,dx
13e23	imul   ecx,eax,0xd
13e26	mov    rax,rdx
13e29	shr    rax,0x3
13e2d	add    ax,cx
13e30	add    ax,r8w
13e34	xor    ax,WORD PTR [rbp+rdx*2-0x60]
13e39	mov    WORD PTR [rsp+0x60],ax
13e3e	movzx  eax,WORD PTR [rsp+0x60]
13e43	mov    WORD PTR [rbp+rdx*2+0x180],ax
13e4b	inc    rdx
13e4e	cmp    rdx,0x69
13e52	jb     0x13e20
13e54	mov    DWORD PTR [rsp+0x28],ebx
13e58	mov    DWORD PTR [rsp+0x20],esi
13e5c	mov    r9,r15
13e5f	mov    r8d,edi
13e62	mov    rdx,r14
13e65	lea    rcx,[rbp+0x180]
13e6c	call   0x8a20
13e71	lea    rdi,[rbp+0x180]
13e78	xor    eax,eax
13e7a	mov    ecx,0xd2
13e7f	rep stos BYTE PTR [rdi],al
13e81	jmp    0x1444a
13e86	test   r14b,r14b
13e89	je     0x142a8
13e8f	movzx  eax,BYTE PTR [rip+0x9260a]        # 0xa64a0
13e96	cmp    al,0x2
13e98	jne    0x142a8
13e9e	mov    r13d,0x1
13ea4	lock xadd QWORD PTR [rip+0x92683],r13        # 0xa6530
13ead	inc    r13
13eb0	cmp    r13,0x10
13eb4	jbe    0x13ec0
13eb6	test   r13b,r13b
13eb9	je     0x13ec0
13ebb	xor    dil,dil
13ebe	jmp    0x13ee1
13ec0	mov    dil,0x1
13ec3	mov    QWORD PTR [rsp+0x28],rbx
13ec8	mov    DWORD PTR [rsp+0x20],r12d
13ecd	mov    r9,rsi
13ed0	mov    r8,QWORD PTR [rbp-0x78]
13ed4	mov    rdx,r15
13ed7	mov    rcx,QWORD PTR [rsp+0x70]
13edc	call   0x11070
13ee1	mov    r9,rbx
13ee4	mov    r8d,r12d
13ee7	mov    rdx,rsi
13eea	lea    rcx,[rbp+0x360]
13ef1	call   0xffd0
13ef6	movzx  r14d,BYTE PTR [rax]
13efa	mov    ecx,DWORD PTR [rax+0x4]
13efd	mov    DWORD PTR [rsp+0x68],ecx
13f01	movzx  ecx,BYTE PTR [rax+0x8]
13f05	mov    BYTE PTR [rsp+0x60],cl
13f09	test   r14b,r14b
13f0c	jne    0x140d2
13f12	mov    r14d,DWORD PTR [rax+0xc]
13f16	mov    DWORD PTR [rsp+0x7c],r14d
13f1b	mov    eax,DWORD PTR [rax+0x10]
13f1e	mov    DWORD PTR [rbp-0x80],eax
13f21	call   0xfa30
13f26	mov    QWORD PTR [rax],r15
13f29	call   0xfa30
13f2e	mov    ecx,DWORD PTR [rbp-0x80]
13f31	mov    DWORD PTR [rax+0x8],ecx
13f34	call   0xfa30
13f39	mov    rcx,QWORD PTR [rsp+0x70]
13f3e	mov    QWORD PTR [rax+0x10],rcx
13f42	call   0xfa30
13f47	mov    BYTE PTR [rax+0x18],0x1
13f4b	call   0xfa30
13f50	mov    BYTE PTR [rax+0x19],dil
13f54	mov    QWORD PTR [rbp-0x70],r14
13f58	mov    r9d,r14d
13f5b	mov    r8,rsi
13f5e	mov    rdx,QWORD PTR [rsp+0x70]
13f63	lea    rcx,[rip+0x4490e]        # 0x58878   ; "W:mode2_plaintext_hex"
13f6a	call   0x10b50
13f6f	test   dil,dil
13f72	je     0x1444a
13f78	movzx  edi,BYTE PTR [rsi]
13f7b	lea    rax,[rbp-0x60]
13f7f	lea    rcx,[rip+0x46eda]        # 0x5ae60
13f86	mov    edx,0x3
13f8b	mov    r14d,0x80
13f91	movups xmm0,XMMWORD PTR [rcx]
13f94	movups XMMWORD PTR [rax],xmm0
13f97	movups xmm1,XMMWORD PTR [rcx+0x10]
13f9b	movups XMMWORD PTR [rax+0x10],xmm1
13f9f	movups xmm0,XMMWORD PTR [rcx+0x20]
13fa3	movups XMMWORD PTR [rax+0x20],xmm0
13fa7	movups xmm1,XMMWORD PTR [rcx+0x30]
13fab	movups XMMWORD PTR [rax+0x30],xmm1
13faf	movups xmm0,XMMWORD PTR [rcx+0x40]
13fb3	movups XMMWORD PTR [rax+0x40],xmm0
13fb7	movups xmm1,XMMWORD PTR [rcx+0x50]
13fbb	movups XMMWORD PTR [rax+0x50],xmm1
13fbf	movups xmm0,XMMWORD PTR [rcx+0x60]
13fc3	movups XMMWORD PTR [rax+0x60],xmm0
13fc7	movups xmm1,XMMWORD PTR [rcx+0x70]
13fcb	movups XMMWORD PTR [rax+0x70],xmm1
13fcf	add    rax,r14
13fd2	add    rcx,r14
13fd5	sub    rdx,0x1
13fd9	jne    0x13f91
13fdb	movups xmm0,XMMWORD PTR [rcx]
13fde	movups XMMWORD PTR [rax],xmm0
13fe1	movups xmm1,XMMWORD PTR [rcx+0x10]
13fe5	movups XMMWORD PTR [rax+0x10],xmm1
13fe9	movups xmm0,XMMWORD PTR [rcx+0x20]
13fed	movups XMMWORD PTR [rax+0x20],xmm0
13ff1	movups xmm1,XMMWORD PTR [rcx+0x30]
13ff5	movups XMMWORD PTR [rax+0x30],xmm1
13ff9	movups xmm0,XMMWORD PTR [rcx+0x40]
13ffd	movups XMMWORD PTR [rax+0x40],xmm0
14001	movups xmm1,XMMWORD PTR [rcx+0x4a]
14005	movups XMMWORD PTR [rax+0x4a],xmm1
14009	mov    r8d,0x1d8
1400f	lea    rcx,[rbp+0x180]
14016	call   0x478c0
1401b	xor    edx,edx
1401d	mov    r8d,0x91
14023	nop    DWORD PTR [rax+0x0]
14027	nop    WORD PTR [rax+rax*1+0x0]
14030	movzx  eax,dx
14033	imul   ecx,eax,0xd
14036	mov    rax,rdx
14039	shr    rax,0x3
1403d	add    ax,cx
14040	add    ax,r8w
14044	xor    ax,WORD PTR [rbp+rdx*2-0x60]
14049	mov    WORD PTR [rsp+0x64],ax
1404e	movzx  eax,WORD PTR [rsp+0x64]
14053	mov    WORD PTR [rbp+rdx*2+0x180],ax
1405b	inc    rdx
1405e	cmp    rdx,0xec
14065	jb     0x14030
14067	movzx  eax,BYTE PTR [rsp+0x60]
1406c	mov    ecx,DWORD PTR [rsp+0x68]
14070	mov    DWORD PTR [rsp+0x58],ecx
14074	mov    ecx,DWORD PTR [rbp-0x80]
14077	mov    DWORD PTR [rsp+0x50],ecx
1407b	mov    DWORD PTR [rsp+0x48],r12d
14080	mov    edx,DWORD PTR [rsp+0x7c]
14084	mov    DWORD PTR [rsp+0x40],edx
14088	mov    QWORD PTR [rsp+0x38],rbx
1408d	mov    DWORD PTR [rsp+0x30],eax
14091	mov    DWORD PTR [rsp+0x28],edi
14095	mov    QWORD PTR [rsp+0x20],r13
1409a	mov    r9,QWORD PTR [rsp+0x70]
1409f	mov    r8,QWORD PTR [rbp-0x78]
140a3	mov    rdx,r15
140a6	lea    rcx,[rbp+0x180]
140ad	call   0x8a20
140b2	lea    rdi,[rbp+0x180]
140b9	xor    eax,eax
140bb	mov    ecx,0x1d8
140c0	rep stos BYTE PTR [rdi],al
140c2	mov    r8,QWORD PTR [rbp-0x70]
140c6	lea    rcx,[rip+0x447d3]        # 0x588a0   ; "W:mode2_plaintext_preview"
140cd	jmp    0x14442
140d2	test   dil,dil
140d5	jne    0x140f5
140d7	mov    QWORD PTR [rsp+0x28],rbx
140dc	mov    DWORD PTR [rsp+0x20],r12d
140e1	mov    r9,rsi
140e4	mov    r8,QWORD PTR [rbp-0x78]
140e8	mov    rdx,r15
140eb	mov    rcx,QWORD PTR [rsp+0x70]
140f0	call   0x11070
140f5	cmp    r14b,0xa
140f9	ja     0x14172
140fb	lea    rdx,[rip+0xfffffffffffebefe]        # 0x0
14102	mov    eax,DWORD PTR [rdx+r14*4+0x14470]
1410a	add    rax,rdx
1410d	jmp    rax
1410f	lea    rsi,[rip+0x442ba]        # 0x583d0   ; "W:authenticated"
14116	jmp    0x14179
14118	lea    rsi,[rip+0x442d1]        # 0x583f0   ; "W:null_data"
1411f	jmp    0x14179
14121	lea    rsi,[rip+0x442e0]        # 0x58408   ; "W:not_byte_aligned"
14128	jmp    0x14179
1412a	lea    rsi,[rip+0x442ff]        # 0x58430   ; "W:short_packet"
14131	jmp    0x14179
14133	lea    rsi,[rip+0x44316]        # 0x58450   ; "W:invalid_checked"
1413a	jmp    0x14179
1413c	lea    rsi,[rip+0x4432d]        # 0x58470   ; "W:invalid_ciphertext_length"
14143	jmp    0x14179
14145	lea    rsi,[rip+0x4435c]        # 0x584a8   ; "W:session_key_unavailable"
1414c	jmp    0x14179
1414e	lea    rsi,[rip+0x44383]        # 0x584d8   ; "W:crypto_unavailable"
14155	jmp    0x14179
14157	lea    rsi,[rip+0x443a2]        # 0x58500   ; "W:scratch_allocation_failed"
1415e	jmp    0x14179
14160	lea    rsi,[rip+0x443d1]        # 0x58538   ; "W:decrypt_or_tag_failed"
14167	jmp    0x14179
14169	lea    rsi,[rip+0x443f8]        # 0x58568   ; "W:output_length_mismatch"
14170	jmp    0x14179
14172	lea    rsi,[rip+0x4441f]        # 0x58598   ; "W:unknown"
14179	lea    rax,[rbp-0x60]
1417d	lea    rcx,[rip+0x458ec]        # 0x59a70   ; "W:i~zN"
14184	mov    edx,0x2
14189	mov    r14d,0x80
1418f	nop
14190	movups xmm0,XMMWORD PTR [rcx]
14193	movups XMMWORD PTR [rax],xmm0
14196	movups xmm1,XMMWORD PTR [rcx+0x10]
1419a	movups XMMWORD PTR [rax+0x10],xmm1
1419e	movups xmm0,XMMWORD PTR [rcx+0x20]
141a2	movups XMMWORD PTR [rax+0x20],xmm0
141a6	movups xmm1,XMMWORD PTR [rcx+0x30]
141aa	movups XMMWORD PTR [rax+0x30],xmm1
141ae	movups xmm0,XMMWORD PTR [rcx+0x40]
141b2	movups XMMWORD PTR [rax+0x40],xmm0
141b6	movups xmm1,XMMWORD PTR [rcx+0x50]
141ba	movups XMMWORD PTR [rax+0x50],xmm1
141be	movups xmm0,XMMWORD PTR [rcx+0x60]
141c2	movups XMMWORD PTR [rax+0x60],xmm0
141c6	movups xmm1,XMMWORD PTR [rcx+0x70]
141ca	movups XMMWORD PTR [rax+0x70],xmm1
141ce	add    rax,r14
141d1	add    rcx,r14
141d4	sub    rdx,0x1
141d8	jne    0x14190
141da	movups xmm0,XMMWORD PTR [rcx]
141dd	movups XMMWORD PTR [rax],xmm0
141e0	movups xmm1,XMMWORD PTR [rcx+0x10]
141e4	movups XMMWORD PTR [rax+0x10],xmm1
141e8	movups xmm0,XMMWORD PTR [rcx+0x20]
141ec	movups XMMWORD PTR [rax+0x20],xmm0
141f0	movups xmm1,XMMWORD PTR [rcx+0x2c]
141f4	movups XMMWORD PTR [rax+0x2c],xmm1
141f8	mov    r8d,0x13a
141fe	lea    rcx,[rbp+0x180]
14205	call   0x478c0
1420a	xor    edi,edi
1420c	nop    DWORD PTR [rax+0x0]
14210	movzx  eax,di
14213	imul   ecx,eax,0xd   ; DEC "?partial \x04\x11\x1e+8ER_mz\x87\x94\xa1\xae\xbb\xc8\xd6\xe3\xf0\xfd\u010a\u0117\u0124\u0131\u013f\u014c\u0159\u0166\u0173\u0180\u018d\u019a"
14216	mov    rax,rdi
14219	shr    rax,0x3
1421d	add    ax,0x4
14221	add    ax,cx
14224	xor    ax,WORD PTR [rbp+rdi*2-0x60]
14229	mov    WORD PTR [rsp+0x64],ax
1422e	movzx  eax,WORD PTR [rsp+0x64]
14233	mov    WORD PTR [rbp+rdi*2+0x180],ax
1423b	inc    rdi
1423e	cmp    rdi,0x9d
14245	jb     0x14210
14247	movzx  eax,BYTE PTR [rsp+0x60]
1424c	mov    ecx,DWORD PTR [rsp+0x68]
14250	mov    DWORD PTR [rsp+0x48],ecx
14254	mov    DWORD PTR [rsp+0x40],r12d
14259	mov    QWORD PTR [rsp+0x38],rbx
1425e	mov    DWORD PTR [rsp+0x30],eax
14262	mov    QWORD PTR [rsp+0x28],r13
14267	mov    rax,QWORD PTR [rsp+0x70]
1426c	mov    QWORD PTR [rsp+0x20],rax
14271	mov    r9,QWORD PTR [rbp-0x78]
14275	mov    r8,r15
14278	mov    rdx,rsi
1427b	lea    rcx,[rbp+0x180]
14282	call   0x8a20
14287	lea    rdi,[rbp+0x180]
1428e	xor    eax,eax
14290	mov    ecx,0x13a
14295	rep stos BYTE PTR [rdi],al
14297	mov    ecx,DWORD PTR [rsp+0x78]
1429b	push   rdi
1429c	call   0x335031
142a1	xor    eax,eax
142a3	jmp    0x14459
142a8	movzx  eax,BYTE PTR [rip+0x921f1]        # 0xa64a0
142af	mov    DWORD PTR [rsp+0x7c],eax
142b3	mov    r13d,edi
142b6	mov    ecx,edi
142b8	sub    ecx,0x8f
142be	je     0x142f3
142c0	sub    ecx,0xe
142c3	je     0x142ea
142c5	sub    ecx,0x1
142c8	je     0x142e1
142ca	cmp    ecx,0x4
142cd	je     0x142d8
142cf	lea    rdi,[rip+0x44412]        # 0x586e8   ; "W:other"
142d6	jmp    0x142fa
142d8	lea    rdi,[rip+0x44401]        # 0x586e0
142df	jmp    0x142fa
142e1	lea    rdi,[rip+0x443c8]        # 0x586b0   ; "W:give_user_information"
142e8	jmp    0x142fa
142ea	lea    rdi,[rip+0x44387]        # 0x58678   ; "W:request_user_information"
142f1	jmp    0x142fa
142f3	lea    rdi,[rip+0x44366]        # 0x58660   ; "W:approved"
142fa	lea    rax,[rbp-0x60]
142fe	lea    rcx,[rip+0x44f3b]        # 0x59240
14305	mov    edx,0x2
1430a	mov    r14d,0x80
14310	movups xmm0,XMMWORD PTR [rcx]
14313	movups XMMWORD PTR [rax],xmm0
14316	movups xmm1,XMMWORD PTR [rcx+0x10]
1431a	movups XMMWORD PTR [rax+0x10],xmm1
1431e	movups xmm0,XMMWORD PTR [rcx+0x20]
14322	movups XMMWORD PTR [rax+0x20],xmm0
14326	movups xmm1,XMMWORD PTR [rcx+0x30]
1432a	movups XMMWORD PTR [rax+0x30],xmm1
1432e	movups xmm0,XMMWORD PTR [rcx+0x40]
14332	movups XMMWORD PTR [rax+0x40],xmm0
14336	movups xmm1,XMMWORD PTR [rcx+0x50]
1433a	movups XMMWORD PTR [rax+0x50],xmm1
1433e	movups xmm0,XMMWORD PTR [rcx+0x60]
14342	movups XMMWORD PTR [rax+0x60],xmm0
14346	movups xmm1,XMMWORD PTR [rcx+0x70]
1434a	movups XMMWORD PTR [rax+0x70],xmm1
1434e	add    rax,r14
14351	add    rcx,r14
14354	sub    rdx,0x1
14358	jne    0x14310
1435a	movups xmm0,XMMWORD PTR [rcx]
1435d	movups XMMWORD PTR [rax],xmm0
14360	movups xmm1,XMMWORD PTR [rcx+0x10]
14364	movups XMMWORD PTR [rax+0x10],xmm1
14368	movups xmm0,XMMWORD PTR [rcx+0x20]
1436c	movups XMMWORD PTR [rax+0x20],xmm0
14370	movups xmm1,XMMWORD PTR [rcx+0x30]
14374	movups XMMWORD PTR [rax+0x30],xmm1
14378	movups xmm0,XMMWORD PTR [rcx+0x40]
1437c	movups XMMWORD PTR [rax+0x40],xmm0
14380	movups xmm1,XMMWORD PTR [rcx+0x50]
14384	movups XMMWORD PTR [rax+0x50],xmm1
14388	movups xmm0,XMMWORD PTR [rcx+0x5e]
1438c	movups XMMWORD PTR [rax+0x5e],xmm0
14390	mov    r8d,0x16c
14396	lea    rcx,[rbp+0x180]
1439d	call   0x478c0
143a2	xor    edx,edx
143a4	nop    DWORD PTR [rax+0x0]
143a8	nop    DWORD PTR [rax+rax*1+0x0]
143b0	movzx  eax,dx
143b3	imul   ecx,eax,0xd
143b6	mov    rax,rdx
143b9	shr    rax,0x3
143bd	add    ax,cx
143c0	add    ax,r14w
143c4	xor    ax,WORD PTR [rbp+rdx*2-0x60]
143c9	mov    WORD PTR [rsp+0x64],ax
143ce	movzx  eax,WORD PTR [rsp+0x64]
143d3	mov    WORD PTR [rbp+rdx*2+0x180],ax
143db	inc    rdx
143de	cmp    rdx,0xb6
143e5	jb     0x143b0
143e7	mov    eax,DWORD PTR [rsp+0x68]
143eb	mov    DWORD PTR [rsp+0x50],eax
143ef	mov    eax,DWORD PTR [rsp+0x7c]
143f3	mov    DWORD PTR [rsp+0x48],eax
143f7	mov    QWORD PTR [rsp+0x40],rdi
143fc	mov    DWORD PTR [rsp+0x38],r13d
14401	mov    QWORD PTR [rsp+0x30],rbx
14406	mov    DWORD PTR [rsp+0x28],r12d
1440b	mov    QWORD PTR [rsp+0x20],rsi
14410	mov    r9,QWORD PTR [rsp+0x70]
14415	mov    r8,QWORD PTR [rbp-0x78]
14419	mov    rdx,r15
1441c	lea    rcx,[rbp+0x180]
14423	call   0x8a20
14428	lea    rdi,[rbp+0x180]
1442f	xor    eax,eax
14431	mov    ecx,0x16c
14436	rep stos BYTE PTR [rdi],al
14438	mov    r8,rbx
1443b	lea    rcx,[rip+0x4448e]        # 0x588d0   ; "W:receive_packet_preview"
14442	mov    rdx,rsi
14445	call   0x10810
1444a	mov    ecx,DWORD PTR [rsp+0x78]
1444e	push   rcx
1444f	call   0xc3200
14454	mov    eax,0x1
14459	add    rsp,0x488
14460	pop    r15
14462	pop    r14
14464	pop    r13
14466	pop    r12
14468	pop    rdi
14469	pop    rsi
1446a	pop    rbx
1446b	pop    rbp
1446c	ret
1446d	nop    DWORD PTR [rax]
14470	cmovno eax,DWORD PTR [rcx]
14473	add    BYTE PTR [rax],bl
14475	add    DWORD PTR [r8],eax
14478	and    DWORD PTR [rcx+0x1],eax
1447b	add    BYTE PTR [rdx],ch
1447d	add    DWORD PTR [r8],eax
14480	xor    eax,DWORD PTR [rcx+0x1]
14483	add    BYTE PTR [rcx+rax*2],bh
14486	add    DWORD PTR [rax],eax
14488	rex.RB
14489	add    DWORD PTR [r8],eax
1448c	rex.WRX
1448d	add    DWORD PTR [r8],eax
14490	push   rdi
14491	add    DWORD PTR [r8],eax
14494	(bad)
14495	add    DWORD PTR [r8],eax
14498	imul   eax,DWORD PTR [rcx+0x1],0xcccccc00
1449f	int3
144a0	mov    rax,QWORD PTR [rip+0x92031]        # 0xa64d8
144a7	rex.W jmp rax
144aa	int3
144ab	int3
144ac	int3
144ad	int3
144ae	int3
144af	int3
144b0	rex push rbx
144b2	push   rbp
144b3	sub    rsp,0x1a8
144ba	mov    rbx,rcx
144bd	call   0x267f3e
144c2	jb     0x1444f
144c4	call   0xffffffffffb6abb1
144c9	inc    DWORD PTR [rax+0xf001878]
144cf	test   al,cl
144d1	add    DWORD PTR [rax],eax
144d3	add    BYTE PTR [rax-0x7b],cl
144d6	fisttp DWORD PTR [rdi]
144d8	test   BYTE PTR [rdi-0x17ffffff],bh
144de	rex.WRX mov bpl,0xff
144e1	dec    DWORD PTR [rax+0x39]
144e4	sbb    BYTE PTR [rdi],cl
144e6	test   DWORD PTR [rcx+0x48000001],esi
144ec	mov    DWORD PTR [rsp+0x1c0],esi
144f3	mov    QWORD PTR [rsp+0x1d0],rdi
144fb	mov    QWORD PTR [rsp+0x1a0],r14
14503	call   0xfa30
14508	mov    esi,DWORD PTR [rax+0x8]
1450b	mov    r14,QWORD PTR [rax+0x10]
1450f	movzx  edi,BYTE PTR [rax+0x19]
14513	call   0xfa30
14518	mov    ecx,DWORD PTR [rsp+0x2c]
1451c	mov    QWORD PTR [rax],0x0
14523	mov    DWORD PTR [rax+0x8],0x0
1452a	mov    DWORD PTR [rax+0xc],ecx
1452d	mov    ecx,DWORD PTR [rsp+0x3a]
14531	mov    QWORD PTR [rax+0x10],0x0
14539	mov    WORD PTR [rax+0x18],0x0
1453f	mov    DWORD PTR [rax+0x1a],ecx
14542	movzx  ecx,WORD PTR [rsp+0x3e]
14547	mov    WORD PTR [rax+0x1e],cx
1454b	test   dil,dil
1454e	je     0x14670
14554	movaps xmm0,XMMWORD PTR [rip+0x45805]        # 0x59d60
1455b	lea    rcx,[rsp+0xf0]
14563	movaps xmm1,XMMWORD PTR [rip+0x45806]        # 0x59d70
1456a	xor    edx,edx
1456c	movups XMMWORD PTR [rsp+0x40],xmm0
14571	mov    r8d,0xa8
14577	movaps xmm0,XMMWORD PTR [rip+0x45802]        # 0x59d80
1457e	movups XMMWORD PTR [rsp+0x60],xmm0
14583	movaps xmm0,XMMWORD PTR [rip+0x45816]        # 0x59da0
1458a	movups XMMWORD PTR [rsp+0x50],xmm1
1458f	movaps xmm1,XMMWORD PTR [rip+0x457fa]        # 0x59d90
14596	movups XMMWORD PTR [rsp+0x80],xmm0
1459e	movaps xmm0,XMMWORD PTR [rip+0x4581b]        # 0x59dc0
145a5	movups XMMWORD PTR [rsp+0x70],xmm1
145aa	movaps xmm1,XMMWORD PTR [rip+0x457ff]        # 0x59db0
145b1	movups XMMWORD PTR [rsp+0xa0],xmm0
145b9	movaps xmm0,XMMWORD PTR [rip+0x45820]        # 0x59de0
145c0	movups XMMWORD PTR [rsp+0x90],xmm1
145c8	movaps xmm1,XMMWORD PTR [rip+0x45801]        # 0x59dd0
145cf	movups XMMWORD PTR [rsp+0xc0],xmm0
145d7	movups xmm0,XMMWORD PTR [rip+0x4581c]        # 0x59dfa
145de	movups XMMWORD PTR [rsp+0xb0],xmm1
145e6	movaps xmm1,XMMWORD PTR [rip+0x45803]        # 0x59df0
145ed	movups XMMWORD PTR [rsp+0xd0],xmm1
145f5	movups XMMWORD PTR [rsp+0xda],xmm0
145fd	call   0x478c0
14602	xor    eax,eax
14604	mov    edi,0xba
14609	nop    DWORD PTR [rax+0x0]
14610	movzx  ecx,ax
14613	imul   edx,ecx,0xd
14616	mov    rcx,rax
14619	shr    rcx,0x3
1461d	add    cx,dx
14620	add    cx,di
14623	xor    cx,WORD PTR [rsp+rax*2+0x40]
14628	mov    WORD PTR [rsp+0x1c8],cx
14630	movzx  edx,WORD PTR [rsp+0x1c8]
14638	mov    WORD PTR [rsp+rax*2+0xf0],dx
14640	inc    rax
14643	cmp    rax,0x54
14647	jb     0x14610
14649	mov    r9d,esi
1464c	lea    rcx,[rsp+0xf0]
14654	mov    r8,r14
14657	mov    rdx,rbx
1465a	call   0x8a20
1465f	xor    eax,eax
14661	lea    rdi,[rsp+0xf0]
14669	mov    ecx,0xa8
1466e	rep stos BYTE PTR [rdi],al
14670	mov    ecx,ebp
14672	push   rdx
14673	call   0x28d91f
14678	mov    r14,QWORD PTR [rsp+0x1a0]
14680	mov    eax,esi
14682	mov    rsi,QWORD PTR [rsp+0x1c0]
1468a	mov    rdi,QWORD PTR [rsp+0x1d0]
14692	add    rsp,0x1a8
14699	pop    rbp
1469a	pop    rbx
1469b	ret
1469c	mov    rax,QWORD PTR [rip+0x91e3d]        # 0xa64e0
146a3	mov    rcx,rbx
146a6	add    rsp,0x1a8
146ad	pop    rbp
146ae	pop    rbx
146af	rex.W jmp rax
146b2	int3
146b3	int3
146b4	int3
146b5	int3
146b6	int3
146b7	int3
146b8	int3
146b9	int3
146ba	int3
146bb	int3
146bc	int3
146bd	int3
146be	int3
146bf	int3
146c0	mov    QWORD PTR [rsp+0x20],rbx
