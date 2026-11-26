2d3ab4	mov    rax,rsp
2d3ab7	mov    QWORD PTR [rax+0x8],rbx
2d3abb	mov    QWORD PTR [rax+0x10],rsi
2d3abf	push   rdi
2d3ac0	sub    rsp,0xc0
2d3ac7	movaps XMMWORD PTR [rax-0x18],xmm6
2d3acb	mov    rsi,rcx
2d3ace	movq   xmm6,r8
2d3ad3	mov    rcx,rdx
2d3ad6	movsd  QWORD PTR [rsp+0x20],xmm6
2d3adc	call   0x2cd7ec
2d3ae1	mov    rcx,rax
2d3ae4	call   0x2d6354
2d3ae9	movss  xmm1,DWORD PTR [rsp+0x24]
2d3aef	lea    rcx,[rsp+0x88]
2d3af7	mov    rdi,rax
2d3afa	call   0x2d9540
2d3aff	movaps xmm1,xmm6
2d3b02	lea    rcx,[rsp+0x68]
2d3b07	mov    rbx,rax
2d3b0a	call   0x2d9540
2d3b0f	mov    rdx,rax
2d3b12	lea    rcx,[rsp+0x48]
2d3b17	mov    r8b,0x3b
2d3b1a	call   0x2cef98
2d3b1f	mov    rdx,rax
2d3b22	lea    rcx,[rsp+0x28]
2d3b27	mov    r8,rbx
2d3b2a	call   0x2cef40
2d3b2f	lea    rcx,[rsp+0x48]
2d3b34	call   0x2cc4f4
2d3b39	lea    rcx,[rsp+0x68]
2d3b3e	call   0x2cc4f4
2d3b43	lea    rcx,[rsp+0x88]
2d3b4b	call   0x2cc4f4
2d3b50	lea    r8,[rsp+0x28]
2d3b55	mov    edx,edi
2d3b57	mov    rcx,rsi
2d3b5a	call   0x2d9328
2d3b5f	lea    rcx,[rsp+0x28]
2d3b64	call   0x2cc4f4
2d3b69	lea    r11,[rsp+0xc0]
2d3b71	mov    rbx,QWORD PTR [r11+0x10]
2d3b75	mov    rsi,QWORD PTR [r11+0x18]
2d3b79	movaps xmm6,XMMWORD PTR [r11-0x10]
2d3b7e	mov    rsp,r11
2d3b81	pop    rdi
2d3b82	ret
