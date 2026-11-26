
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000037ae54 <.data+0x37ae54>:
  37ae54:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  37ae59:	57                                              	push   rdi
  37ae5a:	48 83 ec 20                                     	sub    rsp,0x20
  37ae5e:	8b fa                                           	mov    edi,edx
  37ae60:	48 8b d9                                        	mov    rbx,rcx
  37ae63:	3b 51 04                                        	cmp    edx,DWORD PTR [rcx+0x4]
  37ae66:	7e 0f                                           	jle    0x37ae77
  37ae68:	e8 8f 80 fe ff                                  	call   0x362efc
  37ae6d:	8b d0                                           	mov    edx,eax
  37ae6f:	48 8b cb                                        	mov    rcx,rbx
  37ae72:	e8 41 fb ff ff                                  	call   0x37a9b8
  37ae77:	89 3b                                           	mov    DWORD PTR [rbx],edi
  37ae79:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  37ae7e:	48 83 c4 20                                     	add    rsp,0x20
  37ae82:	5f                                              	pop    rdi
  37ae83:	c3                                              	ret
