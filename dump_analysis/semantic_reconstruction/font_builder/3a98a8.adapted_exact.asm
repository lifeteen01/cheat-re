
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a98a8 <.data+0x3a98a8>:
  3a98a8:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3a98ad:	57                                              	push   rdi
  3a98ae:	48 83 ec 20                                     	sub    rsp,0x20
  3a98b2:	8b fa                                           	mov    edi,edx
  3a98b4:	48 8b d9                                        	mov    rbx,rcx
  3a98b7:	3b 51 04                                        	cmp    edx,DWORD PTR [rcx+0x4]
  3a98ba:	7e 0f                                           	jle    0x3a98cb
  3a98bc:	e8 3b 96 fb ff                                  	call   0x362efc
  3a98c1:	8b d0                                           	mov    edx,eax
  3a98c3:	48 8b cb                                        	mov    rcx,rbx
  3a98c6:	e8 8d fc ff ff                                  	call   0x3a9558
  3a98cb:	89 3b                                           	mov    DWORD PTR [rbx],edi
  3a98cd:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  3a98d2:	48 83 c4 20                                     	add    rsp,0x20
  3a98d6:	5f                                              	pop    rdi
  3a98d7:	c3                                              	ret
