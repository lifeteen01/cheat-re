
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003940ac <.data+0x3940ac>:
  3940ac:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3940b1:	48 89 74 24 10                                  	mov    QWORD PTR [rsp+0x10],rsi
  3940b6:	57                                              	push   rdi
  3940b7:	48 83 ec 30                                     	sub    rsp,0x30
  3940bb:	48 8b 1d 66 1a 07 00                            	mov    rbx,QWORD PTR [rip+0x71a66]        # 0x405b28
  3940c2:	8b f9                                           	mov    edi,ecx
  3940c4:	0f 29 74 24 20                                  	movaps XMMWORD PTR [rsp+0x20],xmm6
  3940c9:	80 bb 27 49 00 00 00                            	cmp    BYTE PTR [rbx+0x4927],0x0
  3940d0:	48 8b b3 08 3f 00 00                            	mov    rsi,QWORD PTR [rbx+0x3f08]
  3940d7:	74 46                                           	je     0x39411f
  3940d9:	0f b6 83 26 49 00 00                            	movzx  eax,BYTE PTR [rbx+0x4926]
  3940e0:	8b d1                                           	mov    edx,ecx
  3940e2:	81 e2 00 04 00 00                               	and    edx,0x400
  3940e8:	0b c2                                           	or     eax,edx
  3940ea:	75 33                                           	jne    0x39411f
  3940ec:	f6 83 a8 47 00 00 04                            	test   BYTE PTR [rbx+0x47a8],0x4
  3940f3:	74 06                                           	je     0x3940fb
  3940f5:	0f ba e1 09                                     	bt     ecx,0x9
  3940f9:	73 0d                                           	jae    0x394108
  3940fb:	e8 8c ff ff ff                                  	call   0x39408c
  394100:	84 c0                                           	test   al,al
  394102:	0f 85 a6 00 00 00                               	jne    0x3941ae
  394108:	32 c0                                           	xor    al,al
  39410a:	48 8b 5c 24 40                                  	mov    rbx,QWORD PTR [rsp+0x40]
  39410f:	48 8b 74 24 48                                  	mov    rsi,QWORD PTR [rsp+0x48]
  394114:	0f 28 74 24 20                                  	movaps xmm6,XMMWORD PTR [rsp+0x20]
  394119:	48 83 c4 30                                     	add    rsp,0x30
  39411d:	5f                                              	pop    rdi
  39411e:	c3                                              	ret
  39411f:	8b 8b ac 47 00 00                               	mov    ecx,DWORD PTR [rbx+0x47ac]
  394125:	f6 c1 01                                        	test   cl,0x1
  394128:	74 de                                           	je     0x394108
  39412a:	48 39 b3 10 3f 00 00                            	cmp    QWORD PTR [rbx+0x3f10],rsi
  394131:	74 11                                           	je     0x394144
  394133:	8b c7                                           	mov    eax,edi
  394135:	81 e1 80 00 00 00                               	and    ecx,0x80
  39413b:	25 00 01 00 00                                  	and    eax,0x100
  394140:	0b c8                                           	or     ecx,eax
  394142:	74 c4                                           	je     0x394108
  394144:	40 84 ff                                        	test   dil,dil
  394147:	78 20                                           	js     0x394169
  394149:	8b 83 68 3f 00 00                               	mov    eax,DWORD PTR [rbx+0x3f68]
  39414f:	85 c0                                           	test   eax,eax
  394151:	74 16                                           	je     0x394169
  394153:	3b 83 a4 47 00 00                               	cmp    eax,DWORD PTR [rbx+0x47a4]
  394159:	74 0e                                           	je     0x394169
  39415b:	80 bb 75 3f 00 00 00                            	cmp    BYTE PTR [rbx+0x3f75],0x0
  394162:	75 05                                           	jne    0x394169
  394164:	3b 46 7c                                        	cmp    eax,DWORD PTR [rsi+0x7c]
  394167:	75 9f                                           	jne    0x394108
  394169:	8b d7                                           	mov    edx,edi
  39416b:	48 8b ce                                        	mov    rcx,rsi
  39416e:	e8 11 06 00 00                                  	call   0x394784
  394173:	84 c0                                           	test   al,al
  394175:	75 0c                                           	jne    0x394183
  394177:	f7 83 a8 47 00 00 00 01 00 00                   	test   DWORD PTR [rbx+0x47a8],0x100
  394181:	74 85                                           	je     0x394108
  394183:	f6 83 a8 47 00 00 04                            	test   BYTE PTR [rbx+0x47a8],0x4
  39418a:	74 0a                                           	je     0x394196
  39418c:	0f ba e7 09                                     	bt     edi,0x9
  394190:	0f 83 72 ff ff ff                               	jae    0x394108
  394196:	8b 46 7c                                        	mov    eax,DWORD PTR [rsi+0x7c]
  394199:	39 83 a4 47 00 00                               	cmp    DWORD PTR [rbx+0x47a4],eax
  39419f:	75 0d                                           	jne    0x3941ae
  3941a1:	80 be b8 00 00 00 00                            	cmp    BYTE PTR [rsi+0xb8],0x0
  3941a8:	0f 85 5a ff ff ff                               	jne    0x394108
  3941ae:	0f ba e7 0b                                     	bt     edi,0xb
  3941b2:	73 07                                           	jae    0x3941bb
  3941b4:	f3 0f 10 73 44                                  	movss  xmm6,DWORD PTR [rbx+0x44]
  3941b9:	eb 10                                           	jmp    0x3941cb
  3941bb:	0f ba e7 0c                                     	bt     edi,0xc
  3941bf:	73 07                                           	jae    0x3941c8
  3941c1:	f3 0f 10 73 48                                  	movss  xmm6,DWORD PTR [rbx+0x48]
  3941c6:	eb 03                                           	jmp    0x3941cb
  3941c8:	0f 57 f6                                        	xorps  xmm6,xmm6
  3941cb:	0f 2f 35 7a 90 ef ff                            	comiss xmm6,DWORD PTR [rip+0xffffffffffef907a]        # 0x28d24c
  3941d2:	76 4a                                           	jbe    0x39421e
  3941d4:	8b 83 a4 47 00 00                               	mov    eax,DWORD PTR [rbx+0x47a4]
  3941da:	85 c0                                           	test   eax,eax
  3941dc:	75 0f                                           	jne    0x3941ed
  3941de:	48 8d 93 b0 47 00 00                            	lea    rdx,[rbx+0x47b0]
  3941e5:	48 8b ce                                        	mov    rcx,rsi
  3941e8:	e8 67 e4 ff ff                                  	call   0x392654
  3941ed:	0f ba e7 0d                                     	bt     edi,0xd
  3941f1:	73 12                                           	jae    0x394205
  3941f3:	39 83 04 4c 00 00                               	cmp    DWORD PTR [rbx+0x4c04],eax
  3941f9:	74 0a                                           	je     0x394205
  3941fb:	c7 83 08 4c 00 00 00 00 00 00                   	mov    DWORD PTR [rbx+0x4c08],0x0
  394205:	f3 0f 10 83 08 4c 00 00                         	movss  xmm0,DWORD PTR [rbx+0x4c08]
  39420d:	0f 2f c6                                        	comiss xmm0,xmm6
  394210:	89 83 00 4c 00 00                               	mov    DWORD PTR [rbx+0x4c00],eax
  394216:	0f 93 c0                                        	setae  al
  394219:	e9 ec fe ff ff                                  	jmp    0x39410a
  39421e:	b0 01                                           	mov    al,0x1
  394220:	e9 e5 fe ff ff                                  	jmp    0x39410a
