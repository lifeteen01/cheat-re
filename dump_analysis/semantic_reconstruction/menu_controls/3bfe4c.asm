
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003bfe4c <.data+0x3bfe4c>:
  3bfe4c:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3bfe51:	57                                              	push   rdi
  3bfe52:	48 83 ec 30                                     	sub    rsp,0x30
  3bfe56:	48 8b f9                                        	mov    rdi,rcx
  3bfe59:	e8 a2 d3 f9 ff                                  	call   0x35d200
  3bfe5e:	80 b8 bb 00 00 00 00                            	cmp    BYTE PTR [rax+0xbb],0x0
  3bfe65:	75 49                                           	jne    0x3bfeb0
  3bfe67:	48 8d 98 00 01 00 00                            	lea    rbx,[rax+0x100]
  3bfe6e:	4c 8b c7                                        	mov    r8,rdi
  3bfe71:	48 8b d3                                        	mov    rdx,rbx
  3bfe74:	48 8d 4c 24 48                                  	lea    rcx,[rsp+0x48]
  3bfe79:	e8 5a fb f2 ff                                  	call   0x2ef9d8
  3bfe7e:	4c 8b c0                                        	mov    r8,rax
  3bfe81:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  3bfe86:	48 8b d3                                        	mov    rdx,rbx
  3bfe89:	e8 fa b4 f1 ff                                  	call   0x2db388
  3bfe8e:	f3 0f 10 0d ca 33 ed ff                         	movss  xmm1,DWORD PTR [rip+0xffffffffffed33ca]        # 0x293260
  3bfe96:	48 8b cf                                        	mov    rcx,rdi
  3bfe99:	e8 a2 4c fd ff                                  	call   0x394b40
  3bfe9e:	45 33 c9                                        	xor    r9d,r9d
  3bfea1:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  3bfea6:	45 33 c0                                        	xor    r8d,r8d
  3bfea9:	33 d2                                           	xor    edx,edx
  3bfeab:	e8 2c 4a fd ff                                  	call   0x3948dc
  3bfeb0:	48 8b 5c 24 40                                  	mov    rbx,QWORD PTR [rsp+0x40]
  3bfeb5:	48 83 c4 30                                     	add    rsp,0x30
  3bfeb9:	5f                                              	pop    rdi
  3bfeba:	c3                                              	ret
