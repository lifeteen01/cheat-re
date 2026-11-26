2d56b8	rex push rbx
2d56ba	sub    rsp,0x60
2d56be	mov    rbx,rcx
2d56c1	lea    rcx,[rsp+0x20]
2d56c6	call   0x2d6384
2d56cb	lea    rcx,[rsp+0x20]
2d56d0	call   0x2d8694
2d56d5	test   al,al
2d56d7	je     0x2d56e3
2d56d9	mov    rcx,rbx
2d56dc	call   0x2d4560
2d56e1	jmp    0x2d572e
2d56e3	lea    rdx,[rsp+0x80]
2d56eb	lea    rcx,[rsp+0x80]
2d56f3	call   0x2d501c   ; STR "\"
2d56f8	mov    rcx,rax
2d56fb	call   0x2d843c
2d5700	mov    r8,rax
2d5703	lea    rdx,[rip+0xfffffffffff43006]        # 0x218710
2d570a	lea    rcx,[rsp+0x40]
2d570f	call   0x2cefd4
2d5714	mov    rdx,rax
2d5717	lea    r8,[rsp+0x20]
2d571c	mov    rcx,rbx
2d571f	call   0x2cef64
2d5724	lea    rcx,[rsp+0x40]
2d5729	call   0x2cc4f4
2d572e	lea    rcx,[rsp+0x20]
2d5733	call   0x2cc4f4
2d5738	mov    rax,rbx
2d573b	add    rsp,0x60
2d573f	pop    rbx
2d5740	ret
