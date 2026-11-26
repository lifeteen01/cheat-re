
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002f84e8 <.data+0x2f84e8>:
  2f84e8:	f3 0f 10 01                                     	movss  xmm0,DWORD PTR [rcx]
  2f84ec:	f3 0f 10 15 38 ad f9 ff                         	movss  xmm2,DWORD PTR [rip+0xfffffffffff9ad38]        # 0x29322c
  2f84f4:	0f 2f c2                                        	comiss xmm0,xmm2
  2f84f7:	f3 0f 10 0d 41 ad f9 ff                         	movss  xmm1,DWORD PTR [rip+0xfffffffffff9ad41]        # 0x293240
  2f84ff:	76 08                                           	jbe    0x2f8509
  2f8501:	f3 0f 5c c1                                     	subss  xmm0,xmm1
  2f8505:	f3 0f 11 01                                     	movss  DWORD PTR [rcx],xmm0
  2f8509:	f3 0f 10 1d 5b ad f9 ff                         	movss  xmm3,DWORD PTR [rip+0xfffffffffff9ad5b]        # 0x29326c
  2f8511:	0f 2f d8                                        	comiss xmm3,xmm0
  2f8514:	76 08                                           	jbe    0x2f851e
  2f8516:	f3 0f 58 c1                                     	addss  xmm0,xmm1
  2f851a:	f3 0f 11 01                                     	movss  DWORD PTR [rcx],xmm0
  2f851e:	f3 0f 10 41 04                                  	movss  xmm0,DWORD PTR [rcx+0x4]
  2f8523:	0f 2f c2                                        	comiss xmm0,xmm2
  2f8526:	76 09                                           	jbe    0x2f8531
  2f8528:	f3 0f 5c c1                                     	subss  xmm0,xmm1
  2f852c:	f3 0f 11 41 04                                  	movss  DWORD PTR [rcx+0x4],xmm0
  2f8531:	0f 2f d8                                        	comiss xmm3,xmm0
  2f8534:	76 09                                           	jbe    0x2f853f
  2f8536:	f3 0f 58 c1                                     	addss  xmm0,xmm1
  2f853a:	f3 0f 11 41 04                                  	movss  DWORD PTR [rcx+0x4],xmm0
  2f853f:	c3                                              	ret
