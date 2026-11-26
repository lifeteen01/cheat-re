
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003abc78 <.data+0x3abc78>:
  3abc78:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3abc7d:	48 89 74 24 10                                  	mov    QWORD PTR [rsp+0x10],rsi
  3abc82:	57                                              	push   rdi
  3abc83:	48 83 ec 30                                     	sub    rsp,0x30
  3abc87:	48 8b d9                                        	mov    rbx,rcx
  3abc8a:	41 8b f0                                        	mov    esi,r8d
  3abc8d:	48 8b ca                                        	mov    rcx,rdx
  3abc90:	48 8b fa                                        	mov    rdi,rdx
  3abc93:	e8 e8 f3 ff ff                                  	call   0x3ab080
  3abc98:	3d 6c 84 00 00                                  	cmp    eax,0x846c
  3abc9d:	7c 08                                           	jl     0x3abca7
  3abc9f:	41 b9 00 80 00 00                               	mov    r9d,0x8000
  3abca5:	eb 14                                           	jmp    0x3abcbb
  3abca7:	3d d8 04 00 00                                  	cmp    eax,0x4d8
  3abcac:	b9 6b 00 00 00                                  	mov    ecx,0x6b
  3abcb1:	41 b9 6b 04 00 00                               	mov    r9d,0x46b
  3abcb7:	44 0f 4c c9                                     	cmovl  r9d,ecx
  3abcbb:	45 8d 04 31                                     	lea    r8d,[r9+rsi*1]
  3abcbf:	45 85 c0                                        	test   r8d,r8d
  3abcc2:	78 1d                                           	js     0x3abce1
  3abcc4:	44 3b c0                                        	cmp    r8d,eax
  3abcc7:	7d 18                                           	jge    0x3abce1
  3abcc9:	0f 10 07                                        	movups xmm0,XMMWORD PTR [rdi]
  3abccc:	48 8d 54 24 20                                  	lea    rdx,[rsp+0x20]
  3abcd1:	48 8b cb                                        	mov    rcx,rbx
  3abcd4:	f3 0f 7f 44 24 20                               	movdqu XMMWORD PTR [rsp+0x20],xmm0
  3abcda:	e8 bd f3 ff ff                                  	call   0x3ab09c
  3abcdf:	eb 0d                                           	jmp    0x3abcee
  3abce1:	45 33 c0                                        	xor    r8d,r8d
  3abce4:	33 d2                                           	xor    edx,edx
  3abce6:	48 8b cb                                        	mov    rcx,rbx
  3abce9:	e8 2a 06 00 00                                  	call   0x3ac318
  3abcee:	48 8b 74 24 48                                  	mov    rsi,QWORD PTR [rsp+0x48]
  3abcf3:	48 8b c3                                        	mov    rax,rbx
  3abcf6:	48 8b 5c 24 40                                  	mov    rbx,QWORD PTR [rsp+0x40]
  3abcfb:	48 83 c4 30                                     	add    rsp,0x30
  3abcff:	5f                                              	pop    rdi
  3abd00:	c3                                              	ret
  3abd01:	cc                                              	int3
  3abd02:	cc                                              	int3
  3abd03:	cc                                              	int3
