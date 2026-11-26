
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/font_atlas_input/37a658.audit.bin:     file format binary


Disassembly of section .data:

000000000037a658 <.data>:
  37a658:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  37a65d:	57                                              	push   rdi
  37a65e:	48 83 ec 20                                     	sub    rsp,0x20
  37a662:	48 8b fa                                        	mov    rdi,rdx
  37a665:	48 8b d9                                        	mov    rbx,rcx
  37a668:	8b 11                                           	mov    edx,DWORD PTR [rcx]
  37a66a:	3b 51 04                                        	cmp    edx,DWORD PTR [rcx+0x4]
  37a66d:	75 11                                           	jne    0x37a680
  37a66f:	ff c2                                           	inc    edx
  37a671:	e8 86 88 fe ff                                  	call   0x362efc
  37a676:	8b d0                                           	mov    edx,eax
  37a678:	48 8b cb                                        	mov    rcx,rbx
  37a67b:	e8 d8 00 00 00                                  	call   0x37a758
  37a680:	48 63 13                                        	movsxd rdx,DWORD PTR [rbx]
  37a683:	48 8b 4b 08                                     	mov    rcx,QWORD PTR [rbx+0x8]
  37a687:	48 8b 07                                        	mov    rax,QWORD PTR [rdi]
  37a68a:	48 89 04 d1                                     	mov    QWORD PTR [rcx+rdx*8],rax
  37a68e:	ff 03                                           	inc    DWORD PTR [rbx]
  37a690:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  37a695:	48 83 c4 20                                     	add    rsp,0x20
  37a699:	5f                                              	pop    rdi
  37a69a:	c3                                              	ret
