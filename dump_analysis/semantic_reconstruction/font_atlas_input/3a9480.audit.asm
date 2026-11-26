
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/font_atlas_input/3a9480.audit.bin:     file format binary


Disassembly of section .data:

00000000003a9480 <.data>:
  3a9480:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3a9485:	57                                              	push   rdi
  3a9486:	48 83 ec 20                                     	sub    rsp,0x20
  3a948a:	48 8b fa                                        	mov    rdi,rdx
  3a948d:	48 8b d9                                        	mov    rbx,rcx
  3a9490:	8b 11                                           	mov    edx,DWORD PTR [rcx]
  3a9492:	3b 51 04                                        	cmp    edx,DWORD PTR [rcx+0x4]
  3a9495:	75 11                                           	jne    0x3a94a8
  3a9497:	ff c2                                           	inc    edx
  3a9499:	e8 5e 9a fb ff                                  	call   0x362efc
  3a949e:	8b d0                                           	mov    edx,eax
  3a94a0:	48 8b cb                                        	mov    rcx,rbx
  3a94a3:	e8 14 01 00 00                                  	call   0x3a95bc
  3a94a8:	48 63 03                                        	movsxd rax,DWORD PTR [rbx]
  3a94ab:	0f 10 07                                        	movups xmm0,XMMWORD PTR [rdi]
  3a94ae:	48 8b 4b 08                                     	mov    rcx,QWORD PTR [rbx+0x8]
  3a94b2:	48 69 d0 88 00 00 00                            	imul   rdx,rax,0x88
  3a94b9:	0f 11 04 0a                                     	movups XMMWORD PTR [rdx+rcx*1],xmm0
  3a94bd:	0f 10 4f 10                                     	movups xmm1,XMMWORD PTR [rdi+0x10]
  3a94c1:	0f 11 4c 0a 10                                  	movups XMMWORD PTR [rdx+rcx*1+0x10],xmm1
  3a94c6:	0f 10 47 20                                     	movups xmm0,XMMWORD PTR [rdi+0x20]
  3a94ca:	0f 11 44 0a 20                                  	movups XMMWORD PTR [rdx+rcx*1+0x20],xmm0
  3a94cf:	0f 10 4f 30                                     	movups xmm1,XMMWORD PTR [rdi+0x30]
  3a94d3:	0f 11 4c 0a 30                                  	movups XMMWORD PTR [rdx+rcx*1+0x30],xmm1
  3a94d8:	0f 10 47 40                                     	movups xmm0,XMMWORD PTR [rdi+0x40]
  3a94dc:	0f 11 44 0a 40                                  	movups XMMWORD PTR [rdx+rcx*1+0x40],xmm0
  3a94e1:	0f 10 4f 50                                     	movups xmm1,XMMWORD PTR [rdi+0x50]
  3a94e5:	0f 11 4c 0a 50                                  	movups XMMWORD PTR [rdx+rcx*1+0x50],xmm1
  3a94ea:	0f 10 47 60                                     	movups xmm0,XMMWORD PTR [rdi+0x60]
  3a94ee:	0f 11 44 0a 60                                  	movups XMMWORD PTR [rdx+rcx*1+0x60],xmm0
  3a94f3:	0f 10 4f 70                                     	movups xmm1,XMMWORD PTR [rdi+0x70]
  3a94f7:	0f 11 4c 0a 70                                  	movups XMMWORD PTR [rdx+rcx*1+0x70],xmm1
  3a94fc:	48 8b 87 80 00 00 00                            	mov    rax,QWORD PTR [rdi+0x80]
  3a9503:	48 89 84 0a 80 00 00 00                         	mov    QWORD PTR [rdx+rcx*1+0x80],rax
  3a950b:	ff 03                                           	inc    DWORD PTR [rbx]
  3a950d:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  3a9512:	48 83 c4 20                                     	add    rsp,0x20
  3a9516:	5f                                              	pop    rdi
  3a9517:	c3                                              	ret
