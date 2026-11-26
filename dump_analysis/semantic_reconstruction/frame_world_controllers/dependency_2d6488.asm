2d6488	sub    rsp,0x48
2d648c	test   rdx,rdx
2d648f	je     0x2d64b4
2d6491	cmp    BYTE PTR [rdx],0x0
2d6494	je     0x2d64b4
2d6496	lea    rcx,[rsp+0x20]
2d649b	call   0x2cc2cc
2d64a0	lea    rcx,[rsp+0x20]
2d64a5	call   0x2d64c4
2d64aa	lea    rcx,[rsp+0x20]
2d64af	call   0x2cc4f4
2d64b4	call   0x2dd634
2d64b9	add    rsp,0x48
2d64bd	jmp    0x2d91c4
