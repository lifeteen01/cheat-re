
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/2d3ab4.bin:     file format binary


Disassembly of section .data:

00000000002d3ab4 <.data>:
  2d3ab4:	48 8b c4             	mov    rax,rsp
  2d3ab7:	48 89 58 08          	mov    QWORD PTR [rax+0x8],rbx
  2d3abb:	48 89 70 10          	mov    QWORD PTR [rax+0x10],rsi
  2d3abf:	57                   	push   rdi
  2d3ac0:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  2d3ac7:	0f 29 70 e8          	movaps XMMWORD PTR [rax-0x18],xmm6
  2d3acb:	48 8b f1             	mov    rsi,rcx
  2d3ace:	66 49 0f 6e f0       	movq   xmm6,r8
  2d3ad3:	48 8b ca             	mov    rcx,rdx
  2d3ad6:	f2 0f 11 74 24 20    	movsd  QWORD PTR [rsp+0x20],xmm6
  2d3adc:	e8 0b 9d ff ff       	call   0x2cd7ec
  2d3ae1:	48 8b c8             	mov    rcx,rax
  2d3ae4:	e8 6b 28 00 00       	call   0x2d6354
  2d3ae9:	f3 0f 10 4c 24 24    	movss  xmm1,DWORD PTR [rsp+0x24]
  2d3aef:	48 8d 8c 24 88 00 00 	lea    rcx,[rsp+0x88]
  2d3af6:	00 
  2d3af7:	48 8b f8             	mov    rdi,rax
  2d3afa:	e8 41 5a 00 00       	call   0x2d9540
  2d3aff:	0f 28 ce             	movaps xmm1,xmm6
  2d3b02:	48 8d 4c 24 68       	lea    rcx,[rsp+0x68]
  2d3b07:	48 8b d8             	mov    rbx,rax
  2d3b0a:	e8 31 5a 00 00       	call   0x2d9540
  2d3b0f:	48 8b d0             	mov    rdx,rax
  2d3b12:	48 8d 4c 24 48       	lea    rcx,[rsp+0x48]
  2d3b17:	41 b0 3b             	mov    r8b,0x3b
  2d3b1a:	e8 79 b4 ff ff       	call   0x2cef98
  2d3b1f:	48 8b d0             	mov    rdx,rax
  2d3b22:	48 8d 4c 24 28       	lea    rcx,[rsp+0x28]
  2d3b27:	4c 8b c3             	mov    r8,rbx
  2d3b2a:	e8 11 b4 ff ff       	call   0x2cef40
  2d3b2f:	48 8d 4c 24 48       	lea    rcx,[rsp+0x48]
  2d3b34:	e8 bb 89 ff ff       	call   0x2cc4f4
  2d3b39:	48 8d 4c 24 68       	lea    rcx,[rsp+0x68]
  2d3b3e:	e8 b1 89 ff ff       	call   0x2cc4f4
  2d3b43:	48 8d 8c 24 88 00 00 	lea    rcx,[rsp+0x88]
  2d3b4a:	00 
  2d3b4b:	e8 a4 89 ff ff       	call   0x2cc4f4
  2d3b50:	4c 8d 44 24 28       	lea    r8,[rsp+0x28]
  2d3b55:	8b d7                	mov    edx,edi
  2d3b57:	48 8b ce             	mov    rcx,rsi
  2d3b5a:	e8 c9 57 00 00       	call   0x2d9328
  2d3b5f:	48 8d 4c 24 28       	lea    rcx,[rsp+0x28]
  2d3b64:	e8 8b 89 ff ff       	call   0x2cc4f4
  2d3b69:	4c 8d 9c 24 c0 00 00 	lea    r11,[rsp+0xc0]
  2d3b70:	00 
  2d3b71:	49 8b 5b 10          	mov    rbx,QWORD PTR [r11+0x10]
  2d3b75:	49 8b 73 18          	mov    rsi,QWORD PTR [r11+0x18]
  2d3b79:	41 0f 28 73 f0       	movaps xmm6,XMMWORD PTR [r11-0x10]
  2d3b7e:	49 8b e3             	mov    rsp,r11
  2d3b81:	5f                   	pop    rdi
  2d3b82:	c3                   	ret
