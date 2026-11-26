COMMAND: objdump -D -b binary -m i386:x86-64 -M intel -w --start-address=3359084 --stop-address=3359381 /home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000033416c <.data+0x33416c>:
  33416c:	40 53                	rex push rbx
  33416e:	55                   	push   rbp
  33416f:	56                   	push   rsi
  334170:	57                   	push   rdi
  334171:	41 56                	push   r14
  334173:	48 83 ec 30          	sub    rsp,0x30
  334177:	4c 8b f2             	mov    r14,rdx
  33417a:	41 8b f1             	mov    esi,r9d
  33417d:	49 8b d0             	mov    rdx,r8
  334180:	e8 9f 00 00 00       	call   0x334224
  334185:	83 bc 24 80 00 00 00 00 	cmp    DWORD PTR [rsp+0x80],0x0
  33418d:	48 8b e8             	mov    rbp,rax
  334190:	48 8b c8             	mov    rcx,rax
  334193:	75 0d                	jne    0x3341a2
  334195:	44 8b c6             	mov    r8d,esi
  334198:	49 8b d6             	mov    rdx,r14
  33419b:	e8 24 04 00 00       	call   0x3345c4
  3341a0:	eb 50                	jmp    0x3341f2
  3341a2:	33 ff                	xor    edi,edi
  3341a4:	48 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],rdi
  3341a9:	eb 33                	jmp    0x3341de
  3341ab:	48 8b 4b 18          	mov    rcx,QWORD PTR [rbx+0x18]
  3341af:	49 8b d6             	mov    rdx,r14
  3341b2:	e8 cd 66 09 00       	call   0x3ca884
  3341b7:	85 c0                	test   eax,eax
  3341b9:	74 20                	je     0x3341db
  3341bb:	83 fe ff             	cmp    esi,0xffffffff
  3341be:	7e 10                	jle    0x3341d0
  3341c0:	48 8b cb             	mov    rcx,rbx
  3341c3:	e8 78 0f 00 00       	call   0x335140
  3341c8:	85 c0                	test   eax,eax
  3341ca:	78 04                	js     0x3341d0
  3341cc:	3b c6                	cmp    eax,esi
  3341ce:	75 0b                	jne    0x3341db
  3341d0:	3b bc 24 80 00 00 00 	cmp    edi,DWORD PTR [rsp+0x80]
  3341d7:	7d 24                	jge    0x3341fd
  3341d9:	ff c7                	inc    edi
  3341db:	48 8b cd             	mov    rcx,rbp
  3341de:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  3341e3:	e8 78 04 00 00       	call   0x334660
  3341e8:	48 8b d8             	mov    rbx,rax
  3341eb:	48 85 c0             	test   rax,rax
  3341ee:	75 bb                	jne    0x3341ab
  3341f0:	33 c0                	xor    eax,eax
  3341f2:	48 83 c4 30          	add    rsp,0x30
  3341f6:	41 5e                	pop    r14
  3341f8:	5f                   	pop    rdi
  3341f9:	5e                   	pop    rsi
  3341fa:	5d                   	pop    rbp
  3341fb:	5b                   	pop    rbx
  3341fc:	c3                   	ret
  3341fd:	48 8b c3             	mov    rax,rbx
  334200:	eb f0                	jmp    0x3341f2
  334202:	cc                   	int3
  334203:	cc                   	int3
  334204:	48 83 ec 28          	sub    rsp,0x28
  334208:	e8 17 00 00 00       	call   0x334224
  33420d:	48 8b c8             	mov    rcx,rax
  334210:	e8 d3 04 00 00       	call   0x3346e8
  334215:	48 8b c8             	mov    rcx,rax
  334218:	48 83 c4 28          	add    rsp,0x28
  33421c:	e9 37 11 00 00       	jmp    0x335358
  334221:	cc                   	int3
  334222:	cc                   	int3
  334223:	cc                   	int3
  334224:	40 53                	rex push rbx
  334226:	55                   	push   rbp
  334227:	56                   	push   rsi
  334228:	57                   	push   rdi
  334229:	48 83 ec 28          	sub    rsp,0x28
  33422d:	48 8b f2             	mov    rsi,rdx
  334230:	48 8b e9             	mov    rbp,rcx
  334233:	e8 64 05 00 00       	call   0x33479c
  334238:	48 8d 54 24 60       	lea    rdx,[rsp+0x60]
  33423d:	48 c7 44 24 60 00 00 00 00 	mov    QWORD PTR [rsp+0x60],0x0
  334246:	48 8b c8             	mov    rcx,rax
  334249:	e8 be 05 00 00       	call   0x33480c
  33424e:	33 db                	xor    ebx,ebx
  334250:	48 8b f8             	mov    rdi,rax
  334253:	48 39 5c 24 60       	cmp    QWORD PTR [rsp+0x60],rbx
  334258:	76 30                	jbe    0x33428a
  33425a:	48 63 cb             	movsxd rcx,ebx
  33425d:	48 8b 0c cf          	mov    rcx,QWORD PTR [rdi+rcx*8]
  334261:	e8 4a 02 00 00       	call   0x3344b0
  334266:	48 85 c0             	test   rax,rax
  334269:	74 13                	je     0x33427e
  33426b:	4c 8b c5             	mov    r8,rbp
  33426e:	48 8b d6             	mov    rdx,rsi
  334271:	48 8b c8             	mov    rcx,rax
  334274:	e8 af 02 00 00       	call   0x334528
  334279:	48 85 c0             	test   rax,rax
  33427c:	75 0e                	jne    0x33428c
  33427e:	ff c3                	inc    ebx
  334280:	48 63 c3             	movsxd rax,ebx
  334283:	48 3b 44 24 60       	cmp    rax,QWORD PTR [rsp+0x60]
  334288:	72 d0                	jb     0x33425a
  33428a:	33 c0                	xor    eax,eax
  33428c:	48 83 c4 28          	add    rsp,0x28
  334290:	5f                   	pop    rdi
  334291:	5e                   	pop    rsi
  334292:	5d                   	pop    rbp
  334293:	5b                   	pop    rbx
  334294:	c3                   	ret

COMMAND: objdump -D -b binary -m i386:x86-64 -M intel -w --start-address=3361120 --stop-address=3361421 /home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000334960 <.data+0x334960>:
  334960:	48 89 5c 24 10       	mov    QWORD PTR [rsp+0x10],rbx
  334965:	57                   	push   rdi
  334966:	48 83 ec 20          	sub    rsp,0x20
  33496a:	48 8b fa             	mov    rdi,rdx
  33496d:	48 8b d9             	mov    rbx,rcx
  334970:	48 85 c9             	test   rcx,rcx
  334973:	74 28                	je     0x33499d
  334975:	48 c7 44 24 30 00 00 00 00 	mov    QWORD PTR [rsp+0x30],0x0
  33497e:	eb 0e                	jmp    0x33498e
  334980:	48 83 38 00          	cmp    QWORD PTR [rax],0x0
  334984:	74 05                	je     0x33498b
  334986:	48 39 38             	cmp    QWORD PTR [rax],rdi
  334989:	74 14                	je     0x33499f
  33498b:	48 8b cb             	mov    rcx,rbx
  33498e:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  334993:	e8 c8 fc ff ff       	call   0x334660
  334998:	48 85 c0             	test   rax,rax
  33499b:	75 e3                	jne    0x334980
  33499d:	33 c0                	xor    eax,eax
  33499f:	48 8b 5c 24 38       	mov    rbx,QWORD PTR [rsp+0x38]
  3349a4:	48 83 c4 20          	add    rsp,0x20
  3349a8:	5f                   	pop    rdi
  3349a9:	c3                   	ret
  3349aa:	cc                   	int3
  3349ab:	cc                   	int3
  3349ac:	40 53                	rex push rbx
  3349ae:	56                   	push   rsi
  3349af:	57                   	push   rdi
  3349b0:	41 54                	push   r12
  3349b2:	41 56                	push   r14
  3349b4:	41 57                	push   r15
  3349b6:	48 83 ec 38          	sub    rsp,0x38
  3349ba:	4d 8b f9             	mov    r15,r9
  3349bd:	41 8b f8             	mov    edi,r8d
  3349c0:	4c 8b e2             	mov    r12,rdx
  3349c3:	48 8b f1             	mov    rsi,rcx
  3349c6:	48 85 c9             	test   rcx,rcx
  3349c9:	0f 84 a9 00 00 00    	je     0x334a78
  3349cf:	48 c7 44 24 28 00 00 00 00 	mov    QWORD PTR [rsp+0x28],0x0
  3349d8:	e9 85 00 00 00       	jmp    0x334a62
  3349dd:	48 8b 4b 18          	mov    rcx,QWORD PTR [rbx+0x18]
  3349e1:	49 8b d4             	mov    rdx,r12
  3349e4:	e8 0b 06 00 00       	call   0x334ff4
  3349e9:	84 c0                	test   al,al
  3349eb:	74 72                	je     0x334a5f
  3349ed:	85 ff                	test   edi,edi
  3349ef:	0f 88 93 00 00 00    	js     0x334a88
  3349f5:	4d 85 ff             	test   r15,r15
  3349f8:	0f 84 8a 00 00 00    	je     0x334a88
  3349fe:	4c 8b 73 28          	mov    r14,QWORD PTR [rbx+0x28]
  334a02:	48 8b cb             	mov    rcx,rbx
  334a05:	e8 36 07 00 00       	call   0x335140
  334a0a:	3b f8                	cmp    edi,eax
  334a0c:	7f 51                	jg     0x334a5f
  334a0e:	83 bc 24 90 00 00 00 00 	cmp    DWORD PTR [rsp+0x90],0x0
  334a16:	7c 09                	jl     0x334a21
  334a18:	3b 84 24 90 00 00 00 	cmp    eax,DWORD PTR [rsp+0x90]
  334a1f:	75 3e                	jne    0x334a5f
  334a21:	85 c0                	test   eax,eax
  334a23:	7e 0f                	jle    0x334a34
  334a25:	8d 04 7f             	lea    eax,[rdi+rdi*2]
  334a28:	c1 e0 03             	shl    eax,0x3
  334a2b:	48 98                	cdqe
  334a2d:	49 8b 44 06 e8       	mov    rax,QWORD PTR [r14+rax*1-0x18]
  334a32:	eb 17                	jmp    0x334a4b
  334a34:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  334a39:	48 8d 4c 24 70       	lea    rcx,[rsp+0x70]
  334a3e:	e8 fd f0 ff ff       	call   0x333b40
  334a43:	48 8b c8             	mov    rcx,rax
  334a46:	e8 19 3a fa ff       	call   0x2d8464
  334a4b:	48 85 c0             	test   rax,rax
  334a4e:	74 0f                	je     0x334a5f
  334a50:	49 8b d7             	mov    rdx,r15
  334a53:	48 8b c8             	mov    rcx,rax
  334a56:	e8 99 05 00 00       	call   0x334ff4
  334a5b:	84 c0                	test   al,al
  334a5d:	75 29                	jne    0x334a88
  334a5f:	48 8b ce             	mov    rcx,rsi
  334a62:	48 8d 54 24 28       	lea    rdx,[rsp+0x28]
  334a67:	e8 f4 fb ff ff       	call   0x334660
  334a6c:	48 8b d8             	mov    rbx,rax
  334a6f:	48 85 c0             	test   rax,rax
  334a72:	0f 85 65 ff ff ff    	jne    0x3349dd
  334a78:	33 c0                	xor    eax,eax
  334a7a:	48 83 c4 38          	add    rsp,0x38
  334a7e:	41 5f                	pop    r15
  334a80:	41 5e                	pop    r14
  334a82:	41 5c                	pop    r12
  334a84:	5f                   	pop    rdi
  334a85:	5e                   	pop    rsi
  334a86:	5b                   	pop    rbx
  334a87:	c3                   	ret
  334a88:	48 8b c3             	mov    rax,rbx
  334a8b:	eb ed                	jmp    0x334a7a

COMMAND: objdump -D -b binary -m i386:x86-64 -M intel -w --start-address=3362804 --stop-address=3362878 /home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000334ff4 <.data+0x334ff4>:
  334ff4:	4c 8b c9             	mov    r9,rcx
  334ff7:	48 85 c9             	test   rcx,rcx
  334ffa:	74 33                	je     0x33502f
  334ffc:	48 85 d2             	test   rdx,rdx
  334fff:	74 38                	je     0x335039
  335001:	0f b6 02             	movzx  eax,BYTE PTR [rdx]
  335004:	44 0f b6 01          	movzx  r8d,BYTE PTR [rcx]
  335008:	44 2b c0             	sub    r8d,eax
  33500b:	75 1b                	jne    0x335028
  33500d:	41 8d 48 01          	lea    ecx,[r8+0x1]
  335011:	80 3a 00             	cmp    BYTE PTR [rdx],0x0
  335014:	74 12                	je     0x335028
  335016:	4c 03 c9             	add    r9,rcx
  335019:	48 03 d1             	add    rdx,rcx
  33501c:	0f b6 02             	movzx  eax,BYTE PTR [rdx]
  33501f:	45 0f b6 01          	movzx  r8d,BYTE PTR [r9]
  335023:	44 2b c0             	sub    r8d,eax
  335026:	74 e9                	je     0x335011
  335028:	45 85 c0             	test   r8d,r8d
  33502b:	0f 94 c0             	sete   al
  33502e:	c3                   	ret
  33502f:	48 85 d2             	test   rdx,rdx
  335032:	75 05                	jne    0x335039
  335034:	8d 4a 01             	lea    ecx,[rdx+0x1]
  335037:	eb 02                	jmp    0x33503b
  335039:	32 c9                	xor    cl,cl
  33503b:	8a c1                	mov    al,cl
  33503d:	c3                   	ret

COMMAND: objdump -D -b binary -m i386:x86-64 -M intel -w --start-address=3975300 --stop-address=3975349 /home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003ca884 <.data+0x3ca884>:
  3ca884:	8a 02                	mov    al,BYTE PTR [rdx]
  3ca886:	45 33 c0             	xor    r8d,r8d
  3ca889:	38 01                	cmp    BYTE PTR [rcx],al
  3ca88b:	75 18                	jne    0x3ca8a5
  3ca88d:	4d 8d 0c 08          	lea    r9,[r8+rcx*1]
  3ca891:	41 80 39 00          	cmp    BYTE PTR [r9],0x0
  3ca895:	74 1b                	je     0x3ca8b2
  3ca897:	41 8a 44 10 01       	mov    al,BYTE PTR [r8+rdx*1+0x1]
  3ca89c:	49 ff c0             	inc    r8
  3ca89f:	41 38 41 01          	cmp    BYTE PTR [r9+0x1],al
  3ca8a3:	74 e8                	je     0x3ca88d
  3ca8a5:	41 0f be 04 08       	movsx  eax,BYTE PTR [r8+rcx*1]
  3ca8aa:	41 0f be 0c 10       	movsx  ecx,BYTE PTR [r8+rdx*1]
  3ca8af:	2b c1                	sub    eax,ecx
  3ca8b1:	c3                   	ret
  3ca8b2:	33 c0                	xor    eax,eax
  3ca8b4:	c3                   	ret
