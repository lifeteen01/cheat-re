36b1a0	rex push rbx
36b1a2	sub    rsp,0x30
36b1a6	mov    rbx,rcx
36b1a9	call   0x2caf08
36b1ae	test   al,al
36b1b0	je     0x36b23b
36b1b6	mov    rcx,rbx
36b1b9	call   0x2e0e9c
36b1be	test   al,al
36b1c0	je     0x36b23b
36b1c2	mov    r8d,0x1
36b1c8	lea    rdx,[rsp+0x20]
36b1cd	lea    rcx,[rip+0x84f74]        # 0x3f0148
36b1d4	call   0x2e98f0
36b1d9	mov    rcx,rax
36b1dc	call   0x2d4d70
36b1e1	test   al,al
36b1e3	jne    0x36b1f1
36b1e5	mov    rcx,rbx
36b1e8	call   0x36a178
36b1ed	test   al,al
36b1ef	jne    0x36b23b
36b1f1	mov    rcx,rbx
36b1f4	call   0x36acb8
36b1f9	test   al,al
36b1fb	jne    0x36b23b
36b1fd	mov    rcx,rbx
36b200	call   0x3693b0
36b205	test   al,al
36b207	jne    0x36b23b
36b209	cmp    BYTE PTR [rip+0x933a9],al        # 0x3fe5b8
36b20f	jne    0x36b21d
36b211	mov    rcx,rbx
36b214	call   0x36b288
36b219	test   al,al
36b21b	jne    0x36b23b
36b21d	xor    edx,edx
36b21f	mov    rcx,rbx
36b222	call   0x36a20c
36b227	test   al,al
36b229	je     0x36b237
36b22b	cmp    BYTE PTR [rip+0x7c106],0x0        # 0x3e7338
36b232	setne  al
36b235	jmp    0x36b23d
36b237	mov    al,0x1
36b239	jmp    0x36b23d
36b23b	xor    al,al
36b23d	add    rsp,0x30
36b241	pop    rbx
36b242	ret
