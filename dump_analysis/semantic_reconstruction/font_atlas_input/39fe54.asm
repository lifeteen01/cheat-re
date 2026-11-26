
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039fe54 <.data+0x39fe54>:
  39fe54:	48 8b c4                                        	mov    rax,rsp
  39fe57:	55                                              	push   rbp
  39fe58:	53                                              	push   rbx
  39fe59:	56                                              	push   rsi
  39fe5a:	57                                              	push   rdi
  39fe5b:	48 8d 68 88                                     	lea    rbp,[rax-0x78]
  39fe5f:	48 81 ec 58 01 00 00                            	sub    rsp,0x158
  39fe66:	0f 29 70 c8                                     	movaps XMMWORD PTR [rax-0x38],xmm6
  39fe6a:	41 8b f8                                        	mov    edi,r8d
  39fe6d:	48 8b 85 a0 00 00 00                            	mov    rax,QWORD PTR [rbp+0xa0]
  39fe74:	0f 28 f3                                        	movaps xmm6,xmm3
  39fe77:	48 8b f2                                        	mov    rsi,rdx
  39fe7a:	48 8b d9                                        	mov    rbx,rcx
  39fe7d:	48 85 c0                                        	test   rax,rax
  39fe80:	74 50                                           	je     0x39fed2
  39fe82:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  39fe85:	0f 10 48 10                                     	movups xmm1,XMMWORD PTR [rax+0x10]
  39fe89:	0f 11 45 b0                                     	movups XMMWORD PTR [rbp-0x50],xmm0
  39fe8d:	0f 10 40 20                                     	movups xmm0,XMMWORD PTR [rax+0x20]
  39fe91:	0f 11 4d c0                                     	movups XMMWORD PTR [rbp-0x40],xmm1
  39fe95:	0f 10 48 30                                     	movups xmm1,XMMWORD PTR [rax+0x30]
  39fe99:	0f 11 45 d0                                     	movups XMMWORD PTR [rbp-0x30],xmm0
  39fe9d:	0f 10 40 40                                     	movups xmm0,XMMWORD PTR [rax+0x40]
  39fea1:	0f 11 4d e0                                     	movups XMMWORD PTR [rbp-0x20],xmm1
  39fea5:	0f 10 48 50                                     	movups xmm1,XMMWORD PTR [rax+0x50]
  39fea9:	0f 11 45 f0                                     	movups XMMWORD PTR [rbp-0x10],xmm0
  39fead:	0f 10 40 60                                     	movups xmm0,XMMWORD PTR [rax+0x60]
  39feb1:	0f 11 4d 00                                     	movups XMMWORD PTR [rbp+0x0],xmm1
  39feb5:	0f 10 48 70                                     	movups xmm1,XMMWORD PTR [rax+0x70]
  39feb9:	48 8b 80 80 00 00 00                            	mov    rax,QWORD PTR [rax+0x80]
  39fec0:	48 89 45 30                                     	mov    QWORD PTR [rbp+0x30],rax
  39fec4:	48 8d 45 b0                                     	lea    rax,[rbp-0x50]
  39fec8:	0f 11 45 10                                     	movups XMMWORD PTR [rbp+0x10],xmm0
  39fecc:	0f 11 4d 20                                     	movups XMMWORD PTR [rbp+0x20],xmm1
  39fed0:	eb 09                                           	jmp    0x39fedb
  39fed2:	48 8d 4d b0                                     	lea    rcx,[rbp-0x50]
  39fed6:	e8 75 f6 ff ff                                  	call   0x39f550
  39fedb:	0f 2f 35 6a d3 ee ff                            	comiss xmm6,DWORD PTR [rip+0xffffffffffeed36a]        # 0x28d24c
  39fee2:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  39fee5:	0f 10 48 10                                     	movups xmm1,XMMWORD PTR [rax+0x10]
  39fee9:	0f 11 44 24 20                                  	movups XMMWORD PTR [rsp+0x20],xmm0
  39feee:	48 89 74 24 20                                  	mov    QWORD PTR [rsp+0x20],rsi
  39fef3:	0f 10 40 20                                     	movups xmm0,XMMWORD PTR [rax+0x20]
  39fef7:	89 7c 24 28                                     	mov    DWORD PTR [rsp+0x28],edi
  39fefb:	0f 11 4c 24 30                                  	movups XMMWORD PTR [rsp+0x30],xmm1
  39ff00:	0f 10 48 30                                     	movups xmm1,XMMWORD PTR [rax+0x30]
  39ff04:	0f 11 44 24 40                                  	movups XMMWORD PTR [rsp+0x40],xmm0
  39ff09:	0f 10 40 40                                     	movups xmm0,XMMWORD PTR [rax+0x40]
  39ff0d:	0f 11 4c 24 50                                  	movups XMMWORD PTR [rsp+0x50],xmm1
  39ff12:	0f 10 48 50                                     	movups xmm1,XMMWORD PTR [rax+0x50]
  39ff16:	0f 11 44 24 60                                  	movups XMMWORD PTR [rsp+0x60],xmm0
  39ff1b:	0f 10 40 60                                     	movups xmm0,XMMWORD PTR [rax+0x60]
  39ff1f:	0f 11 4c 24 70                                  	movups XMMWORD PTR [rsp+0x70],xmm1
  39ff24:	0f 10 48 70                                     	movups xmm1,XMMWORD PTR [rax+0x70]
  39ff28:	48 8b 80 80 00 00 00                            	mov    rax,QWORD PTR [rax+0x80]
  39ff2f:	0f 11 45 80                                     	movups XMMWORD PTR [rbp-0x80],xmm0
  39ff33:	48 89 45 a0                                     	mov    QWORD PTR [rbp-0x60],rax
  39ff37:	0f 11 4d 90                                     	movups XMMWORD PTR [rbp-0x70],xmm1
  39ff3b:	76 06                                           	jbe    0x39ff43
  39ff3d:	f3 0f 11 74 24 34                               	movss  DWORD PTR [rsp+0x34],xmm6
  39ff43:	48 8b 85 a8 00 00 00                            	mov    rax,QWORD PTR [rbp+0xa8]
  39ff4a:	48 8d 54 24 20                                  	lea    rdx,[rsp+0x20]
  39ff4f:	48 8b 4c 24 58                                  	mov    rcx,QWORD PTR [rsp+0x58]
  39ff54:	48 85 c0                                        	test   rax,rax
  39ff57:	48 0f 45 c8                                     	cmovne rcx,rax
  39ff5b:	48 89 4c 24 58                                  	mov    QWORD PTR [rsp+0x58],rcx
  39ff60:	48 8b cb                                        	mov    rcx,rbx
  39ff63:	e8 00 fe ff ff                                  	call   0x39fd68
  39ff68:	0f 28 b4 24 40 01 00 00                         	movaps xmm6,XMMWORD PTR [rsp+0x140]
  39ff70:	48 81 c4 58 01 00 00                            	add    rsp,0x158
  39ff77:	5f                                              	pop    rdi
  39ff78:	5e                                              	pop    rsi
  39ff79:	5b                                              	pop    rbx
  39ff7a:	5d                                              	pop    rbp
  39ff7b:	c3                                              	ret
