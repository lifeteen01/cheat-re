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
