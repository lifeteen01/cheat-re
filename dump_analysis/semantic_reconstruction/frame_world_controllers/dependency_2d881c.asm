2d881c	rex push rbx
2d881e	push   rbp
2d881f	push   rsi
2d8820	push   rdi
2d8821	sub    rsp,0x28
2d8825	mov    rbx,r8
2d8828	mov    rbp,rdx
2d882b	mov    rsi,rcx
2d882e	cmp    r8,r9
2d8831	je     0x2d885d
2d8833	mov    rdx,QWORD PTR [rcx+0x8]
2d8837	mov    rcx,r9
2d883a	call   0x2d0eb4
2d883f	mov    rcx,rsi
2d8842	mov    rdi,rax
2d8845	call   0x2cd324
2d884a	mov    rdx,QWORD PTR [rsi+0x8]
2d884e	mov    r8,rax
2d8851	mov    rcx,rdi
2d8854	call   0x2cf898
2d8859	mov    QWORD PTR [rsi+0x8],rdi
2d885d	mov    rcx,rsi
2d8860	call   0x2cb3a4
2d8865	mov    r8,rax
2d8868	mov    rdx,rbx
2d886b	mov    rcx,rbp
2d886e	call   0x2d3fe0
2d8873	mov    rax,rbp
2d8876	add    rsp,0x28
2d887a	pop    rdi
2d887b	pop    rsi
2d887c	pop    rbp
2d887d	pop    rbx
2d887e	ret
