
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000037ae84 <.data+0x37ae84>:
  37ae84:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  37ae89:	57                                              	push   rdi
  37ae8a:	48 83 ec 20                                     	sub    rsp,0x20
  37ae8e:	8b fa                                           	mov    edi,edx
  37ae90:	48 8b d9                                        	mov    rbx,rcx
  37ae93:	3b 51 04                                        	cmp    edx,DWORD PTR [rcx+0x4]
  37ae96:	7e 0f                                           	jle    0x37aea7
  37ae98:	e8 5f 80 fe ff                                  	call   0x362efc
  37ae9d:	8b d0                                           	mov    edx,eax
  37ae9f:	48 8b cb                                        	mov    rcx,rbx
  37aea2:	e8 75 fb ff ff                                  	call   0x37aa1c
  37aea7:	89 3b                                           	mov    DWORD PTR [rbx],edi
  37aea9:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  37aeae:	48 83 c4 20                                     	add    rsp,0x20
  37aeb2:	5f                                              	pop    rdi
  37aeb3:	c3                                              	ret
