
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000332e8c <.data+0x332e8c>:
  332e8c:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  332e91:	57                                              	push   rdi
  332e92:	48 83 ec 40                                     	sub    rsp,0x40
  332e96:	48 8b fa                                        	mov    rdi,rdx
  332e99:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  332e9e:	49 8b d0                                        	mov    rdx,r8
  332ea1:	49 8b d9                                        	mov    rbx,r9
  332ea4:	e8 bf 93 f9 ff                                  	call   0x2cc268
  332ea9:	48 8b d3                                        	mov    rdx,rbx
  332eac:	48 8d 4c 24 28                                  	lea    rcx,[rsp+0x28]
  332eb1:	e8 b2 93 f9 ff                                  	call   0x2cc268
  332eb6:	8b 54 24 70                                     	mov    edx,DWORD PTR [rsp+0x70]
  332eba:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  332ebf:	e8 ac c4 fa ff                                  	call   0x2df370
  332ec4:	0f 10 44 24 20                                  	movups xmm0,XMMWORD PTR [rsp+0x20]
  332ec9:	33 c0                                           	xor    eax,eax
  332ecb:	48 8b cf                                        	mov    rcx,rdi
  332ece:	f2 0f 10 4c 24 30                               	movsd  xmm1,QWORD PTR [rsp+0x30]
  332ed4:	66 89 87 d0 00 00 00                            	mov    WORD PTR [rdi+0xd0],ax
  332edb:	88 87 d2 00 00 00                               	mov    BYTE PTR [rdi+0xd2],al
  332ee1:	8a 44 24 5b                                     	mov    al,BYTE PTR [rsp+0x5b]
  332ee5:	88 87 d3 00 00 00                               	mov    BYTE PTR [rdi+0xd3],al
  332eeb:	48 8d 44 24 48                                  	lea    rax,[rsp+0x48]
  332ef0:	0f 11 87 88 00 00 00                            	movups XMMWORD PTR [rdi+0x88],xmm0
  332ef7:	48 89 47 78                                     	mov    QWORD PTR [rdi+0x78],rax
  332efb:	f2 0f 11 8f 98 00 00 00                         	movsd  QWORD PTR [rdi+0x98],xmm1
  332f03:	48 c7 87 80 00 00 00 03 00 00 00                	mov    QWORD PTR [rdi+0x80],0x3
  332f0e:	48 8b 5c 24 50                                  	mov    rbx,QWORD PTR [rsp+0x50]
  332f13:	48 83 c4 40                                     	add    rsp,0x40
  332f17:	5f                                              	pop    rdi
  332f18:	e9 b7 ac 09 00                                  	jmp    0x3cdbd4
