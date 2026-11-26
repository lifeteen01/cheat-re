370508	mov    QWORD PTR [rsp+0x8],rbx
37050d	push   rbp
37050e	push   rsi
37050f	push   rdi
370510	sub    rsp,0x60
370514	mov    rbp,rcx
370517	call   0x2caf08
37051c	test   al,al
37051e	jne    0x370527
370520	xor    eax,eax
370522	jmp    0x370626
370527	mov    eax,DWORD PTR [rip+0x8fcc3]        # 0x4001f0
37052d	test   al,0x1
37052f	jne    0x3705e6
370535	or     eax,0x1
370538	lea    rdx,[rsp+0x88]
370540	lea    rcx,[rsp+0x88]
370548	mov    DWORD PTR [rip+0x8fca2],eax        # 0x4001f0
37054e	call   0x2cc730
370553	mov    rcx,rax
370556	call   0x2cdca4
37055b	lea    rdx,[rsp+0x46]
370560	mov    rsi,rax
370563	lea    rcx,[rsp+0x90]
37056b	call   0x370340   ; STR "get_gameObject"
370570	mov    rcx,rax
370573	call   0x2d866c
370578	lea    rdx,[rsp+0x3a]
37057d	mov    rdi,rax
370580	lea    rcx,[rsp+0x90]
370588	call   0x370298   ; STR "UnityEngine"
37058d	mov    rcx,rax
370590	call   0x2cde34
370595	lea    rdx,[rsp+0x30]
37059a	mov    rbx,rax
37059d	lea    rcx,[rsp+0x90]
3705a5	call   0x3701ec   ; STR "Component"
3705aa	mov    rcx,rax
3705ad	call   0x2cdd44
3705b2	mov    rcx,rax
3705b5	mov    rdx,rbx
3705b8	call   0x334224
3705bd	or     r8d,0xffffffff
3705c1	mov    rcx,rax
3705c4	mov    r9,rsi
3705c7	mov    DWORD PTR [rsp+0x20],r8d
3705cc	mov    rdx,rdi
3705cf	call   0x3349ac
3705d4	mov    r8,QWORD PTR [rax]
3705d7	mov    eax,DWORD PTR [rip+0x8fc13]        # 0x4001f0
3705dd	mov    QWORD PTR [rip+0x8fc04],r8        # 0x4001e8
3705e4	jmp    0x3705ed
3705e6	mov    r8,QWORD PTR [rip+0x8fbfb]        # 0x4001e8
3705ed	test   al,0x2
3705ef	jne    0x370610
3705f1	mov    rcx,QWORD PTR [rip+0x65868]        # 0x3d5e60
3705f8	lea    rdx,[rip+0x8fc01]        # 0x400200
3705ff	or     eax,0x2
370602	xor    r9d,r9d
370605	mov    DWORD PTR [rip+0x8fbe5],eax        # 0x4001f0
37060b	call   0x2cbd24
370610	mov    rcx,QWORD PTR [rip+0x65849]        # 0x3d5e60
370617	lea    rdx,[rip+0x8fbe2]        # 0x400200
37061e	mov    r8,rbp
370621	call   0x2cb9fc
370626	mov    rbx,QWORD PTR [rsp+0x80]
37062e	add    rsp,0x60
370632	pop    rdi
370633	pop    rsi
370634	pop    rbp
370635	ret
