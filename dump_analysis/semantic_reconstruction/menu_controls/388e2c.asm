
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000388e2c <.data+0x388e2c>:
  388e2c:	48 8b c4                                        	mov    rax,rsp
  388e2f:	48 89 58 08                                     	mov    QWORD PTR [rax+0x8],rbx
  388e33:	55                                              	push   rbp
  388e34:	56                                              	push   rsi
  388e35:	57                                              	push   rdi
  388e36:	41 54                                           	push   r12
  388e38:	41 55                                           	push   r13
  388e3a:	41 56                                           	push   r14
  388e3c:	41 57                                           	push   r15
  388e3e:	48 8d 68 98                                     	lea    rbp,[rax-0x68]
  388e42:	48 81 ec 30 01 00 00                            	sub    rsp,0x130
  388e49:	0f 29 70 b8                                     	movaps XMMWORD PTR [rax-0x48],xmm6
  388e4d:	40 8a fa                                        	mov    dil,dl
  388e50:	0f 29 78 a8                                     	movaps XMMWORD PTR [rax-0x58],xmm7
  388e54:	4c 8b e1                                        	mov    r12,rcx
  388e57:	44 0f 29 40 98                                  	movaps XMMWORD PTR [rax-0x68],xmm8
  388e5c:	44 0f 29 48 88                                  	movaps XMMWORD PTR [rax-0x78],xmm9
  388e61:	44 0f 29 90 78 ff ff ff                         	movaps XMMWORD PTR [rax-0x88],xmm10
  388e69:	e8 92 43 fd ff                                  	call   0x35d200
  388e6e:	4c 8b e8                                        	mov    r13,rax
  388e71:	e8 2e 9e 00 00                                  	call   0x392ca4
  388e76:	45 33 c0                                        	xor    r8d,r8d
  388e79:	49 8b d4                                        	mov    rdx,r12
  388e7c:	49 8b cd                                        	mov    rcx,r13
  388e7f:	4c 8b f0                                        	mov    r14,rax
  388e82:	e8 8d 97 00 00                                  	call   0x392614
  388e87:	f3 44 0f 10 15 d0 a3 f0 ff                      	movss  xmm10,DWORD PTR [rip+0xfffffffffff0a3d0]        # 0x293260
  388e90:	48 8d 4c 24 40                                  	lea    rcx,[rsp+0x40]
  388e95:	41 b1 01                                        	mov    r9b,0x1
  388e98:	f3 44 0f 11 54 24 20                            	movss  DWORD PTR [rsp+0x20],xmm10
  388e9f:	45 33 c0                                        	xor    r8d,r8d
  388ea2:	49 8b d4                                        	mov    rdx,r12
  388ea5:	8b d8                                           	mov    ebx,eax
  388ea7:	e8 f0 68 00 00                                  	call   0x38f79c
  388eac:	f3 0f 10 35 34 00 ec ff                         	movss  xmm6,DWORD PTR [rip+0xffffffffffec0034]        # 0x248ee8
  388eb4:	f3 0f 59 35 08 a3 f0 ff                         	mulss  xmm6,DWORD PTR [rip+0xfffffffffff0a308]        # 0x2931c4
  388ebc:	f3 0f 58 30                                     	addss  xmm6,DWORD PTR [rax]
  388ec0:	e8 07 97 00 00                                  	call   0x3925cc
  388ec5:	0f 28 d0                                        	movaps xmm2,xmm0
  388ec8:	48 8d 4c 24 40                                  	lea    rcx,[rsp+0x40]
  388ecd:	0f 28 ce                                        	movaps xmm1,xmm6
  388ed0:	e8 6b 34 f4 ff                                  	call   0x2cc340
  388ed5:	f2 41 0f 10 85 00 01 00 00                      	movsd  xmm0,QWORD PTR [r13+0x100]
  388ede:	4c 8d 44 24 40                                  	lea    r8,[rsp+0x40]
  388ee3:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  388ee8:	f2 0f 11 44 24 70                               	movsd  QWORD PTR [rsp+0x70],xmm0
  388eee:	48 8d 4d b0                                     	lea    rcx,[rbp-0x50]
  388ef2:	e8 e1 6a f6 ff                                  	call   0x2ef9d8
  388ef7:	4c 8b c0                                        	mov    r8,rax
  388efa:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  388eff:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  388f04:	e8 7f 24 f5 ff                                  	call   0x2db388
  388f09:	41 0f 28 ca                                     	movaps xmm1,xmm10
  388f0d:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  388f12:	e8 69 3b ff ff                                  	call   0x37ca80
  388f17:	45 33 c9                                        	xor    r9d,r9d
  388f1a:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  388f1f:	45 33 c0                                        	xor    r8d,r8d
  388f22:	8b d3                                           	mov    edx,ebx
  388f24:	e8 b3 b9 00 00                                  	call   0x3948dc
  388f29:	4c 8d 8d 88 00 00 00                            	lea    r9,[rbp+0x88]
  388f30:	c7 44 24 20 00 00 00 00                         	mov    DWORD PTR [rsp+0x20],0x0
  388f38:	4c 8d 85 80 00 00 00                            	lea    r8,[rbp+0x80]
  388f3f:	8b d3                                           	mov    edx,ebx
  388f41:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  388f46:	e8 95 38 03 00                                  	call   0x3bc7e0
  388f4b:	0f 57 c0                                        	xorps  xmm0,xmm0
  388f4e:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  388f53:	33 d2                                           	xor    edx,edx
  388f55:	44 8a f8                                        	mov    r15b,al
  388f58:	0f 11 44 24 50                                  	movups XMMWORD PTR [rsp+0x50],xmm0
  388f5d:	e8 72 d5 fa ff                                  	call   0x3364d4
  388f62:	0f 10 44 24 50                                  	movups xmm0,XMMWORD PTR [rsp+0x50]
  388f67:	4c 8d 45 90                                     	lea    r8,[rbp-0x70]
  388f6b:	ba 09 02 00 00                                  	mov    edx,0x209
  388f70:	49 8b cc                                        	mov    rcx,r12
  388f73:	0f 29 45 90                                     	movaps XMMWORD PTR [rbp-0x70],xmm0
  388f77:	0f 10 44 24 60                                  	movups xmm0,XMMWORD PTR [rsp+0x60]
  388f7c:	0f 29 45 a0                                     	movaps XMMWORD PTR [rbp-0x60],xmm0
  388f80:	e8 cb 7f ff ff                                  	call   0x380f50
  388f85:	8a 8d 80 00 00 00                               	mov    cl,BYTE PTR [rbp+0x80]
  388f8b:	0f 57 c9                                        	xorps  xmm1,xmm1
  388f8e:	f3 44 0f 10 0d bd 42 f0 ff                      	movss  xmm9,DWORD PTR [rip+0xfffffffffff042bd]        # 0x28d254
  388f97:	40 0a cf                                        	or     cl,dil
  388f9a:	f3 0f 10 35 12 a2 f0 ff                         	movss  xmm6,DWORD PTR [rip+0xfffffffffff0a212]        # 0x2931b4
  388fa2:	41 0f 28 d1                                     	movaps xmm2,xmm9
  388fa6:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [rax]
  388faa:	41 0f 95 c1                                     	setne  r9b
  388fae:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  388fb4:	48 8b f0                                        	mov    rsi,rax
  388fb7:	e8 8c ce fa ff                                  	call   0x335e48
  388fbc:	f3 0f 11 06                                     	movss  DWORD PTR [rsi],xmm0
  388fc0:	44 8a 8d 80 00 00 00                            	mov    r9b,BYTE PTR [rbp+0x80]
  388fc7:	41 0f 28 d1                                     	movaps xmm2,xmm9
  388fcb:	f3 0f 10 46 04                                  	movss  xmm0,DWORD PTR [rsi+0x4]
  388fd0:	0f 57 c9                                        	xorps  xmm1,xmm1
  388fd3:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  388fd9:	e8 6a ce fa ff                                  	call   0x335e48
  388fde:	f3 0f 11 46 04                                  	movss  DWORD PTR [rsi+0x4],xmm0
  388fe3:	44 8a cf                                        	mov    r9b,dil
  388fe6:	f3 0f 10 46 0c                                  	movss  xmm0,DWORD PTR [rsi+0xc]
  388feb:	41 0f 28 d1                                     	movaps xmm2,xmm9
  388fef:	0f 57 c9                                        	xorps  xmm1,xmm1
  388ff2:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  388ff8:	e8 4b ce fa ff                                  	call   0x335e48
  388ffd:	f3 0f 11 46 0c                                  	movss  DWORD PTR [rsi+0xc],xmm0
  389002:	41 0f 28 d1                                     	movaps xmm2,xmm9
  389006:	44 8a 8d 88 00 00 00                            	mov    r9b,BYTE PTR [rbp+0x88]
  38900d:	0f 57 c9                                        	xorps  xmm1,xmm1
  389010:	f3 0f 10 46 08                                  	movss  xmm0,DWORD PTR [rsi+0x8]
  389015:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  38901b:	e8 28 ce fa ff                                  	call   0x335e48
  389020:	f3 44 0f 10 46 0c                               	movss  xmm8,DWORD PTR [rsi+0xc]
  389026:	bb 01 00 00 00                                  	mov    ebx,0x1
  38902b:	8b cb                                           	mov    ecx,ebx
  38902d:	f3 0f 11 46 08                                  	movss  DWORD PTR [rsi+0x8],xmm0
  389032:	41 0f 28 c9                                     	movaps xmm1,xmm9
  389036:	e8 5d 92 00 00                                  	call   0x392298
  38903b:	8b d0                                           	mov    edx,eax
  38903d:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  389042:	e8 8d d4 fa ff                                  	call   0x3364d4
  389047:	f3 0f 10 0d 7d a0 f0 ff                         	movss  xmm1,DWORD PTR [rip+0xfffffffffff0a07d]        # 0x2930cc
  38904f:	8b cb                                           	mov    ecx,ebx
  389051:	f3 0f 10 7e 04                                  	movss  xmm7,DWORD PTR [rsi+0x4]
  389056:	f3 0f 6f 30                                     	movdqu xmm6,XMMWORD PTR [rax]
  38905a:	e8 39 92 00 00                                  	call   0x392298
  38905f:	8b d0                                           	mov    edx,eax
  389061:	48 8d 4d c0                                     	lea    rcx,[rbp-0x40]
  389065:	e8 6a d4 fa ff                                  	call   0x3364d4
  38906a:	41 0f 28 c9                                     	movaps xmm1,xmm9
  38906e:	8d 4b 01                                        	lea    ecx,[rbx+0x1]
  389071:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  389074:	f3 0f 7f 45 80                                  	movdqu XMMWORD PTR [rbp-0x80],xmm0
  389079:	e8 1a 92 00 00                                  	call   0x392298
  38907e:	8b d0                                           	mov    edx,eax
  389080:	48 8d 4d d0                                     	lea    rcx,[rbp-0x30]
  389084:	e8 4b d4 fa ff                                  	call   0x3364d4
  389089:	0f 28 df                                        	movaps xmm3,xmm7
  38908c:	66 0f 7f 74 24 40                               	movdqa XMMWORD PTR [rsp+0x40],xmm6
  389092:	4c 8d 45 80                                     	lea    r8,[rbp-0x80]
  389096:	48 8d 55 b0                                     	lea    rdx,[rbp-0x50]
  38909a:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  38909d:	48 8d 4d 90                                     	lea    rcx,[rbp-0x70]
  3890a1:	f3 0f 7f 45 b0                                  	movdqu XMMWORD PTR [rbp-0x50],xmm0
  3890a6:	e8 f9 04 ff ff                                  	call   0x3795a4
  3890ab:	41 0f 28 d8                                     	movaps xmm3,xmm8
  3890af:	4c 8d 44 24 40                                  	lea    r8,[rsp+0x40]
  3890b4:	48 8d 55 80                                     	lea    rdx,[rbp-0x80]
  3890b8:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  3890bd:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3890c0:	48 8d 7e 10                                     	lea    rdi,[rsi+0x10]
  3890c4:	f3 0f 7f 45 80                                  	movdqu XMMWORD PTR [rbp-0x80],xmm0
  3890c9:	e8 d6 04 ff ff                                  	call   0x3795a4
  3890ce:	41 0f 28 d9                                     	movaps xmm3,xmm9
  3890d2:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  3890d7:	41 0f 28 d1                                     	movaps xmm2,xmm9
  3890db:	41 0f 28 c9                                     	movaps xmm1,xmm9
  3890df:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3890e2:	f3 0f 7f 07                                     	movdqu XMMWORD PTR [rdi],xmm0
  3890e6:	49 8b 9d 98 02 00 00                            	mov    rbx,QWORD PTR [r13+0x298]
  3890ed:	f3 0f 10 46 0c                                  	movss  xmm0,DWORD PTR [rsi+0xc]
  3890f2:	f3 0f 59 05 42 01 f2 ff                         	mulss  xmm0,DWORD PTR [rip+0xfffffffffff20142]        # 0x2a923c
  3890fa:	f3 41 0f 59 06                                  	mulss  xmm0,DWORD PTR [r14]
  3890ff:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  389105:	e8 42 b7 f4 ff                                  	call   0x2d484c
  38910a:	48 8b c8                                        	mov    rcx,rax
  38910d:	e8 fa 66 f6 ff                                  	call   0x2ef80c
  389112:	f3 0f 10 35 1a a0 f0 ff                         	movss  xmm6,DWORD PTR [rip+0xfffffffffff0a01a]        # 0x293134
  38911a:	4c 8d 44 24 38                                  	lea    r8,[rsp+0x38]
  38911f:	c7 44 24 28 00 00 00 00                         	mov    DWORD PTR [rsp+0x28],0x0
  389127:	48 8d 54 24 30                                  	lea    rdx,[rsp+0x30]
  38912c:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  389132:	44 8b c8                                        	mov    r9d,eax
  389135:	48 8b cb                                        	mov    rcx,rbx
  389138:	e8 07 81 01 00                                  	call   0x3a1244
  38913d:	4d 8b b5 98 02 00 00                            	mov    r14,QWORD PTR [r13+0x298]
  389144:	33 d2                                           	xor    edx,edx
  389146:	49 8b cc                                        	mov    rcx,r12
  389149:	e8 02 8b 00 00                                  	call   0x391c50
  38914e:	48 8b cf                                        	mov    rcx,rdi
  389151:	48 8b f0                                        	mov    rsi,rax
  389154:	e8 b3 66 f6 ff                                  	call   0x2ef80c
  389159:	41 b1 01                                        	mov    r9b,0x1
  38915c:	f3 44 0f 11 54 24 20                            	movss  DWORD PTR [rsp+0x20],xmm10
  389163:	45 33 c0                                        	xor    r8d,r8d
  389166:	48 8d 4d b0                                     	lea    rcx,[rbp-0x50]
  38916a:	49 8b d4                                        	mov    rdx,r12
  38916d:	8b f8                                           	mov    edi,eax
  38916f:	e8 28 66 00 00                                  	call   0x38f79c
  389174:	48 8b d0                                        	mov    rdx,rax
  389177:	48 8d 4c 24 40                                  	lea    rcx,[rsp+0x40]
  38917c:	0f 28 d6                                        	movaps xmm2,xmm6
  38917f:	e8 7c 38 ff ff                                  	call   0x37ca00
  389184:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  389189:	48 8b d8                                        	mov    rbx,rax
  38918c:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  389191:	e8 5e f7 fe ff                                  	call   0x3788f4
  389196:	48 8b d0                                        	mov    rdx,rax
  389199:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  38919d:	4c 8b c3                                        	mov    r8,rbx
  3891a0:	e8 3f d6 fa ff                                  	call   0x3367e4
  3891a5:	48 8b d0                                        	mov    rdx,rax
  3891a8:	48 89 74 24 20                                  	mov    QWORD PTR [rsp+0x20],rsi
  3891ad:	4d 8b cc                                        	mov    r9,r12
  3891b0:	44 8b c7                                        	mov    r8d,edi
  3891b3:	49 8b ce                                        	mov    rcx,r14
  3891b6:	e8 01 a0 01 00                                  	call   0x3a31bc
  3891bb:	4c 8d 9c 24 30 01 00 00                         	lea    r11,[rsp+0x130]
  3891c3:	41 8a c7                                        	mov    al,r15b
  3891c6:	49 8b 5b 40                                     	mov    rbx,QWORD PTR [r11+0x40]
  3891ca:	41 0f 28 73 f0                                  	movaps xmm6,XMMWORD PTR [r11-0x10]
  3891cf:	41 0f 28 7b e0                                  	movaps xmm7,XMMWORD PTR [r11-0x20]
  3891d4:	45 0f 28 43 d0                                  	movaps xmm8,XMMWORD PTR [r11-0x30]
  3891d9:	45 0f 28 4b c0                                  	movaps xmm9,XMMWORD PTR [r11-0x40]
  3891de:	45 0f 28 53 b0                                  	movaps xmm10,XMMWORD PTR [r11-0x50]
  3891e3:	49 8b e3                                        	mov    rsp,r11
  3891e6:	41 5f                                           	pop    r15
  3891e8:	41 5e                                           	pop    r14
  3891ea:	41 5d                                           	pop    r13
  3891ec:	41 5c                                           	pop    r12
  3891ee:	5f                                              	pop    rdi
  3891ef:	5e                                              	pop    rsi
  3891f0:	5d                                              	pop    rbp
  3891f1:	c3                                              	ret
