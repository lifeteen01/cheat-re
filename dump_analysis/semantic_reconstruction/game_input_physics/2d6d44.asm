
dump_analysis/semantic_reconstruction/game_input_physics/2d6d44.bin:     file format binary


Disassembly of section .data:

00000000002d6d44 <.data>:
  2d6d44:	40 53                                           	rex push rbx
  2d6d46:	48 83 ec 40                                     	sub    rsp,0x40
  2d6d4a:	0f 29 74 24 30                                  	movaps XMMWORD PTR [rsp+0x30],xmm6
  2d6d4f:	48 8b d9                                        	mov    rbx,rcx
  2d6d52:	0f 29 7c 24 20                                  	movaps XMMWORD PTR [rsp+0x20],xmm7
  2d6d57:	e8 84 1d 00 00                                  	call   0x2d8ae0
  2d6d5c:	48 8b 53 10                                     	mov    rdx,QWORD PTR [rbx+0x10]
  2d6d60:	0f 28 f8                                        	movaps xmm7,xmm0
  2d6d63:	48 83 c2 01                                     	add    rdx,0x1
  2d6d67:	0f 57 f6                                        	xorps  xmm6,xmm6
  2d6d6a:	78 07                                           	js     0x2d6d73
  2d6d6c:	f3 48 0f 2a f2                                  	cvtsi2ss xmm6,rdx
  2d6d71:	eb 15                                           	jmp    0x2d6d88
  2d6d73:	48 8b c2                                        	mov    rax,rdx
  2d6d76:	83 e2 01                                        	and    edx,0x1
  2d6d79:	48 d1 e8                                        	shr    rax,1
  2d6d7c:	48 0b c2                                        	or     rax,rdx
  2d6d7f:	f3 48 0f 2a f0                                  	cvtsi2ss xmm6,rax
  2d6d84:	f3 0f 58 f6                                     	addss  xmm6,xmm6
  2d6d88:	48 8b cb                                        	mov    rcx,rbx
  2d6d8b:	e8 80 10 00 00                                  	call   0x2d7e10
  2d6d90:	48 8b c8                                        	mov    rcx,rax
  2d6d93:	0f 57 c0                                        	xorps  xmm0,xmm0
  2d6d96:	48 85 c0                                        	test   rax,rax
  2d6d99:	78 07                                           	js     0x2d6da2
  2d6d9b:	f3 48 0f 2a c0                                  	cvtsi2ss xmm0,rax
  2d6da0:	eb 12                                           	jmp    0x2d6db4
  2d6da2:	48 d1 e8                                        	shr    rax,1
  2d6da5:	83 e1 01                                        	and    ecx,0x1
  2d6da8:	48 0b c1                                        	or     rax,rcx
  2d6dab:	f3 48 0f 2a c0                                  	cvtsi2ss xmm0,rax
  2d6db0:	f3 0f 58 c0                                     	addss  xmm0,xmm0
  2d6db4:	f3 0f 5e f0                                     	divss  xmm6,xmm0
  2d6db8:	0f 2f f7                                        	comiss xmm6,xmm7
  2d6dbb:	0f 28 74 24 30                                  	movaps xmm6,XMMWORD PTR [rsp+0x30]
  2d6dc0:	0f 28 7c 24 20                                  	movaps xmm7,XMMWORD PTR [rsp+0x20]
  2d6dc5:	0f 97 c0                                        	seta   al
  2d6dc8:	48 83 c4 40                                     	add    rsp,0x40
  2d6dcc:	5b                                              	pop    rbx
  2d6dcd:	c3                                              	ret
