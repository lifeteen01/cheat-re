
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000037ad64 <.data+0x37ad64>:
  37ad64:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  37ad69:	57                                              	push   rdi
  37ad6a:	48 83 ec 20                                     	sub    rsp,0x20
  37ad6e:	8b fa                                           	mov    edi,edx
  37ad70:	48 8b d9                                        	mov    rbx,rcx
  37ad73:	3b 51 04                                        	cmp    edx,DWORD PTR [rcx+0x4]
  37ad76:	7e 0f                                           	jle    0x37ad87
  37ad78:	e8 7f 81 fe ff                                  	call   0x362efc
  37ad7d:	8b d0                                           	mov    edx,eax
  37ad7f:	48 8b cb                                        	mov    rcx,rbx
  37ad82:	e8 35 fa ff ff                                  	call   0x37a7bc
  37ad87:	89 3b                                           	mov    DWORD PTR [rbx],edi
  37ad89:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  37ad8e:	48 83 c4 20                                     	add    rsp,0x20
  37ad92:	5f                                              	pop    rdi
  37ad93:	c3                                              	ret
