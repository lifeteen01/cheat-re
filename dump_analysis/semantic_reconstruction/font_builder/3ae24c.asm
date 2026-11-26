
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003ae24c <.data+0x3ae24c>:
  3ae24c:	48 83 ec 28                                     	sub    rsp,0x28
  3ae250:	4c 8b d9                                        	mov    r11,rcx
  3ae253:	48 85 d2                                        	test   rdx,rdx
  3ae256:	74 1b                                           	je     0x3ae273
  3ae258:	4c 63 51 24                                     	movsxd r10,DWORD PTR [rcx+0x24]
  3ae25c:	48 8b 49 08                                     	mov    rcx,QWORD PTR [rcx+0x8]
  3ae260:	48 83 c1 04                                     	add    rcx,0x4
  3ae264:	49 03 ca                                        	add    rcx,r10
  3ae267:	e8 28 fb ff ff                                  	call   0x3add94
  3ae26c:	44 0f bf d0                                     	movsx  r10d,ax
  3ae270:	44 89 12                                        	mov    DWORD PTR [rdx],r10d
  3ae273:	4d 85 c0                                        	test   r8,r8
  3ae276:	74 1a                                           	je     0x3ae292
  3ae278:	49 8b 43 08                                     	mov    rax,QWORD PTR [r11+0x8]
  3ae27c:	49 63 4b 24                                     	movsxd rcx,DWORD PTR [r11+0x24]
  3ae280:	48 83 c0 06                                     	add    rax,0x6
  3ae284:	48 03 c8                                        	add    rcx,rax
  3ae287:	e8 08 fb ff ff                                  	call   0x3add94
  3ae28c:	0f bf c8                                        	movsx  ecx,ax
  3ae28f:	41 89 08                                        	mov    DWORD PTR [r8],ecx
  3ae292:	4d 85 c9                                        	test   r9,r9
  3ae295:	74 1a                                           	je     0x3ae2b1
  3ae297:	49 8b 43 08                                     	mov    rax,QWORD PTR [r11+0x8]
  3ae29b:	49 63 4b 24                                     	movsxd rcx,DWORD PTR [r11+0x24]
  3ae29f:	48 83 c0 08                                     	add    rax,0x8
  3ae2a3:	48 03 c8                                        	add    rcx,rax
  3ae2a6:	e8 e9 fa ff ff                                  	call   0x3add94
  3ae2ab:	0f bf c8                                        	movsx  ecx,ax
  3ae2ae:	41 89 09                                        	mov    DWORD PTR [r9],ecx
  3ae2b1:	48 83 c4 28                                     	add    rsp,0x28
  3ae2b5:	c3                                              	ret
