
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039f030 <.data+0x39f030>:
  39f030:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  39f035:	57                                              	push   rdi
  39f036:	48 83 ec 20                                     	sub    rsp,0x20
  39f03a:	48 8b fa                                        	mov    rdi,rdx
  39f03d:	48 8b d9                                        	mov    rbx,rcx
  39f040:	8b 11                                           	mov    edx,DWORD PTR [rcx]
  39f042:	3b 51 04                                        	cmp    edx,DWORD PTR [rcx+0x4]
  39f045:	75 11                                           	jne    0x39f058
  39f047:	ff c2                                           	inc    edx
  39f049:	e8 ae 3e fc ff                                  	call   0x362efc
  39f04e:	8b d0                                           	mov    edx,eax
  39f050:	48 8b cb                                        	mov    rcx,rbx
  39f053:	e8 60 b9 fd ff                                  	call   0x37a9b8
  39f058:	48 63 13                                        	movsxd rdx,DWORD PTR [rbx]
  39f05b:	48 8b 43 08                                     	mov    rax,QWORD PTR [rbx+0x8]
  39f05f:	48 03 d2                                        	add    rdx,rdx
  39f062:	0f 10 07                                        	movups xmm0,XMMWORD PTR [rdi]
  39f065:	f3 0f 7f 04 d0                                  	movdqu XMMWORD PTR [rax+rdx*8],xmm0
  39f06a:	ff 03                                           	inc    DWORD PTR [rbx]
  39f06c:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  39f071:	48 83 c4 20                                     	add    rsp,0x20
  39f075:	5f                                              	pop    rdi
  39f076:	c3                                              	ret
