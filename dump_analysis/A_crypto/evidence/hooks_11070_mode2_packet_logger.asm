11070	rex push rbp
11072	push   rbx
11073	push   rsi
11074	push   rdi
11075	push   r12
11077	push   r13
11079	push   r14
1107b	push   r15
1107d	lea    rbp,[rsp-0xad8]
11085	sub    rsp,0xc48
1108c	mov    rax,QWORD PTR [rip+0x53fad]        # 0x65040
11093	xor    rax,rsp
11096	mov    QWORD PTR [rbp+0xac0],rax
1109d	mov    r12,r9
110a0	mov    QWORD PTR [rbp+0x18],r8
110a4	mov    QWORD PTR [rbp+0x20],rdx
110a8	mov    QWORD PTR [rbp+0x10],rcx
110ac	mov    DWORD PTR [rbp-0x38],0x0
110b3	mov    r13d,DWORD PTR [rbp+0xb40]
110ba	mov    esi,r13d
110bd	and    esi,0x7
110c0	mov    r15,QWORD PTR [rbp+0xb48]
110c7	test   r9,r9
110ca	je     0x11fe3
110d0	cmp    r15,0x17
110d4	jb     0x11fcd
110da	test   esi,esi
110dc	jne    0x11fcd
110e2	lea    r10,[r15-0x16]
110e6	add    r10,r9
110e9	mov    QWORD PTR [rbp+0x0],r10
110ed	movzx  eax,BYTE PTR [r9+r15*1-0x12]
110f3	mov    BYTE PTR [rbp-0x50],al
110f6	movzx  eax,BYTE PTR [r9+r15*1-0x11]
110fc	mov    BYTE PTR [rbp-0x4c],al
110ff	movzx  r9d,al
11103	and    r9b,0x1
11107	movzx  edx,BYTE PTR [r10+0x3]
1110c	movzx  edi,BYTE PTR [r10+0x2]
11111	movzx  ebx,BYTE PTR [r10+0x1]
11116	movzx  r11d,BYTE PTR [r10]
1111a	mov    esi,edx
1111c	shl    esi,0x8
1111f	or     esi,edi
11121	shl    esi,0x8
11124	or     esi,ebx
11126	shl    esi,0x8
11129	or     esi,r11d
1112c	xorps  xmm0,xmm0
1112f	movdqu XMMWORD PTR [rbp+0x9b2],xmm0
11137	xorps  xmm1,xmm1
1113a	xor    eax,eax
1113c	movups XMMWORD PTR [rbp+0xa62],xmm1
11143	movups XMMWORD PTR [rbp+0xa72],xmm1
1114a	movups XMMWORD PTR [rbp+0xa82],xmm1
11151	movups XMMWORD PTR [rbp+0xa92],xmm1
11158	movups XMMWORD PTR [rbp+0xaa2],xmm1
1115f	mov    QWORD PTR [rbp+0xab2],rax
11166	xor    r13d,r13d
11169	mov    QWORD PTR [rbp+0x9d2],r13
11170	mov    QWORD PTR [rbp+0x9da],r13
11177	mov    QWORD PTR [rbp+0x9e2],r13
1117e	mov    QWORD PTR [rbp+0x9ea],r13
11185	mov    QWORD PTR [rbp+0x9f2],r13
1118c	mov    QWORD PTR [rbp+0x9fa],r13
11193	mov    QWORD PTR [rbp+0xa02],r13
1119a	mov    QWORD PTR [rbp+0xa0a],r13
111a1	movups XMMWORD PTR [rbp+0xa20],xmm0
111a8	movups XMMWORD PTR [rbp+0xa30],xmm0
111af	movups XMMWORD PTR [rbp+0xa40],xmm0
111b6	mov    WORD PTR [rbp+0xa50],ax
111bd	mov    DWORD PTR [rbp-0x78],0x310030
111c4	mov    DWORD PTR [rbp-0x74],0x330032
111cb	mov    DWORD PTR [rbp-0x70],0x350034
111d2	mov    DWORD PTR [rbp-0x6c],0x370036
111d9	mov    DWORD PTR [rbp-0x68],0x390038
111e0	mov    DWORD PTR [rbp-0x64],0x620061
111e7	mov    DWORD PTR [rbp-0x60],0x640063
111ee	mov    DWORD PTR [rbp-0x5c],0x660065
111f5	mov    WORD PTR [rbp-0x58],r13w
111fa	mov    WORD PTR [rbp+0x9b0],r13w
11202	test   r10,r10
11205	je     0x112a1
1120b	mov    ecx,r11d
1120e	mov    eax,r11d
11211	shr    rax,0x4
11215	movzx  eax,WORD PTR [rbp+rax*2-0x78]
1121a	mov    WORD PTR [rbp+0x9b0],ax
11221	and    ecx,0xf
11224	movzx  eax,WORD PTR [rbp+rcx*2-0x78]
11229	mov    WORD PTR [rbp+0x9b2],ax
11230	mov    ecx,ebx
11232	mov    eax,ebx
11234	shr    rax,0x4
11238	movzx  eax,WORD PTR [rbp+rax*2-0x78]
1123d	mov    WORD PTR [rbp+0x9b4],ax
11244	and    ecx,0xf
11247	movzx  eax,WORD PTR [rbp+rcx*2-0x78]
1124c	mov    WORD PTR [rbp+0x9b6],ax
11253	mov    ecx,edi
11255	mov    eax,edi
11257	shr    rax,0x4
1125b	movzx  eax,WORD PTR [rbp+rax*2-0x78]
11260	mov    WORD PTR [rbp+0x9b8],ax
11267	and    ecx,0xf
1126a	movzx  eax,WORD PTR [rbp+rcx*2-0x78]
1126f	mov    WORD PTR [rbp+0x9ba],ax
11276	mov    ecx,edx
11278	mov    eax,edx
1127a	shr    rax,0x4
1127e	movzx  eax,WORD PTR [rbp+rax*2-0x78]
11283	mov    WORD PTR [rbp+0x9bc],ax
1128a	and    ecx,0xf
1128d	movzx  eax,WORD PTR [rbp+rcx*2-0x78]
11292	mov    WORD PTR [rbp+0x9be],ax
11299	mov    WORD PTR [rbp+0x9c0],r13w
112a1	mov    r8,rdx
112a4	mov    rdx,rbx
112a7	mov    rcx,r11
112aa	mov    DWORD PTR [rbp-0x78],0x310030
112b1	mov    DWORD PTR [rbp-0x74],0x330032
112b8	mov    DWORD PTR [rbp-0x70],0x350034
112bf	mov    DWORD PTR [rbp-0x6c],0x370036
112c6	mov    DWORD PTR [rbp-0x68],0x390038
112cd	mov    DWORD PTR [rbp-0x64],0x620061
112d4	mov    DWORD PTR [rbp-0x60],0x640063
112db	mov    DWORD PTR [rbp-0x5c],0x660065
112e2	mov    WORD PTR [rbp-0x58],r13w
112e7	mov    rax,r11
112ea	shr    rax,0x4
112ee	movzx  eax,WORD PTR [rbp+rax*2-0x78]
112f3	mov    WORD PTR [rbp+0xa60],ax
112fa	and    ecx,0xf
112fd	movzx  eax,WORD PTR [rbp+rcx*2-0x78]
11302	mov    WORD PTR [rbp+0xa62],ax
11309	mov    rax,rbx
1130c	shr    rax,0x4
11310	movzx  eax,WORD PTR [rbp+rax*2-0x78]
11315	mov    WORD PTR [rbp+0xa64],ax
1131c	and    edx,0xf
1131f	movzx  eax,WORD PTR [rbp+rdx*2-0x78]
11324	mov    WORD PTR [rbp+0xa66],ax
1132b	mov    rax,rdi
1132e	shr    rax,0x4
11332	movzx  eax,WORD PTR [rbp+rax*2-0x78]
11337	mov    WORD PTR [rbp+0xa68],ax
1133e	and    edi,0xf
11341	movzx  eax,WORD PTR [rbp+rdi*2-0x78]
11346	mov    WORD PTR [rbp+0xa6a],ax
1134d	mov    rax,r8
11350	shr    rax,0x4
11354	movzx  eax,WORD PTR [rbp+rax*2-0x78]
11359	mov    WORD PTR [rbp+0xa6c],ax
11360	and    r8d,0xf
11364	movzx  eax,WORD PTR [rbp+r8*2-0x78]
1136a	mov    WORD PTR [rbp+0xa6e],ax
11371	movzx  ecx,BYTE PTR [r10+0x4]
11376	mov    eax,ecx
11378	shr    rax,0x4
1137c	movzx  eax,WORD PTR [rbp+rax*2-0x78]
11381	mov    WORD PTR [rbp+0xa70],ax
11388	and    ecx,0xf
1138b	movzx  eax,WORD PTR [rbp+rcx*2-0x78]
11390	mov    WORD PTR [rbp+0xa72],ax
11397	movzx  ecx,BYTE PTR [r10+0x5]
1139c	mov    eax,ecx
1139e	shr    rax,0x4
113a2	movzx  eax,WORD PTR [rbp+rax*2-0x78]
113a7	mov    WORD PTR [rbp+0xa74],ax
113ae	and    ecx,0xf
113b1	movzx  eax,WORD PTR [rbp+rcx*2-0x78]
113b6	mov    WORD PTR [rbp+0xa76],ax
113bd	movzx  ecx,BYTE PTR [r10+0x6]
113c2	mov    eax,ecx
113c4	shr    rax,0x4
113c8	movzx  eax,WORD PTR [rbp+rax*2-0x78]
113cd	mov    WORD PTR [rbp+0xa78],ax
113d4	and    ecx,0xf
113d7	movzx  eax,WORD PTR [rbp+rcx*2-0x78]
113dc	mov    WORD PTR [rbp+0xa7a],ax
113e3	movzx  ecx,BYTE PTR [r10+0x7]
113e8	mov    eax,ecx
113ea	shr    rax,0x4
113ee	movzx  eax,WORD PTR [rbp+rax*2-0x78]
113f3	mov    WORD PTR [rbp+0xa7c],ax
113fa	and    ecx,0xf
113fd	movzx  eax,WORD PTR [rbp+rcx*2-0x78]
11402	mov    WORD PTR [rbp+0xa7e],ax
11409	movzx  ecx,BYTE PTR [r10+0x8]
1140e	mov    eax,ecx
11410	shr    rax,0x4
11414	movzx  eax,WORD PTR [rbp+rax*2-0x78]
11419	mov    WORD PTR [rbp+0xa80],ax
11420	and    ecx,0xf
11423	movzx  eax,WORD PTR [rbp+rcx*2-0x78]
11428	mov    WORD PTR [rbp+0xa82],ax
1142f	movzx  ecx,BYTE PTR [r10+0x9]
11434	mov    eax,ecx
11436	shr    rax,0x4
1143a	movzx  eax,WORD PTR [rbp+rax*2-0x78]
1143f	mov    WORD PTR [rbp+0xa84],ax
11446	and    ecx,0xf
11449	movzx  eax,WORD PTR [rbp+rcx*2-0x78]
1144e	mov    WORD PTR [rbp+0xa86],ax
11455	movzx  ecx,BYTE PTR [r10+0xa]
1145a	mov    eax,ecx
1145c	shr    rax,0x4
11460	movzx  eax,WORD PTR [rbp+rax*2-0x78]
11465	mov    WORD PTR [rbp+0xa88],ax
1146c	and    ecx,0xf
1146f	movzx  eax,WORD PTR [rbp+rcx*2-0x78]
11474	mov    WORD PTR [rbp+0xa8a],ax
1147b	movzx  ecx,BYTE PTR [r10+0xb]
11480	mov    eax,ecx
11482	shr    rax,0x4
11486	movzx  eax,WORD PTR [rbp+rax*2-0x78]
1148b	mov    WORD PTR [rbp+0xa8c],ax
11492	and    ecx,0xf
11495	movzx  eax,WORD PTR [rbp+rcx*2-0x78]
1149a	mov    WORD PTR [rbp+0xa8e],ax
114a1	movzx  ecx,BYTE PTR [r10+0xc]
114a6	mov    eax,ecx
114a8	shr    rax,0x4
114ac	movzx  eax,WORD PTR [rbp+rax*2-0x78]
114b1	mov    WORD PTR [rbp+0xa90],ax
114b8	and    ecx,0xf
114bb	movzx  eax,WORD PTR [rbp+rcx*2-0x78]
114c0	mov    WORD PTR [rbp+0xa92],ax
114c7	movzx  ecx,BYTE PTR [r10+0xd]
114cc	mov    eax,ecx
114ce	shr    rax,0x4
114d2	movzx  eax,WORD PTR [rbp+rax*2-0x78]
114d7	mov    WORD PTR [rbp+0xa94],ax
114de	and    ecx,0xf
114e1	movzx  eax,WORD PTR [rbp+rcx*2-0x78]
114e6	mov    WORD PTR [rbp+0xa96],ax
114ed	movzx  ecx,BYTE PTR [r10+0xe]
114f2	mov    eax,ecx
114f4	shr    rax,0x4
114f8	movzx  eax,WORD PTR [rbp+rax*2-0x78]
114fd	mov    WORD PTR [rbp+0xa98],ax
11504	and    ecx,0xf
11507	movzx  eax,WORD PTR [rbp+rcx*2-0x78]
1150c	mov    WORD PTR [rbp+0xa9a],ax
11513	movzx  ecx,BYTE PTR [r10+0xf]
11518	mov    eax,ecx
1151a	shr    rax,0x4
1151e	movzx  eax,WORD PTR [rbp+rax*2-0x78]
11523	mov    WORD PTR [rbp+0xa9c],ax
1152a	and    ecx,0xf
1152d	movzx  eax,WORD PTR [rbp+rcx*2-0x78]
11532	mov    WORD PTR [rbp+0xa9e],ax
11539	movzx  ecx,BYTE PTR [r10+0x10]
1153e	mov    eax,ecx
11540	shr    rax,0x4
11544	movzx  eax,WORD PTR [rbp+rax*2-0x78]
11549	mov    WORD PTR [rbp+0xaa0],ax
11550	and    ecx,0xf
11553	movzx  eax,WORD PTR [rbp+rcx*2-0x78]
11558	mov    WORD PTR [rbp+0xaa2],ax
1155f	movzx  ecx,BYTE PTR [r10+0x11]
11564	mov    eax,ecx
11566	shr    rax,0x4
1156a	movzx  eax,WORD PTR [rbp+rax*2-0x78]
1156f	mov    WORD PTR [rbp+0xaa4],ax
11576	and    ecx,0xf
11579	movzx  eax,WORD PTR [rbp+rcx*2-0x78]
1157e	mov    WORD PTR [rbp+0xaa6],ax
11585	movzx  ecx,BYTE PTR [r10+0x12]
1158a	mov    eax,ecx
1158c	shr    rax,0x4
11590	movzx  eax,WORD PTR [rbp+rax*2-0x78]
11595	mov    WORD PTR [rbp+0xaa8],ax
1159c	and    ecx,0xf
1159f	movzx  eax,WORD PTR [rbp+rcx*2-0x78]
115a4	mov    WORD PTR [rbp+0xaaa],ax
115ab	movzx  ecx,BYTE PTR [r10+0x13]
115b0	mov    eax,ecx
115b2	shr    rax,0x4
115b6	movzx  eax,WORD PTR [rbp+rax*2-0x78]
115bb	mov    WORD PTR [rbp+0xaac],ax
115c2	and    ecx,0xf
115c5	movzx  eax,WORD PTR [rbp+rcx*2-0x78]
115ca	mov    WORD PTR [rbp+0xaae],ax
115d1	movzx  ecx,BYTE PTR [r10+0x14]
115d6	mov    eax,ecx
115d8	shr    rax,0x4
115dc	movzx  eax,WORD PTR [rbp+rax*2-0x78]
115e1	mov    WORD PTR [rbp+0xab0],ax
115e8	and    ecx,0xf
115eb	movzx  eax,WORD PTR [rbp+rcx*2-0x78]
115f0	mov    WORD PTR [rbp+0xab2],ax
115f7	movzx  ecx,BYTE PTR [r10+0x15]
115fc	mov    eax,ecx
115fe	shr    rax,0x4
11602	movzx  eax,WORD PTR [rbp+rax*2-0x78]
11607	mov    WORD PTR [rbp+0xab4],ax
1160e	and    ecx,0xf
11611	movzx  eax,WORD PTR [rbp+rcx*2-0x78]
11616	mov    WORD PTR [rbp+0xab6],ax
1161d	mov    WORD PTR [rbp+0xab8],r13w
11625	mov    DWORD PTR [rbp-0x78],0x310030
1162c	mov    DWORD PTR [rbp-0x74],0x330032
11633	mov    DWORD PTR [rbp-0x70],0x350034
1163a	mov    DWORD PTR [rbp-0x6c],0x370036
11641	mov    DWORD PTR [rbp-0x68],0x390038
11648	mov    DWORD PTR [rbp-0x64],0x620061
1164f	mov    DWORD PTR [rbp-0x60],0x640063
11656	mov    DWORD PTR [rbp-0x5c],0x660065
1165d	mov    WORD PTR [rbp-0x58],r13w
11662	lea    rdx,[r15-0x10]
11666	mov    WORD PTR [rbp+0x9d0],r13w
1166e	add    rdx,r12
11671	je     0x118ce
11677	movzx  ecx,BYTE PTR [rdx]
1167a	mov    eax,ecx
1167c	shr    rax,0x4
11680	movzx  eax,WORD PTR [rbp+rax*2-0x78]
11685	mov    WORD PTR [rbp+0x9d0],ax
1168c	and    ecx,0xf
1168f	movzx  eax,WORD PTR [rbp+rcx*2-0x78]
11694	mov    WORD PTR [rbp+0x9d2],ax
1169b	movzx  ecx,BYTE PTR [rdx+0x1]
1169f	mov    eax,ecx
116a1	shr    rax,0x4
116a5	movzx  eax,WORD PTR [rbp+rax*2-0x78]
116aa	mov    WORD PTR [rbp+0x9d4],ax
116b1	and    ecx,0xf
116b4	movzx  eax,WORD PTR [rbp+rcx*2-0x78]
116b9	mov    WORD PTR [rbp+0x9d6],ax
116c0	movzx  ecx,BYTE PTR [rdx+0x2]
116c4	mov    eax,ecx
116c6	shr    rax,0x4
116ca	movzx  eax,WORD PTR [rbp+rax*2-0x78]
116cf	mov    WORD PTR [rbp+0x9d8],ax
116d6	and    ecx,0xf
116d9	movzx  eax,WORD PTR [rbp+rcx*2-0x78]
116de	mov    WORD PTR [rbp+0x9da],ax
116e5	movzx  ecx,BYTE PTR [rdx+0x3]
116e9	mov    eax,ecx
116eb	shr    rax,0x4
116ef	movzx  eax,WORD PTR [rbp+rax*2-0x78]
116f4	mov    WORD PTR [rbp+0x9dc],ax
116fb	and    ecx,0xf
116fe	movzx  eax,WORD PTR [rbp+rcx*2-0x78]
11703	mov    WORD PTR [rbp+0x9de],ax
1170a	movzx  ecx,BYTE PTR [rdx+0x4]
1170e	mov    eax,ecx
11710	shr    rax,0x4
11714	movzx  eax,WORD PTR [rbp+rax*2-0x78]
11719	mov    WORD PTR [rbp+0x9e0],ax
11720	and    ecx,0xf
11723	movzx  eax,WORD PTR [rbp+rcx*2-0x78]
11728	mov    WORD PTR [rbp+0x9e2],ax
1172f	movzx  ecx,BYTE PTR [rdx+0x5]
11733	mov    eax,ecx
11735	shr    rax,0x4
11739	movzx  eax,WORD PTR [rbp+rax*2-0x78]
1173e	mov    WORD PTR [rbp+0x9e4],ax
11745	and    ecx,0xf
11748	movzx  eax,WORD PTR [rbp+rcx*2-0x78]
1174d	mov    WORD PTR [rbp+0x9e6],ax
11754	movzx  ecx,BYTE PTR [rdx+0x6]
11758	mov    eax,ecx
1175a	shr    rax,0x4
1175e	movzx  eax,WORD PTR [rbp+rax*2-0x78]
11763	mov    WORD PTR [rbp+0x9e8],ax
1176a	and    ecx,0xf
1176d	movzx  eax,WORD PTR [rbp+rcx*2-0x78]
11772	mov    WORD PTR [rbp+0x9ea],ax
11779	movzx  ecx,BYTE PTR [rdx+0x7]
1177d	mov    eax,ecx
1177f	shr    rax,0x4
11783	movzx  eax,WORD PTR [rbp+rax*2-0x78]
11788	mov    WORD PTR [rbp+0x9ec],ax
1178f	and    ecx,0xf
11792	movzx  eax,WORD PTR [rbp+rcx*2-0x78]
11797	mov    WORD PTR [rbp+0x9ee],ax
1179e	movzx  ecx,BYTE PTR [rdx+0x8]
117a2	mov    eax,ecx
117a4	shr    rax,0x4
117a8	movzx  eax,WORD PTR [rbp+rax*2-0x78]
117ad	mov    WORD PTR [rbp+0x9f0],ax
117b4	and    ecx,0xf
117b7	movzx  eax,WORD PTR [rbp+rcx*2-0x78]
117bc	mov    WORD PTR [rbp+0x9f2],ax
117c3	movzx  ecx,BYTE PTR [rdx+0x9]
117c7	mov    eax,ecx
117c9	shr    rax,0x4
117cd	movzx  eax,WORD PTR [rbp+rax*2-0x78]
117d2	mov    WORD PTR [rbp+0x9f4],ax
117d9	and    ecx,0xf
117dc	movzx  eax,WORD PTR [rbp+rcx*2-0x78]
117e1	mov    WORD PTR [rbp+0x9f6],ax
117e8	movzx  ecx,BYTE PTR [rdx+0xa]
117ec	mov    eax,ecx
117ee	shr    rax,0x4
117f2	movzx  eax,WORD PTR [rbp+rax*2-0x78]
117f7	mov    WORD PTR [rbp+0x9f8],ax
117fe	and    ecx,0xf
11801	movzx  eax,WORD PTR [rbp+rcx*2-0x78]
11806	mov    WORD PTR [rbp+0x9fa],ax
1180d	movzx  ecx,BYTE PTR [rdx+0xb]
11811	mov    eax,ecx
11813	shr    rax,0x4
11817	movzx  eax,WORD PTR [rbp+rax*2-0x78]
1181c	mov    WORD PTR [rbp+0x9fc],ax
11823	and    ecx,0xf
11826	movzx  eax,WORD PTR [rbp+rcx*2-0x78]
1182b	mov    WORD PTR [rbp+0x9fe],ax
11832	movzx  ecx,BYTE PTR [rdx+0xc]
11836	mov    eax,ecx
11838	shr    rax,0x4
1183c	movzx  eax,WORD PTR [rbp+rax*2-0x78]
11841	mov    WORD PTR [rbp+0xa00],ax
11848	and    ecx,0xf
1184b	movzx  eax,WORD PTR [rbp+rcx*2-0x78]
11850	mov    WORD PTR [rbp+0xa02],ax
11857	movzx  ecx,BYTE PTR [rdx+0xd]
1185b	mov    eax,ecx
1185d	shr    rax,0x4
11861	movzx  eax,WORD PTR [rbp+rax*2-0x78]
11866	mov    WORD PTR [rbp+0xa04],ax
1186d	and    ecx,0xf
11870	movzx  eax,WORD PTR [rbp+rcx*2-0x78]
11875	mov    WORD PTR [rbp+0xa06],ax
1187c	movzx  ecx,BYTE PTR [rdx+0xe]
11880	mov    eax,ecx
11882	shr    rax,0x4
11886	movzx  eax,WORD PTR [rbp+rax*2-0x78]
1188b	mov    WORD PTR [rbp+0xa08],ax
11892	and    ecx,0xf
11895	movzx  eax,WORD PTR [rbp+rcx*2-0x78]
1189a	mov    WORD PTR [rbp+0xa0a],ax
118a1	movzx  ecx,BYTE PTR [rdx+0xf]
118a5	mov    eax,ecx
118a7	shr    rax,0x4
118ab	movzx  eax,WORD PTR [rbp+rax*2-0x78]
118b0	mov    WORD PTR [rbp+0xa0c],ax
118b7	and    ecx,0xf
118ba	movzx  eax,WORD PTR [rbp+rcx*2-0x78]
118bf	mov    WORD PTR [rbp+0xa0e],ax
118c6	mov    WORD PTR [rbp+0xa10],r13w
118ce	movzx  edi,BYTE PTR [rbp-0x50]
118d2	mov    DWORD PTR [rbp+0xc],edi
118d5	movzx  eax,r9b
118d9	mov    DWORD PTR [rbp+0x8],eax
118dc	lea    r8d,[rax+0x1]
118e0	mov    DWORD PTR [rbp-0x8],r8d
118e4	lea    rcx,[rip+0x46e35]        # 0x58720   ; "W:bootstrap"
118eb	lea    rax,[rip+0x46e46]        # 0x58738   ; "W:session"
118f2	test   r9b,r9b
118f5	cmove  rax,rcx
118f9	mov    QWORD PTR [rbp+0x60],rax
118fd	lea    rcx,[rip+0x46e44]        # 0x58748   ; "W:slot0"
11904	lea    rax,[rip+0x46e4d]        # 0x58758   ; "W:slot1"
1190b	cmove  rax,rcx
1190f	mov    QWORD PTR [rbp+0x58],rax
11913	lea    rcx,[rip+0x46e4e]        # 0x58768   ; "W:fixed"
1191a	lea    rax,[rip+0x46e57]        # 0x58778   ; "W:session_H_double_H"
11921	cmove  rax,rcx
11925	mov    QWORD PTR [rbp+0x50],rax
11929	mov    r14d,0x9
1192f	je     0x11b43
11935	movzx  eax,BYTE PTR [rip+0x94c34]        # 0xa6570
1193c	test   al,al
1193e	jne    0x11b1e
11944	mov    ebx,0x1
11949	mov    eax,ebx
1194b	xchg   BYTE PTR [rip+0x94bef],al        # 0xa6540
11951	mov    DWORD PTR [rbp-0x30],r13d
11955	test   al,al
11957	jne    0x11b1a
1195d	movups xmm0,XMMWORD PTR [rip+0x4805c]        # 0x599c0
11964	movups XMMWORD PTR [rbp+0x28],xmm0
11968	movups xmm1,XMMWORD PTR [rip+0x48061]        # 0x599d0
1196f	movups XMMWORD PTR [rbp+0x38],xmm1
11973	movzx  eax,WORD PTR [rip+0x48066]        # 0x599e0
1197a	mov    WORD PTR [rbp+0x48],ax
1197e	mov    BYTE PTR [rbp+0x4a],0x94
11982	xorps  xmm0,xmm0
11985	xor    eax,eax
11987	movups XMMWORD PTR [rbp-0x78],xmm0
1198b	movups XMMWORD PTR [rbp-0x68],xmm0
1198f	mov    WORD PTR [rbp-0x58],ax
11993	mov    rdi,r13
11996	data16 nop WORD PTR [rax+rax*1+0x0]
119a0	mov    rdx,rdi
119a3	shr    rdx,0x3
119a7	movzx  eax,dil
119ab	imul   ecx,eax,0xd   ; DEC "session packet before H delivered"
119ae	add    dl,0x94
119b1	add    dl,cl
119b3	xor    dl,BYTE PTR [rbp+rdi*1+0x28]
119b7	mov    BYTE PTR [rbp-0x80],dl
119ba	movzx  eax,BYTE PTR [rbp-0x80]
119be	mov    BYTE PTR [rbp+rdi*1-0x78],al
119c2	inc    rdi
119c5	cmp    rdi,0x22
119c9	jb     0x119a0
119cb	mov    eax,DWORD PTR [rip+0x472bf]        # 0x58c90   ; "A:P"91j6"
119d1	mov    DWORD PTR [rbp-0x48],eax
119d4	movzx  eax,BYTE PTR [rip+0x472b9]        # 0x58c94
119db	mov    BYTE PTR [rbp-0x44],al
119de	mov    BYTE PTR [rbp-0x43],0x36
119e2	xor    eax,eax
119e4	mov    DWORD PTR [rbp-0x38],eax
119e7	mov    BYTE PTR [rbp-0x34],al
119ea	mov    rdi,r13
119ed	nop    DWORD PTR [rax]
119f0	mov    rdx,rdi
119f3	shr    rdx,0x3
119f7	movzx  eax,dil
119fb	imul   ecx,eax,0xd   ; DEC "fail"
119fe	add    dl,0x36
11a01	add    dl,cl
11a03	xor    dl,BYTE PTR [rbp+rdi*1-0x48]
11a07	mov    BYTE PTR [rbp-0x80],dl
11a0a	movzx  eax,BYTE PTR [rbp-0x80]
11a0e	mov    BYTE PTR [rbp+rdi*1-0x38],al
11a12	inc    rdi
11a15	cmp    rdi,0x5
11a19	jb     0x119f0
11a1b	movsd  xmm0,QWORD PTR [rip+0x48d3d]        # 0x5a760
11a23	movsd  QWORD PTR [rbp-0x48],xmm0
11a28	movzx  eax,BYTE PTR [rip+0x48d39]        # 0x5a768
11a2f	mov    BYTE PTR [rbp-0x40],al
11a32	mov    BYTE PTR [rbp-0x3f],0x36
11a36	xor    eax,eax
11a38	mov    QWORD PTR [rbp-0x18],rax
11a3c	mov    BYTE PTR [rbp-0x10],al
11a3f	mov    rdi,r13
11a42	mov    rdx,rdi
11a45	shr    rdx,0x3
11a49	movzx  eax,dil
11a4d	imul   ecx,eax,0xd
11a50	add    dl,0x36
11a53	add    dl,cl
11a55	xor    dl,BYTE PTR [rbp+rdi*1-0x48]
11a59	mov    BYTE PTR [rbp-0x80],dl
11a5c	movzx  eax,BYTE PTR [rbp-0x80]
11a60	mov    BYTE PTR [rbp+rdi*1-0x18],al
11a64	inc    rdi
11a67	cmp    rdi,r14
11a6a	jb     0x11a42
11a6c	mov    rax,QWORD PTR [rip+0x489fd]        # 0x5a470
11a73	mov    DWORD PTR [rbp-0x28],eax
11a76	movzx  eax,WORD PTR [rip+0x489f7]        # 0x5a474
11a7d	mov    WORD PTR [rbp-0x24],ax
11a81	movzx  eax,BYTE PTR [rip+0x489ee]        # 0x5a476
11a88	mov    BYTE PTR [rbp-0x22],al
11a8b	mov    BYTE PTR [rbp-0x21],0x36
11a8f	xor    eax,eax
11a91	mov    DWORD PTR [rbp-0x48],eax
11a94	mov    WORD PTR [rbp-0x44],ax
11a98	mov    BYTE PTR [rbp-0x42],al
11a9b	mov    rdi,r13
11a9e	xchg   ax,ax
11aa0	mov    rdx,rdi
11aa3	shr    rdx,0x3
11aa7	movzx  eax,dil
11aab	imul   ecx,eax,0xd   ; DEC "packer"
11aae	add    dl,0x36
11ab1	add    dl,cl
11ab3	xor    dl,BYTE PTR [rbp+rdi*1-0x28]
11ab7	mov    BYTE PTR [rbp-0x80],dl
11aba	movzx  eax,BYTE PTR [rbp-0x80]
11abe	mov    BYTE PTR [rbp+rdi*1-0x48],al
11ac2	inc    rdi
11ac5	cmp    rdi,0x7
11ac9	jb     0x11aa0
11acb	lea    r9,[rbp-0x78]
11acf	lea    r8,[rbp-0x38]
11ad3	lea    rdx,[rbp-0x18]
11ad7	lea    rcx,[rbp-0x48]
11adb	call   0x29d90
11ae0	lea    rdi,[rbp-0x48]
11ae4	xor    eax,eax
11ae6	mov    ecx,0x7
11aeb	rep stos BYTE PTR [rdi],al
11aed	lea    rdi,[rbp-0x18]
11af1	mov    rcx,r14
11af4	rep stos BYTE PTR [rdi],al
11af6	lea    rdi,[rbp-0x38]
11afa	mov    ecx,0x5
11aff	rep stos BYTE PTR [rdi],al
11b01	lea    rdi,[rbp-0x78]
11b05	mov    ecx,0x22
11b0a	rep stos BYTE PTR [rdi],al
11b0c	mov    r10,QWORD PTR [rbp+0x0]
11b10	movzx  edi,BYTE PTR [rbp-0x50]
11b14	mov    r8d,DWORD PTR [rbp-0x8]
11b18	jmp    0x11b2d
11b1a	xor    al,al
11b1c	jmp    0x11b2d
11b1e	test   r9b,r9b
11b21	je     0x11b43
11b23	mov    al,0x1
11b25	mov    ebx,0x1
11b2a	mov    DWORD PTR [rbp-0x30],ebx
11b2d	lea    rcx,[rip+0x46c6c]        # 0x587a0   ; "W:installed_redacted"
11b34	lea    r13,[rip+0x46c8d]        # 0x587c8   ; "W:unavailable"
11b3b	test   al,al
11b3d	cmovne r13,rcx
11b41	jmp    0x11b52
11b43	lea    r13,[rip+0x47b16]        # 0x59660   ; "W:70748db6439e4e4c36ef91d43d3745734a5142b7b93bebe10ba367a1eac7353a"
11b4a	mov    ebx,0x1
11b4f	mov    DWORD PTR [rbp-0x30],ebx
11b52	mov    edx,DWORD PTR [r10]
11b55	mov    DWORD PTR [rbp-0x78],0x310030
11b5c	mov    DWORD PTR [rbp-0x74],0x330032
11b63	mov    DWORD PTR [rbp-0x70],0x350034
11b6a	mov    DWORD PTR [rbp-0x6c],0x370036
11b71	mov    DWORD PTR [rbp-0x68],0x390038
11b78	mov    DWORD PTR [rbp-0x64],0x620061
11b7f	mov    DWORD PTR [rbp-0x60],0x640063
11b86	mov    DWORD PTR [rbp-0x5c],0x660065
11b8d	xor    r9d,r9d
11b90	mov    WORD PTR [rbp-0x58],r9w
11b95	movzx  ecx,dl
11b98	mov    eax,ecx
11b9a	shr    rax,0x4
11b9e	movzx  eax,WORD PTR [rbp+rax*2-0x78]
11ba3	mov    WORD PTR [rbp+0xa20],ax
11baa	and    ecx,0xf
11bad	movzx  eax,WORD PTR [rbp+rcx*2-0x78]
11bb2	mov    WORD PTR [rbp+0xa22],ax
11bb9	mov    eax,edx
11bbb	shr    eax,0x8
11bbe	movzx  ecx,al
11bc1	mov    eax,ecx
11bc3	shr    rax,0x4
11bc7	movzx  eax,WORD PTR [rbp+rax*2-0x78]
11bcc	mov    WORD PTR [rbp+0xa24],ax
11bd3	and    ecx,0xf
11bd6	movzx  eax,WORD PTR [rbp+rcx*2-0x78]
11bdb	mov    WORD PTR [rbp+0xa26],ax
11be2	mov    eax,edx
11be4	shr    eax,0x10
11be7	movzx  ecx,al
11bea	mov    eax,ecx
11bec	shr    rax,0x4
11bf0	movzx  eax,WORD PTR [rbp+rax*2-0x78]
11bf5	mov    WORD PTR [rbp+0xa28],ax
11bfc	and    ecx,0xf
11bff	movzx  eax,WORD PTR [rbp+rcx*2-0x78]
11c04	mov    WORD PTR [rbp+0xa2a],ax
11c0b	shr    edx,0x18
11c0e	mov    ecx,edx
11c10	mov    eax,edx
11c12	shr    rax,0x4
11c16	movzx  eax,WORD PTR [rbp+rax*2-0x78]
11c1b	mov    WORD PTR [rbp+0xa2c],ax
11c22	and    ecx,0xf
11c25	movzx  eax,WORD PTR [rbp+rcx*2-0x78]
11c2a	mov    WORD PTR [rbp+0xa2e],ax
11c31	mov    DWORD PTR [rbp+0xa30],0x300030
11c3b	mov    DWORD PTR [rbp+0xa34],0x300030
11c45	mov    DWORD PTR [rbp+0xa38],0x300030
11c4f	mov    DWORD PTR [rbp+0xa3c],0x300030
11c59	mov    ecx,r8d
11c5c	mov    eax,r8d
11c5f	shr    rax,0x4
11c63	movzx  eax,WORD PTR [rbp+rax*2-0x78]
11c68	mov    WORD PTR [rbp+0xa40],ax
11c6f	movzx  eax,WORD PTR [rbp+rcx*2-0x78]
11c74	mov    WORD PTR [rbp+0xa42],ax
11c7b	mov    DWORD PTR [rbp+0xa44],0x300030
11c85	mov    DWORD PTR [rbp+0xa48],0x300030
11c8f	mov    DWORD PTR [rbp+0xa4c],0x300030
11c99	mov    WORD PTR [rbp+0xa50],r9w
11ca1	mov    eax,r9d
11ca4	cmp    dil,0x1
11ca8	setbe  al
11cab	mov    DWORD PTR [rbp-0x48],eax
11cae	movzx  eax,BYTE PTR [r12]
11cb3	mov    DWORD PTR [rbp-0x38],eax
11cb6	mov    edx,r9d
11cb9	mov    edi,0xd3
11cbe	ja     0x11d3e
11cc0	movsd  xmm0,QWORD PTR [rip+0x47560]        # 0x59228
11cc8	movsd  QWORD PTR [rbp-0x28],xmm0
11ccd	mov    eax,DWORD PTR [rip+0x4755d]        # 0x59230
11cd3	mov    DWORD PTR [rbp-0x20],eax
11cd6	movzx  eax,WORD PTR [rip+0x47557]        # 0x59234
11cdd	mov    WORD PTR [rbp-0x1c],ax
11ce1	mov    WORD PTR [rbp-0x1a],di
11ce5	xor    eax,eax
11ce7	mov    QWORD PTR [rbp-0x18],rax
11ceb	mov    DWORD PTR [rbp-0x10],eax
11cee	mov    WORD PTR [rbp-0xc],ax
11cf2	nop    DWORD PTR [rax+0x0]
11cf6	data16 nop WORD PTR [rax+rax*1+0x0]
11d00	movzx  eax,dx
11d03	imul   ecx,eax,0xd
11d06	mov    rax,rdx
11d09	shr    rax,0x3
11d0d	add    ax,cx
11d10	add    ax,di
11d13	xor    ax,WORD PTR [rbp+rdx*2-0x28]
11d18	mov    WORD PTR [rbp-0x80],ax
11d1c	movzx  eax,WORD PTR [rbp-0x80]
11d20	mov    WORD PTR [rbp+rdx*2-0x18],ax
11d25	inc    rdx
11d28	cmp    rdx,0x7
11d2c	jb     0x11d00
11d2e	lea    rdi,[rbp-0x18]
11d32	mov    DWORD PTR [rbp+0x0],r9d
11d36	mov    DWORD PTR [rbp-0x28],ebx
11d39	jmp    0x11dbe
11d3e	movups xmm0,XMMWORD PTR [rip+0x47e83]        # 0x59bc8
11d45	movups XMMWORD PTR [rbp-0x78],xmm0
11d49	movups xmm1,XMMWORD PTR [rip+0x47e88]        # 0x59bd8
11d50	movups XMMWORD PTR [rbp-0x68],xmm1
11d54	movsd  xmm0,QWORD PTR [rip+0x47e8a]        # 0x59be6
11d5c	movsd  QWORD PTR [rbp-0x5a],xmm0
11d61	mov    WORD PTR [rbp-0x52],0xd3
11d67	xorps  xmm0,xmm0
11d6a	xor    eax,eax
11d6c	movups XMMWORD PTR [rbp+0x28],xmm0
11d70	movups XMMWORD PTR [rbp+0x38],xmm0
11d74	mov    QWORD PTR [rbp+0x46],rax
11d78	nop    DWORD PTR [rax+rax*1+0x0]
11d80	movzx  eax,dx
11d83	imul   ecx,eax,0xd
11d86	mov    rax,rdx
11d89	shr    rax,0x3
11d8d	add    ax,cx
11d90	add    ax,di
11d93	xor    ax,WORD PTR [rbp+rdx*2-0x78]
11d98	mov    WORD PTR [rbp-0x80],ax
11d9c	movzx  eax,WORD PTR [rbp-0x80]
11da0	mov    WORD PTR [rbp+rdx*2+0x28],ax
11da5	inc    rdx
11da8	cmp    rdx,0x13
11dac	jb     0x11d80
11dae	lea    rdi,[rbp+0x28]
11db2	mov    ebx,0x2
11db7	mov    DWORD PTR [rbp+0x0],ebx
11dba	mov    DWORD PTR [rbp-0x28],r9d
11dbe	lea    rcx,[rbp+0x70]
11dc2	lea    rax,[rip+0x48a17]        # 0x5a7e0
11dc9	nop    DWORD PTR [rax+0x0]
11dd0	movups xmm0,XMMWORD PTR [rax]
11dd3	movups XMMWORD PTR [rcx],xmm0
11dd6	movups xmm1,XMMWORD PTR [rax+0x10]
11dda	movups XMMWORD PTR [rcx+0x10],xmm1
11dde	movups xmm0,XMMWORD PTR [rax+0x20]
11de2	movups XMMWORD PTR [rcx+0x20],xmm0
11de6	movups xmm1,XMMWORD PTR [rax+0x30]
11dea	movups XMMWORD PTR [rcx+0x30],xmm1
11dee	movups xmm0,XMMWORD PTR [rax+0x40]
11df2	movups XMMWORD PTR [rcx+0x40],xmm0
11df6	movups xmm1,XMMWORD PTR [rax+0x50]
11dfa	movups XMMWORD PTR [rcx+0x50],xmm1
11dfe	movups xmm0,XMMWORD PTR [rax+0x60]
11e02	movups XMMWORD PTR [rcx+0x60],xmm0
11e06	movups xmm1,XMMWORD PTR [rax+0x70]
11e0a	movups XMMWORD PTR [rcx+0x70],xmm1
11e0e	lea    rcx,[rcx+0x80]
11e15	lea    rax,[rax+0x80]
11e1c	sub    r14,0x1
11e20	jne    0x11dd0
11e22	movups xmm0,XMMWORD PTR [rax]
11e25	movups XMMWORD PTR [rcx],xmm0
11e28	mov    rax,QWORD PTR [rax+0x10]
11e2c	mov    QWORD PTR [rcx+0x10],rax
11e30	xor    edx,edx
11e32	mov    r8d,0x496
11e38	lea    rcx,[rbp+0x510]
11e3f	call   0x478c0
11e44	xor    edx,edx
11e46	mov    r8d,0xbd
11e4c	nop    DWORD PTR [rax+0x0]
11e50	movzx  eax,dx
11e53	imul   ecx,eax,0xd
11e56	mov    rax,rdx
11e59	shr    rax,0x3
11e5d	add    ax,cx
11e60	add    ax,r8w
11e64	xor    ax,WORD PTR [rbp+rdx*2+0x70]
11e69	mov    WORD PTR [rbp-0x80],ax
11e6d	movzx  eax,WORD PTR [rbp-0x80]
11e71	mov    WORD PTR [rbp+rdx*2+0x510],ax
11e79	inc    rdx
11e7c	cmp    rdx,0x24b
11e83	jb     0x11e50
11e85	lea    rax,[rbp+0x9d0]
11e8c	mov    QWORD PTR [rsp+0xe0],rax
11e94	lea    rax,[r15-0x10]
11e98	mov    QWORD PTR [rsp+0xd8],rax
11ea0	lea    rax,[rbp+0xa60]
11ea7	mov    QWORD PTR [rsp+0xd0],rax
11eaf	lea    rax,[rbp+0xa20]
11eb6	mov    QWORD PTR [rsp+0xc8],rax
11ebe	mov    eax,DWORD PTR [rbp-0x8]
11ec1	mov    DWORD PTR [rsp+0xc0],eax
11ec8	mov    QWORD PTR [rsp+0xb8],r13
11ed0	mov    eax,DWORD PTR [rbp-0x30]
11ed3	mov    DWORD PTR [rsp+0xb0],eax
11eda	mov    rax,QWORD PTR [rbp+0x50]
11ede	mov    QWORD PTR [rsp+0xa8],rax
11ee6	mov    rax,QWORD PTR [rbp+0x58]
11eea	mov    QWORD PTR [rsp+0xa0],rax
11ef2	mov    rax,QWORD PTR [rbp+0x60]
11ef6	mov    QWORD PTR [rsp+0x98],rax
11efe	mov    eax,DWORD PTR [rbp+0x8]
11f01	mov    DWORD PTR [rsp+0x90],eax
11f08	movzx  ecx,BYTE PTR [rbp-0x4c]
11f0c	mov    DWORD PTR [rsp+0x88],ecx
11f13	lea    rax,[r15-0x11]
11f17	mov    QWORD PTR [rsp+0x80],rax
11f1f	mov    eax,DWORD PTR [rbp-0x48]
11f22	mov    DWORD PTR [rsp+0x78],eax
11f26	mov    eax,DWORD PTR [rbp+0xc]
11f29	mov    DWORD PTR [rsp+0x70],eax
11f2d	lea    rax,[r15-0x12]
11f31	mov    QWORD PTR [rsp+0x68],rax
11f36	lea    rax,[rbp+0x9b0]
11f3d	mov    QWORD PTR [rsp+0x60],rax
11f42	mov    DWORD PTR [rsp+0x58],esi
11f46	lea    rax,[r15-0x16]
11f4a	mov    QWORD PTR [rsp+0x50],rax
11f4f	lea    rax,[r15-0x17]
11f53	mov    QWORD PTR [rsp+0x48],rax
11f58	mov    eax,DWORD PTR [rbp-0x38]
11f5b	mov    DWORD PTR [rsp+0x40],eax
11f5f	mov    QWORD PTR [rsp+0x38],r15
11f64	mov    eax,DWORD PTR [rbp+0xb40]
11f6a	mov    DWORD PTR [rsp+0x30],eax
11f6e	mov    QWORD PTR [rsp+0x28],r12
11f73	mov    rsi,QWORD PTR [rbp+0x10]
11f77	mov    QWORD PTR [rsp+0x20],rsi
11f7c	mov    r9,QWORD PTR [rbp+0x18]
11f80	mov    r8,QWORD PTR [rbp+0x20]
11f84	mov    rdx,rdi
11f87	lea    rcx,[rbp+0x510]
11f8e	call   0x8a20
11f93	lea    rdi,[rbp+0x510]
11f9a	xor    eax,eax
11f9c	mov    ecx,0x496
11fa1	rep stos BYTE PTR [rdi],al
11fa3	cmp    DWORD PTR [rbp+0x0],eax
11fa6	je     0x11fb6
11fa8	lea    rdi,[rbp+0x28]
11fac	mov    ecx,0x26
11fb1	rep stos BYTE PTR [rdi],al
11fb3	mov    ebx,DWORD PTR [rbp-0x28]
11fb6	test   bl,0x1
11fb9	je     0x1211b
11fbf	lea    rdi,[rbp-0x18]
11fc3	mov    ecx,0xe
11fc8	jmp    0x12117
11fcd	lea    rax,[rip+0x46434]        # 0x58408   ; "W:not_byte_aligned"
11fd4	lea    r14,[rip+0x46455]        # 0x58430   ; "W:short_packet"
11fdb	test   esi,esi
11fdd	cmovne r14,rax
11fe1	jmp    0x11fea
11fe3	lea    r14,[rip+0x46406]        # 0x583f0   ; "W:null_data"
11fea	lea    rcx,[rbp+0x510]
11ff1	lea    rax,[rip+0x481a8]        # 0x5a1a0
11ff8	mov    ebx,0x2
11ffd	nop    DWORD PTR [rax]
12000	movups xmm0,XMMWORD PTR [rax]
12003	movups XMMWORD PTR [rcx],xmm0
12006	movups xmm1,XMMWORD PTR [rax+0x10]
1200a	movups XMMWORD PTR [rcx+0x10],xmm1
1200e	movups xmm0,XMMWORD PTR [rax+0x20]
12012	movups XMMWORD PTR [rcx+0x20],xmm0
12016	movups xmm1,XMMWORD PTR [rax+0x30]
1201a	movups XMMWORD PTR [rcx+0x30],xmm1
1201e	movups xmm0,XMMWORD PTR [rax+0x40]
12022	movups XMMWORD PTR [rcx+0x40],xmm0
12026	movups xmm1,XMMWORD PTR [rax+0x50]
1202a	movups XMMWORD PTR [rcx+0x50],xmm1
1202e	movups xmm0,XMMWORD PTR [rax+0x60]
12032	movups XMMWORD PTR [rcx+0x60],xmm0
12036	movups xmm1,XMMWORD PTR [rax+0x70]
1203a	movups XMMWORD PTR [rcx+0x70],xmm1
1203e	lea    rcx,[rcx+0x80]
12045	lea    rax,[rax+0x80]
1204c	sub    rbx,0x1
12050	jne    0x12000
12052	movups xmm0,XMMWORD PTR [rax]
12055	movups XMMWORD PTR [rcx],xmm0
12058	movups xmm1,XMMWORD PTR [rax+0x10]
1205c	movups XMMWORD PTR [rcx+0x10],xmm1
12060	movups xmm0,XMMWORD PTR [rax+0x20]
12064	movups XMMWORD PTR [rcx+0x20],xmm0
12068	movups xmm1,XMMWORD PTR [rax+0x30]
1206c	movups XMMWORD PTR [rcx+0x30],xmm1
12070	movups xmm0,XMMWORD PTR [rax+0x40]
12074	movups XMMWORD PTR [rcx+0x40],xmm0
12078	movups xmm1,XMMWORD PTR [rax+0x50]
1207c	movups XMMWORD PTR [rcx+0x50],xmm1
12080	movups xmm0,XMMWORD PTR [rax+0x5a]
12084	movups XMMWORD PTR [rcx+0x5a],xmm0
12088	xor    edx,edx
1208a	mov    r8d,0x168
12090	lea    rcx,[rbp+0x70]
12094	call   0x478c0
12099	xor    edi,edi
1209b	nop    DWORD PTR [rax+rax*1+0x0]
120a0	movzx  eax,di
120a3	imul   ecx,eax,0xd   ; DEC "mode2_packet status=malformed reason=%ls direction=inbound context=%p guid=0x%016llX packet_index=%llu data=%p unread_bits=%u packet_bytes=%"
120a6	mov    rax,rdi
120a9	shr    rax,0x3
120ad	add    ax,0x54
120b1	add    ax,cx
120b4	xor    ax,WORD PTR [rbp+rdi*2+0x510]
120bc	mov    WORD PTR [rbp-0x4c],ax
120c0	movzx  eax,WORD PTR [rbp-0x4c]
120c4	mov    WORD PTR [rbp+rdi*2+0x70],ax
120c9	inc    rdi
120cc	cmp    rdi,0xb4
120d3	jb     0x120a0
120d5	mov    DWORD PTR [rsp+0x48],esi
120d9	mov    QWORD PTR [rsp+0x40],0x17
120e2	mov    QWORD PTR [rsp+0x38],r15
120e7	mov    DWORD PTR [rsp+0x30],r13d
120ec	mov    QWORD PTR [rsp+0x28],r12
120f1	mov    rsi,QWORD PTR [rbp+0x10]
120f5	mov    QWORD PTR [rsp+0x20],rsi
120fa	mov    r9,QWORD PTR [rbp+0x18]
120fe	mov    r8,QWORD PTR [rbp+0x20]
12102	mov    rdx,r14
12105	lea    rcx,[rbp+0x70]
12109	call   0x8a20
1210e	lea    rdi,[rbp+0x70]
12112	mov    ecx,0x168
12117	xor    eax,eax
12119	rep stos BYTE PTR [rdi],al
1211b	mov    r9,r15
1211e	mov    r8,r12
12121	mov    rdx,rsi
12124	lea    rcx,[rip+0x465cd]        # 0x586f8   ; "W:mode2_packet_hex"
1212b	call   0x10b50
12130	nop
12131	mov    rcx,QWORD PTR [rbp+0xac0]
12138	xor    rcx,rsp
1213b	call   0x2e460
12140	add    rsp,0xc48
12147	pop    r15
12149	pop    r14
1214b	pop    r13
1214d	pop    r12
1214f	pop    rdi
12150	pop    rsi
12151	pop    rbx
12152	pop    rbp
12153	ret
12154	int3
12155	int3
12156	int3
12157	int3
12158	int3
12159	int3
1215a	int3
1215b	int3
1215c	int3
1215d	int3
1215e	int3
1215f	int3
