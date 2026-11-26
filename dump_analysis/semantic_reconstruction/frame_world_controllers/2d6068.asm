2d6068	sub    rsp,0x68
2d606c	test   rdx,rdx
2d606f	je     0x2d6094
2d6071	cmp    BYTE PTR [rdx],0x0
2d6074	je     0x2d6094
2d6076	lea    rcx,[rsp+0x20]
2d607b	call   0x2cc2cc
2d6080	lea    rcx,[rsp+0x20]
2d6085	call   0x2d64c4
2d608a	lea    rcx,[rsp+0x20]
2d608f	call   0x2cc4f4
2d6094	lea    rcx,[rsp+0x40]
2d6099	call   0x2d5e00
2d609e	lea    rcx,[rsp+0x40]
2d60a3	call   0x2cd7ec
2d60a8	mov    rcx,rax
2d60ab	call   0x2d5be4
2d60b0	test   al,al
2d60b2	je     0x2d60b9
2d60b4	call   0x2dd2ec
2d60b9	call   0x2d91c4
2d60be	lea    rcx,[rsp+0x40]
2d60c3	call   0x2cc4f4
2d60c8	add    rsp,0x68
2d60cc	ret
