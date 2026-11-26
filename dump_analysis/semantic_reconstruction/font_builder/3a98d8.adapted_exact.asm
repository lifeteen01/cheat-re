
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a98d8 <.data+0x3a98d8>:
  3a98d8:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3a98dd:	57                                              	push   rdi
  3a98de:	48 83 ec 20                                     	sub    rsp,0x20
  3a98e2:	8b fa                                           	mov    edi,edx
  3a98e4:	48 8b d9                                        	mov    rbx,rcx
  3a98e7:	3b 51 04                                        	cmp    edx,DWORD PTR [rcx+0x4]
  3a98ea:	7e 0f                                           	jle    0x3a98fb
  3a98ec:	e8 0b 96 fb ff                                  	call   0x362efc
  3a98f1:	8b d0                                           	mov    edx,eax
  3a98f3:	48 8b cb                                        	mov    rcx,rbx
  3a98f6:	e8 25 fd ff ff                                  	call   0x3a9620
  3a98fb:	89 3b                                           	mov    DWORD PTR [rbx],edi
  3a98fd:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  3a9902:	48 83 c4 20                                     	add    rsp,0x20
  3a9906:	5f                                              	pop    rdi
  3a9907:	c3                                              	ret
