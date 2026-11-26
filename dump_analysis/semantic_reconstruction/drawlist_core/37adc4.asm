
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000037adc4 <.data+0x37adc4>:
  37adc4:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  37adc9:	57                                              	push   rdi
  37adca:	48 83 ec 20                                     	sub    rsp,0x20
  37adce:	8b fa                                           	mov    edi,edx
  37add0:	48 8b d9                                        	mov    rbx,rcx
  37add3:	3b 51 04                                        	cmp    edx,DWORD PTR [rcx+0x4]
  37add6:	7e 0f                                           	jle    0x37ade7
  37add8:	e8 1f 81 fe ff                                  	call   0x362efc
  37addd:	8b d0                                           	mov    edx,eax
  37addf:	48 8b cb                                        	mov    rcx,rbx
  37ade2:	e8 a1 fa ff ff                                  	call   0x37a888
  37ade7:	89 3b                                           	mov    DWORD PTR [rbx],edi
  37ade9:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  37adee:	48 83 c4 20                                     	add    rsp,0x20
  37adf2:	5f                                              	pop    rdi
  37adf3:	c3                                              	ret
