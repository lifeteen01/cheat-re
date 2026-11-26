2edcf4	mov    QWORD PTR [rsp+0x10],rdx
2edcf9	mov    QWORD PTR [rsp+0x8],rcx
2edcfe	push   rbx
2edcff	push   rsi
2edd00	push   rdi
2edd01	sub    rsp,0x20
2edd05	lea    rcx,[rsp+0x40]
2edd0a	call   0x2ce5d8
2edd0f	lea    rcx,[rsp+0x48]
2edd14	mov    QWORD PTR [rsp+0x58],rax
2edd19	mov    rbx,rax
2edd1c	call   0x2ce5d8
2edd21	mov    rsi,rax
2edd24	cmp    rbx,rax
2edd27	je     0x2edd4e
2edd29	mov    rdi,rbx
2edd2c	mov    rdx,rbx
2edd2f	lea    rcx,[rsp+0x50]
2edd34	call   0x2ea7fc
2edd39	test   al,al
2edd3b	jne    0x2edd4e
2edd3d	lea    rbx,[rdi+0x10]
2edd41	mov    QWORD PTR [rsp+0x58],rbx
2edd46	mov    rdi,rbx
2edd49	cmp    rbx,rsi
2edd4c	jne    0x2edd2c
2edd4e	lea    rdx,[rsp+0x58]
2edd53	lea    rcx,[rsp+0x40]
2edd58	call   0x2d17ec
2edd5d	mov    rax,QWORD PTR [rsp+0x40]
2edd62	add    rsp,0x20
2edd66	pop    rdi
2edd67	pop    rsi
2edd68	pop    rbx
2edd69	ret
