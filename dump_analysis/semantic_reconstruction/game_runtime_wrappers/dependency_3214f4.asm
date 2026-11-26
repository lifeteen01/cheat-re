3214f4	mov    QWORD PTR [rsp+0x8],rbx
3214f9	push   rdi
3214fa	sub    rsp,0x30
3214fe	mov    rdi,rdx
321501	lea    rcx,[rsp+0x20]
321506	mov    rdx,r8
321509	mov    bl,r9b
32150c	call   0x2cc268
321511	mov    dl,bl
321513	lea    rcx,[rsp+0x28]
321518	call   0x2d4928
32151d	movzx  eax,WORD PTR [rsp+0x4a]
321522	mov    rcx,rdi
321525	movups xmm0,XMMWORD PTR [rsp+0x20]
32152a	mov    WORD PTR [rdi+0xd2],ax
321531	lea    rax,[rsp+0x38]
321536	mov    QWORD PTR [rdi+0x78],rax
32153a	movdqu XMMWORD PTR [rdi+0x88],xmm0
321542	mov    WORD PTR [rdi+0xd0],0x0
32154b	mov    QWORD PTR [rdi+0x80],0x2
321556	mov    rbx,QWORD PTR [rsp+0x40]
32155b	add    rsp,0x30
32155f	pop    rdi
321560	jmp    0x3cdbd4
