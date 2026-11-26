
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000037ad34 <.data+0x37ad34>:
  37ad34:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  37ad39:	57                                              	push   rdi
  37ad3a:	48 83 ec 20                                     	sub    rsp,0x20
  37ad3e:	8b fa                                           	mov    edi,edx
  37ad40:	48 8b d9                                        	mov    rbx,rcx
  37ad43:	3b 51 04                                        	cmp    edx,DWORD PTR [rcx+0x4]
  37ad46:	7e 0f                                           	jle    0x37ad57
  37ad48:	e8 af 81 fe ff                                  	call   0x362efc
  37ad4d:	8b d0                                           	mov    edx,eax
  37ad4f:	48 8b cb                                        	mov    rcx,rbx
  37ad52:	e8 01 fa ff ff                                  	call   0x37a758
  37ad57:	89 3b                                           	mov    DWORD PTR [rbx],edi
  37ad59:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  37ad5e:	48 83 c4 20                                     	add    rsp,0x20
  37ad62:	5f                                              	pop    rdi
  37ad63:	c3                                              	ret
