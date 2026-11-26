
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002d0d60 <.data+0x2d0d60>:
  2d0d60:	83 39 00                                        	cmp    DWORD PTR [rcx],0x0
  2d0d63:	0f 94 c0                                        	sete   al
  2d0d66:	c3                                              	ret
  2d0d67:	cc                                              	int3
  2d0d68:	40 53                                           	rex push rbx
  2d0d6a:	55                                              	push   rbp
  2d0d6b:	56                                              	push   rsi
  2d0d6c:	57                                              	push   rdi
  2d0d6d:	48 83 ec 58                                     	sub    rsp,0x58
  2d0d71:	48 8b fa                                        	mov    rdi,rdx
  2d0d74:	41 8a d8                                        	mov    bl,r8b
  2d0d77:	48 2b f9                                        	sub    rdi,rcx
  2d0d7a:	48 8b e9                                        	mov    rbp,rcx
  2d0d7d:	48 8b f7                                        	mov    rsi,rdi
  2d0d80:	48 c1 fe 05                                     	sar    rsi,0x5
  2d0d84:	48 c1 ff 06                                     	sar    rdi,0x6
  2d0d88:	eb 48                                           	jmp    0x2d0dd2
  2d0d8a:	48 ff cf                                        	dec    rdi
  2d0d8d:	48 8b cf                                        	mov    rcx,rdi
  2d0d90:	48 c1 e1 05                                     	shl    rcx,0x5
  2d0d94:	48 03 cd                                        	add    rcx,rbp
  2d0d97:	e8 08 a6 ff ff                                  	call   0x2cb3a4
  2d0d9c:	48 8b d0                                        	mov    rdx,rax
  2d0d9f:	48                                      	lea    rcx,[rsp+0x30]
