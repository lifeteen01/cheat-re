36c79c	mov    QWORD PTR [rsp+0x8],rbx
36c7a1	push   rbp
36c7a2	push   rsi
36c7a3	push   rdi
36c7a4	sub    rsp,0x50
36c7a8	mov    rbp,rcx
36c7ab	call   0x2caf08
36c7b0	test   al,al
36c7b2	jne    0x36c7bb
36c7b4	xor    eax,eax
36c7b6	jmp    0x36c8b7
36c7bb	mov    eax,DWORD PTR [rip+0x9347f]        # 0x3ffc40
36c7c1	test   al,0x1
36c7c3	jne    0x36c877
36c7c9	or     eax,0x1
36c7cc	lea    rdx,[rsp+0x78]
36c7d1	lea    rcx,[rsp+0x78]
36c7d6	mov    DWORD PTR [rip+0x93464],eax        # 0x3ffc40
36c7dc	call   0x2cc730
36c7e1	mov    rcx,rax
36c7e4	call   0x2cdca4
36c7e9	lea    rdx,[rsp+0x3c]
36c7ee	mov    rsi,rax
36c7f1	lea    rcx,[rsp+0x80]
36c7f9	call   0x36c5d8   ; STR "get_cullingMask"
36c7fe	mov    rcx,rax
36c801	call   0x2dd160
36c806	lea    rdx,[rsp+0x30]
36c80b	mov    rdi,rax
36c80e	lea    rcx,[rsp+0x80]
36c816	call   0x36c54c   ; STR "UnityEngine"
36c81b	mov    rcx,rax
36c81e	call   0x2cde34
36c823	lea    rdx,[rsp+0x88]
36c82b	mov    rbx,rax
36c82e	lea    rcx,[rsp+0x80]
36c836	call   0x36c4b0   ; STR "Camera"
36c83b	mov    rcx,rax
36c83e	call   0x2cdcf4
36c843	mov    rcx,rax
36c846	mov    rdx,rbx
36c849	call   0x334224
36c84e	or     r8d,0xffffffff
36c852	mov    rcx,rax
36c855	mov    r9,rsi
36c858	mov    DWORD PTR [rsp+0x20],r8d
36c85d	mov    rdx,rdi
36c860	call   0x3349ac
36c865	mov    r8,QWORD PTR [rax]
36c868	mov    eax,DWORD PTR [rip+0x933d2]        # 0x3ffc40
36c86e	mov    QWORD PTR [rip+0x933c3],r8        # 0x3ffc38
36c875	jmp    0x36c87e
36c877	mov    r8,QWORD PTR [rip+0x933ba]        # 0x3ffc38
36c87e	test   al,0x2
36c880	jne    0x36c8a1
36c882	mov    rcx,QWORD PTR [rip+0x695d7]        # 0x3d5e60
36c889	lea    rdx,[rip+0x933c0]        # 0x3ffc50
36c890	or     eax,0x2
36c893	xor    r9d,r9d
36c896	mov    DWORD PTR [rip+0x933a4],eax        # 0x3ffc40
36c89c	call   0x2cbd24
36c8a1	mov    rcx,QWORD PTR [rip+0x695b8]        # 0x3d5e60
36c8a8	lea    rdx,[rip+0x933a1]        # 0x3ffc50
36c8af	mov    r8,rbp
36c8b2	call   0x2cb9fc
36c8b7	mov    rbx,QWORD PTR [rsp+0x70]
36c8bc	add    rsp,0x50
36c8c0	pop    rdi
36c8c1	pop    rsi
36c8c2	pop    rbp
36c8c3	ret
