
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000320cd0 <.data+0x320cd0>:
  320cd0:	f3 0f 10 0d 68 25 f7 ff                         	movss  xmm1,DWORD PTR [rip+0xfffffffffff72568]        # 0x293240
  320cd8:	eb 08                                           	jmp    0x320ce2
  320cda:	f3 0f 58 05 8e 25 f7 ff                         	addss  xmm0,DWORD PTR [rip+0xfffffffffff7258e]        # 0x293270
  320ce2:	0f 2f c1                                        	comiss xmm0,xmm1
  320ce5:	77 f3                                           	ja     0x320cda
  320ce7:	0f 57 d2                                        	xorps  xmm2,xmm2
  320cea:	eb 04                                           	jmp    0x320cf0
  320cec:	f3 0f 58 c1                                     	addss  xmm0,xmm1
  320cf0:	0f 2f d0                                        	comiss xmm2,xmm0
  320cf3:	77 f7                                           	ja     0x320cec
  320cf5:	c3                                              	ret
