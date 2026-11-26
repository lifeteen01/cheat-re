
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000036ba2c <.data+0x36ba2c>:
  36ba2c:	40 53                                           	rex push rbx
  36ba2e:	48 83 ec 40                                     	sub    rsp,0x40
  36ba32:	0f 29 74 24 30                                  	movaps XMMWORD PTR [rsp+0x30],xmm6
  36ba37:	48 8b d9                                        	mov    rbx,rcx
  36ba3a:	0f 28 f1                                        	movaps xmm6,xmm1
  36ba3d:	e8 c6 f4 f5 ff                                  	call   0x2caf08
  36ba42:	84 c0                                           	test   al,al
  36ba44:	74 79                                           	je     0x36babf
  36ba46:	48 8b cb                                        	mov    rcx,rbx
  36ba49:	e8 7e 00 00 00                                  	call   0x36bacc
  36ba4e:	84 c0                                           	test   al,al
  36ba50:	74 6d                                           	je     0x36babf
  36ba52:	48 8b cb                                        	mov    rcx,rbx
  36ba55:	e8 46 ff ff ff                                  	call   0x36b9a0
  36ba5a:	84 c0                                           	test   al,al
  36ba5c:	75 61                                           	jne    0x36babf
  36ba5e:	f3 0f 10 05 d6 93 f2 ff                         	movss  xmm0,DWORD PTR [rip+0xfffffffffff293d6]        # 0x294e3c
  36ba66:	0f 2f c6                                        	comiss xmm0,xmm6
  36ba69:	76 54                                           	jbe    0x36babf
  36ba6b:	48 8d 54 24 20                                  	lea    rdx,[rsp+0x20]
  36ba70:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  36ba75:	e8 42 f9 ff ff                                  	call   0x36b3bc
  36ba7a:	48 8b c8                                        	mov    rcx,rax
  36ba7d:	e8 0a e1 f7 ff                                  	call   0x2e9b8c
  36ba82:	48 8b d0                                        	mov    rdx,rax
  36ba85:	48 8b cb                                        	mov    rcx,rbx
  36ba88:	e8 e7 07 00 00                                  	call   0x36c274
  36ba8d:	f3 0f 10 8b 04 03 00 00                         	movss  xmm1,DWORD PTR [rbx+0x304]
  36ba95:	48 8b cb                                        	mov    rcx,rbx
  36ba98:	e8 53 06 00 00                                  	call   0x36c0f0
  36ba9d:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  36baa2:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  36baa7:	e8 74 f9 ff ff                                  	call   0x36b420
  36baac:	48 8b c8                                        	mov    rcx,rax
  36baaf:	e8 60 7b f7 ff                                  	call   0x2e3614
  36bab4:	48 8b d0                                        	mov    rdx,rax
  36bab7:	48 8b cb                                        	mov    rcx,rbx
  36baba:	e8 71 b1 ff ff                                  	call   0x366c30
  36babf:	0f 28 74 24 30                                  	movaps xmm6,XMMWORD PTR [rsp+0x30]
  36bac4:	48 83 c4 40                                     	add    rsp,0x40
  36bac8:	5b                                              	pop    rbx
  36bac9:	c3                                              	ret
