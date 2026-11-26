
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003ab11c <.data+0x3ab11c>:
  3ab11c:	48 83 ec 28                                     	sub    rsp,0x28
  3ab120:	4c 8b c9                                        	mov    r9,rcx
  3ab123:	e8 f4 fd ff ff                                  	call   0x3aaf1c
  3ab128:	44 0f b6 d0                                     	movzx  r10d,al
  3ab12c:	41 8d 42 e0                                     	lea    eax,[r10-0x20]
  3ab130:	3c d6                                           	cmp    al,0xd6
  3ab132:	77 09                                           	ja     0x3ab13d
  3ab134:	41 8d 82 75 ff ff ff                            	lea    eax,[r10-0x8b]
  3ab13b:	eb 72                                           	jmp    0x3ab1af
  3ab13d:	41 8d 82 09 ff ff ff                            	lea    eax,[r10-0xf7]
  3ab144:	3c 03                                           	cmp    al,0x3
  3ab146:	77 19                                           	ja     0x3ab161
  3ab148:	49 8b c9                                        	mov    rcx,r9
  3ab14b:	e8 cc fd ff ff                                  	call   0x3aaf1c
  3ab150:	0f b6 c0                                        	movzx  eax,al
  3ab153:	41 c1 e2 08                                     	shl    r10d,0x8
  3ab157:	41 0b c2                                        	or     eax,r10d
  3ab15a:	2d 94 f6 00 00                                  	sub    eax,0xf694
  3ab15f:	eb 4e                                           	jmp    0x3ab1af
  3ab161:	41 8d 82 05 ff ff ff                            	lea    eax,[r10-0xfb]
  3ab168:	3c 03                                           	cmp    al,0x3
  3ab16a:	77 1d                                           	ja     0x3ab189
  3ab16c:	49 8b c9                                        	mov    rcx,r9
  3ab16f:	e8 a8 fd ff ff                                  	call   0x3aaf1c
  3ab174:	44 0f b6 c8                                     	movzx  r9d,al
  3ab178:	b8 94 fa 00 00                                  	mov    eax,0xfa94
  3ab17d:	41 c1 e2 08                                     	shl    r10d,0x8
  3ab181:	41 2b c2                                        	sub    eax,r10d
  3ab184:	41 2b c1                                        	sub    eax,r9d
  3ab187:	eb 26                                           	jmp    0x3ab1af
  3ab189:	41 80 fa 1c                                     	cmp    r10b,0x1c
  3ab18d:	75 11                                           	jne    0x3ab1a0
  3ab18f:	ba 02 00 00 00                                  	mov    edx,0x2
  3ab194:	49 8b c9                                        	mov    rcx,r9
  3ab197:	48 83 c4 28                                     	add    rsp,0x28
  3ab19b:	e9 9c fd ff ff                                  	jmp    0x3aaf3c
  3ab1a0:	41 80 fa 1d                                     	cmp    r10b,0x1d
  3ab1a4:	75 07                                           	jne    0x3ab1ad
  3ab1a6:	ba 04 00 00 00                                  	mov    edx,0x4
  3ab1ab:	eb e7                                           	jmp    0x3ab194
  3ab1ad:	33 c0                                           	xor    eax,eax
  3ab1af:	48 83 c4 28                                     	add    rsp,0x28
  3ab1b3:	c3                                              	ret
