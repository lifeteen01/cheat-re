
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000037ad94 <.data+0x37ad94>:
  37ad94:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  37ad99:	57                                              	push   rdi
  37ad9a:	48 83 ec 20                                     	sub    rsp,0x20
  37ad9e:	8b fa                                           	mov    edi,edx
  37ada0:	48 8b d9                                        	mov    rbx,rcx
  37ada3:	3b 51 04                                        	cmp    edx,DWORD PTR [rcx+0x4]
  37ada6:	7e 0f                                           	jle    0x37adb7
  37ada8:	e8 4f 81 fe ff                                  	call   0x362efc
  37adad:	8b d0                                           	mov    edx,eax
  37adaf:	48 8b cb                                        	mov    rcx,rbx
  37adb2:	e8 69 fa ff ff                                  	call   0x37a820
  37adb7:	89 3b                                           	mov    DWORD PTR [rbx],edi
  37adb9:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  37adbe:	48 83 c4 20                                     	add    rsp,0x20
  37adc2:	5f                                              	pop    rdi
  37adc3:	c3                                              	ret
