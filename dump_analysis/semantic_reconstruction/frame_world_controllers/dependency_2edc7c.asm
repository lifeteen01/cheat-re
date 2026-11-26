2edc7c	mov    QWORD PTR [rsp+0x10],rdx
2edc81	mov    QWORD PTR [rsp+0x8],rcx
2edc86	push   rbx
2edc87	push   rsi
2edc88	push   rdi
2edc89	sub    rsp,0x20
2edc8d	lea    rcx,[rsp+0x40]
2edc92	call   0x2ce5d8
2edc97	lea    rcx,[rsp+0x48]
2edc9c	mov    QWORD PTR [rsp+0x58],rax
2edca1	mov    rbx,rax
2edca4	call   0x2ce5d8
2edca9	mov    rsi,rax
2edcac	cmp    rbx,rax
2edcaf	je     0x2edcd6
2edcb1	mov    rdi,rbx
2edcb4	mov    rdx,rbx
2edcb7	lea    rcx,[rsp+0x50]
2edcbc	call   0x2ea7e8
2edcc1	test   al,al
2edcc3	jne    0x2edcd6
2edcc5	lea    rbx,[rdi+0x40]
2edcc9	mov    QWORD PTR [rsp+0x58],rbx
2edcce	mov    rdi,rbx
2edcd1	cmp    rbx,rsi
2edcd4	jne    0x2edcb4
2edcd6	lea    rdx,[rsp+0x58]
2edcdb	lea    rcx,[rsp+0x40]
2edce0	call   0x2d17ec
2edce5	mov    rax,QWORD PTR [rsp+0x40]
2edcea	add    rsp,0x20
2edcee	pop    rdi
2edcef	pop    rsi
2edcf0	pop    rbx
2edcf1	ret
