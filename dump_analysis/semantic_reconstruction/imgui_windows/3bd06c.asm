3bd06c	xor    r11d,r11d
3bd06f	mov    r9,rcx
3bd072	test   dl,dl
3bd074	mov    r10b,r11b
3bd077	mov    edx,r11d
3bd07a	jne    0x3bd0ab
3bd07c	mov    r8d,r11d
3bd07f	movzx  ecx,WORD PTR [r9+r8*2+0x12]
3bd085	test   r10b,r10b
3bd088	je     0x3bd094
3bd08a	test   cx,cx
3bd08d	je     0x3bd097
3bd08f	add    dx,WORD PTR [r9+0x8]
3bd094	test   cx,cx
3bd097	setne  al
3bd09a	add    dx,cx
3bd09d	or     r10b,al
3bd0a0	inc    r8
3bd0a3	cmp    r8,0x4
3bd0a7	jne    0x3bd07f
3bd0a9	jmp    0x3bd10b
3bd0ab	mov    r8d,r11d
3bd0ae	mov    eax,r8d
3bd0b1	movzx  ecx,WORD PTR [r9+rax*2+0x12]
3bd0b7	test   r10b,r10b
3bd0ba	je     0x3bd0c6
3bd0bc	test   cx,cx
3bd0bf	je     0x3bd0c9
3bd0c1	add    dx,WORD PTR [r9+0x8]
3bd0c6	test   cx,cx
3bd0c9	setne  al
3bd0cc	or     r10b,al
3bd0cf	cmp    r8d,0x1
3bd0d3	jne    0x3bd0dc
3bd0d5	mov    WORD PTR [r9+0xc],dx
3bd0da	jmp    0x3bd0e7
3bd0dc	cmp    r8d,0x2
3bd0e0	jne    0x3bd0ef
3bd0e2	mov    WORD PTR [r9+0xe],dx
3bd0e7	add    dx,cx
3bd0ea	inc    r8d
3bd0ed	jmp    0x3bd0ae
3bd0ef	cmp    r8d,0x3
3bd0f3	je     0x3bd103
3bd0f5	add    dx,cx
3bd0f8	inc    r8d
3bd0fb	cmp    r8d,0x4
3bd0ff	jl     0x3bd0ae
3bd101	jmp    0x3bd10b
3bd103	mov    WORD PTR [r9+0x10],dx
3bd108	add    dx,cx
3bd10b	movzx  eax,dx
3bd10e	mov    DWORD PTR [r9+0x4],eax
3bd112	ret
