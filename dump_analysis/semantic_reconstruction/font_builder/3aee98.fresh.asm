
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003aee98 <.data+0x3aee98>:
  3aee98:	48 8b c4                                        	mov    rax,rsp
  3aee9b:	48 89 58 08                                     	mov    QWORD PTR [rax+0x8],rbx
  3aee9f:	48 89 70 18                                     	mov    QWORD PTR [rax+0x18],rsi
  3aeea3:	57                                              	push   rdi
  3aeea4:	48 81 ec 90 00 00 00                            	sub    rsp,0x90
  3aeeab:	48 8b bc 24 f8 00 00 00                         	mov    rdi,QWORD PTR [rsp+0xf8]
  3aeeb3:	41 8b d1                                        	mov    edx,r9d
  3aeeb6:	0f 29 70 e8                                     	movaps XMMWORD PTR [rax-0x18],xmm6
  3aeeba:	48 8b f1                                        	mov    rsi,rcx
  3aeebd:	f3 0f 10 b4 24 c8 00 00 00                      	movss  xmm6,DWORD PTR [rsp+0xc8]
  3aeec6:	4c 8d 4c 24 60                                  	lea    r9,[rsp+0x60]
  3aeecb:	0f 29 78 d8                                     	movaps XMMWORD PTR [rax-0x28],xmm7
  3aeecf:	0f 28 c6                                        	movaps xmm0,xmm6
  3aeed2:	f3 0f 10 bc 24 c0 00 00 00                      	movss  xmm7,DWORD PTR [rsp+0xc0]
  3aeedb:	49 8b c8                                        	mov    rcx,r8
  3aeede:	48 89 78 90                                     	mov    QWORD PTR [rax-0x70],rdi
  3aeee2:	f3 0f 5d c7                                     	minss  xmm0,xmm7
  3aeee6:	c7 40 10 00 00 00 00                            	mov    DWORD PTR [rax+0x10],0x0
  3aeeed:	48 c7 40 c8 00 00 00 00                         	mov    QWORD PTR [rax-0x38],0x0
  3aeef5:	48 8d 40 10                                     	lea    rax,[rax+0x10]
  3aeef9:	48 89 44 24 20                                  	mov    QWORD PTR [rsp+0x20],rax
  3aeefe:	f3 0f 5e c8                                     	divss  xmm1,xmm0
  3aef02:	0f 28 d1                                        	movaps xmm2,xmm1
  3aef05:	e8 66 ad ff ff                                  	call   0x3a9c70
  3aef0a:	48 8b d8                                        	mov    rbx,rax
  3aef0d:	48 85 c0                                        	test   rax,rax
  3aef10:	74 7a                                           	je     0x3aef8c
  3aef12:	8b 8c 24 f0 00 00 00                            	mov    ecx,DWORD PTR [rsp+0xf0]
  3aef19:	48 8b d0                                        	mov    rdx,rax
  3aef1c:	f3 0f 10 84 24 d8 00 00 00                      	movss  xmm0,DWORD PTR [rsp+0xd8]
  3aef25:	f3 0f 10 8c 24 d0 00 00 00                      	movss  xmm1,DWORD PTR [rsp+0xd0]
  3aef2e:	44 8b 8c 24 a8 00 00 00                         	mov    r9d,DWORD PTR [rsp+0xa8]
  3aef36:	4c 8b 44 24 60                                  	mov    r8,QWORD PTR [rsp+0x60]
  3aef3b:	48 89 7c 24 58                                  	mov    QWORD PTR [rsp+0x58],rdi
  3aef40:	89 4c 24 50                                     	mov    DWORD PTR [rsp+0x50],ecx
  3aef44:	8b 8c 24 e8 00 00 00                            	mov    ecx,DWORD PTR [rsp+0xe8]
  3aef4b:	89 4c 24 48                                     	mov    DWORD PTR [rsp+0x48],ecx
  3aef4f:	8b 8c 24 e0 00 00 00                            	mov    ecx,DWORD PTR [rsp+0xe0]
  3aef56:	89 4c 24 40                                     	mov    DWORD PTR [rsp+0x40],ecx
  3aef5a:	48 8b ce                                        	mov    rcx,rsi
  3aef5d:	f3 0f 11 44 24 38                               	movss  DWORD PTR [rsp+0x38],xmm0
  3aef63:	f3 0f 11 4c 24 30                               	movss  DWORD PTR [rsp+0x30],xmm1
  3aef69:	f3 0f 11 74 24 28                               	movss  DWORD PTR [rsp+0x28],xmm6
  3aef6f:	f3 0f 11 7c 24 20                               	movss  DWORD PTR [rsp+0x20],xmm7
  3aef75:	e8 f6 d3 ff ff                                  	call   0x3ac370
  3aef7a:	48 8b 4c 24 60                                  	mov    rcx,QWORD PTR [rsp+0x60]
  3aef7f:	e8 f8 61 fe ff                                  	call   0x39517c
  3aef84:	48 8b cb                                        	mov    rcx,rbx
  3aef87:	e8 f0 61 fe ff                                  	call   0x39517c
  3aef8c:	0f 28 7c 24 70                                  	movaps xmm7,XMMWORD PTR [rsp+0x70]
  3aef91:	4c 8d 9c 24 90 00 00 00                         	lea    r11,[rsp+0x90]
  3aef99:	49 8b 5b 10                                     	mov    rbx,QWORD PTR [r11+0x10]
  3aef9d:	49 8b 73 20                                     	mov    rsi,QWORD PTR [r11+0x20]
  3aefa1:	41 0f 28 73 f0                                  	movaps xmm6,XMMWORD PTR [r11-0x10]
  3aefa6:	49 8b e3                                        	mov    rsp,r11
  3aefa9:	5f                                              	pop    rdi
  3aefaa:	c3                                              	ret
