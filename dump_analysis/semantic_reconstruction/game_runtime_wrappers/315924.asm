315924	rex push rbx
315926	push   rsi
315927	push   rdi
315928	sub    rsp,0x50
31592c	mov    eax,DWORD PTR [rip+0xd0ade]        # 0x3e6410
315932	test   al,0x1
315934	jne    0x3159df
31593a	or     eax,0x1
31593d	lea    rdx,[rsp+0x70]
315942	lea    rcx,[rsp+0x70]
315947	mov    DWORD PTR [rip+0xd0ac3],eax        # 0x3e6410
31594d	call   0x2cc730
315952	mov    rcx,rax
315955	call   0x2cdca4
31595a	lea    rdx,[rsp+0x30]
31595f	mov    rsi,rax
315962	lea    rcx,[rsp+0x78]
315967	call   0x2f4250   ; STR "get_main"
31596c	mov    rcx,rax
31596f	call   0x2d8504
315974	lea    rdx,[rsp+0x39]
315979	mov    rdi,rax
31597c	lea    rcx,[rsp+0x78]
315981	call   0x2f36cc   ; STR "UnityEngine"
315986	mov    rcx,rax
315989	call   0x2cde0c
31598e	lea    rdx,[rsp+0x80]
315996	mov    rbx,rax
315999	lea    rcx,[rsp+0x78]
31599e	call   0x2f2214   ; STR "Camera"
3159a3	mov    rcx,rax
3159a6	call   0x2dd110
3159ab	mov    rcx,rax
3159ae	mov    rdx,rbx
3159b1	call   0x334224
3159b6	or     r8d,0xffffffff
3159ba	mov    rcx,rax
3159bd	mov    r9,rsi
3159c0	mov    DWORD PTR [rsp+0x20],r8d
3159c5	mov    rdx,rdi
3159c8	call   0x3349ac
3159cd	mov    r8,QWORD PTR [rax]
3159d0	mov    eax,DWORD PTR [rip+0xd0a3a]        # 0x3e6410
3159d6	mov    QWORD PTR [rip+0xd0a2b],r8        # 0x3e6408
3159dd	jmp    0x3159e6
3159df	mov    r8,QWORD PTR [rip+0xd0a22]        # 0x3e6408
3159e6	test   al,0x2
3159e8	jne    0x315a09
3159ea	mov    rcx,QWORD PTR [rip+0xc046f]        # 0x3d5e60
3159f1	lea    rdx,[rip+0xd0a28]        # 0x3e6420
3159f8	or     eax,0x2
3159fb	xor    r9d,r9d
3159fe	mov    DWORD PTR [rip+0xd0a0c],eax        # 0x3e6410
315a04	call   0x2cbd24
315a09	mov    rcx,QWORD PTR [rip+0xc0450]        # 0x3d5e60
315a10	lea    rdx,[rip+0xd0a09]        # 0x3e6420
315a17	add    rsp,0x50
315a1b	pop    rdi
315a1c	pop    rsi
315a1d	pop    rbx
315a1e	jmp    0x2dda18
