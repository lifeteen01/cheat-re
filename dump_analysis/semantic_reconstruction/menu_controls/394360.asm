
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000394360 <.data+0x394360>:
  394360:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  394365:	57                                              	push   rdi
  394366:	48 83 ec 20                                     	sub    rsp,0x20
  39436a:	48 8b 05 b7 17 07 00                            	mov    rax,QWORD PTR [rip+0x717b7]        # 0x405b28
  394371:	8b fa                                           	mov    edi,edx
  394373:	48 63 d9                                        	movsxd rbx,ecx
  394376:	80 bc 03 10 0e 00 00 00                         	cmp    BYTE PTR [rbx+rax*1+0xe10],0x0
  39437e:	74 56                                           	je     0x3943d6
  394380:	f3 0f 10 8c 98 78 37 00 00                      	movss  xmm1,DWORD PTR [rax+rbx*4+0x3778]
  394389:	0f 57 c0                                        	xorps  xmm0,xmm0
  39438c:	0f 2f c1                                        	comiss xmm0,xmm1
  39438f:	77 45                                           	ja     0x3943d6
  394391:	0f 2e c8                                        	ucomiss xmm1,xmm0
  394394:	7a 02                                           	jp     0x394398
  394396:	74 27                                           	je     0x3943bf
  394398:	41 f6 c0 01                                     	test   r8b,0x1
  39439c:	74 38                                           	je     0x3943d6
  39439e:	0f 2f 48 3c                                     	comiss xmm1,DWORD PTR [rax+0x3c]
  3943a2:	76 32                                           	jbe    0x3943d6
  3943a4:	f3 0f 10 58 40                                  	movss  xmm3,DWORD PTR [rax+0x40]
  3943a9:	0f 28 c1                                        	movaps xmm0,xmm1
  3943ac:	f3 0f 5c 40 18                                  	subss  xmm0,DWORD PTR [rax+0x18]
  3943b1:	f3 0f 10 50 3c                                  	movss  xmm2,DWORD PTR [rax+0x3c]
  3943b6:	e8 a1 b4 ff ff                                  	call   0x38f85c
  3943bb:	85 c0                                           	test   eax,eax
  3943bd:	7e 17                                           	jle    0x3943d6
  3943bf:	8b cb                                           	mov    ecx,ebx
  3943c1:	e8 8a 0e 00 00                                  	call   0x395250
  3943c6:	8b c8                                           	mov    ecx,eax
  3943c8:	8b d7                                           	mov    edx,edi
  3943ca:	e8 3d 7b 00 00                                  	call   0x39bf0c
  3943cf:	84 c0                                           	test   al,al
  3943d1:	0f 95 c0                                        	setne  al
  3943d4:	eb 02                                           	jmp    0x3943d8
  3943d6:	32 c0                                           	xor    al,al
  3943d8:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  3943dd:	48 83 c4 20                                     	add    rsp,0x20
  3943e1:	5f                                              	pop    rdi
  3943e2:	c3                                              	ret
