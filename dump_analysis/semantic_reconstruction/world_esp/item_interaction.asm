3012f9	cmp    ecx,0x49
3012fc	jne    0x30195b
301302	mov    rcx,QWORD PTR [rbp+0x278]
301309	mov    edx,0x510
30130e	call   0x2dee3c
301313	mov    r8,r10
301316	lea    rdx,[rbp+0x18f8]
30131d	lea    rcx,[rip+0xeefd4]        # 0x3f02f8
301324	movss  xmm8,DWORD PTR [rax]
301329	call   0x2e98f0
30132e	mov    rcx,rax
301331	call   0x2d4d70
301336	test   al,al
301338	je     0x3013d7
30133e	mov    edx,0x90
301343	mov    rcx,r13
301346	call   0x2dee3c
30134b	mov    rsi,QWORD PTR [rax]
30134e	mov    rcx,rsi
301351	call   0x2caf08
301356	test   al,al
301358	je     0x3013d2
30135a	mov    r14d,DWORD PTR [rsi+0x18]
30135e	xor    eax,eax
301360	test   r14d,r14d
301363	jle    0x3013d2
301365	mov    rdx,QWORD PTR [rsi+0x10]
301369	mov    rcx,rdx
30136c	call   0x2caf08
301371	test   al,al
301373	je     0x3013cb
301375	lea    eax,[rbx*8+0x0]
30137c	movsxd rcx,eax
30137f	mov    rdx,QWORD PTR [rdx+rcx*1+0x20]
301384	mov    rcx,rdx
301387	call   0x2caf08
30138c	test   al,al
30138e	je     0x3013cb
301390	mov    edx,DWORD PTR [rdx+0x54]
301393	lea    rcx,[rbp+0xda8]
30139a	call   0x316574
30139f	lea    rcx,[rbp+0xda8]
3013a6	call   0x2d8694
3013ab	test   al,al
3013ad	jne    0x3013bf
3013af	lea    rdx,[rbp+0xda8]
3013b6	lea    rcx,[rbp+0x78]
3013ba	call   0x2d4c24
3013bf	lea    rcx,[rbp+0xda8]
3013c6	call   0x2cc4f4
3013cb	inc    ebx
3013cd	cmp    ebx,r14d
3013d0	jl     0x301365
3013d2	mov    esi,0x1
3013d7	lea    rdx,[rbp+0xabf]
3013de	lea    rcx,[rsp+0x40]
3013e3	call   0x2f6214   ; STR "Turret"
3013e8	mov    rcx,rax
3013eb	call   0x2cdcf4
3013f0	mov    rdx,rax
3013f3	lea    rcx,[rsp+0x60]
3013f8	call   0x2d4c68
3013fd	movups xmm0,XMMWORD PTR [rip+0xeaf34]        # 0x3ec338
301404	mov    dl,BYTE PTR [rip+0xe72de]        # 0x3e86e8
30140a	xor    eax,eax
30140c	movups XMMWORD PTR [rbp-0x58],xmm0
301410	test   dl,dl
301412	je     0x301421
301414	test   dil,dil
301417	je     0x301421
301419	mov    cl,sil
30141c	mov    BYTE PTR [rbp-0x3c],cl
30141f	jmp    0x301426
301421	mov    cl,al
301423	mov    BYTE PTR [rbp-0x3c],al
301426	mov    eax,DWORD PTR [rip+0xed72c]        # 0x3eeb58
30142c	mov    DWORD PTR [rbp-0x60],eax
30142f	mov    eax,DWORD PTR [rip+0xedd13]        # 0x3ef148
301435	mov    DWORD PTR [rbp-0x44],eax
301438	xor    eax,eax
30143a	cmp    BYTE PTR [rip+0xe77a8],al        # 0x3e8be8
301440	mov    BYTE PTR [rbp+0xd8],0x0
301447	je     0x301451
301449	mov    BYTE PTR [rbp-0x48],sil
30144d	test   cl,cl
30144f	jne    0x301454
301451	mov    BYTE PTR [rbp-0x48],al
301454	cmp    BYTE PTR [rip+0xe6f6e],al        # 0x3e83c8
30145a	jne    0x301464
30145c	cmp    BYTE PTR [rip+0xe8e56],al        # 0x3ea2b8
301462	je     0x30146c
301464	mov    BYTE PTR [rbp-0x39],sil
301468	test   dl,dl
30146a	jne    0x30146f
30146c	mov    BYTE PTR [rbp-0x39],al
30146f	mov    al,BYTE PTR [rip+0xe57e3]        # 0x3e6c58
301475	lea    rdx,[rbp+0x1908]
30147c	movss  xmm0,DWORD PTR [rip+0xec0f4]        # 0x3ed578
301484	lea    rcx,[rip+0xef0ad]        # 0x3f0538
30148b	mov    r8,rsi
30148e	movss  DWORD PTR [rbp-0x40],xmm0
301493	mov    BYTE PTR [rbp-0x5c],al
301496	call   0x2e98f0
30149b	mov    rcx,rax
30149e	call   0x2d4d70
3014a3	test   al,al
3014a5	jne    0x3014ba
3014a7	xor    eax,eax
3014a9	cmp    BYTE PTR [rip+0xe4809],al        # 0x3e5cb8
3014af	je     0x3014ba
3014b1	mov    BYTE PTR [rbp-0x3c],al
3014b4	mov    BYTE PTR [rbp-0x39],al
3014b7	mov    BYTE PTR [rbp-0x48],al
3014ba	mov    edx,0x7
3014bf	lea    rcx,[rsp+0x60]
3014c4	call   0x2ea804
3014c9	cmp    BYTE PTR [rip+0xe7218],0x0        # 0x3e86e8
3014d0	je     0x3052c1
3014d6	mov    edx,0x1d8
3014db	mov    rcx,r13
3014de	call   0x2dee3c
3014e3	mov    rcx,r13
3014e6	mov    edx,0x3c8
3014eb	mov    r9,rax
3014ee	call   0x2dee3c
3014f3	mov    rdx,QWORD PTR [rax]
3014f6	mov    rcx,rdx
3014f9	call   0x2caf08
3014fe	test   al,al
301500	je     0x3052c1
301506	cmp    BYTE PTR [rbp-0x3c],0x0
30150a	je     0x3052c1
301510	movsx  edi,WORD PTR [r9]
301514	mov    rcx,r13
301517	mov    esi,DWORD PTR [rdx+0x20]
30151a	mov    ebx,edi
30151c	mov    edx,0x2cc
301521	and    ebx,0x2
301524	call   0x2dee3c
301529	mov    edx,0x2d0
30152e	mov    rcx,r13
301531	movss  xmm6,DWORD PTR [rax]
301535	call   0x2dee3c
30153a	mov    r8d,0x6
301540	lea    rdx,[rbp+0x1918]
301547	lea    rcx,[rip+0xeedaa]        # 0x3f02f8
30154e	movss  xmm7,DWORD PTR [rax]
301552	call   0x2e98f0
301557	mov    rcx,rax
30155a	call   0x2d4d70
30155f	xor    r14d,r14d
301562	test   al,al
301564	je     0x301574
301566	mov    eax,edi
301568	and    eax,0x200
30156d	neg    eax
30156f	sbb    al,al
301571	and    BYTE PTR [rbp-0x3c],al
301574	mov    r8d,0x5
30157a	lea    rdx,[rbp+0x1928]
301581	lea    rcx,[rip+0xeed70]        # 0x3f02f8
301588	call   0x2e98f0
30158d	mov    rcx,rax
301590	call   0x2d4d70
301595	test   al,al
301597	je     0x3015a2
301599	mov    eax,ebx
30159b	neg    eax
30159d	sbb    cl,cl
30159f	and    BYTE PTR [rbp-0x3c],cl
3015a2	test   esi,esi
3015a4	jle    0x3015d7
3015a6	mov    r8d,0x4
3015ac	lea    rdx,[rbp+0x1938]
3015b3	lea    rcx,[rip+0xeed3e]        # 0x3f02f8
3015ba	call   0x2e98f0
3015bf	mov    rcx,rax
3015c2	call   0x2d4d70
3015c7	movzx  edx,BYTE PTR [rbp-0x3c]
3015cb	xor    r8d,r8d
3015ce	test   al,al
3015d0	cmovne edx,r8d
3015d4	mov    BYTE PTR [rbp-0x3c],dl
3015d7	xor    r8d,r8d
3015da	lea    rdx,[rbp+0x1948]
3015e1	lea    rcx,[rip+0xeed10]        # 0x3f02f8
3015e8	call   0x2e98f0
3015ed	mov    rcx,rax
3015f0	call   0x2d4d70
3015f5	test   al,al
3015f7	je     0x301840
3015fd	xor    eax,eax
3015ff	test   ebx,ebx
301601	je     0x301840
301607	cmp    BYTE PTR [rbp-0x3c],al
30160a	je     0x301840
301610	mov    rcx,QWORD PTR [rbp+0x278]
301617	mov    edx,0x4e0
30161c	call   0x2dee3c
301621	mov    r8,QWORD PTR [rax]
301624	mov    rcx,r8
301627	call   0x2caf08
30162c	test   al,al
30162e	je     0x301840
301634	lea    rdx,[rbp+0x398]
30163b	mov    rcx,r8
30163e	call   0x3747d4
301643	lea    rcx,[rbp+0x340]
30164a	call   0x2cb3a4
30164f	xorps  xmm3,xmm3
301652	movss  DWORD PTR [rsp+0x20],xmm11
301659	xorps  xmm2,xmm2
30165c	lea    rcx,[rbp+0xd40]
301663	xorps  xmm1,xmm1
301666	call   0x2cc350
30166b	movsd  xmm0,QWORD PTR [rbp+0x398]
301673	lea    rsi,[rip+0xd5c2e]        # 0x3d72a8
30167a	mov    eax,DWORD PTR [rbp+0x3a0]
301680	lea    r8,[rbp+0x340]
301687	mov    r9,rsi
30168a	movsd  QWORD PTR [rbp+0x550],xmm0
301692	lea    rdx,[rbp+0x550]
301699	mov    DWORD PTR [rbp+0x558],eax
30169f	mov    rcx,r15
3016a2	call   0x36cd20
3016a7	test   al,al
3016a9	je     0x301840
3016af	movaps xmm3,xmm8
3016b3	lea    rcx,[rbp+0xa58]
3016ba	xorps  xmm2,xmm2
3016bd	xorps  xmm1,xmm1
3016c0	call   0x3c7ba8
3016c5	lea    r8,[rbp+0xd40]
3016cc	lea    rdx,[rbp+0xa58]
3016d3	lea    rcx,[rbp+0x13a8]
3016da	call   0x320db4
3016df	mov    r8,rax
3016e2	lea    rdx,[rbp+0x458]
3016e9	lea    rcx,[rbp+0x398]
3016f0	call   0x2df708
3016f5	lea    rcx,[rbp+0x328]
3016fc	call   0x2cb3a4
301701	xorps  xmm0,xmm0
301704	lea    rcx,[rbp+0xb40]
30170b	movups XMMWORD PTR [rbp+0xb50],xmm0
301712	movups XMMWORD PTR [rbp+0xb5c],xmm0
301719	movups XMMWORD PTR [rbp+0xb40],xmm0
301720	call   0x2e4f04
301725	lea    r8,[rbp+0x398]
30172c	lea    rdx,[rbp+0x13b4]
301733	lea    rcx,[rbp+0x458]
30173a	call   0x2df6cc
30173f	mov    DWORD PTR [rsp+0x28],r14d
301744	lea    rdx,[rbp+0x560]
30174b	mov    r9d,0x40a10000
301751	lea    rcx,[rbp+0x570]
301758	movaps xmm2,xmm8
30175c	movsd  xmm0,QWORD PTR [rax]
301760	mov    eax,DWORD PTR [rax+0x8]
301763	mov    DWORD PTR [rbp+0x568],eax
301769	mov    eax,DWORD PTR [rbp+0x3a0]
30176f	mov    DWORD PTR [rbp+0x578],eax
301775	lea    rax,[rbp+0xb40]
30177c	movsd  QWORD PTR [rbp+0x560],xmm0
301784	movsd  xmm0,QWORD PTR [rbp+0x398]
30178c	mov    QWORD PTR [rsp+0x20],rax
301791	movsd  QWORD PTR [rbp+0x570],xmm0
301799	call   0x2e8fac
30179e	lea    r8,[rbp+0x328]
3017a5	mov    r9,rsi
3017a8	mov    rcx,r15
3017ab	test   al,al
3017ad	je     0x30181b
3017af	movups xmm0,XMMWORD PTR [rbp+0xb40]
3017b6	lea    rdx,[rbp+0x580]
3017bd	movsd  QWORD PTR [rbp+0x580],xmm0
3017c5	psrldq xmm0,0x8
3017ca	movd   DWORD PTR [rbp+0x588],xmm0
3017d2	call   0x36cd20
3017d7	mov    r14d,0x1
3017dd	test   al,al
3017df	je     0x301846
3017e1	movss  xmm0,DWORD PTR [rbp+0x340]
3017e9	movss  xmm1,DWORD PTR [rbp+0x344]
3017f1	movss  DWORD PTR [rbp-0x38],xmm0
3017f6	movss  xmm0,DWORD PTR [rbp+0x328]
3017fe	movss  DWORD PTR [rbp-0x34],xmm1
301803	movss  xmm1,DWORD PTR [rbp+0x32c]
30180b	movss  DWORD PTR [rbp-0x30],xmm0
301810	movss  DWORD PTR [rbp-0x2c],xmm1
301815	mov    BYTE PTR [rbp-0x3a],r14b
301819	jmp    0x301846
30181b	movsd  xmm0,QWORD PTR [rbp+0x458]
301823	lea    rdx,[rbp+0x590]
30182a	mov    eax,DWORD PTR [rbp+0x460]
301830	movsd  QWORD PTR [rbp+0x590],xmm0
301838	mov    DWORD PTR [rbp+0x598],eax
30183e	jmp    0x3017d2
301840	mov    r14d,0x1
301846	mov    r8d,0x2
30184c	lea    rdx,[rbp+0x1958]
301853	lea    rcx,[rip+0xeea9e]        # 0x3f02f8
30185a	call   0x2e98f0
30185f	mov    rcx,rax
301862	call   0x2d4d70
301867	test   al,al
301869	je     0x301887
30186b	cmp    BYTE PTR [rbp-0x3c],0x0
30186f	je     0x301887
301871	cvttss2si eax,xmm6
301875	mov    DWORD PTR [rbp+0xa8],eax
30187b	cvttss2si eax,xmm7
30187f	mov    DWORD PTR [rbp+0xac],eax
301885	jmp    0x3018c3
301887	mov    r8,r14
30188a	lea    rdx,[rbp+0x1968]
301891	lea    rcx,[rip+0xeea60]        # 0x3f02f8
301898	call   0x2e98f0
30189d	mov    rcx,rax
3018a0	call   0x2d4d70
3018a5	test   al,al
3018a7	je     0x3018c3
3018a9	cmp    BYTE PTR [rbp-0x3c],0x0
3018ad	je     0x3018c3
3018af	cvttss2si eax,xmm6
3018b3	mov    DWORD PTR [rbp+0x98],eax
3018b9	cvttss2si eax,xmm7
3018bd	mov    DWORD PTR [rbp+0x9c],eax
3018c3	mov    r8d,0x3
3018c9	lea    rdx,[rbp+0x1978]
3018d0	lea    rcx,[rip+0xeea21]        # 0x3f02f8
3018d7	call   0x2e98f0
3018dc	mov    rcx,rax
3018df	call   0x2d4d70
3018e4	test   al,al
3018e6	je     0x3052c1
3018ec	cmp    BYTE PTR [rbp-0x3c],0x0
3018f0	je     0x3052c1
3018f6	test   dil,dil
3018f9	jns    0x301920
3018fb	lea    rdx,[rbp+0xac6]
301902	lea    rcx,[rsp+0x40]
301907	call   0x2f6370   ; STR "[Safe]"
30190c	mov    rcx,rax
30190f	call   0x2cdcf4
301914	mov    rdx,rax
301917	lea    rcx,[rbp-0x28]
30191b	call   0x2d4c68
301920	lea    rcx,[rsp+0x40]
301925	test   ebx,ebx
301927	je     0x301942
301929	lea    rdx,[rbp+0x94f]
301930	call   0x2f64e8   ; STR "[On]"
301935	mov    rcx,rax
301938	call   0x2cdccc
30193d	jmp    0x302352
301942	lea    rdx,[rbp+0xa28]
301949	call   0x2f656c   ; STR "[Off]"
30194e	mov    rcx,rax
301951	call   0x2d84dc
301956	jmp    0x302352
3066d8	lea    rdx,[rbp+0x1210]
3066df	lea    rcx,[rsp+0x40]
3066e4	call   0x2f0a38
3066e9	mov    rcx,rax
3066ec	call   0x32046c
3066f1	mov    rdx,rax
3066f4	lea    rcx,[rbp-0x80]
3066f8	call   0x2ea610
3066fd	xor    edi,edi
3066ff	test   al,al
306701	je     0x306752
306703	cmp    BYTE PTR [rip+0xddaee],dil        # 0x3e41f8
30670a	je     0x306752
30670c	mov    eax,DWORD PTR [rsp+0x50]
306710	lea    r9d,[rdi+0x2]
306714	movsd  xmm0,QWORD PTR [rsp+0x48]
30671a	lea    r8,[rbp+0x220]
306721	mov    rcx,QWORD PTR [rbp+0x278]
306728	mov    rdx,r12
30672b	mov    DWORD PTR [rbp+0x228],eax
306731	mov    al,BYTE PTR [rbp+0x110]
306737	mov    BYTE PTR [rsp+0x28],al
30673b	mov    al,BYTE PTR [rbp+0x111]
306741	mov    BYTE PTR [rsp+0x20],al
306745	movsd  QWORD PTR [rbp+0x220],xmm0
30674d	call   0x317928
317928	rex push rbp
31792a	push   rbx
31792b	push   rsi
31792c	push   rdi
31792d	push   r14
31792f	mov    rbp,rsp
317932	sub    rsp,0x80
317939	mov    rdi,rcx
31793c	mov    ebx,r9d
31793f	mov    rcx,rdx
317942	mov    r14,r8
317945	mov    rsi,rdx
317948	call   0x2caf08
31794d	test   al,al
31794f	je     0x317b0e
317955	mov    rcx,rdi
317958	call   0x2caf08
31795d	test   al,al
31795f	je     0x317b0e
317965	mov    rcx,rdx
317968	call   0x36b288
31796d	test   al,al
31796f	jne    0x317b0e
317975	mov    rcx,rsi
317978	call   0x3693b0
31797d	test   al,al
31797f	jne    0x317b0e
317985	mov    rcx,rsi
317988	call   0x36b090
31798d	test   al,al
31798f	jne    0x317b0e
317995	xor    edx,edx
317997	mov    rcx,rsi
31799a	call   0x36a20c
31799f	test   al,al
3179a1	jne    0x317b0e
3179a7	lea    rdx,[rbp-0x30]
3179ab	mov    rcx,rsi
3179ae	call   0x36924c
3179b3	movsd  xmm0,QWORD PTR [rbp-0x30]
3179b8	lea    rdx,[rbp-0x40]
3179bc	mov    eax,DWORD PTR [rbp-0x28]
3179bf	mov    rcx,rdi
3179c2	movsd  QWORD PTR [rbp-0x40],xmm0
3179c7	mov    DWORD PTR [rbp-0x38],eax
3179ca	call   0x3666b0
3179cf	movss  xmm1,DWORD PTR [rip+0xfffffffffff7b77d]        # 0x293154
3179d7	comiss xmm1,xmm0
3179da	jb     0x317b0e
3179e0	cmp    ebx,0x2
3179e3	jne    0x3179ec
3179e5	mov    BYTE PTR [rip+0xcc6cc],0x1        # 0x3e40b8
3179ec	movss  xmm1,DWORD PTR [rip+0xfffffffffff7b6a0]        # 0x293094
3179f4	lea    rcx,[rip+0xd8f75]        # 0x3f0970
3179fb	call   0x2e5b7c
317a00	test   al,al
317a02	je     0x317b0e
317a08	sub    ebx,0x1
317a0b	je     0x317aee
317a11	sub    ebx,0x1
317a14	je     0x317acf
317a1a	sub    ebx,0x1
317a1d	je     0x317b0e
317a23	sub    ebx,0x1
317a26	je     0x317ab8
317a2c	sub    ebx,0x1
317a2f	je     0x317aa1
317a31	cmp    ebx,0x1
317a34	je     0x317a92
317a36	movsd  xmm0,QWORD PTR [r14]
317a3b	lea    rdx,[rbp-0x40]
317a3f	mov    eax,DWORD PTR [r14+0x8]
317a43	lea    rcx,[rbp-0x20]
317a47	movsd  QWORD PTR [rbp-0x40],xmm0
317a4c	xorps  xmm3,xmm3
317a4f	movsd  xmm0,QWORD PTR [rbp-0x30]
317a54	mov    r8d,0x48a12001
317a5a	mov    DWORD PTR [rbp-0x38],eax
317a5d	mov    eax,DWORD PTR [rbp-0x28]
317a60	movsd  QWORD PTR [rbp-0x20],xmm0
317a65	movss  DWORD PTR [rsp+0x20],xmm3
317a6b	mov    DWORD PTR [rbp-0x18],eax
317a6e	call   0x2e2320
317a73	test   al,al
317a75	je     0x317b0e
317a7b	lea    rdx,[rbp-0x40]
317a7f	lea    rcx,[rbp-0x50]
317a83	call   0x2f1f68   ; STR "Pickup"
317a88	mov    rcx,rax
317a8b	call   0x2cdcf4
317a90	jmp    0x317b03
317a92	lea    rdx,[rbp-0x40]
317a96	lea    rcx,[rbp-0x50]
317a9a	call   0x2f6040   ; STR "Pickup"
317a9f	jmp    0x317a88
317aa1	lea    rdx,[rbp-0x20]
317aa5	lea    rcx,[rbp-0x50]
317aa9	call   0x2f5258   ; STR "RPC_ReqDoRestrainedPush"
317aae	mov    rcx,rax
317ab1	call   0x3204e4
317ab6	jmp    0x317b03
317ab8	lea    rdx,[rbp-0x40]
317abc	lea    rcx,[rbp-0x50]
317ac0	call   0x2f4a30   ; STR "PickupEat"
317ac5	mov    rcx,rax
317ac8	call   0x2cdd44
317acd	jmp    0x317b03
317acf	mov    al,BYTE PTR [rbp+0x50]
317ad2	or     al,BYTE PTR [rbp+0x58]
317ad5	jne    0x317b0e
317ad7	lea    rdx,[rbp-0x20]
317adb	lea    rcx,[rbp-0x50]
317adf	call   0x2f41cc   ; STR "RPC_OpenLoot"
317ae4	mov    rcx,rax
317ae7	call   0x2d85f4
317aec	jmp    0x317b03
317aee	lea    rdx,[rbp-0x40]
317af2	lea    rcx,[rbp-0x50]
317af6	call   0x2f37d4   ; STR "RPC_PickUp"
317afb	mov    rcx,rax
317afe	call   0x2e9c54
317b03	mov    rdx,rax
317b06	mov    rcx,rdi
317b09	call   0x366c30
317b0e	add    rsp,0x80
317b15	pop    r14
317b17	pop    rdi
317b18	pop    rsi
317b19	pop    rbx
317b1a	pop    rbp
317b1b	ret
366724	sub    rsp,0x28
366728	mov    rdx,rcx
36672b	call   0x2caf08
366730	test   al,al
366732	jne    0x366739
366734	or     eax,0xffffffff
366737	jmp    0x366753
366739	mov    rdx,QWORD PTR [rdx+0x220]
366740	mov    rcx,rdx
366743	call   0x2caf08
366748	test   al,al
36674a	jne    0x366750
36674c	xor    eax,eax
36674e	jmp    0x366753
366750	mov    eax,DWORD PTR [rdx+0x30]
366753	add    rsp,0x28
366757	ret
366758	sub    rsp,0x28
36675c	mov    rdx,rcx
36675f	call   0x2caf08
366764	test   al,al
366766	je     0x366791
366768	mov    rdx,QWORD PTR [rdx+0x220]
36676f	mov    rcx,rdx
366772	call   0x2caf08
366777	test   al,al
366779	je     0x366791
36677b	mov    rdx,QWORD PTR [rdx+0x10]
36677f	mov    rcx,rdx
366782	call   0x2caf08
366787	test   al,al
366789	je     0x366791
36678b	movzx  eax,WORD PTR [rdx+0x58]
36678f	jmp    0x366794
366791	or     eax,0xffffffff
366794	add    rsp,0x28
366798	ret
366799	int3
36679a	int3
36679b	int3
36679c	mov    QWORD PTR [rsp+0x8],rbx
3667a1	mov    QWORD PTR [rsp+0x10],rsi
3667a6	push   rbp
3667a7	push   rdi
3667a8	push   r14
3667aa	lea    rbp,[rsp-0x47]
3667af	sub    rsp,0xb0
3667b6	mov    rsi,rdx
3667b9	mov    r14,rcx
3667bc	call   0x2caf08
3667c1	test   al,al
3667c3	jne    0x3667ea
3667c5	lea    rdx,[rbp+0x77]
3667c9	lea    rcx,[rbp+0x77]
3667cd	call   0x2cc730
3667d2	mov    rcx,rax
3667d5	call   0x2cdca4
3667da	mov    rdx,rax
3667dd	mov    rcx,rsi
3667e0	call   0x2cc2cc
3667e5	jmp    0x366a45
3667ea	mov    r14,QWORD PTR [r14+0x220]
3667f1	mov    rcx,r14
3667f4	call   0x2caf08
3667f9	test   al,al
3667fb	jne    0x36680c
3667fd	lea    rdx,[rbp+0x77]
366801	lea    rcx,[rbp+0x77]
366805	call   0x2cc730
36680a	jmp    0x3667d2
36680c	mov    r14,QWORD PTR [r14+0x10]
366810	mov    rcx,r14
366813	call   0x2caf08
366818	test   al,al
36681a	jne    0x36682b
36681c	lea    rdx,[rbp+0x77]
366820	lea    rcx,[rbp+0x77]
366824	call   0x2cc730
366829	jmp    0x3667d2
36682b	mov    rdx,QWORD PTR [r14+0x28]
36682f	mov    rcx,rdx
366832	call   0x2caf08
366837	test   al,al
366839	jne    0x36684a
36683b	lea    rdx,[rbp+0x77]
36683f	lea    rcx,[rbp+0x77]
366843	call   0x2cc730
366848	jmp    0x3667d2
36684a	add    rdx,0x14
36684e	lea    rcx,[rbp-0x49]
366852	call   0x2d45c8
366857	lea    rcx,[rbp-0x49]
36685b	call   0x2d8694
366860	test   al,al
366862	je     0x366889
366864	lea    rdx,[rbp+0x77]
366868	lea    rcx,[rbp+0x77]
36686c	call   0x2cc730
366871	mov    rcx,rax
366874	call   0x2cdca4
366879	mov    rdx,rax
36687c	mov    rcx,rsi
36687f	call   0x2cc2cc
366884	jmp    0x366a3c
366889	lea    rdx,[rbp+0x7f]
36688d	lea    rcx,[rbp-0x49]
366891	call   0x2d8728
366896	lea    rdx,[rbp-0x29]
36689a	lea    rcx,[rbp-0x49]
36689e	mov    rbx,QWORD PTR [rax]
3668a1	call   0x2d7d40
3668a6	lea    rcx,[rbp+0x77]
3668aa	mov    rdi,rax
3668ad	call   0x2cb3a4
3668b2	mov    rdx,QWORD PTR [rdi]
3668b5	lea    rcx,[rbp-0x21]
3668b9	mov    r9,rax
3668bc	mov    r8,rbx
3668bf	call   0x2cee44
3668c4	lea    rcx,[rbp-0x21]
3668c8	call   0x2cd7ec
3668cd	mov    rcx,rax
3668d0	call   0x2d6354
3668d5	lea    rdx,[rbp+0x77]
3668d9	mov    rbx,rax
3668dc	lea    rcx,[rbp+0x77]
3668e0	call   0x365f2c   ; STR "m16a2"
3668e5	mov    rcx,rax
3668e8	call   0x2d84dc
3668ed	mov    rcx,rax
3668f0	movabs rdx,0xcbf29ce484222325
3668fa	call   0x2e5b4c
3668ff	cmp    rbx,rax
366902	jne    0x366929
366904	lea    rdx,[rbp+0x77]
366908	lea    rcx,[rbp+0x77]
36690c	call   0x365f44   ; STR "M-16"
366911	mov    rcx,rax
366914	call   0x2cdccc
366919	mov    rdx,rax
36691c	mov    rcx,rsi
36691f	call   0x2cc2cc
366924	jmp    0x366a33
366929	mov    rdx,QWORD PTR [r14+0x40]
36692d	mov    rcx,rdx
366930	call   0x2caf08
366935	test   al,al
366937	jne    0x366950
366939	lea    rdx,[rbp+0x77]
36693d	lea    rcx,[rbp+0x77]
366941	call   0x2cc730
366946	mov    rcx,rax
366949	call   0x2cdca4
36694e	jmp    0x366919
366950	mov    rdx,QWORD PTR [rdx+0x20]
366954	mov    rcx,rdx
366957	call   0x2caf08
36695c	test   al,al
36695e	jne    0x36696f
366960	lea    rdx,[rbp+0x77]
366964	lea    rcx,[rbp+0x77]
366968	call   0x2cc730
36696d	jmp    0x366946
36696f	add    rdx,0x14
366973	lea    rcx,[rbp-0x1]
366977	call   0x2d45c8
36697c	lea    rcx,[rbp-0x1]
366980	call   0x2d8694
366985	test   al,al
366987	je     0x3669ab
366989	lea    rdx,[rbp+0x77]
36698d	lea    rcx,[rbp+0x77]
366991	call   0x2cc730
366996	mov    rcx,rax
366999	call   0x2cdca4
36699e	mov    rdx,rax
3669a1	mov    rcx,rsi
3669a4	call   0x2cc2cc
3669a9	jmp    0x366a2a
3669ab	lea    rdx,[rbp+0x7f]
3669af	lea    rcx,[rbp-0x1]
3669b3	call   0x2d8728
3669b8	lea    rdx,[rbp-0x29]
3669bc	lea    rcx,[rbp-0x1]
3669c0	mov    rbx,QWORD PTR [rax]
3669c3	call   0x2d7d40
3669c8	lea    rcx,[rbp+0x77]
3669cc	mov    rdi,rax
3669cf	call   0x2cb3a4
3669d4	mov    rdx,QWORD PTR [rdi]
3669d7	lea    rcx,[rbp+0x1f]
3669db	mov    r9,rax
3669de	mov    r8,rbx
3669e1	call   0x2cee44
3669e6	lea    rcx,[rbp+0x1f]
3669ea	call   0x2d8694
3669ef	test   al,al
3669f1	je     0x366a15
3669f3	lea    rdx,[rbp+0x77]
3669f7	lea    rcx,[rbp+0x77]
3669fb	call   0x2cc730
366a00	mov    rcx,rax
366a03	call   0x2cdca4
366a08	mov    rdx,rax
366a0b	mov    rcx,rsi
366a0e	call   0x2cc2cc
366a13	jmp    0x366a21
366a15	lea    rdx,[rbp+0x1f]
366a19	mov    rcx,rsi
366a1c	call   0x2cc284
366a21	lea    rcx,[rbp+0x1f]
366a25	call   0x2cc4f4
366a2a	lea    rcx,[rbp-0x1]
366a2e	call   0x2d4a50
366a33	lea    rcx,[rbp-0x21]
366a37	call   0x2cc4f4
366a3c	lea    rcx,[rbp-0x49]
366a40	call   0x2d4a50
366a45	lea    r11,[rsp+0xb0]
366a4d	mov    rax,rsi
366a50	mov    rbx,QWORD PTR [r11+0x20]
366a54	mov    rsi,QWORD PTR [r11+0x28]
366a58	mov    rsp,r11
366a5b	pop    r14
366a5d	pop    rdi
366a5e	pop    rbp
366a5f	ret
