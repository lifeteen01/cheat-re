
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003948dc <.data+0x3948dc>:
  3948dc:	40 53                                           	rex push rbx
  3948de:	55                                              	push   rbp
  3948df:	56                                              	push   rsi
  3948e0:	57                                              	push   rdi
  3948e1:	48 83 ec 28                                     	sub    rsp,0x28
  3948e5:	48 8b 1d 3c 12 07 00                            	mov    rbx,QWORD PTR [rip+0x7123c]        # 0x405b28
  3948ec:	4d 85 c0                                        	test   r8,r8
  3948ef:	48 8b c1                                        	mov    rax,rcx
  3948f2:	8b fa                                           	mov    edi,edx
  3948f4:	49 0f 45 c0                                     	cmovne rax,r8
  3948f8:	48 8b e9                                        	mov    rbp,rcx
  3948fb:	44 0b 8b 88 47 00 00                            	or     r9d,DWORD PTR [rbx+0x4788]
  394902:	48 8b b3 08 3f 00 00                            	mov    rsi,QWORD PTR [rbx+0x3f08]
  394909:	89 93 a4 47 00 00                               	mov    DWORD PTR [rbx+0x47a4],edx
  39490f:	0f 10 01                                        	movups xmm0,XMMWORD PTR [rcx]
  394912:	f3 0f 7f 83 b0 47 00 00                         	movdqu XMMWORD PTR [rbx+0x47b0],xmm0
  39491a:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  39491d:	44 89 8b a8 47 00 00                            	mov    DWORD PTR [rbx+0x47a8],r9d
  394924:	c7 83 ac 47 00 00 00 00 00 00                   	mov    DWORD PTR [rbx+0x47ac],0x0
  39492e:	f3 0f 7f 83 c0 47 00 00                         	movdqu XMMWORD PTR [rbx+0x47c0],xmm0
  394936:	85 d2                                           	test   edx,edx
  394938:	74 65                                           	je     0x39499f
  39493a:	8b ca                                           	mov    ecx,edx
  39493c:	e8 73 03 00 00                                  	call   0x394cb4
  394941:	f6 83 a8 47 00 00 08                            	test   BYTE PTR [rbx+0x47a8],0x8
  394948:	75 55                                           	jne    0x39499f
  39494a:	0f bf 8e 5e 01 00 00                            	movsx  ecx,WORD PTR [rsi+0x15e]
  394951:	8b 86 58 01 00 00                               	mov    eax,DWORD PTR [rsi+0x158]
  394957:	0f ab c1                                        	bts    ecx,eax
  39495a:	66 89 8e 5e 01 00 00                            	mov    WORD PTR [rsi+0x15e],cx
  394961:	39 bb f0 48 00 00                               	cmp    DWORD PTR [rbx+0x48f0],edi
  394967:	74 09                                           	je     0x394972
  394969:	80 bb 28 49 00 00 00                            	cmp    BYTE PTR [rbx+0x4928],0x0
  394970:	74 2d                                           	je     0x39499f
  394972:	48 8b 8b e8 48 00 00                            	mov    rcx,QWORD PTR [rbx+0x48e8]
  394979:	48 8b 86 90 03 00 00                            	mov    rax,QWORD PTR [rsi+0x390]
  394980:	48 39 81 90 03 00 00                            	cmp    QWORD PTR [rcx+0x390],rax
  394987:	75 16                                           	jne    0x39499f
  394989:	48 3b f1                                        	cmp    rsi,rcx
  39498c:	74 0c                                           	je     0x39499a
  39498e:	8b 41 14                                        	mov    eax,DWORD PTR [rcx+0x14]
  394991:	0b 46 14                                        	or     eax,DWORD PTR [rsi+0x14]
  394994:	0f ba e0 17                                     	bt     eax,0x17
  394998:	73 05                                           	jae    0x39499f
  39499a:	e8 c5 0f 00 00                                  	call   0x395964
  39499f:	48 8d 96 38 02 00 00                            	lea    rdx,[rsi+0x238]
  3949a6:	c7 83 90 47 00 00 00 00 00 00                   	mov    DWORD PTR [rbx+0x4790],0x0
  3949b0:	48 8b cd                                        	mov    rcx,rbp
  3949b3:	e8 70 3d 00 00                                  	call   0x398728
  3949b8:	84 c0                                           	test   al,al
  3949ba:	75 29                                           	jne    0x3949e5
  3949bc:	85 ff                                           	test   edi,edi
  3949be:	74 18                                           	je     0x3949d8
  3949c0:	3b bb 68 3f 00 00                               	cmp    edi,DWORD PTR [rbx+0x3f68]
  3949c6:	74 25                                           	je     0x3949ed
  3949c8:	3b bb 98 3f 00 00                               	cmp    edi,DWORD PTR [rbx+0x3f98]
  3949ce:	74 1d                                           	je     0x3949ed
  3949d0:	3b bb f0 48 00 00                               	cmp    edi,DWORD PTR [rbx+0x48f0]
  3949d6:	74 15                                           	je     0x3949ed
  3949d8:	80 bb 90 5c 00 00 00                            	cmp    BYTE PTR [rbx+0x5c90],0x0
  3949df:	75 0c                                           	jne    0x3949ed
  3949e1:	32 c0                                           	xor    al,al
  3949e3:	eb 24                                           	jmp    0x394a09
  3949e5:	0f ba ab ac 47 00 00 09                         	bts    DWORD PTR [rbx+0x47ac],0x9
  3949ed:	48 8d 55 08                                     	lea    rdx,[rbp+0x8]
  3949f1:	41 b0 01                                        	mov    r8b,0x1
  3949f4:	48 8b cd                                        	mov    rcx,rbp
  3949f7:	e8 b0 fa ff ff                                  	call   0x3944ac
  3949fc:	84 c0                                           	test   al,al
  3949fe:	74 07                                           	je     0x394a07
  394a00:	83 8b ac 47 00 00 01                            	or     DWORD PTR [rbx+0x47ac],0x1
  394a07:	b0 01                                           	mov    al,0x1
  394a09:	48 83 c4 28                                     	add    rsp,0x28
  394a0d:	5f                                              	pop    rdi
  394a0e:	5e                                              	pop    rsi
  394a0f:	5d                                              	pop    rbp
  394a10:	5b                                              	pop    rbx
  394a11:	c3                                              	ret
