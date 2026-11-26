
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039ef90 <.data+0x39ef90>:
  39ef90:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  39ef95:	57                                              	push   rdi
  39ef96:	48 83 ec 20                                     	sub    rsp,0x20
  39ef9a:	48 8b fa                                        	mov    rdi,rdx
  39ef9d:	48 8b d9                                        	mov    rbx,rcx
  39efa0:	8b 11                                           	mov    edx,DWORD PTR [rcx]
  39efa2:	3b 51 04                                        	cmp    edx,DWORD PTR [rcx+0x4]
  39efa5:	75 11                                           	jne    0x39efb8
  39efa7:	ff c2                                           	inc    edx
  39efa9:	e8 4e 3f fc ff                                  	call   0x362efc
  39efae:	8b d0                                           	mov    edx,eax
  39efb0:	48 8b cb                                        	mov    rcx,rbx
  39efb3:	e8 d0 b8 fd ff                                  	call   0x37a888
  39efb8:	48 63 03                                        	movsxd rax,DWORD PTR [rbx]
  39efbb:	48 8b 4b 08                                     	mov    rcx,QWORD PTR [rbx+0x8]
  39efbf:	0f 10 07                                        	movups xmm0,XMMWORD PTR [rdi]
  39efc2:	48 8d 14 80                                     	lea    rdx,[rax+rax*4]
  39efc6:	0f 11 04 91                                     	movups XMMWORD PTR [rcx+rdx*4],xmm0
  39efca:	8b 47 10                                        	mov    eax,DWORD PTR [rdi+0x10]
  39efcd:	89 44 91 10                                     	mov    DWORD PTR [rcx+rdx*4+0x10],eax
  39efd1:	ff 03                                           	inc    DWORD PTR [rbx]
  39efd3:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  39efd8:	48 83 c4 20                                     	add    rsp,0x20
  39efdc:	5f                                              	pop    rdi
  39efdd:	c3                                              	ret
