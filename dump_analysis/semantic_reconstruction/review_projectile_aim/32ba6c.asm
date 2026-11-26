
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000032ba6c <.data+0x32ba6c>:
  32ba6c:	40 53                                           	rex push rbx
  32ba6e:	48 83 ec 20                                     	sub    rsp,0x20
  32ba72:	48 8b d9                                        	mov    rbx,rcx
  32ba75:	48 8b ca                                        	mov    rcx,rdx
  32ba78:	e8 8b f4 f9 ff                                  	call   0x2caf08
  32ba7d:	84 c0                                           	test   al,al
  32ba7f:	74 12                                           	je     0x32ba93
  32ba81:	8b 1b                                           	mov    ebx,DWORD PTR [rbx]
  32ba83:	48 8b ca                                        	mov    rcx,rdx
  32ba86:	e8 21 88 04 00                                  	call   0x3742ac
  32ba8b:	3b c3                                           	cmp    eax,ebx
  32ba8d:	75 04                                           	jne    0x32ba93
  32ba8f:	b0 01                                           	mov    al,0x1
  32ba91:	eb 02                                           	jmp    0x32ba95
  32ba93:	32 c0                                           	xor    al,al
  32ba95:	48 83 c4 20                                     	add    rsp,0x20
  32ba99:	5b                                              	pop    rbx
  32ba9a:	c3                                              	ret
