
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000037ad04 <.data+0x37ad04>:
  37ad04:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  37ad09:	57                                              	push   rdi
  37ad0a:	48 83 ec 20                                     	sub    rsp,0x20
  37ad0e:	8b fa                                           	mov    edi,edx
  37ad10:	48 8b d9                                        	mov    rbx,rcx
  37ad13:	3b 51 04                                        	cmp    edx,DWORD PTR [rcx+0x4]
  37ad16:	7e 0f                                           	jle    0x37ad27
  37ad18:	e8 df 81 fe ff                                  	call   0x362efc
  37ad1d:	8b d0                                           	mov    edx,eax
  37ad1f:	48 8b cb                                        	mov    rcx,rbx
  37ad22:	e8 d1 f9 ff ff                                  	call   0x37a6f8
  37ad27:	89 3b                                           	mov    DWORD PTR [rbx],edi
  37ad29:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  37ad2e:	48 83 c4 20                                     	add    rsp,0x20
  37ad32:	5f                                              	pop    rdi
  37ad33:	c3                                              	ret
