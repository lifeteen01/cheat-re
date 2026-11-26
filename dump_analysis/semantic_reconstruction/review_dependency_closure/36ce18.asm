36ce18	mov    QWORD PTR [rsp+0x8],rbx
36ce1d	mov    QWORD PTR [rsp+0x10],rbp
36ce22	push   rsi
36ce23	push   rdi
36ce24	push   r14
36ce26	sub    rsp,0x60
36ce2a	mov    r14b,dl
36ce2d	mov    rbp,rcx
36ce30	call   0x2caf08
36ce35	test   al,al
36ce37	je     0x36cf3f
36ce3d	mov    eax,DWORD PTR [rip+0x930cd]        # 0x3fff10
36ce43	test   al,0x1
36ce45	jne    0x36cefc
36ce4b	or     eax,0x1
36ce4e	lea    rdx,[rsp+0x90]
36ce56	lea    rcx,[rsp+0x90]
36ce5e	mov    DWORD PTR [rip+0x930ac],eax        # 0x3fff10
36ce64	call   0x2cc730
36ce69	mov    rcx,rax
36ce6c	call   0x2cdca4
36ce71	lea    rdx,[rsp+0x3a]
36ce76	mov    rsi,rax
36ce79	lea    rcx,[rsp+0x98]
36ce81	call   0x36cdfc   ; STR "set_enabled"
36ce86	mov    rcx,rax
36ce89	call   0x2cde34
36ce8e	lea    rdx,[rsp+0x46]
36ce93	mov    rdi,rax
36ce96	lea    rcx,[rsp+0x98]
36ce9e	call   0x36cde0   ; STR "UnityEngine"
36cea3	mov    rcx,rax
36cea6	call   0x2cde34
36ceab	lea    rdx,[rsp+0x30]
36ceb0	mov    rbx,rax
36ceb3	lea    rcx,[rsp+0x98]
36cebb	call   0x36cdc4   ; STR "Behaviour"
36cec0	mov    rcx,rax
36cec3	call   0x2cdd44
36cec8	mov    rcx,rax
36cecb	mov    rdx,rbx
36cece	call   0x334224
36ced3	or     r8d,0xffffffff
36ced7	mov    rcx,rax
36ceda	mov    r9,rsi
36cedd	mov    DWORD PTR [rsp+0x20],r8d
36cee2	mov    rdx,rdi
36cee5	call   0x3349ac
36ceea	mov    r8,QWORD PTR [rax]
36ceed	mov    eax,DWORD PTR [rip+0x9301d]        # 0x3fff10
36cef3	mov    QWORD PTR [rip+0x9300e],r8        # 0x3fff08
36cefa	jmp    0x36cf03
36cefc	mov    r8,QWORD PTR [rip+0x93005]        # 0x3fff08
36cf03	test   al,0x2
36cf05	jne    0x36cf26
36cf07	mov    rcx,QWORD PTR [rip+0x68f52]        # 0x3d5e60
36cf0e	lea    rdx,[rip+0x9300b]        # 0x3fff20
36cf15	or     eax,0x2
36cf18	xor    r9d,r9d
36cf1b	mov    DWORD PTR [rip+0x92fef],eax        # 0x3fff10
36cf21	call   0x2cbd24
36cf26	mov    rcx,QWORD PTR [rip+0x68f33]        # 0x3d5e60
36cf2d	lea    rdx,[rip+0x92fec]        # 0x3fff20
36cf34	mov    r9b,r14b
36cf37	mov    r8,rbp
36cf3a	call   0x3214f4
36cf3f	lea    r11,[rsp+0x60]
36cf44	mov    rbx,QWORD PTR [r11+0x20]
36cf48	mov    rbp,QWORD PTR [r11+0x28]
36cf4c	mov    rsp,r11
36cf4f	pop    r14
36cf51	pop    rdi
36cf52	pop    rsi
36cf53	ret
