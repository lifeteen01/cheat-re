
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a9380 <.data+0x3a9380>:
  3a9380:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3a9385:	57                                              	push   rdi
  3a9386:	48 83 ec 20                                     	sub    rsp,0x20
  3a938a:	33 ff                                           	xor    edi,edi
  3a938c:	48 8b d9                                        	mov    rbx,rcx
  3a938f:	39 39                                           	cmp    DWORD PTR [rcx],edi
  3a9391:	7e 1b                                           	jle    0x3a93ae
  3a9393:	48 63 c7                                        	movsxd rax,edi
  3a9396:	33 d2                                           	xor    edx,edx
  3a9398:	48 69 c8 10 01 00 00                            	imul   rcx,rax,0x110
  3a939f:	48 03 4b 08                                     	add    rcx,QWORD PTR [rbx+0x8]
  3a93a3:	e8 c8 63 ff ff                                  	call   0x39f770
  3a93a8:	ff c7                                           	inc    edi
  3a93aa:	3b 3b                                           	cmp    edi,DWORD PTR [rbx]
  3a93ac:	7c e5                                           	jl     0x3a9393
  3a93ae:	48 8b cb                                        	mov    rcx,rbx
  3a93b1:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  3a93b6:	48 83 c4 20                                     	add    rsp,0x20
  3a93ba:	5f                                              	pop    rdi
  3a93bb:	e9 b8 01 fd ff                                  	jmp    0x379578
