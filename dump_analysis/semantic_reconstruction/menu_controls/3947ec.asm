
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003947ec <.data+0x3947ec>:
  3947ec:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3947f1:	48 89 74 24 10                                  	mov    QWORD PTR [rsp+0x10],rsi
  3947f6:	57                                              	push   rdi
  3947f7:	48 83 ec 20                                     	sub    rsp,0x20
  3947fb:	48 8b 35 26 13 07 00                            	mov    rsi,QWORD PTR [rip+0x71326]        # 0x405b28
  394802:	8b d9                                           	mov    ebx,ecx
  394804:	48 8b be 10 3f 00 00                            	mov    rdi,QWORD PTR [rsi+0x3f10]
  39480b:	48 85 ff                                        	test   rdi,rdi
  39480e:	74 77                                           	je     0x394887
  394810:	f6 c3 04                                        	test   bl,0x4
  394813:	75 41                                           	jne    0x394856
  394815:	48 8b 86 08 3f 00 00                            	mov    rax,QWORD PTR [rsi+0x3f08]
  39481c:	44 8b c1                                        	mov    r8d,ecx
  39481f:	41 c1 e8 03                                     	shr    r8d,0x3
  394823:	41 f6 d0                                        	not    r8b
  394826:	41 80 e0 01                                     	and    r8b,0x1
  39482a:	f6 c3 02                                        	test   bl,0x2
  39482d:	74 0b                                           	je     0x39483a
  39482f:	41 8a d0                                        	mov    dl,r8b
  394832:	48 8b c8                                        	mov    rcx,rax
  394835:	e8 de da ff ff                                  	call   0x392318
  39483a:	f6 c3 01                                        	test   bl,0x1
  39483d:	74 0d                                           	je     0x39484c
  39483f:	48 8b d0                                        	mov    rdx,rax
  394842:	48 8b cf                                        	mov    rcx,rdi
  394845:	e8 02 ff ff ff                                  	call   0x39474c
  39484a:	eb 06                                           	jmp    0x394852
  39484c:	48 3b f8                                        	cmp    rdi,rax
  39484f:	0f 94 c0                                        	sete   al
  394852:	84 c0                                           	test   al,al
  394854:	74 31                                           	je     0x394887
  394856:	8b d3                                           	mov    edx,ebx
  394858:	48 8b cf                                        	mov    rcx,rdi
  39485b:	e8 24 ff ff ff                                  	call   0x394784
  394860:	84 c0                                           	test   al,al
  394862:	74 23                                           	je     0x394887
  394864:	84 db                                           	test   bl,bl
  394866:	78 1b                                           	js     0x394883
  394868:	8b 86 68 3f 00 00                               	mov    eax,DWORD PTR [rsi+0x3f68]
  39486e:	85 c0                                           	test   eax,eax
  394870:	74 11                                           	je     0x394883
  394872:	80 be 75 3f 00 00 00                            	cmp    BYTE PTR [rsi+0x3f75],0x0
  394879:	75 08                                           	jne    0x394883
  39487b:	3b 47 7c                                        	cmp    eax,DWORD PTR [rdi+0x7c]
  39487e:	0f 94 c0                                        	sete   al
  394881:	eb 06                                           	jmp    0x394889
  394883:	b0 01                                           	mov    al,0x1
  394885:	eb 02                                           	jmp    0x394889
  394887:	32 c0                                           	xor    al,al
  394889:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  39488e:	48 8b 74 24 38                                  	mov    rsi,QWORD PTR [rsp+0x38]
  394893:	48 83 c4 20                                     	add    rsp,0x20
  394897:	5f                                              	pop    rdi
  394898:	c3                                              	ret
