2d5918	test   rdx,rdx
2d591b	je     0x2d5a16
2d5921	push   rbp
2d5922	lea    rbp,[rsp-0x57]
2d5927	sub    rsp,0x90
2d592e	cmp    BYTE PTR [rdx],0x0
2d5931	je     0x2d5a0e
2d5937	lea    rcx,[rbp+0x37]
2d593b	call   0x2cc2cc
2d5940	lea    rdx,[rbp+0x37]
2d5944	lea    rcx,[rbp-0x9]
2d5948	call   0x2d6384
2d594d	lea    rcx,[rbp+0x37]
2d5951	call   0x2cc4f4
2d5956	lea    rcx,[rbp-0x9]
2d595a	call   0x2d8694
2d595f	test   al,al
2d5961	jne    0x2d5a05
2d5967	lea    rdx,[rbp-0x9]
2d596b	lea    rcx,[rbp+0x17]
2d596f	call   0x2d56b8
2d5974	lea    rcx,[rbp+0x17]
2d5978	call   0x2d8694
2d597d	test   al,al
2d597f	jne    0x2d59fc
2d5981	lea    rcx,[rbp+0x17]
2d5985	call   0x2cd7ec
2d598a	mov    rcx,rax
2d598d	call   0x2d5a18
2d5992	call   0x2d91c4
2d5997	lea    rdx,[rbp-0x9]
2d599b	lea    rcx,[rip+0xfffffffffff42d8e]        # 0x218730
2d59a2	call   0x2cef30
2d59a7	test   al,al
2d59a9	je     0x2d59fc
2d59ab	lea    rcx,[rip+0xfffffffffff42d9e]        # 0x218750
2d59b2	call   0x2d86a0
2d59b7	test   al,al
2d59b9	jne    0x2d59d8
2d59bb	lea    rcx,[rip+0xfffffffffff42d8e]        # 0x218750
2d59c2	call   0x2ce5d8
2d59c7	mov    rdx,rax
2d59ca	lea    rcx,[rip+0xfffffffffff42d5f]        # 0x218730
2d59d1	call   0x2d4c24
2d59d6	jmp    0x2d59fc
2d59d8	lea    rdx,[rbp-0x19]
2d59dc	lea    rcx,[rbp+0x6f]
2d59e0	call   0x2d4f20   ; STR "DefaultCfg.bin"
2d59e5	mov    rcx,rax
2d59e8	call   0x2d866c
2d59ed	mov    rdx,rax
2d59f0	lea    rcx,[rip+0xfffffffffff42d39]        # 0x218730
2d59f7	call   0x2d4c68
2d59fc	lea    rcx,[rbp+0x17]
2d5a00	call   0x2cc4f4
2d5a05	lea    rcx,[rbp-0x9]
2d5a09	call   0x2cc4f4
2d5a0e	add    rsp,0x90
2d5a15	pop    rbp
2d5a16	ret
