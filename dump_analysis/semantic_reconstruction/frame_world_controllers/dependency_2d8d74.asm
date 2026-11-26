2d8d74	mov    r11,rsp
2d8d77	mov    QWORD PTR [r11+0x8],rbx
2d8d7b	mov    QWORD PTR [r11+0x10],rsi
2d8d7f	push   rdi
2d8d80	sub    rsp,0x50
2d8d84	mov    eax,DWORD PTR [rip+0xfd7ce]        # 0x3d6558
2d8d8a	mov    rdi,rdx
2d8d8d	mov    rsi,rcx
2d8d90	test   al,0x1
2d8d92	jne    0x2d8df1
2d8d94	or     eax,0x1
2d8d97	lea    rdx,[r11-0x38]
2d8d9b	lea    rcx,[r11+0x18]
2d8d9f	mov    DWORD PTR [rip+0xfd7b3],eax        # 0x3d6558
2d8da5	call   0x2d530c   ; STR "il2cpp_array_new"
2d8daa	mov    rcx,rax
2d8dad	call   0x2d8554
2d8db2	lea    rdx,[rsp+0x31]
2d8db7	mov    rbx,rax
2d8dba	lea    rcx,[rsp+0x70]
2d8dbf	call   0x2d512c   ; STR "GameAssembly.dll"
2d8dc4	mov    rcx,rax
2d8dc7	call   0x2d8554
2d8dcc	mov    rcx,rax
2d8dcf	call   0x3cb058
2d8dd4	mov    rcx,rax
2d8dd7	mov    rdx,rbx
2d8dda	call   0x3caed0
2d8ddf	mov    r8,rax
2d8de2	mov    QWORD PTR [rip+0xfd767],rax        # 0x3d6550
2d8de9	mov    eax,DWORD PTR [rip+0xfd769]        # 0x3d6558
2d8def	jmp    0x2d8df8
2d8df1	mov    r8,QWORD PTR [rip+0xfd758]        # 0x3d6550
2d8df8	test   al,0x2
2d8dfa	jne    0x2d8e1b
2d8dfc	mov    rcx,QWORD PTR [rip+0xfd05d]        # 0x3d5e60
2d8e03	lea    rdx,[rip+0xfd756]        # 0x3d6560
2d8e0a	or     eax,0x2
2d8e0d	xor    r9d,r9d
2d8e10	mov    DWORD PTR [rip+0xfd742],eax        # 0x3d6558
2d8e16	call   0x2cbd24
2d8e1b	mov    rcx,QWORD PTR [rip+0xfd03e]        # 0x3d5e60
2d8e22	lea    rdx,[rip+0xfd737]        # 0x3d6560
2d8e29	mov    r9,rdi
2d8e2c	mov    r8,rsi
2d8e2f	mov    rbx,QWORD PTR [rsp+0x60]
2d8e34	mov    rsi,QWORD PTR [rsp+0x68]
2d8e39	add    rsp,0x50
2d8e3d	pop    rdi
2d8e3e	jmp    0x2d2094
