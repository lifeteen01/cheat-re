
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039b0cc <.data+0x39b0cc>:
  39b0cc:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  39b0d1:	48 89 74 24 10                                  	mov    QWORD PTR [rsp+0x10],rsi
  39b0d6:	57                                              	push   rdi
  39b0d7:	48 83 ec 20                                     	sub    rsp,0x20
  39b0db:	48 8b 1d 46 aa 06 00                            	mov    rbx,QWORD PTR [rip+0x6aa46]        # 0x405b28
  39b0e2:	8b f9                                           	mov    edi,ecx
  39b0e4:	48 8b f2                                        	mov    rsi,rdx
  39b0e7:	8b 8b 68 3f 00 00                               	mov    ecx,DWORD PTR [rbx+0x3f68]
  39b0ed:	85 c9                                           	test   ecx,ecx
  39b0ef:	74 29                                           	je     0x39b11a
  39b0f1:	48 8b 83 20 3f 00 00                            	mov    rax,QWORD PTR [rbx+0x3f20]
  39b0f8:	48 85 c0                                        	test   rax,rax
  39b0fb:	74 10                                           	je     0x39b10d
  39b0fd:	3b 48 7c                                        	cmp    ecx,DWORD PTR [rax+0x7c]
  39b100:	75 0b                                           	jne    0x39b10d
  39b102:	48 c7 83 20 3f 00 00 00 00 00 00                	mov    QWORD PTR [rbx+0x3f20],0x0
  39b10d:	39 8b 20 4c 00 00                               	cmp    DWORD PTR [rbx+0x4c20],ecx
  39b113:	75 05                                           	jne    0x39b11a
  39b115:	e8 b6 53 02 00                                  	call   0x3c04d0
  39b11a:	39 bb 68 3f 00 00                               	cmp    DWORD PTR [rbx+0x3f68],edi
  39b120:	0f 95 c0                                        	setne  al
  39b123:	88 83 74 3f 00 00                               	mov    BYTE PTR [rbx+0x3f74],al
  39b129:	74 31                                           	je     0x39b15c
  39b12b:	c7 83 70 3f 00 00 00 00 00 00                   	mov    DWORD PTR [rbx+0x3f70],0x0
  39b135:	66 c7 83 77 3f 00 00 00 00                      	mov    WORD PTR [rbx+0x3f77],0x0
  39b13e:	c7 83 94 3f 00 00 ff ff ff ff                   	mov    DWORD PTR [rbx+0x3f94],0xffffffff
  39b148:	85 ff                                           	test   edi,edi
  39b14a:	74 10                                           	je     0x39b15c
  39b14c:	89 bb a8 3f 00 00                               	mov    DWORD PTR [rbx+0x3fa8],edi
  39b152:	c7 83 ac 3f 00 00 00 00 00 00                   	mov    DWORD PTR [rbx+0x3fac],0x0
  39b15c:	89 bb 68 3f 00 00                               	mov    DWORD PTR [rbx+0x3f68],edi
  39b162:	66 c7 83 75 3f 00 00 00 00                      	mov    WORD PTR [rbx+0x3f75],0x0
  39b16b:	48 89 b3 88 3f 00 00                            	mov    QWORD PTR [rbx+0x3f88],rsi
  39b172:	c6 83 79 3f 00 00 00                            	mov    BYTE PTR [rbx+0x3f79],0x0
  39b179:	85 ff                                           	test   edi,edi
  39b17b:	74 27                                           	je     0x39b1a4
  39b17d:	89 bb 6c 3f 00 00                               	mov    DWORD PTR [rbx+0x3f6c],edi
  39b183:	39 bb f8 48 00 00                               	cmp    DWORD PTR [rbx+0x48f8],edi
  39b189:	74 0d                                           	je     0x39b198
  39b18b:	b8 01 00 00 00                                  	mov    eax,0x1
  39b190:	39 bb 08 49 00 00                               	cmp    DWORD PTR [rbx+0x4908],edi
  39b196:	75 06                                           	jne    0x39b19e
  39b198:	8b 83 1c 49 00 00                               	mov    eax,DWORD PTR [rbx+0x491c]
  39b19e:	89 83 90 3f 00 00                               	mov    DWORD PTR [rbx+0x3f90],eax
  39b1a4:	48 8b 74 24 38                                  	mov    rsi,QWORD PTR [rsp+0x38]
  39b1a9:	c7 83 78 47 00 00 00 00 00 00                   	mov    DWORD PTR [rbx+0x4778],0x0
  39b1b3:	c6 83 7c 47 00 00 00                            	mov    BYTE PTR [rbx+0x477c],0x0
  39b1ba:	c7 83 80 47 00 00 00 00 00 00                   	mov    DWORD PTR [rbx+0x4780],0x0
  39b1c4:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  39b1c9:	48 83 c4 20                                     	add    rsp,0x20
  39b1cd:	5f                                              	pop    rdi
  39b1ce:	c3                                              	ret
