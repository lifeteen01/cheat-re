
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002eec7c <.data+0x2eec7c>:
  2eec7c:	48 89 5c 24 10                                  	mov    QWORD PTR [rsp+0x10],rbx
  2eec81:	57                                              	push   rdi
  2eec82:	48 83 ec 20                                     	sub    rsp,0x20
  2eec86:	48 8b f9                                        	mov    rdi,rcx
  2eec89:	48 8b da                                        	mov    rbx,rdx
  2eec8c:	48 8b ca                                        	mov    rcx,rdx
  2eec8f:	e8 90 e6 fd ff                                  	call   0x2cd324
  2eec94:	48 8b d0                                        	mov    rdx,rax
  2eec97:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  2eec9c:	e8 03 c7 fd ff                                  	call   0x2cb3a4
  2eeca1:	8a 54 24 30                                     	mov    dl,BYTE PTR [rsp+0x30]
  2eeca5:	4c 8b c0                                        	mov    r8,rax
  2eeca8:	48 8b cf                                        	mov    rcx,rdi
  2eecab:	e8 60 fe fd ff                                  	call   0x2ceb10
  2eecb0:	4c 8d 4b 08                                     	lea    r9,[rbx+0x8]
  2eecb4:	48 b8 c5 4e ec c4 4e ec c4 4e                   	movabs rax,0x4ec4ec4ec4ec4ec5
  2eecbe:	4d 8b 01                                        	mov    r8,QWORD PTR [r9]
  2eecc1:	48 8b cf                                        	mov    rcx,rdi
  2eecc4:	4c 2b 03                                        	sub    r8,QWORD PTR [rbx]
  2eecc7:	49 f7 e8                                        	imul   r8
  2eecca:	4c 8b c3                                        	mov    r8,rbx
  2eeccd:	48 c1 fa 05                                     	sar    rdx,0x5
  2eecd1:	48 8b c2                                        	mov    rax,rdx
  2eecd4:	48 c1 e8 3f                                     	shr    rax,0x3f
  2eecd8:	48 03 d0                                        	add    rdx,rax
  2eecdb:	e8 d0 ad fe ff                                  	call   0x2d9ab0
  2eece0:	48 8b 5c 24 38                                  	mov    rbx,QWORD PTR [rsp+0x38]
  2eece5:	48 8b c7                                        	mov    rax,rdi
  2eece8:	48 83 c4 20                                     	add    rsp,0x20
  2eecec:	5f                                              	pop    rdi
  2eeced:	c3                                              	ret
