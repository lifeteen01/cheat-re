
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a5008 <.data+0x3a5008>:
  3a5008:	40 53                                           	rex push rbx
  3a500a:	55                                              	push   rbp
  3a500b:	56                                              	push   rsi
  3a500c:	57                                              	push   rdi
  3a500d:	41 54                                           	push   r12
  3a500f:	41 55                                           	push   r13
  3a5011:	41 56                                           	push   r14
  3a5013:	41 57                                           	push   r15
  3a5015:	48 83 ec 58                                     	sub    rsp,0x58
  3a5019:	f6 01 04                                        	test   BYTE PTR [rcx],0x4
  3a501c:	4c 8b f9                                        	mov    r15,rcx
  3a501f:	0f 85 cc 01 00 00                               	jne    0x3a51f1
  3a5025:	8b 91 98 04 00 00                               	mov    edx,DWORD PTR [rcx+0x498]
  3a502b:	e8 0c f7 ff ff                                  	call   0x3a473c
  3a5030:	4c 8b e0                                        	mov    r12,rax
  3a5033:	48 89 84 24 b0 00 00 00                         	mov    QWORD PTR [rsp+0xb0],rax
  3a503b:	33 ed                                           	xor    ebp,ebp
  3a503d:	45 0f b7 34 24                                  	movzx  r14d,WORD PTR [r12]
  3a5042:	41 0f b7 4c 24 06                               	movzx  ecx,WORD PTR [r12+0x6]
  3a5048:	41 8b f6                                        	mov    esi,r14d
  3a504b:	41 0f b7 44 24 04                               	movzx  eax,WORD PTR [r12+0x4]
  3a5051:	03 cd                                           	add    ecx,ebp
  3a5053:	41 0f af 4f 40                                  	imul   ecx,DWORD PTR [r15+0x40]
  3a5058:	2b f5                                           	sub    esi,ebp
  3a505a:	49 8b 7f 30                                     	mov    rdi,QWORD PTR [r15+0x30]
  3a505e:	d1 ee                                           	shr    esi,1
  3a5060:	44 2b f6                                        	sub    r14d,esi
  3a5063:	44 2b f5                                        	sub    r14d,ebp
  3a5066:	03 c8                                           	add    ecx,eax
  3a5068:	48 85 ff                                        	test   rdi,rdi
  3a506b:	74 49                                           	je     0x3a50b6
  3a506d:	4c 8d 24 39                                     	lea    r12,[rcx+rdi*1]
  3a5071:	8b fe                                           	mov    edi,esi
  3a5073:	85 f6                                           	test   esi,esi
  3a5075:	74 0d                                           	je     0x3a5084
  3a5077:	44 8b c7                                        	mov    r8d,edi
  3a507a:	33 d2                                           	xor    edx,edx
  3a507c:	49 8b cc                                        	mov    rcx,r12
  3a507f:	e8 ec 3c 02 00                                  	call   0x3c8d70
  3a5084:	8b dd                                           	mov    ebx,ebp
  3a5086:	85 ed                                           	test   ebp,ebp
  3a5088:	74 10                                           	je     0x3a509a
  3a508a:	49 8d 0c 34                                     	lea    rcx,[r12+rsi*1]
  3a508e:	44 8b c3                                        	mov    r8d,ebx
  3a5091:	b2 ff                                           	mov    dl,0xff
  3a5093:	e8 d8 3c 02 00                                  	call   0x3c8d70
  3a5098:	eb 02                                           	jmp    0x3a509c
  3a509a:	8b fe                                           	mov    edi,esi
  3a509c:	45 85 f6                                        	test   r14d,r14d
  3a509f:	74 6a                                           	je     0x3a510b
  3a50a1:	49 8d 0c 2c                                     	lea    rcx,[r12+rbp*1]
  3a50a5:	45 8b c6                                        	mov    r8d,r14d
  3a50a8:	48 03 cf                                        	add    rcx,rdi
  3a50ab:	8b dd                                           	mov    ebx,ebp
  3a50ad:	33 d2                                           	xor    edx,edx
  3a50af:	e8 bc 3c 02 00                                  	call   0x3c8d70
  3a50b4:	eb 55                                           	jmp    0x3a510b
  3a50b6:	49 8b 47 38                                     	mov    rax,QWORD PTR [r15+0x38]
  3a50ba:	44 8b e6                                        	mov    r12d,esi
  3a50bd:	4c 8d 2c 88                                     	lea    r13,[rax+rcx*4]
  3a50c1:	85 f6                                           	test   esi,esi
  3a50c3:	74 0c                                           	je     0x3a50d1
  3a50c5:	49 8b fd                                        	mov    rdi,r13
  3a50c8:	8b ce                                           	mov    ecx,esi
  3a50ca:	b8 ff ff ff 00                                  	mov    eax,0xffffff
  3a50cf:	f3 ab                                           	rep stos DWORD PTR [rdi],eax
  3a50d1:	49 c1 e4 02                                     	shl    r12,0x2
  3a50d5:	8b dd                                           	mov    ebx,ebp
  3a50d7:	85 ed                                           	test   ebp,ebp
  3a50d9:	74 13                                           	je     0x3a50ee
  3a50db:	44 8b c3                                        	mov    r8d,ebx
  3a50de:	4b 8d 0c 2c                                     	lea    rcx,[r12+r13*1]
  3a50e2:	49 c1 e0 02                                     	shl    r8,0x2
  3a50e6:	83 ca ff                                        	or     edx,0xffffffff
  3a50e9:	e8 82 3c 02 00                                  	call   0x3c8d70
  3a50ee:	45 85 f6                                        	test   r14d,r14d
  3a50f1:	74 18                                           	je     0x3a510b
  3a50f3:	48 8d 3c ad 00 00 00 00                         	lea    rdi,[rbp*4+0x0]
  3a50fb:	41 8b ce                                        	mov    ecx,r14d
  3a50fe:	49 03 fd                                        	add    rdi,r13
  3a5101:	b8 ff ff ff 00                                  	mov    eax,0xffffff
  3a5106:	49 03 fc                                        	add    rdi,r12
  3a5109:	f3 ab                                           	rep stos DWORD PTR [rdi],eax
  3a510b:	4c 8b a4 24 b0 00 00 00                         	mov    r12,QWORD PTR [rsp+0xb0]
  3a5113:	48 8d 8c 24 b8 00 00 00                         	lea    rcx,[rsp+0xb8]
  3a511b:	0f 57 d2                                        	xorps  xmm2,xmm2
  3a511e:	0f 57 c9                                        	xorps  xmm1,xmm1
  3a5121:	41 0f b7 44 24 06                               	movzx  eax,WORD PTR [r12+0x6]
  3a5127:	03 c5                                           	add    eax,ebp
  3a5129:	f3 48 0f 2a d0                                  	cvtsi2ss xmm2,rax
  3a512e:	41 0f b7 44 24 04                               	movzx  eax,WORD PTR [r12+0x4]
  3a5134:	ff c8                                           	dec    eax
  3a5136:	03 c6                                           	add    eax,esi
  3a5138:	f3 48 0f 2a c8                                  	cvtsi2ss xmm1,rax
  3a513d:	e8 fe 71 f2 ff                                  	call   0x2cc340
  3a5142:	48 8b d0                                        	mov    rdx,rax
  3a5145:	4d 8d 47 48                                     	lea    r8,[r15+0x48]
  3a5149:	48 8d 8c 24 a8 00 00 00                         	lea    rcx,[rsp+0xa8]
  3a5151:	e8 86 6a fe ff                                  	call   0x38bbdc
  3a5156:	41 0f b7 4c 24 04                               	movzx  ecx,WORD PTR [r12+0x4]
  3a515c:	0f 57 d2                                        	xorps  xmm2,xmm2
  3a515f:	41 0f b7 44 24 06                               	movzx  eax,WORD PTR [r12+0x6]
  3a5165:	ff c1                                           	inc    ecx
  3a5167:	03 ce                                           	add    ecx,esi
  3a5169:	ff c0                                           	inc    eax
  3a516b:	03 cd                                           	add    ecx,ebp
  3a516d:	03 c5                                           	add    eax,ebp
  3a516f:	0f 57 c9                                        	xorps  xmm1,xmm1
  3a5172:	f3 48 0f 2a c9                                  	cvtsi2ss xmm1,rcx
  3a5177:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  3a517c:	f3 48 0f 2a d0                                  	cvtsi2ss xmm2,rax
  3a5181:	e8 ba 71 f2 ff                                  	call   0x2cc340
  3a5186:	48 8b d0                                        	mov    rdx,rax
  3a5189:	4d 8d 47 48                                     	lea    r8,[r15+0x48]
  3a518d:	48 8d 8c 24 a0 00 00 00                         	lea    rcx,[rsp+0xa0]
  3a5195:	e8 42 6a fe ff                                  	call   0x38bbdc
  3a519a:	f3 0f 10 94 24 a4 00 00 00                      	movss  xmm2,DWORD PTR [rsp+0xa4]
  3a51a3:	48 8d 4c 24 38                                  	lea    rcx,[rsp+0x38]
  3a51a8:	f3 0f 58 94 24 ac 00 00 00                      	addss  xmm2,DWORD PTR [rsp+0xac]
  3a51b1:	f3 0f 10 9c 24 a0 00 00 00                      	movss  xmm3,DWORD PTR [rsp+0xa0]
  3a51ba:	f3 0f 10 8c 24 a8 00 00 00                      	movss  xmm1,DWORD PTR [rsp+0xa8]
  3a51c3:	f3 0f 59 15 85 80 ee ff                         	mulss  xmm2,DWORD PTR [rip+0xffffffffffee8085]        # 0x28d250
  3a51cb:	f3 0f 11 54 24 20                               	movss  DWORD PTR [rsp+0x20],xmm2
  3a51d1:	e8 7a 71 f2 ff                                  	call   0x2cc350
  3a51d6:	48 03 db                                        	add    rbx,rbx
  3a51d9:	ff c5                                           	inc    ebp
  3a51db:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3a51de:	f3 41 0f 7f 84 df 88 00 00 00                   	movdqu XMMWORD PTR [r15+rbx*8+0x88],xmm0
  3a51e8:	83 fd 40                                        	cmp    ebp,0x40
  3a51eb:	0f 82 4c fe ff ff                               	jb     0x3a503d
  3a51f1:	48 83 c4 58                                     	add    rsp,0x58
  3a51f5:	41 5f                                           	pop    r15
  3a51f7:	41 5e                                           	pop    r14
  3a51f9:	41 5d                                           	pop    r13
  3a51fb:	41 5c                                           	pop    r12
  3a51fd:	5f                                              	pop    rdi
  3a51fe:	5e                                              	pop    rsi
  3a51ff:	5d                                              	pop    rbp
  3a5200:	5b                                              	pop    rbx
  3a5201:	c3                                              	ret
