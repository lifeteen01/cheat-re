
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003932b0 <.data+0x3932b0>:
  3932b0:	48 83 ec 58                                     	sub    rsp,0x58
  3932b4:	0f 29 74 24 40                                  	movaps XMMWORD PTR [rsp+0x40],xmm6
  3932b9:	0f 29 7c 24 30                                  	movaps XMMWORD PTR [rsp+0x30],xmm7
  3932be:	0f 28 f9                                        	movaps xmm7,xmm1
  3932c1:	44 0f 29 44 24 20                               	movaps XMMWORD PTR [rsp+0x20],xmm8
  3932c7:	44 0f 28 c0                                     	movaps xmm8,xmm0
  3932cb:	e8 20 0c f5 ff                                  	call   0x2e3ef0
  3932d0:	0f 28 f0                                        	movaps xmm6,xmm0
  3932d3:	0f 28 c7                                        	movaps xmm0,xmm7
  3932d6:	e8 15 0c f5 ff                                  	call   0x2e3ef0
  3932db:	33 c0                                           	xor    eax,eax
  3932dd:	0f 2f f0                                        	comiss xmm6,xmm0
  3932e0:	76 0d                                           	jbe    0x3932ef
  3932e2:	44 0f 2f 05 62 9f ef ff                         	comiss xmm8,DWORD PTR [rip+0xffffffffffef9f62]        # 0x28d24c
  3932ea:	0f 97 c0                                        	seta   al
  3932ed:	eb 0d                                           	jmp    0x3932fc
  3932ef:	0f 2f 3d 56 9f ef ff                            	comiss xmm7,DWORD PTR [rip+0xffffffffffef9f56]        # 0x28d24c
  3932f6:	0f 97 c0                                        	seta   al
  3932f9:	83 c0 02                                        	add    eax,0x2
  3932fc:	0f 28 74 24 40                                  	movaps xmm6,XMMWORD PTR [rsp+0x40]
  393301:	0f 28 7c 24 30                                  	movaps xmm7,XMMWORD PTR [rsp+0x30]
  393306:	44 0f 28 44 24 20                               	movaps xmm8,XMMWORD PTR [rsp+0x20]
  39330c:	48 83 c4 58                                     	add    rsp,0x58
  393310:	c3                                              	ret
