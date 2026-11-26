
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003ab67c <.data+0x3ab67c>:
  3ab67c:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  3ab681:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
  3ab686:	57                   	push   rdi
  3ab687:	48 83 ec 30          	sub    rsp,0x30
  3ab68b:	41 8b f8             	mov    edi,r8d
  3ab68e:	49 8b f1             	mov    rsi,r9
  3ab691:	44 8b c2             	mov    r8d,edx
  3ab694:	48 8b d1             	mov    rdx,rcx
  3ab697:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  3ab69c:	e8 4f ff ff ff       	call   0x3ab5f0
  3ab6a1:	33 db                	xor    ebx,ebx
  3ab6a3:	0f 10 08             	movups xmm1,XMMWORD PTR [rax]
  3ab6a6:	f3 0f 7f 4c 24 20    	movdqu XMMWORD PTR [rsp+0x20],xmm1
  3ab6ac:	85 ff                	test   edi,edi
  3ab6ae:	7e 1d                	jle    0x3ab6cd
  3ab6b0:	8b 44 24 2c          	mov    eax,DWORD PTR [rsp+0x2c]
  3ab6b4:	39 44 24 28          	cmp    DWORD PTR [rsp+0x28],eax
  3ab6b8:	7d 13                	jge    0x3ab6cd
  3ab6ba:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  3ab6bf:	e8 58 fa ff ff       	call   0x3ab11c
  3ab6c4:	89 04 9e             	mov    DWORD PTR [rsi+rbx*4],eax
  3ab6c7:	ff c3                	inc    ebx
  3ab6c9:	3b df                	cmp    ebx,edi
  3ab6cb:	7c e3                	jl     0x3ab6b0
  3ab6cd:	48 8b 5c 24 40       	mov    rbx,QWORD PTR [rsp+0x40]
  3ab6d2:	48 8b 74 24 48       	mov    rsi,QWORD PTR [rsp+0x48]
  3ab6d7:	48 83 c4 30          	add    rsp,0x30
  3ab6db:	5f                   	pop    rdi
  3ab6dc:	c3                   	ret
