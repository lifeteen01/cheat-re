
dump_analysis/semantic_reconstruction/movement_main_helpers/320f88.bin:     file format binary


Disassembly of section .data:

0000000000320f88 <.data>:
  320f88:	48 8b c4                                        	mov    rax,rsp
  320f8b:	55                                              	push   rbp
  320f8c:	53                                              	push   rbx
  320f8d:	56                                              	push   rsi
  320f8e:	57                                              	push   rdi
  320f8f:	41 54                                           	push   r12
  320f91:	41 56                                           	push   r14
  320f93:	41 57                                           	push   r15
  320f95:	48 8d 68 88                                     	lea    rbp,[rax-0x78]
  320f99:	48 81 ec 40 01 00 00                            	sub    rsp,0x140
  320fa0:	f2 0f 10 02                                     	movsd  xmm0,QWORD PTR [rdx]
  320fa4:	49 8b f0                                        	mov    rsi,r8
  320fa7:	0f 29 70 b8                                     	movaps XMMWORD PTR [rax-0x48],xmm6
  320fab:	4c 8d 44 24 20                                  	lea    r8,[rsp+0x20]
  320fb0:	0f 29 78 a8                                     	movaps XMMWORD PTR [rax-0x58],xmm7
  320fb4:	4c 8b f2                                        	mov    r14,rdx
  320fb7:	44 0f 29 40 98                                  	movaps XMMWORD PTR [rax-0x68],xmm8
  320fbc:	48 8b f9                                        	mov    rdi,rcx
  320fbf:	44 0f 29 48 88                                  	movaps XMMWORD PTR [rax-0x78],xmm9
  320fc4:	48 8d 4d 88                                     	lea    rcx,[rbp-0x78]
  320fc8:	44 0f 29 90 78 ff ff ff                         	movaps XMMWORD PTR [rax-0x88],xmm10
  320fd0:	f3 44 0f 10 15 7b cb f6 ff                      	movss  xmm10,DWORD PTR [rip+0xfffffffffff6cb7b]        # 0x28db54
  320fd9:	44 0f 29 98 68 ff ff ff                         	movaps XMMWORD PTR [rax-0x98],xmm11
  320fe1:	44 0f 28 db                                     	movaps xmm11,xmm3
  320fe5:	44 0f 29 a0 58 ff ff ff                         	movaps XMMWORD PTR [rax-0xa8],xmm12
  320fed:	8b 42 08                                        	mov    eax,DWORD PTR [rdx+0x8]
  320ff0:	48 8d 54 24 30                                  	lea    rdx,[rsp+0x30]
  320ff5:	f2 0f 11 44 24 20                               	movsd  QWORD PTR [rsp+0x20],xmm0
  320ffb:	89 44 24 28                                     	mov    DWORD PTR [rsp+0x28],eax
  320fff:	f2 0f 11 44 24 30                               	movsd  QWORD PTR [rsp+0x30],xmm0
  321005:	89 44 24 38                                     	mov    DWORD PTR [rsp+0x38],eax
  321009:	e8 8e e2 fb ff                                  	call   0x2df29c
  32100e:	48 8b cf                                        	mov    rcx,rdi
  321011:	0f 57 ff                                        	xorps  xmm7,xmm7
  321014:	e8 7f de fc ff                                  	call   0x2eee98
  321019:	f2 44 0f 10 0e                                  	movsd  xmm9,QWORD PTR [rsi]
  32101e:	44 8b 66 08                                     	mov    r12d,DWORD PTR [rsi+0x8]
  321022:	4c 8b bd a8 00 00 00                            	mov    r15,QWORD PTR [rbp+0xa8]
  321029:	f3 44 0f 10 05 aa ca f6 ff                      	movss  xmm8,DWORD PTR [rip+0xfffffffffff6caaa]        # 0x28dadc
  321032:	f3 44 0f 10 25 a5 d1 f6 ff                      	movss  xmm12,DWORD PTR [rip+0xfffffffffff6d1a5]        # 0x28e1e0
  32103b:	f2 41 0f 10 36                                  	movsd  xmm6,QWORD PTR [r14]
  321040:	48 8d 55 a0                                     	lea    rdx,[rbp-0x60]
  321044:	41 8b 5e 08                                     	mov    ebx,DWORD PTR [r14+0x8]
  321048:	41 0f 28 d0                                     	movaps xmm2,xmm8
  32104c:	48 8b ce                                        	mov    rcx,rsi
  32104f:	e8 18 e6 fb ff                                  	call   0x2df66c
  321054:	48 8b d0                                        	mov    rdx,rax
  321057:	49 8b ce                                        	mov    rcx,r14
  32105a:	e8 69 6b 0a 00                                  	call   0x3c7bc8
  32105f:	f2 41 0f 10 06                                  	movsd  xmm0,QWORD PTR [r14]
  321064:	4c 8d 44 24 30                                  	lea    r8,[rsp+0x30]
  321069:	41 8b 46 08                                     	mov    eax,DWORD PTR [r14+0x8]
  32106d:	48 8d 54 24 20                                  	lea    rdx,[rsp+0x20]
  321072:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  321077:	f2 0f 11 44 24 30                               	movsd  QWORD PTR [rsp+0x30],xmm0
  32107d:	89 44 24 38                                     	mov    DWORD PTR [rsp+0x38],eax
  321081:	f2 0f 11 74 24 20                               	movsd  QWORD PTR [rsp+0x20],xmm6
  321087:	89 5c 24 28                                     	mov    DWORD PTR [rsp+0x28],ebx
  32108b:	e8 0c e2 fb ff                                  	call   0x2df29c
  321090:	f2 41 0f 10 07                                  	movsd  xmm0,QWORD PTR [r15]
  321095:	4c 8d 44 24 40                                  	lea    r8,[rsp+0x40]
  32109a:	41 8b 47 08                                     	mov    eax,DWORD PTR [r15+0x8]
  32109e:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  3210a3:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  3210a8:	f2 0f 11 44 24 40                               	movsd  QWORD PTR [rsp+0x40],xmm0
  3210ae:	89 44 24 48                                     	mov    DWORD PTR [rsp+0x48],eax
  3210b2:	e8 c9 49 fc ff                                  	call   0x2e5a80
  3210b7:	49 8b d7                                        	mov    rdx,r15
  3210ba:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  3210bf:	e8 6c ee fb ff                                  	call   0x2dff30
  3210c4:	41 0f 2f c2                                     	comiss xmm0,xmm10
  3210c8:	77 79                                           	ja     0x321143
  3210ca:	f2 0f 10 4d 80                                  	movsd  xmm1,QWORD PTR [rbp-0x80]
  3210cf:	48 8d 55 ac                                     	lea    rdx,[rbp-0x54]
  3210d3:	48 8b 8d a0 00 00 00                            	mov    rcx,QWORD PTR [rbp+0xa0]
  3210da:	44 0f 28 d0                                     	movaps xmm10,xmm0
  3210de:	0f 10 44 24 70                                  	movups xmm0,XMMWORD PTR [rsp+0x70]
  3210e3:	41 0f 28 d0                                     	movaps xmm2,xmm8
  3210e7:	f2 0f 11 4d 98                                  	movsd  QWORD PTR [rbp-0x68],xmm1
  3210ec:	0f 11 45 88                                     	movups XMMWORD PTR [rbp-0x78],xmm0
  3210f0:	e8 77 e5 fb ff                                  	call   0x2df66c
  3210f5:	48 8b d0                                        	mov    rdx,rax
  3210f8:	48 8b ce                                        	mov    rcx,rsi
  3210fb:	e8 c8 6a 0a 00                                  	call   0x3c7bc8
  321100:	41 0f 28 d3                                     	movaps xmm2,xmm11
  321104:	48 8d 55 b8                                     	lea    rdx,[rbp-0x48]
  321108:	48 8b ce                                        	mov    rcx,rsi
  32110b:	e8 5c e5 fb ff                                  	call   0x2df66c
  321110:	48 8b c8                                        	mov    rcx,rax
  321113:	48 8d 55 c4                                     	lea    rdx,[rbp-0x3c]
  321117:	41 0f 28 d0                                     	movaps xmm2,xmm8
  32111b:	e8 4c e5 fb ff                                  	call   0x2df66c
  321120:	48 8b d0                                        	mov    rdx,rax
  321123:	48 8b ce                                        	mov    rcx,rsi
  321126:	e8 cd 6a 0a 00                                  	call   0x3c7bf8
  32112b:	f2 44 0f 10 0e                                  	movsd  xmm9,QWORD PTR [rsi]
  321130:	f3 41 0f 58 f8                                  	addss  xmm7,xmm8
  321135:	44 8b 66 08                                     	mov    r12d,DWORD PTR [rsi+0x8]
  321139:	44 0f 2f e7                                     	comiss xmm12,xmm7
  32113d:	0f 87 f8 fe ff ff                               	ja     0x32103b
  321143:	f2 41 0f 10 07                                  	movsd  xmm0,QWORD PTR [r15]
  321148:	4c 8d 44 24 40                                  	lea    r8,[rsp+0x40]
  32114d:	41 8b 47 08                                     	mov    eax,DWORD PTR [r15+0x8]
  321151:	48 8d 54 24 50                                  	lea    rdx,[rsp+0x50]
  321156:	48 8d 4d 88                                     	lea    rcx,[rbp-0x78]
  32115a:	f2 0f 11 44 24 40                               	movsd  QWORD PTR [rsp+0x40],xmm0
  321160:	89 44 24 48                                     	mov    DWORD PTR [rsp+0x48],eax
  321164:	e8 17 49 fc ff                                  	call   0x2e5a80
  321169:	49 8b d7                                        	mov    rdx,r15
  32116c:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  321171:	e8 ba ed fb ff                                  	call   0x2dff30
  321176:	8b 44 24 58                                     	mov    eax,DWORD PTR [rsp+0x58]
  32117a:	4c 8d 9c 24 40 01 00 00                         	lea    r11,[rsp+0x140]
  321182:	f2 0f 10 4c 24 50                               	movsd  xmm1,QWORD PTR [rsp+0x50]
  321188:	f3 41 0f 5c f8                                  	subss  xmm7,xmm8
  32118d:	41 0f 28 73 f0                                  	movaps xmm6,XMMWORD PTR [r11-0x10]
  321192:	45 0f 28 43 d0                                  	movaps xmm8,XMMWORD PTR [r11-0x30]
  321197:	45 0f 28 53 b0                                  	movaps xmm10,XMMWORD PTR [r11-0x50]
  32119c:	45 0f 28 5b a0                                  	movaps xmm11,XMMWORD PTR [r11-0x60]
  3211a1:	45 0f 28 63 90                                  	movaps xmm12,XMMWORD PTR [r11-0x70]
  3211a6:	f2 44 0f 11 4f 1c                               	movsd  QWORD PTR [rdi+0x1c],xmm9
  3211ac:	45 0f 28 4b c0                                  	movaps xmm9,XMMWORD PTR [r11-0x40]
  3211b1:	f3 0f 11 47 48                                  	movss  DWORD PTR [rdi+0x48],xmm0
  3211b6:	f2 0f 10 06                                     	movsd  xmm0,QWORD PTR [rsi]
  3211ba:	f2 0f 11 4f 10                                  	movsd  QWORD PTR [rdi+0x10],xmm1
  3211bf:	89 47 18                                        	mov    DWORD PTR [rdi+0x18],eax
  3211c2:	8b 46 08                                        	mov    eax,DWORD PTR [rsi+0x8]
  3211c5:	f2 0f 11 47 34                                  	movsd  QWORD PTR [rdi+0x34],xmm0
  3211ca:	f3 0f 11 7f 40                                  	movss  DWORD PTR [rdi+0x40],xmm7
  3211cf:	41 0f 28 7b e0                                  	movaps xmm7,XMMWORD PTR [r11-0x20]
  3211d4:	89 47 3c                                        	mov    DWORD PTR [rdi+0x3c],eax
  3211d7:	48 8b c7                                        	mov    rax,rdi
  3211da:	44 89 67 24                                     	mov    DWORD PTR [rdi+0x24],r12d
  3211de:	c6 07 01                                        	mov    BYTE PTR [rdi],0x1
  3211e1:	49 8b e3                                        	mov    rsp,r11
  3211e4:	41 5f                                           	pop    r15
  3211e6:	41 5e                                           	pop    r14
  3211e8:	41 5c                                           	pop    r12
  3211ea:	5f                                              	pop    rdi
  3211eb:	5e                                              	pop    rsi
  3211ec:	5b                                              	pop    rbx
  3211ed:	5d                                              	pop    rbp
  3211ee:	c3                                              	ret
