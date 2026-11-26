2d6354	movabs rdx,0xcbf29ce484222325
2d635e	jmp    0x2d6378
2d6360	movsx  rax,BYTE PTR [rcx]
2d6364	movabs r8,0x100000001b3
2d636e	xor    rdx,rax
2d6371	inc    rcx
2d6374	imul   rdx,r8
2d6378	cmp    BYTE PTR [rcx],0x0
2d637b	jne    0x2d6360
2d637d	mov    rax,rdx
2d6380	ret
