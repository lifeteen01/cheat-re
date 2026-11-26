
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003c00d4 <.data+0x3c00d4>:
  3c00d4:	40 53                                           	rex push rbx
  3c00d6:	48 83 ec 20                                     	sub    rsp,0x20
  3c00da:	8b da                                           	mov    ebx,edx
  3c00dc:	e8 c3 ff ff ff                                  	call   0x3c00a4
  3c00e1:	80 38 25                                        	cmp    BYTE PTR [rax],0x25
  3c00e4:	74 0b                                           	je     0x3c00f1
  3c00e6:	8b c3                                           	mov    eax,ebx
  3c00e8:	eb 60                                           	jmp    0x3c014a
  3c00ea:	8a 08                                           	mov    cl,BYTE PTR [rax]
  3c00ec:	80 f9 39                                        	cmp    cl,0x39
  3c00ef:	7f 0a                                           	jg     0x3c00fb
  3c00f1:	48 ff c0                                        	inc    rax
  3c00f4:	8a 08                                           	mov    cl,BYTE PTR [rax]
  3c00f6:	80 f9 30                                        	cmp    cl,0x30
  3c00f9:	7d ef                                           	jge    0x3c00ea
  3c00fb:	41 ba ff ff ff 7f                               	mov    r10d,0x7fffffff
  3c0101:	41 8b d2                                        	mov    edx,r10d
  3c0104:	89 54 24 30                                     	mov    DWORD PTR [rsp+0x30],edx
  3c0108:	80 f9 2e                                        	cmp    cl,0x2e
  3c010b:	75 18                                           	jne    0x3c0125
  3c010d:	48 8d 48 01                                     	lea    rcx,[rax+0x1]
  3c0111:	48 8d 54 24 30                                  	lea    rdx,[rsp+0x30]
  3c0116:	e8 dd 58 ff ff                                  	call   0x3b59f8
  3c011b:	8b 54 24 30                                     	mov    edx,DWORD PTR [rsp+0x30]
  3c011f:	83 fa 63                                        	cmp    edx,0x63
  3c0122:	0f 47 d3                                        	cmova  edx,ebx
  3c0125:	8a 08                                           	mov    cl,BYTE PTR [rax]
  3c0127:	8d 41 bb                                        	lea    eax,[rcx-0x45]
  3c012a:	a8 df                                           	test   al,0xdf
  3c012c:	b8 ff ff ff ff                                  	mov    eax,0xffffffff
  3c0131:	0f 44 d0                                        	cmove  edx,eax
  3c0134:	80 c1 b9                                        	add    cl,0xb9
  3c0137:	f6 c1 df                                        	test   cl,0xdf
  3c013a:	75 06                                           	jne    0x3c0142
  3c013c:	41 3b d2                                        	cmp    edx,r10d
  3c013f:	0f 44 d0                                        	cmove  edx,eax
  3c0142:	41 3b d2                                        	cmp    edx,r10d
  3c0145:	0f 44 d3                                        	cmove  edx,ebx
  3c0148:	8b c2                                           	mov    eax,edx
  3c014a:	48 83 c4 20                                     	add    rsp,0x20
  3c014e:	5b                                              	pop    rbx
  3c014f:	c3                                              	ret
