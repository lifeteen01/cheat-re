
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039334c <.data+0x39334c>:
  39334c:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  393351:	41 f7 d0                                        	not    r8d
  393354:	4c 8b d9                                        	mov    r11,rcx
  393357:	45 8b c8                                        	mov    r9d,r8d
  39335a:	48 85 d2                                        	test   rdx,rdx
  39335d:	74 45                                           	je     0x3933a4
  39335f:	41 b2 23                                        	mov    r10b,0x23
  393362:	48 8d 1d c7 61 f1 ff                            	lea    rbx,[rip+0xfffffffffff161c7]        # 0x2a9530
  393369:	41 0f b6 03                                     	movzx  eax,BYTE PTR [r11]
  39336d:	49 8b cb                                        	mov    rcx,r11
  393370:	49 ff c3                                        	inc    r11
  393373:	48 ff ca                                        	dec    rdx
  393376:	41 3a c2                                        	cmp    al,r10b
  393379:	75 13                                           	jne    0x39338e
  39337b:	48 83 fa 02                                     	cmp    rdx,0x2
  39337f:	72 0d                                           	jb     0x39338e
  393381:	45 38 13                                        	cmp    BYTE PTR [r11],r10b
  393384:	75 08                                           	jne    0x39338e
  393386:	44 38 51 02                                     	cmp    BYTE PTR [rcx+0x2],r10b
  39338a:	45 0f 44 c8                                     	cmove  r9d,r8d
  39338e:	41 0f b6 c9                                     	movzx  ecx,r9b
  393392:	48 33 c8                                        	xor    rcx,rax
  393395:	41 c1 e9 08                                     	shr    r9d,0x8
  393399:	44 33 0c 8b                                     	xor    r9d,DWORD PTR [rbx+rcx*4]
  39339d:	48 85 d2                                        	test   rdx,rdx
  3933a0:	75 c7                                           	jne    0x393369
  3933a2:	eb 41                                           	jmp    0x3933e5
  3933a4:	8a 01                                           	mov    al,BYTE PTR [rcx]
  3933a6:	48 8d 51 01                                     	lea    rdx,[rcx+0x1]
  3933aa:	84 c0                                           	test   al,al
  3933ac:	74 37                                           	je     0x3933e5
  3933ae:	41 b2 23                                        	mov    r10b,0x23
  3933b1:	48 8d 1d 78 61 f1 ff                            	lea    rbx,[rip+0xfffffffffff16178]        # 0x2a9530
  3933b8:	41 3a c2                                        	cmp    al,r10b
  3933bb:	75 0d                                           	jne    0x3933ca
  3933bd:	44 38 12                                        	cmp    BYTE PTR [rdx],r10b
  3933c0:	75 08                                           	jne    0x3933ca
  3933c2:	44 38 52 01                                     	cmp    BYTE PTR [rdx+0x1],r10b
  3933c6:	45 0f 44 c8                                     	cmove  r9d,r8d
  3933ca:	41 0f b6 c9                                     	movzx  ecx,r9b
  3933ce:	0f b6 c0                                        	movzx  eax,al
  3933d1:	48 33 c8                                        	xor    rcx,rax
  3933d4:	41 c1 e9 08                                     	shr    r9d,0x8
  3933d8:	8a 02                                           	mov    al,BYTE PTR [rdx]
  3933da:	48 ff c2                                        	inc    rdx
  3933dd:	44 33 0c 8b                                     	xor    r9d,DWORD PTR [rbx+rcx*4]
  3933e1:	84 c0                                           	test   al,al
  3933e3:	75 d3                                           	jne    0x3933b8
  3933e5:	48 8b 5c 24 08                                  	mov    rbx,QWORD PTR [rsp+0x8]
  3933ea:	41 f7 d1                                        	not    r9d
  3933ed:	41 8b c1                                        	mov    eax,r9d
  3933f0:	c3                                              	ret
