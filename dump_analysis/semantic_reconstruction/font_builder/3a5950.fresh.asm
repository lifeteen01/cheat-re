
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a5950 <.data+0x3a5950>:
  3a5950:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3a5955:	48 89 74 24 10                                  	mov    QWORD PTR [rsp+0x10],rsi
  3a595a:	57                                              	push   rdi
  3a595b:	48 83 ec 30                                     	sub    rsp,0x30
  3a595f:	41 80 78 48 00                                  	cmp    BYTE PTR [r8+0x48],0x0
  3a5964:	49 8b f8                                        	mov    rdi,r8
  3a5967:	0f 29 74 24 20                                  	movaps XMMWORD PTR [rsp+0x20],xmm6
  3a596c:	48 8b da                                        	mov    rbx,rdx
  3a596f:	0f 28 f3                                        	movaps xmm6,xmm3
  3a5972:	48 8b f1                                        	mov    rsi,rcx
  3a5975:	75 2c                                           	jne    0x3a59a3
  3a5977:	48 8b ca                                        	mov    rcx,rdx
  3a597a:	e8 91 e4 ff ff                                  	call   0x3a3e10
  3a597f:	8b 47 14                                        	mov    eax,DWORD PTR [rdi+0x14]
  3a5982:	f3 0f 10 44 24 60                               	movss  xmm0,DWORD PTR [rsp+0x60]
  3a5988:	89 43 14                                        	mov    DWORD PTR [rbx+0x14],eax
  3a598b:	33 c0                                           	xor    eax,eax
  3a598d:	66 89 43 50                                     	mov    WORD PTR [rbx+0x50],ax
  3a5991:	f3 0f 11 73 68                                  	movss  DWORD PTR [rbx+0x68],xmm6
  3a5996:	f3 0f 11 43 6c                                  	movss  DWORD PTR [rbx+0x6c],xmm0
  3a599b:	48 89 7b 48                                     	mov    QWORD PTR [rbx+0x48],rdi
  3a599f:	48 89 73 40                                     	mov    QWORD PTR [rbx+0x40],rsi
  3a59a3:	66 ff 43 50                                     	inc    WORD PTR [rbx+0x50]
  3a59a7:	48 8b 5c 24 40                                  	mov    rbx,QWORD PTR [rsp+0x40]
  3a59ac:	48 8b 74 24 48                                  	mov    rsi,QWORD PTR [rsp+0x48]
  3a59b1:	0f 28 74 24 20                                  	movaps xmm6,XMMWORD PTR [rsp+0x20]
  3a59b6:	48 83 c4 30                                     	add    rsp,0x30
  3a59ba:	5f                                              	pop    rdi
  3a59bb:	c3                                              	ret
