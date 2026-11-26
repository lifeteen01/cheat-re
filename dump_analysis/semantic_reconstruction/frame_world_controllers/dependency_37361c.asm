37361c	mov    QWORD PTR [rsp+0x8],rbx
373621	push   rbp
373622	push   rsi
373623	push   rdi
373624	sub    rsp,0x50
373628	mov    rbp,rcx
37362b	call   0x2caf08
373630	test   al,al
373632	jne    0x37363b
373634	xor    eax,eax
373636	jmp    0x373737
37363b	mov    eax,DWORD PTR [rip+0x8dc8f]        # 0x4012d0
373641	test   al,0x1
373643	jne    0x3736f7
373649	or     eax,0x1
37364c	lea    rdx,[rsp+0x78]
373651	lea    rcx,[rsp+0x78]
373656	mov    DWORD PTR [rip+0x8dc74],eax        # 0x4012d0
37365c	call   0x2cc730
373661	mov    rcx,rax
373664	call   0x2cdca4
373669	lea    rdx,[rsp+0x30]
37366e	mov    rsi,rax
373671	lea    rcx,[rsp+0x80]
373679	call   0x372ea8   ; STR "get_name"
37367e	mov    rcx,rax
373681	call   0x2e9b8c
373686	lea    rdx,[rsp+0x39]
37368b	mov    rdi,rax
37368e	lea    rcx,[rsp+0x80]
373696	call   0x372dc4   ; STR "UnityEngine"
37369b	mov    rcx,rax
37369e	call   0x2cde34
3736a3	lea    rdx,[rsp+0x88]
3736ab	mov    rbx,rax
3736ae	lea    rcx,[rsp+0x80]
3736b6	call   0x372ce4   ; STR "Object"
3736bb	mov    rcx,rax
3736be	call   0x2cdcf4
3736c3	mov    rcx,rax
3736c6	mov    rdx,rbx
3736c9	call   0x334224
3736ce	or     r8d,0xffffffff
3736d2	mov    rcx,rax
3736d5	mov    r9,rsi
3736d8	mov    DWORD PTR [rsp+0x20],r8d
3736dd	mov    rdx,rdi
3736e0	call   0x3349ac
3736e5	mov    r8,QWORD PTR [rax]
3736e8	mov    eax,DWORD PTR [rip+0x8dbe2]        # 0x4012d0
3736ee	mov    QWORD PTR [rip+0x8dbd3],r8        # 0x4012c8
3736f5	jmp    0x3736fe
3736f7	mov    r8,QWORD PTR [rip+0x8dbca]        # 0x4012c8
3736fe	test   al,0x2
373700	jne    0x373721
373702	mov    rcx,QWORD PTR [rip+0x62757]        # 0x3d5e60
373709	lea    rdx,[rip+0x8dbd0]        # 0x4012e0
373710	or     eax,0x2
373713	xor    r9d,r9d
373716	mov    DWORD PTR [rip+0x8dbb4],eax        # 0x4012d0
37371c	call   0x2cbd24
373721	mov    rcx,QWORD PTR [rip+0x62738]        # 0x3d5e60
373728	lea    rdx,[rip+0x8dbb1]        # 0x4012e0
37372f	mov    r8,rbp
373732	call   0x2cb9fc
373737	mov    rbx,QWORD PTR [rsp+0x70]
37373c	add    rsp,0x50
373740	pop    rdi
373741	pop    rsi
373742	pop    rbp
373743	ret
