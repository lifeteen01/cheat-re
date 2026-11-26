2d5e00	rex push rbx
2d5e02	sub    rsp,0x50
2d5e06	mov    rbx,rcx
2d5e09	lea    rcx,[rip+0xfffffffffff42920]        # 0x218730
2d5e10	call   0x2d64c4
2d5e15	test   al,al
2d5e17	jne    0x2d5e3f
2d5e19	lea    rdx,[rsp+0x20]
2d5e1e	lea    rcx,[rsp+0x60]
2d5e23	call   0x2d4f50   ; STR "DefaultCfg.bin"
2d5e28	mov    rcx,rax
2d5e2b	call   0x2d8644
2d5e30	mov    rdx,rax
2d5e33	lea    rcx,[rip+0xfffffffffff428f6]        # 0x218730
2d5e3a	call   0x2d4c68
2d5e3f	lea    rdx,[rsp+0x60]
2d5e44	lea    rcx,[rsp+0x60]
2d5e49	call   0x2d501c   ; STR "\"
2d5e4e	mov    rcx,rax
2d5e51	call   0x2d843c
2d5e56	mov    r8,rax
2d5e59	lea    rdx,[rip+0xfffffffffff428b0]        # 0x218710
2d5e60	lea    rcx,[rsp+0x30]
2d5e65	call   0x2cefd4
2d5e6a	mov    rdx,rax
2d5e6d	lea    r8,[rip+0xfffffffffff428bc]        # 0x218730
2d5e74	mov    rcx,rbx
2d5e77	call   0x2cef64
2d5e7c	lea    rcx,[rsp+0x30]
2d5e81	call   0x2cc4f4
2d5e86	mov    rax,rbx
2d5e89	add    rsp,0x50
2d5e8d	pop    rbx
2d5e8e	ret
