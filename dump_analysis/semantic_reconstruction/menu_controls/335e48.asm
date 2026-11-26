
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000335e48 <.data+0x335e48>:
  335e48:	40 53                                           	rex push rbx
  335e4a:	48 83 ec 50                                     	sub    rsp,0x50
  335e4e:	0f 29 74 24 40                                  	movaps XMMWORD PTR [rsp+0x40],xmm6
  335e53:	41 8a d9                                        	mov    bl,r9b
  335e56:	0f 29 7c 24 30                                  	movaps XMMWORD PTR [rsp+0x30],xmm7
  335e5b:	0f 28 f2                                        	movaps xmm6,xmm2
  335e5e:	44 0f 29 44 24 20                               	movaps XMMWORD PTR [rsp+0x20],xmm8
  335e64:	0f 28 f9                                        	movaps xmm7,xmm1
  335e67:	44 0f 28 c0                                     	movaps xmm8,xmm0
  335e6b:	e8 3c c8 05 00                                  	call   0x3926ac
  335e70:	f3 0f 10 94 24 80 00 00 00                      	movss  xmm2,DWORD PTR [rsp+0x80]
  335e79:	f3 0f 59 50 10                                  	mulss  xmm2,DWORD PTR [rax+0x10]
  335e7e:	84 db                                           	test   bl,bl
  335e80:	75 03                                           	jne    0x335e85
  335e82:	0f 28 f7                                        	movaps xmm6,xmm7
  335e85:	0f 28 ce                                        	movaps xmm1,xmm6
  335e88:	41 0f 28 c0                                     	movaps xmm0,xmm8
  335e8c:	0f 28 74 24 40                                  	movaps xmm6,XMMWORD PTR [rsp+0x40]
  335e91:	0f 28 7c 24 30                                  	movaps xmm7,XMMWORD PTR [rsp+0x30]
  335e96:	44 0f 28 44 24 20                               	movaps xmm8,XMMWORD PTR [rsp+0x20]
  335e9c:	48 83 c4 50                                     	add    rsp,0x50
  335ea0:	5b                                              	pop    rbx
  335ea1:	e9 b6 f7 ff ff                                  	jmp    0x33565c
