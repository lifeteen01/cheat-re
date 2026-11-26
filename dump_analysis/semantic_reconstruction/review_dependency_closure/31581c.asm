31581c	mov    r11,rsp
31581f	push   rbx
315820	push   rsi
315821	push   rdi
315822	sub    rsp,0x60
315826	mov    eax,DWORD PTR [rip+0xd0a0c]        # 0x3e6238
31582c	test   al,0x1
31582e	jne    0x3158e0
315834	or     eax,0x1
315837	lea    rdx,[r11+0x8]
31583b	lea    rcx,[r11+0x8]
31583f	mov    DWORD PTR [rip+0xd09f3],eax        # 0x3e6238
315845	call   0x2cc730
31584a	mov    rcx,rax
31584d	call   0x2cdca4
315852	lea    rdx,[rsp+0x3c]
315857	mov    rsi,rax
31585a	lea    rcx,[rsp+0x88]
315862	call   0x2f4234   ; STR "get_realtimeSinceStartup"
315867	mov    rcx,rax
31586a	call   0x2e36dc
31586f	lea    rdx,[rsp+0x30]
315874	mov    rdi,rax
315877	lea    rcx,[rsp+0x88]
31587f	call   0x2f36b0   ; STR "UnityEngine"
315884	mov    rcx,rax
315887	call   0x2cde0c
31588c	lea    rdx,[rsp+0x90]
315894	mov    rbx,rax
315897	lea    rcx,[rsp+0x88]
31589f	call   0x2f21fc   ; STR "Time"
3158a4	mov    rcx,rax
3158a7	call   0x2e35ec
3158ac	mov    rcx,rax
3158af	mov    rdx,rbx
3158b2	call   0x334224
3158b7	or     r8d,0xffffffff
3158bb	mov    rcx,rax
3158be	mov    r9,rsi
3158c1	mov    DWORD PTR [rsp+0x20],r8d
3158c6	mov    rdx,rdi
3158c9	call   0x3349ac
3158ce	mov    r8,QWORD PTR [rax]
3158d1	mov    eax,DWORD PTR [rip+0xd0961]        # 0x3e6238
3158d7	mov    QWORD PTR [rip+0xd0952],r8        # 0x3e6230
3158de	jmp    0x3158e7
3158e0	mov    r8,QWORD PTR [rip+0xd0949]        # 0x3e6230
3158e7	test   al,0x2
3158e9	jne    0x31590a
3158eb	mov    rcx,QWORD PTR [rip+0xc056e]        # 0x3d5e60
3158f2	lea    rdx,[rip+0xd0947]        # 0x3e6240
3158f9	or     eax,0x2
3158fc	xor    r9d,r9d
3158ff	mov    DWORD PTR [rip+0xd0933],eax        # 0x3e6238
315905	call   0x2cbd24
31590a	mov    rcx,QWORD PTR [rip+0xc054f]        # 0x3d5e60
315911	lea    rdx,[rip+0xd0928]        # 0x3e6240
315918	add    rsp,0x60
31591c	pop    rdi
31591d	pop    rsi
31591e	pop    rbx
31591f	jmp    0x2de950
