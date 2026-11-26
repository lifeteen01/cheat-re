391c50	or     r8,0xffffffffffffffff
391c54	test   rdx,rdx
391c57	cmovne r8,rdx
391c5b	jmp    0x391c6f
391c5d	mov    al,BYTE PTR [rcx]
391c5f	test   al,al
391c61	je     0x391c74
391c63	cmp    al,0x23
391c65	jne    0x391c6c
391c67	cmp    BYTE PTR [rcx+0x1],al
391c6a	je     0x391c74
391c6c	inc    rcx
391c6f	cmp    rcx,r8
391c72	jb     0x391c5d
391c74	mov    rax,rcx
391c77	ret
