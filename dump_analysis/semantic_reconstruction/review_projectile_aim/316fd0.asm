
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000316fd0 <.data+0x316fd0>:
  316fd0:	f3 0f 10 01                                     	movss  xmm0,DWORD PTR [rcx]
  316fd4:	f3 0f 10 0d 50 c2 f7 ff                         	movss  xmm1,DWORD PTR [rip+0xfffffffffff7c250]        # 0x29322c
  316fdc:	0f 2f c1                                        	comiss xmm0,xmm1
  316fdf:	f3 0f 10 1d 59 c2 f7 ff                         	movss  xmm3,DWORD PTR [rip+0xfffffffffff7c259]        # 0x293240
  316fe7:	76 0d                                           	jbe    0x316ff6
  316fe9:	f3 0f 5c c3                                     	subss  xmm0,xmm3
  316fed:	0f 2f c1                                        	comiss xmm0,xmm1
  316ff0:	77 f7                                           	ja     0x316fe9
  316ff2:	f3 0f 11 01                                     	movss  DWORD PTR [rcx],xmm0
  316ff6:	f3 0f 10 15 6e c2 f7 ff                         	movss  xmm2,DWORD PTR [rip+0xfffffffffff7c26e]        # 0x29326c
  316ffe:	0f 2f d0                                        	comiss xmm2,xmm0
  317001:	76 0d                                           	jbe    0x317010
  317003:	f3 0f 58 c3                                     	addss  xmm0,xmm3
  317007:	0f 2f d0                                        	comiss xmm2,xmm0
  31700a:	77 f7                                           	ja     0x317003
  31700c:	f3 0f 11 01                                     	movss  DWORD PTR [rcx],xmm0
  317010:	f3 0f 10 41 04                                  	movss  xmm0,DWORD PTR [rcx+0x4]
  317015:	0f 2f c1                                        	comiss xmm0,xmm1
  317018:	76 0e                                           	jbe    0x317028
  31701a:	f3 0f 5c c3                                     	subss  xmm0,xmm3
  31701e:	0f 2f c1                                        	comiss xmm0,xmm1
  317021:	77 f7                                           	ja     0x31701a
  317023:	f3 0f 11 41 04                                  	movss  DWORD PTR [rcx+0x4],xmm0
  317028:	0f 2f d0                                        	comiss xmm2,xmm0
  31702b:	76 0e                                           	jbe    0x31703b
  31702d:	f3 0f 58 c3                                     	addss  xmm0,xmm3
  317031:	0f 2f d0                                        	comiss xmm2,xmm0
  317034:	77 f7                                           	ja     0x31702d
  317036:	f3 0f 11 41 04                                  	movss  DWORD PTR [rcx+0x4],xmm0
  31703b:	c3                                              	ret
