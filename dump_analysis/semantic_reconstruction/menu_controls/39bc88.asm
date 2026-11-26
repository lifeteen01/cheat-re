
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039bc88 <.data+0x39bc88>:
  39bc88:	48 83 ec 28                                     	sub    rsp,0x28
  39bc8c:	45 85 c0                                        	test   r8d,r8d
  39bc8f:	74 10                                           	je     0x39bca1
  39bc91:	0f be 81 dd 00 00 00                            	movsx  eax,BYTE PTR [rcx+0xdd]
  39bc98:	41 85 c0                                        	test   r8d,eax
  39bc9b:	0f 84 ab 00 00 00                               	je     0x39bd4c
  39bca1:	44 0f b6 81 dd 00 00 00                         	movzx  r8d,BYTE PTR [rcx+0xdd]
  39bca9:	0f 57 c0                                        	xorps  xmm0,xmm0
  39bcac:	8b 81 dc 00 00 00                               	mov    eax,DWORD PTR [rcx+0xdc]
  39bcb2:	41 81 e0 f1 00 00 00                            	and    r8d,0xf1
  39bcb9:	f3 0f 10 51 30                                  	movss  xmm2,DWORD PTR [rcx+0x30]
  39bcbe:	25 ff 00 ff ff                                  	and    eax,0xffff00ff
  39bcc3:	f3 0f 10 59 34                                  	movss  xmm3,DWORD PTR [rcx+0x34]
  39bcc8:	41 c1 e0 08                                     	shl    r8d,0x8
  39bccc:	44 0b c0                                        	or     r8d,eax
  39bccf:	44 89 81 dc 00 00 00                            	mov    DWORD PTR [rcx+0xdc],r8d
  39bcd6:	0f 2f 02                                        	comiss xmm0,DWORD PTR [rdx]
  39bcd9:	0f 92 c0                                        	setb   al
  39bcdc:	fe c8                                           	dec    al
  39bcde:	24 02                                           	and    al,0x2
  39bce0:	88 81 d0 00 00 00                               	mov    BYTE PTR [rcx+0xd0],al
  39bce6:	0f 2f 42 04                                     	comiss xmm0,DWORD PTR [rdx+0x4]
  39bcea:	0f 92 c0                                        	setb   al
  39bced:	fe c8                                           	dec    al
  39bcef:	24 02                                           	and    al,0x2
  39bcf1:	88 81 d1 00 00 00                               	mov    BYTE PTR [rcx+0xd1],al
  39bcf7:	0f 2f 02                                        	comiss xmm0,DWORD PTR [rdx]
  39bcfa:	72 0c                                           	jb     0x39bd08
  39bcfc:	c6 81 d3 00 00 00 00                            	mov    BYTE PTR [rcx+0xd3],0x0
  39bd03:	0f 28 ca                                        	movaps xmm1,xmm2
  39bd06:	eb 10                                           	jmp    0x39bd18
  39bd08:	f3 0f 2c 02                                     	cvttss2si eax,DWORD PTR [rdx]
  39bd0c:	66 0f 6e c8                                     	movd   xmm1,eax
  39bd10:	0f 5b c9                                        	cvtdq2ps xmm1,xmm1
  39bd13:	f3 0f 11 49 30                                  	movss  DWORD PTR [rcx+0x30],xmm1
  39bd18:	0f 2f 42 04                                     	comiss xmm0,DWORD PTR [rdx+0x4]
  39bd1c:	72 09                                           	jb     0x39bd27
  39bd1e:	c6 81 d3 00 00 00 00                            	mov    BYTE PTR [rcx+0xd3],0x0
  39bd25:	eb 11                                           	jmp    0x39bd38
  39bd27:	f3 0f 2c 42 04                                  	cvttss2si eax,DWORD PTR [rdx+0x4]
  39bd2c:	66 0f 6e c0                                     	movd   xmm0,eax
  39bd30:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  39bd33:	f3 0f 11 41 34                                  	movss  DWORD PTR [rcx+0x34],xmm0
  39bd38:	0f 2e d1                                        	ucomiss xmm2,xmm1
  39bd3b:	7a 0a                                           	jp     0x39bd47
  39bd3d:	75 08                                           	jne    0x39bd47
  39bd3f:	0f 2e 59 34                                     	ucomiss xmm3,DWORD PTR [rcx+0x34]
  39bd43:	7a 02                                           	jp     0x39bd47
  39bd45:	74 05                                           	je     0x39bd4c
  39bd47:	e8 bc 93 ff ff                                  	call   0x395108
  39bd4c:	48 83 c4 28                                     	add    rsp,0x28
  39bd50:	c3                                              	ret
