2d35e0	mov    QWORD PTR [rsp+0x18],r8
2d35e5	mov    QWORD PTR [rsp+0x10],rdx
2d35ea	push   rbp
2d35eb	push   rbx
2d35ec	push   rsi
2d35ed	push   rdi
2d35ee	mov    rbp,rsp
2d35f1	sub    rsp,0x38
2d35f5	mov    rsi,rcx
2d35f8	lea    rcx,[rbp+0x38]
2d35fc	call   0x2d0a44
2d3601	lea    rdx,[rbp+0x40]
2d3605	mov    rdi,rax
2d3608	lea    rcx,[rbp+0x28]
2d360c	call   0x2cb3a4
2d3611	lea    rcx,[rbp+0x30]
2d3615	mov    rbx,rax
2d3618	call   0x2d0a44
2d361d	mov    r8b,BYTE PTR [rbx]
2d3620	mov    rcx,rax
2d3623	mov    rdx,rdi
2d3626	call   0x2d2bcc
2d362b	mov    QWORD PTR [rbp-0x18],rax
2d362f	mov    rbx,rax
2d3632	cmp    rax,rdi
2d3635	je     0x2d366b
2d3637	jmp    0x2d3662
2d3639	mov    rdx,rbx
2d363c	lea    rcx,[rbp+0x40]
2d3640	call   0x2d5324
2d3645	test   al,al
2d3647	jne    0x2d3662
2d3649	mov    rcx,rbx
2d364c	call   0x2cb3a4
2d3651	mov    rcx,QWORD PTR [rbp-0x18]
2d3655	mov    rdx,rax
2d3658	call   0x2d4be4
2d365d	add    QWORD PTR [rbp-0x18],0x20
2d3662	add    rbx,0x20
2d3666	cmp    rbx,rdi
2d3669	jne    0x2d3639
2d366b	lea    rdx,[rbp-0x18]
2d366f	lea    rcx,[rbp+0x30]
2d3673	call   0x2d182c
2d3678	mov    rax,QWORD PTR [rbp+0x30]
2d367c	mov    QWORD PTR [rsi],rax
2d367f	mov    rax,rsi
2d3682	add    rsp,0x38
2d3686	pop    rdi
2d3687	pop    rsi
2d3688	pop    rbx
2d3689	pop    rbp
2d368a	ret
