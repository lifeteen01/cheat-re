2d6384	rex push rbp
2d6386	push   rbx
2d6387	push   rsi
2d6388	push   rdi
2d6389	mov    rbp,rsp
2d638c	sub    rsp,0x68
2d6390	mov    rbx,rcx
2d6393	lea    rcx,[rbp-0x28]
2d6397	call   0x2d6520
2d639c	lea    rcx,[rbp-0x28]
2d63a0	call   0x2d8694
2d63a5	test   al,al
2d63a7	je     0x2d63b6
2d63a9	mov    rcx,rbx
2d63ac	call   0x2d4560
2d63b1	jmp    0x2d6472
2d63b6	lea    rcx,[rbp-0x48]
2d63ba	call   0x2d4560
2d63bf	lea    rcx,[rbp-0x28]
2d63c3	call   0x2d8ad8
2d63c8	lea    rcx,[rbp-0x48]
2d63cc	lea    rdx,[rax+0x4]
2d63d0	call   0x2d92ec
2d63d5	lea    rcx,[rbp-0x28]
2d63d9	call   0x2d7988
2d63de	lea    rcx,[rbp-0x28]
2d63e2	mov    rsi,rax
2d63e5	call   0x2cd7ec
2d63ea	mov    rdi,rax
2d63ed	cmp    rax,rsi
2d63f0	je     0x2d6429
2d63f2	cmp    BYTE PTR [rdi],0x20
2d63f5	jb     0x2d6421
2d63f7	mov    cl,BYTE PTR [rdi]
2d63f9	sub    cl,0x22
2d63fc	cmp    cl,0x3a
2d63ff	ja     0x2d6411
2d6401	movabs rax,0x400000035002101
2d640b	bt     rax,rcx
2d640f	jb     0x2d6421
2d6411	cmp    BYTE PTR [rdi],0x7c
2d6414	je     0x2d6421
2d6416	mov    dl,BYTE PTR [rdi]
2d6418	lea    rcx,[rbp-0x48]
2d641c	call   0x2d8f74
2d6421	inc    rdi
2d6424	cmp    rdi,rsi
2d6427	jne    0x2d63f2
2d6429	lea    rcx,[rbp-0x48]
2d642d	call   0x2d8694
2d6432	test   al,al
2d6434	je     0x2d6440
2d6436	mov    rcx,rbx
2d6439	call   0x2d4560
2d643e	jmp    0x2d6469
2d6440	lea    rcx,[rbp-0x48]
2d6444	call   0x2d5b78
2d6449	test   al,al
2d644b	jne    0x2d645d
2d644d	lea    rdx,[rip+0xfffffffffffb6fdc]        # 0x28d430
2d6454	lea    rcx,[rbp-0x48]
2d6458	call   0x2d5604
2d645d	lea    rdx,[rbp-0x48]
2d6461	mov    rcx,rbx
2d6464	call   0x2cc284
2d6469	lea    rcx,[rbp-0x48]
2d646d	call   0x2cc4f4
2d6472	lea    rcx,[rbp-0x28]
2d6476	call   0x2cc4f4
2d647b	mov    rax,rbx
2d647e	add    rsp,0x68
2d6482	pop    rdi
2d6483	pop    rsi
2d6484	pop    rbx
2d6485	pop    rbp
2d6486	ret
