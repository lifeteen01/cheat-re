2cba50	mov    QWORD PTR [rsp+0x8],rbx
2cba55	push   rdi
2cba56	sub    rsp,0x40
2cba5a	mov    rdi,rdx
2cba5d	lea    rcx,[rsp+0x20]
2cba62	mov    rdx,r8
2cba65	mov    rbx,r9
2cba68	call   0x2cc268
2cba6d	mov    rdx,rbx
2cba70	lea    rcx,[rsp+0x28]
2cba75	call   0x2cc268
2cba7a	mov    rdx,QWORD PTR [rsp+0x70]
2cba7f	lea    rcx,[rsp+0x30]
2cba84	call   0x2cc268
2cba89	movups xmm0,XMMWORD PTR [rsp+0x20]
2cba8e	xor    eax,eax
2cba90	mov    rcx,rdi
2cba93	movsd  xmm1,QWORD PTR [rsp+0x30]
2cba99	mov    WORD PTR [rdi+0xd0],ax
2cbaa0	mov    BYTE PTR [rdi+0xd2],al
2cbaa6	mov    al,BYTE PTR [rsp+0x5b]
2cbaaa	mov    BYTE PTR [rdi+0xd3],al
2cbab0	lea    rax,[rsp+0x48]
2cbab5	movups XMMWORD PTR [rdi+0x88],xmm0
2cbabc	mov    QWORD PTR [rdi+0x78],rax
2cbac0	movsd  QWORD PTR [rdi+0x98],xmm1
2cbac8	mov    QWORD PTR [rdi+0x80],0x3
2cbad3	mov    rbx,QWORD PTR [rsp+0x50]
2cbad8	add    rsp,0x40
2cbadc	pop    rdi
2cbadd	jmp    0x3cdbd4
