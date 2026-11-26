2e5e4c	mov    QWORD PTR [rsp+0x8],rbx
2e5e51	mov    QWORD PTR [rsp+0x10],rsi
2e5e56	push   rdi
2e5e57	sub    rsp,0x20
2e5e5b	mov    sil,dl
2e5e5e	mov    ebx,ecx
2e5e60	call   0x3926ac
2e5e65	mov    rdi,rax
2e5e68	call   0x2e6744
2e5e6d	xor    ecx,ecx
2e5e6f	test   al,al
2e5e71	je     0x2e5e7c
2e5e73	test   sil,sil
2e5e76	je     0x2e5e7c
2e5e78	xor    al,al
2e5e7a	jmp    0x2e5ec8
2e5e7c	cmp    ebx,0x22b
2e5e82	jne    0x2e5e8c
2e5e84	cmp    BYTE PTR [rdi+0xe08],cl
2e5e8a	jmp    0x2e5eba
2e5e8c	cmp    ebx,0x22c
2e5e92	jne    0x2e5e9c
2e5e94	cmp    BYTE PTR [rdi+0xe09],cl
2e5e9a	jmp    0x2e5eba
2e5e9c	cmp    ebx,0x22d
2e5ea2	jne    0x2e5eac
2e5ea4	cmp    BYTE PTR [rdi+0xe0a],cl
2e5eaa	jmp    0x2e5eba
2e5eac	cmp    ebx,0x22e
2e5eb2	jne    0x2e5ed8
2e5eb4	cmp    BYTE PTR [rdi+0xe0b],cl
2e5eba	jne    0x2e5ee8
2e5ebc	mov    edx,0x2
2e5ec1	mov    ecx,ebx
2e5ec3	call   0x2e9c7c
2e5ec8	mov    rbx,QWORD PTR [rsp+0x30]
2e5ecd	mov    rsi,QWORD PTR [rsp+0x38]
2e5ed2	add    rsp,0x20
2e5ed6	pop    rdi
2e5ed7	ret
2e5ed8	cmp    ebx,0x22f
2e5ede	jne    0x2e5ebc
2e5ee0	cmp    BYTE PTR [rdi+0xe0c],cl
2e5ee6	je     0x2e5ebc
2e5ee8	mov    al,0x1
2e5eea	jmp    0x2e5ec8
