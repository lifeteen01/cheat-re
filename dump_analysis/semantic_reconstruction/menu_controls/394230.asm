
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000394230 <.data+0x394230>:
  394230:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  394235:	57                                              	push   rdi
  394236:	48 83 ec 20                                     	sub    rsp,0x20
  39423a:	8b fa                                           	mov    edi,edx
  39423c:	8b d9                                           	mov    ebx,ecx
  39423e:	e8 d1 e4 ff ff                                  	call   0x392714
  394243:	80 38 00                                        	cmp    BYTE PTR [rax],0x0
  394246:	74 10                                           	je     0x394258
  394248:	8b d7                                           	mov    edx,edi
  39424a:	8b cb                                           	mov    ecx,ebx
  39424c:	e8 bb 7c 00 00                                  	call   0x39bf0c
  394251:	84 c0                                           	test   al,al
  394253:	0f 95 c0                                        	setne  al
  394256:	eb 02                                           	jmp    0x39425a
  394258:	32 c0                                           	xor    al,al
  39425a:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  39425f:	48 83 c4 20                                     	add    rsp,0x20
  394263:	5f                                              	pop    rdi
  394264:	c3                                              	ret
