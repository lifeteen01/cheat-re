2caf08	test   rcx,rcx
2caf0b	jne    0x2caf10
2caf0d	xor    al,al
2caf0f	ret
2caf10	lea    rax,[rcx-0x100000]
2caf17	movabs rcx,0x7ffffeffffe
2caf21	cmp    rax,rcx
2caf24	setbe  al
2caf27	ret
2caf28	mov    r11,rsp
2caf2b	push   rbx
2caf2c	push   rbp
2caf2d	push   rsi
2caf2e	push   rdi
2caf2f	push   r14
2caf31	push   r15
2caf33	sub    rsp,0x68
2caf37	mov    eax,DWORD PTR [rip+0x10b343]        # 0x3d6280
2caf3d	mov    rbp,r8
2caf40	mov    r14,rdx
2caf43	mov    r15,rcx
2caf46	test   al,0x1
2caf48	jne    0x2caff0
2caf4e	or     eax,0x1
2caf51	lea    rdx,[r11-0x67]
2caf55	lea    rcx,[r11+0x20]
2caf59	mov    DWORD PTR [rip+0x10b321],eax        # 0x3d6280
2caf5f	call   0x2cc78c   ; STR "UnityEngine"
2caf64	mov    rcx,rax
2caf67	call   0x2cde0c
2caf6c	lea    rdx,[rsp+0xb8]
2caf74	mov    rsi,rax
2caf77	lea    rcx,[rsp+0x30]
2caf7c	call   0x2cc730
2caf81	mov    rcx,rax
2caf84	call   0x2cdca4
2caf89	lea    rdx,[rsp+0x49]
2caf8e	mov    rdi,rax
2caf91	lea    rcx,[rsp+0x30]
2caf96	call   0x2cc6cc   ; STR "LoadAsset_Internal"
2caf9b	mov    rcx,rax
2caf9e	call   0x2cdd6c
2cafa3	lea    rdx,[rsp+0x3d]
2cafa8	mov    rbx,rax
2cafab	lea    rcx,[rsp+0x30]
2cafb0	call   0x2cc5d8   ; STR "AssetBundle"
2cafb5	mov    rcx,rax
2cafb8	call   0x2cde0c
2cafbd	mov    rcx,rax
2cafc0	mov    DWORD PTR [rsp+0x28],0xffffffff
2cafc8	mov    r9,rdi
2cafcb	mov    QWORD PTR [rsp+0x20],rsi
2cafd0	mov    r8d,0x2
2cafd6	mov    rdx,rbx
2cafd9	call   0x333bf4
2cafde	mov    r8,QWORD PTR [rax]
2cafe1	mov    eax,DWORD PTR [rip+0x10b299]        # 0x3d6280
2cafe7	mov    QWORD PTR [rip+0x10b28a],r8        # 0x3d6278
2cafee	jmp    0x2caff7
2caff0	mov    r8,QWORD PTR [rip+0x10b281]        # 0x3d6278
2caff7	test   al,0x2
2caff9	jne    0x2cb01a
2caffb	mov    rcx,QWORD PTR [rip+0x10ae5e]        # 0x3d5e60
2cb002	lea    rdx,[rip+0x10b287]        # 0x3d6290
2cb009	or     eax,0x2
2cb00c	xor    r9d,r9d
2cb00f	mov    DWORD PTR [rip+0x10b26b],eax        # 0x3d6280
2cb015	call   0x2cbd24
2cb01a	mov    rcx,r14
2cb01d	call   0x2ce5dc
2cb022	mov    rcx,QWORD PTR [rip+0x10ae37]        # 0x3d5e60
2cb029	lea    rdx,[rip+0x10b260]        # 0x3d6290
2cb030	mov    r9,rax
2cb033	mov    QWORD PTR [rsp+0x20],rbp
2cb038	mov    r8,r15
2cb03b	call   0x2cba50
2cb040	add    rsp,0x68
2cb044	pop    r15
2cb046	pop    r14
2cb048	pop    rdi
2cb049	pop    rsi
2cb04a	pop    rbp
2cb04b	pop    rbx
2cb04c	ret
