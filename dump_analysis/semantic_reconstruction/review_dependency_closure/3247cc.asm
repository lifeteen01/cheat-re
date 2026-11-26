3247cc	mov    QWORD PTR [rsp+0x18],rbx
3247d1	push   rbp
3247d2	push   rsi
3247d3	push   rdi
3247d4	sub    rsp,0x60
3247d8	call   0x329714
3247dd	mov    rcx,rax
3247e0	mov    rbp,rax
3247e3	call   0x2caf08
3247e8	test   al,al
3247ea	je     0x3248f4
3247f0	mov    eax,DWORD PTR [rip+0xce50a]        # 0x3f2d00
3247f6	test   al,0x1
3247f8	jne    0x3248af
3247fe	or     eax,0x1
324801	lea    rdx,[rsp+0x80]
324809	lea    rcx,[rsp+0x80]
324811	mov    DWORD PTR [rip+0xce4e9],eax        # 0x3f2d00
324817	call   0x2cc730
32481c	mov    rcx,rax
32481f	call   0x2cdca4
324824	lea    rdx,[rsp+0x3a]
324829	mov    rsi,rax
32482c	lea    rcx,[rsp+0x88]
324834	call   0x323d60   ; STR "get_enabled"
324839	mov    rcx,rax
32483c	call   0x2cde0c
324841	lea    rdx,[rsp+0x46]
324846	mov    rdi,rax
324849	lea    rcx,[rsp+0x88]
324851	call   0x323ae8   ; STR "UnityEngine"
324856	mov    rcx,rax
324859	call   0x2cde0c
32485e	lea    rdx,[rsp+0x30]
324863	mov    rbx,rax
324866	lea    rcx,[rsp+0x88]
32486e	call   0x3238a0   ; STR "Behaviour"
324873	mov    rcx,rax
324876	call   0x2cdd1c
32487b	mov    rcx,rax
32487e	mov    rdx,rbx
324881	call   0x334224
324886	or     r8d,0xffffffff
32488a	mov    rcx,rax
32488d	mov    r9,rsi
324890	mov    DWORD PTR [rsp+0x20],r8d
324895	mov    rdx,rdi
324898	call   0x3349ac
32489d	mov    r8,QWORD PTR [rax]
3248a0	mov    eax,DWORD PTR [rip+0xce45a]        # 0x3f2d00
3248a6	mov    QWORD PTR [rip+0xce44b],r8        # 0x3f2cf8
3248ad	jmp    0x3248b6
3248af	mov    r8,QWORD PTR [rip+0xce442]        # 0x3f2cf8
3248b6	test   al,0x2
3248b8	jne    0x3248d9
3248ba	mov    rcx,QWORD PTR [rip+0xb159f]        # 0x3d5e60
3248c1	lea    rdx,[rip+0xce448]        # 0x3f2d10
3248c8	or     eax,0x2
3248cb	xor    r9d,r9d
3248ce	mov    DWORD PTR [rip+0xce42c],eax        # 0x3f2d00
3248d4	call   0x2cbd24
3248d9	mov    rcx,QWORD PTR [rip+0xb1580]        # 0x3d5e60
3248e0	lea    rdx,[rip+0xce429]        # 0x3f2d10
3248e7	mov    r8,rbp
3248ea	call   0x2cb9fc
3248ef	test   al,al
3248f1	setne  al
3248f4	mov    rbx,QWORD PTR [rsp+0x90]
3248fc	add    rsp,0x60
324900	pop    rdi
324901	pop    rsi
324902	pop    rbp
324903	ret
