
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000037ae24 <.data+0x37ae24>:
  37ae24:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  37ae29:	57                                              	push   rdi
  37ae2a:	48 83 ec 20                                     	sub    rsp,0x20
  37ae2e:	8b fa                                           	mov    edi,edx
  37ae30:	48 8b d9                                        	mov    rbx,rcx
  37ae33:	3b 51 04                                        	cmp    edx,DWORD PTR [rcx+0x4]
  37ae36:	7e 0f                                           	jle    0x37ae47
  37ae38:	e8 bf 80 fe ff                                  	call   0x362efc
  37ae3d:	8b d0                                           	mov    edx,eax
  37ae3f:	48 8b cb                                        	mov    rcx,rbx
  37ae42:	e8 11 fb ff ff                                  	call   0x37a958
  37ae47:	89 3b                                           	mov    DWORD PTR [rbx],edi
  37ae49:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  37ae4e:	48 83 c4 20                                     	add    rsp,0x20
  37ae52:	5f                                              	pop    rdi
  37ae53:	c3                                              	ret
