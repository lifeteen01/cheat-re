2e6240	rex push rbx
2e6242	push   rsi
2e6243	push   rdi
2e6244	sub    rsp,0x50
2e6248	mov    eax,DWORD PTR [rip+0xfe5b2]        # 0x3e4800
2e624e	test   al,0x1
2e6250	jne    0x2e62fb
2e6256	or     eax,0x1
2e6259	lea    rdx,[rsp+0x70]
2e625e	lea    rcx,[rsp+0x70]
2e6263	mov    DWORD PTR [rip+0xfe597],eax        # 0x3e4800
2e6269	call   0x2cc730
2e626e	mov    rcx,rax
2e6271	call   0x2cdca4
2e6276	lea    rdx,[rsp+0x30]
2e627b	mov    rsi,rax
2e627e	lea    rcx,[rsp+0x78]
2e6283	call   0x2e5714   ; STR "get_time"
2e6288	mov    rcx,rax
2e628b	call   0x2d8504
2e6290	lea    rdx,[rsp+0x39]
2e6295	mov    rdi,rax
2e6298	lea    rcx,[rsp+0x78]
2e629d	call   0x2e5558   ; STR "UnityEngine"
2e62a2	mov    rcx,rax
2e62a5	call   0x2cde0c
2e62aa	lea    rdx,[rsp+0x80]
2e62b2	mov    rbx,rax
2e62b5	lea    rcx,[rsp+0x78]
2e62ba	call   0x2e53e0   ; STR "Time"
2e62bf	mov    rcx,rax
2e62c2	call   0x2e35ec
2e62c7	mov    rcx,rax
2e62ca	mov    rdx,rbx
2e62cd	call   0x334224
2e62d2	or     r8d,0xffffffff
2e62d6	mov    rcx,rax
2e62d9	mov    r9,rsi
2e62dc	mov    DWORD PTR [rsp+0x20],r8d
2e62e1	mov    rdx,rdi
2e62e4	call   0x3349ac
2e62e9	mov    r8,QWORD PTR [rax]
2e62ec	mov    eax,DWORD PTR [rip+0xfe50e]        # 0x3e4800
2e62f2	mov    QWORD PTR [rip+0xfe4ff],r8        # 0x3e47f8
2e62f9	jmp    0x2e6302
2e62fb	mov    r8,QWORD PTR [rip+0xfe4f6]        # 0x3e47f8
2e6302	test   al,0x2
2e6304	jne    0x2e6325
2e6306	mov    rcx,QWORD PTR [rip+0xefb53]        # 0x3d5e60
2e630d	lea    rdx,[rip+0xfe4fc]        # 0x3e4810
2e6314	or     eax,0x2
2e6317	xor    r9d,r9d
2e631a	mov    DWORD PTR [rip+0xfe4e0],eax        # 0x3e4800
2e6320	call   0x2cbd24
2e6325	mov    rcx,QWORD PTR [rip+0xefb34]        # 0x3d5e60
2e632c	lea    rdx,[rip+0xfe4dd]        # 0x3e4810
2e6333	add    rsp,0x50
2e6337	pop    rdi
2e6338	pop    rsi
2e6339	pop    rbx
2e633a	jmp    0x2de950
