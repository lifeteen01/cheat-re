2d64c4	rex push rbx
2d64c6	sub    rsp,0x40
2d64ca	mov    rdx,rcx
2d64cd	lea    rcx,[rsp+0x20]
2d64d2	call   0x2d6384
2d64d7	lea    rcx,[rsp+0x20]
2d64dc	call   0x2d8694
2d64e1	test   al,al
2d64e3	je     0x2d64e9
2d64e5	xor    bl,bl
2d64e7	jmp    0x2d64fc
2d64e9	lea    rdx,[rsp+0x20]
2d64ee	lea    rcx,[rip+0xfffffffffff4223b]        # 0x218730
2d64f5	call   0x2d4c24
2d64fa	mov    bl,0x1
2d64fc	lea    rcx,[rsp+0x20]
2d6501	call   0x2cc4f4
2d6506	mov    al,bl
2d6508	add    rsp,0x40
2d650c	pop    rbx
2d650d	ret
