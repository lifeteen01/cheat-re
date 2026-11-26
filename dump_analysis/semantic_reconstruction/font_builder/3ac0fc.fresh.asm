
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003ac0fc <.data+0x3ac0fc>:
  3ac0fc:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3ac101:	48 89 74 24 10                                  	mov    QWORD PTR [rsp+0x10],rsi
  3ac106:	57                                              	push   rdi
  3ac107:	48 83 ec 20                                     	sub    rsp,0x20
  3ac10b:	48 8b 41 08                                     	mov    rax,QWORD PTR [rcx+0x8]
  3ac10f:	48 8b f2                                        	mov    rsi,rdx
  3ac112:	48 8b d9                                        	mov    rbx,rcx
  3ac115:	48 85 c0                                        	test   rax,rax
  3ac118:	74 09                                           	je     0x3ac123
  3ac11a:	48 8b 10                                        	mov    rdx,QWORD PTR [rax]
  3ac11d:	48 89 51 08                                     	mov    QWORD PTR [rcx+0x8],rdx
  3ac121:	eb 71                                           	jmp    0x3ac194
  3ac123:	8b 79 10                                        	mov    edi,DWORD PTR [rcx+0x10]
  3ac126:	85 ff                                           	test   edi,edi
  3ac128:	75 53                                           	jne    0x3ac17d
  3ac12a:	b9 80 00 00 00                                  	mov    ecx,0x80
  3ac12f:	b8 bc 02 00 00                                  	mov    eax,0x2bc
  3ac134:	48 3b f1                                        	cmp    rsi,rcx
  3ac137:	ba d0 07 00 00                                  	mov    edx,0x7d0
  3ac13c:	1b ff                                           	sbb    edi,edi
  3ac13e:	23 f8                                           	and    edi,eax
  3ac140:	83 c7 64                                        	add    edi,0x64
  3ac143:	48 83 fe 20                                     	cmp    rsi,0x20
  3ac147:	0f 42 fa                                        	cmovb  edi,edx
  3ac14a:	48 3b f1                                        	cmp    rsi,rcx
  3ac14d:	48 1b c9                                        	sbb    rcx,rcx
  3ac150:	48 23 c8                                        	and    rcx,rax
  3ac153:	48 83 c1 64                                     	add    rcx,0x64
  3ac157:	48 83 fe 20                                     	cmp    rsi,0x20
  3ac15b:	48 0f 42 ca                                     	cmovb  rcx,rdx
  3ac15f:	48 0f af ce                                     	imul   rcx,rsi
  3ac163:	48 83 c1 08                                     	add    rcx,0x8
  3ac167:	e8 ec 8f fe ff                                  	call   0x395158
  3ac16c:	48 8b c8                                        	mov    rcx,rax
  3ac16f:	48 85 c0                                        	test   rax,rax
  3ac172:	74 20                                           	je     0x3ac194
  3ac174:	48 8b 03                                        	mov    rax,QWORD PTR [rbx]
  3ac177:	48 89 01                                        	mov    QWORD PTR [rcx],rax
  3ac17a:	48 89 0b                                        	mov    QWORD PTR [rbx],rcx
  3ac17d:	8d 47 ff                                        	lea    eax,[rdi-0x1]
  3ac180:	48 63 c8                                        	movsxd rcx,eax
  3ac183:	89 43 10                                        	mov    DWORD PTR [rbx+0x10],eax
  3ac186:	48 8b 03                                        	mov    rax,QWORD PTR [rbx]
  3ac189:	48 0f af ce                                     	imul   rcx,rsi
  3ac18d:	48 83 c0 08                                     	add    rax,0x8
  3ac191:	48 03 c1                                        	add    rax,rcx
  3ac194:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  3ac199:	48 8b 74 24 38                                  	mov    rsi,QWORD PTR [rsp+0x38]
  3ac19e:	48 83 c4 20                                     	add    rsp,0x20
  3ac1a2:	5f                                              	pop    rdi
  3ac1a3:	c3                                              	ret
