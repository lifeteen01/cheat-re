2d5a18	mov    QWORD PTR [rsp+0x8],rbx
2d5a1d	push   rbp
2d5a1e	push   rsi
2d5a1f	push   rdi
2d5a20	sub    rsp,0x50
2d5a24	call   0x2ce5dc
2d5a29	mov    ecx,DWORD PTR [rip+0x100d01]        # 0x3d6730
2d5a2f	mov    rbp,rax
2d5a32	test   cl,0x1
2d5a35	jne    0x2d5ae6
2d5a3b	or     ecx,0x1
2d5a3e	lea    rdx,[rsp+0x78]
2d5a43	mov    DWORD PTR [rip+0x100ce7],ecx        # 0x3d6730
2d5a49	lea    rcx,[rsp+0x78]
2d5a4e	call   0x2cc730
2d5a53	mov    rcx,rax
2d5a56	call   0x2cdca4
2d5a5b	lea    rdx,[rsp+0x3a]
2d5a60	mov    rsi,rax
2d5a63	lea    rcx,[rsp+0x80]
2d5a6b	call   0x2d5394   ; STR "DeleteFile"
2d5a70	mov    rcx,rax
2d5a73	call   0x2d85cc
2d5a78	lea    rdx,[rsp+0x30]
2d5a7d	mov    rdi,rax
2d5a80	lea    rcx,[rsp+0x80]
2d5a88	call   0x2d5248   ; STR "System.IO"
2d5a8d	mov    rcx,rax
2d5a90	call   0x2cdd1c
2d5a95	lea    rdx,[rsp+0x45]
2d5a9a	mov    rbx,rax
2d5a9d	lea    rcx,[rsp+0x80]
2d5aa5	call   0x2d505c   ; STR "FileSystem"
2d5aaa	mov    rcx,rax
2d5aad	call   0x2d85cc
2d5ab2	mov    rcx,rax
2d5ab5	mov    rdx,rbx
2d5ab8	call   0x334224
2d5abd	or     r8d,0xffffffff
2d5ac1	mov    rcx,rax
2d5ac4	mov    r9,rsi
2d5ac7	mov    DWORD PTR [rsp+0x20],r8d
2d5acc	mov    rdx,rdi
2d5acf	call   0x3349ac
2d5ad4	mov    ecx,DWORD PTR [rip+0x100c56]        # 0x3d6730
2d5ada	mov    r8,QWORD PTR [rax]
2d5add	mov    QWORD PTR [rip+0x100c44],r8        # 0x3d6728
2d5ae4	jmp    0x2d5aed
2d5ae6	mov    r8,QWORD PTR [rip+0x100c3b]        # 0x3d6728
2d5aed	test   cl,0x2
2d5af0	jne    0x2d5b11
2d5af2	or     ecx,0x2
2d5af5	lea    rdx,[rip+0x100c44]        # 0x3d6740
2d5afc	mov    DWORD PTR [rip+0x100c2e],ecx        # 0x3d6730
2d5b02	xor    r9d,r9d
2d5b05	mov    rcx,QWORD PTR [rip+0x100354]        # 0x3d5e60
2d5b0c	call   0x2cbd24
2d5b11	mov    rcx,QWORD PTR [rip+0x100348]        # 0x3d5e60
2d5b18	lea    rdx,[rip+0x100c21]        # 0x3d6740
2d5b1f	mov    r8,rbp
2d5b22	mov    rbx,QWORD PTR [rsp+0x70]
2d5b27	add    rsp,0x50
2d5b2b	pop    rdi
2d5b2c	pop    rsi
2d5b2d	pop    rbp
2d5b2e	jmp    0x2cb9fc
