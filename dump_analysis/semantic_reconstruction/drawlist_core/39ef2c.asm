
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039ef2c <.data+0x39ef2c>:
  39ef2c:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  39ef31:	57                                              	push   rdi
  39ef32:	48 83 ec 20                                     	sub    rsp,0x20
  39ef36:	48 8b fa                                        	mov    rdi,rdx
  39ef39:	48 8b d9                                        	mov    rbx,rcx
  39ef3c:	8b 11                                           	mov    edx,DWORD PTR [rcx]
  39ef3e:	3b 51 04                                        	cmp    edx,DWORD PTR [rcx+0x4]
  39ef41:	75 11                                           	jne    0x39ef54
  39ef43:	ff c2                                           	inc    edx
  39ef45:	e8 b2 3f fc ff                                  	call   0x362efc
  39ef4a:	8b d0                                           	mov    edx,eax
  39ef4c:	48 8b cb                                        	mov    rcx,rbx
  39ef4f:	e8 c8 ba fd ff                                  	call   0x37aa1c
  39ef54:	48 63 03                                        	movsxd rax,DWORD PTR [rbx]
  39ef57:	0f 10 07                                        	movups xmm0,XMMWORD PTR [rdi]
  39ef5a:	48 6b c8 38                                     	imul   rcx,rax,0x38
  39ef5e:	48 8b 43 08                                     	mov    rax,QWORD PTR [rbx+0x8]
  39ef62:	0f 11 04 01                                     	movups XMMWORD PTR [rcx+rax*1],xmm0
  39ef66:	0f 10 4f 10                                     	movups xmm1,XMMWORD PTR [rdi+0x10]
  39ef6a:	0f 11 4c 01 10                                  	movups XMMWORD PTR [rcx+rax*1+0x10],xmm1
  39ef6f:	0f 10 47 20                                     	movups xmm0,XMMWORD PTR [rdi+0x20]
  39ef73:	0f 11 44 01 20                                  	movups XMMWORD PTR [rcx+rax*1+0x20],xmm0
  39ef78:	f2 0f 10 4f 30                                  	movsd  xmm1,QWORD PTR [rdi+0x30]
  39ef7d:	f2 0f 11 4c 01 30                               	movsd  QWORD PTR [rcx+rax*1+0x30],xmm1
  39ef83:	ff 03                                           	inc    DWORD PTR [rbx]
  39ef85:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  39ef8a:	48 83 c4 20                                     	add    rsp,0x20
  39ef8e:	5f                                              	pop    rdi
  39ef8f:	c3                                              	ret
