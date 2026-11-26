
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003abd04 <.data+0x3abd04>:
  3abd04:	4c 8b dc                                        	mov    r11,rsp
  3abd07:	49 89 5b 10                                     	mov    QWORD PTR [r11+0x10],rbx
  3abd0b:	49 89 73 18                                     	mov    QWORD PTR [r11+0x18],rsi
  3abd0f:	57                                              	push   rdi
  3abd10:	48 83 ec 30                                     	sub    rsp,0x30
  3abd14:	49 8b c0                                        	mov    rax,r8
  3abd17:	c7 44 24 40 00 00 00 00                         	mov    DWORD PTR [rsp+0x40],0x0
  3abd1f:	48 8b fa                                        	mov    rdi,rdx
  3abd22:	49 c7 43 20 00 00 00 00                         	mov    QWORD PTR [r11+0x20],0x0
  3abd2a:	ba 12 00 00 00                                  	mov    edx,0x12
  3abd2f:	4d 8d 4b 20                                     	lea    r9,[r11+0x20]
  3abd33:	48 8b d9                                        	mov    rbx,rcx
  3abd36:	48 8b c8                                        	mov    rcx,rax
  3abd39:	44 8d 42 f0                                     	lea    r8d,[rdx-0x10]
  3abd3d:	e8 3a f9 ff ff                                  	call   0x3ab67c
  3abd42:	8b 74 24 5c                                     	mov    esi,DWORD PTR [rsp+0x5c]
  3abd46:	85 f6                                           	test   esi,esi
  3abd48:	74 5b                                           	je     0x3abda5
  3abd4a:	44 8b 4c 24 58                                  	mov    r9d,DWORD PTR [rsp+0x58]
  3abd4f:	45 85 c9                                        	test   r9d,r9d
  3abd52:	74 51                                           	je     0x3abda5
  3abd54:	44 8b c6                                        	mov    r8d,esi
  3abd57:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  3abd5c:	48 8b d7                                        	mov    rdx,rdi
  3abd5f:	e8 28 f2 ff ff                                  	call   0x3aaf8c
  3abd64:	ba 13 00 00 00                                  	mov    edx,0x13
  3abd69:	4c 8d 4c 24 40                                  	lea    r9,[rsp+0x40]
  3abd6e:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  3abd73:	0f 10 08                                        	movups xmm1,XMMWORD PTR [rax]
  3abd76:	44 8d 42 ee                                     	lea    r8d,[rdx-0x12]
  3abd7a:	f3 0f 7f 4c 24 20                               	movdqu XMMWORD PTR [rsp+0x20],xmm1
  3abd80:	e8 f7 f8 ff ff                                  	call   0x3ab67c
  3abd85:	8b 44 24 40                                     	mov    eax,DWORD PTR [rsp+0x40]
  3abd89:	85 c0                                           	test   eax,eax
  3abd8b:	74 18                                           	je     0x3abda5
  3abd8d:	8d 14 06                                        	lea    edx,[rsi+rax*1]
  3abd90:	48 8b cf                                        	mov    rcx,rdi
  3abd93:	e8 4c f2 ff ff                                  	call   0x3aafe4
  3abd98:	48 8b d7                                        	mov    rdx,rdi
  3abd9b:	48 8b cb                                        	mov    rcx,rbx
  3abd9e:	e8 59 f2 ff ff                                  	call   0x3aaffc
  3abda3:	eb 0d                                           	jmp    0x3abdb2
  3abda5:	45 33 c0                                        	xor    r8d,r8d
  3abda8:	33 d2                                           	xor    edx,edx
  3abdaa:	48 8b cb                                        	mov    rcx,rbx
  3abdad:	e8 66 05 00 00                                  	call   0x3ac318
  3abdb2:	48 8b 74 24 50                                  	mov    rsi,QWORD PTR [rsp+0x50]
  3abdb7:	48 8b c3                                        	mov    rax,rbx
  3abdba:	48 8b 5c 24 48                                  	mov    rbx,QWORD PTR [rsp+0x48]
  3abdbf:	48 83 c4 30                                     	add    rsp,0x30
  3abdc3:	5f                                              	pop    rdi
  3abdc4:	c3                                              	ret
  3abdc5:	cc                                              	int3
  3abdc6:	cc                                              	int3
  3abdc7:	cc                                              	int3
