315a54	mov    QWORD PTR [rsp+0x8],rbx
315a59	push   rbp
315a5a	push   rsi
315a5b	push   rdi
315a5c	sub    rsp,0x60
315a60	mov    rbp,rcx
315a63	call   0x2caf08
315a68	test   al,al
315a6a	jne    0x315a73
315a6c	xor    eax,eax
315a6e	jmp    0x315b72
315a73	mov    eax,DWORD PTR [rip+0xd0c67]        # 0x3e66e0
315a79	test   al,0x1
315a7b	jne    0x315b32
315a81	or     eax,0x1
315a84	lea    rdx,[rsp+0x88]
315a8c	lea    rcx,[rsp+0x88]
315a94	mov    DWORD PTR [rip+0xd0c46],eax        # 0x3e66e0
315a9a	call   0x2cc730
315a9f	mov    rcx,rax
315aa2	call   0x2cdca4
315aa7	lea    rdx,[rsp+0x46]
315aac	mov    rsi,rax
315aaf	lea    rcx,[rsp+0x90]
315ab7	call   0x2f426c   ; STR "get_transform"
315abc	mov    rcx,rax
315abf	call   0x2d861c
315ac4	lea    rdx,[rsp+0x3a]
315ac9	mov    rdi,rax
315acc	lea    rcx,[rsp+0x90]
315ad4	call   0x2f36e8   ; STR "UnityEngine"
315ad9	mov    rcx,rax
315adc	call   0x2cde0c
315ae1	lea    rdx,[rsp+0x30]
315ae6	mov    rbx,rax
315ae9	lea    rcx,[rsp+0x90]
315af1	call   0x2f2234   ; STR "Component"
315af6	mov    rcx,rax
315af9	call   0x2cdd1c
315afe	mov    rcx,rax
315b01	mov    rdx,rbx
315b04	call   0x334224
315b09	or     r8d,0xffffffff
315b0d	mov    rcx,rax
315b10	mov    r9,rsi
315b13	mov    DWORD PTR [rsp+0x20],r8d
315b18	mov    rdx,rdi
315b1b	call   0x3349ac
315b20	mov    r8,QWORD PTR [rax]
315b23	mov    eax,DWORD PTR [rip+0xd0bb7]        # 0x3e66e0
315b29	mov    QWORD PTR [rip+0xd0ba8],r8        # 0x3e66d8
315b30	jmp    0x315b39
315b32	mov    r8,QWORD PTR [rip+0xd0b9f]        # 0x3e66d8
315b39	test   al,0x2
315b3b	jne    0x315b5c
315b3d	mov    rcx,QWORD PTR [rip+0xc031c]        # 0x3d5e60
315b44	lea    rdx,[rip+0xd0ba5]        # 0x3e66f0
315b4b	or     eax,0x2
315b4e	xor    r9d,r9d
315b51	mov    DWORD PTR [rip+0xd0b89],eax        # 0x3e66e0
315b57	call   0x2cbd24
315b5c	mov    rcx,QWORD PTR [rip+0xc02fd]        # 0x3d5e60
315b63	lea    rdx,[rip+0xd0b86]        # 0x3e66f0
315b6a	mov    r8,rbp
315b6d	call   0x2cb9fc
315b72	mov    rbx,QWORD PTR [rsp+0x80]
315b7a	add    rsp,0x60
315b7e	pop    rdi
315b7f	pop    rsi
315b80	pop    rbp
315b81	ret
