
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002e0ff0 <.data+0x2e0ff0>:
  2e0ff0:	48 8b c4                                        	mov    rax,rsp
  2e0ff3:	55                                              	push   rbp
  2e0ff4:	53                                              	push   rbx
  2e0ff5:	56                                              	push   rsi
  2e0ff6:	57                                              	push   rdi
  2e0ff7:	48 8d 68 a1                                     	lea    rbp,[rax-0x5f]
  2e0ffb:	48 81 ec b8 00 00 00                            	sub    rsp,0xb8
  2e1002:	0f 29 70 c8                                     	movaps XMMWORD PTR [rax-0x38],xmm6
  2e1006:	48 8b da                                        	mov    rbx,rdx
  2e1009:	0f 29 78 b8                                     	movaps XMMWORD PTR [rax-0x48],xmm7
  2e100d:	48 8d 55 b7                                     	lea    rdx,[rbp-0x49]
  2e1011:	44 0f 29 40 a8                                  	movaps XMMWORD PTR [rax-0x58],xmm8
  2e1016:	48 8b f1                                        	mov    rsi,rcx
  2e1019:	44 0f 29 48 98                                  	movaps XMMWORD PTR [rax-0x68],xmm9
  2e101e:	48 8b cb                                        	mov    rcx,rbx
  2e1021:	44 0f 29 50 88                                  	movaps XMMWORD PTR [rax-0x78],xmm10
  2e1026:	49 8b f8                                        	mov    rdi,r8
  2e1029:	e8 4a 02 00 00                                  	call   0x2e1278
  2e102e:	f2 0f 10 33                                     	movsd  xmm6,QWORD PTR [rbx]
  2e1032:	4c 8d 45 b7                                     	lea    r8,[rbp-0x49]
  2e1036:	8b 5b 08                                        	mov    ebx,DWORD PTR [rbx+0x8]
  2e1039:	48 8d 55 d7                                     	lea    rdx,[rbp-0x29]
  2e103d:	48 8b cf                                        	mov    rcx,rdi
  2e1040:	f2 0f 11 75 b7                                  	movsd  QWORD PTR [rbp-0x49],xmm6
  2e1045:	89 5d bf                                        	mov    DWORD PTR [rbp-0x41],ebx
  2e1048:	e8 83 ee ff ff                                  	call   0x2dfed0
  2e104d:	48 8b c8                                        	mov    rcx,rax
  2e1050:	48 8d 55 a7                                     	lea    rdx,[rbp-0x59]
  2e1054:	e8 1f 02 00 00                                  	call   0x2e1278
  2e1059:	4c 8d 45 a7                                     	lea    r8,[rbp-0x59]
  2e105d:	48 8d 55 c7                                     	lea    rdx,[rbp-0x39]
  2e1061:	48 8d 4d b7                                     	lea    rcx,[rbp-0x49]
  2e1065:	e8 66 ee ff ff                                  	call   0x2dfed0
  2e106a:	f3 0f 10 4d cb                                  	movss  xmm1,DWORD PTR [rbp-0x35]
  2e106f:	f3 0f 10 45 a7                                  	movss  xmm0,DWORD PTR [rbp-0x59]
  2e1074:	0f 28 d9                                        	movaps xmm3,xmm1
  2e1077:	f3 44 0f 10 45 ab                               	movss  xmm8,DWORD PTR [rbp-0x55]
  2e107d:	f3 0f 58 d8                                     	addss  xmm3,xmm0
  2e1081:	f3 44 0f 10 4d c7                               	movss  xmm9,DWORD PTR [rbp-0x39]
  2e1087:	f3 0f 10 7d cf                                  	movss  xmm7,DWORD PTR [rbp-0x31]
  2e108c:	f3 44 0f 10 55 bb                               	movss  xmm10,DWORD PTR [rbp-0x45]
  2e1092:	66 0f 6e d3                                     	movd   xmm2,ebx
  2e1096:	f3 0f 58 da                                     	addss  xmm3,xmm2
  2e109a:	0f 2f 1d ab c1 fa ff                            	comiss xmm3,DWORD PTR [rip+0xfffffffffffac1ab]        # 0x28d24c
  2e10a1:	76 58                                           	jbe    0x2e10fb
  2e10a3:	f3 0f 58 1d a9 c1 fa ff                         	addss  xmm3,DWORD PTR [rip+0xfffffffffffac1a9]        # 0x28d254
  2e10ab:	0f 28 c3                                        	movaps xmm0,xmm3
  2e10ae:	e8 d5 2b 00 00                                  	call   0x2e3c88
  2e10b3:	f3 0f 10 15 95 c1 fa ff                         	movss  xmm2,DWORD PTR [rip+0xfffffffffffac195]        # 0x28d250
  2e10bb:	f3 41 0f 5c fa                                  	subss  xmm7,xmm10
  2e10c0:	f3 0f 5c 75 af                                  	subss  xmm6,DWORD PTR [rbp-0x51]
  2e10c5:	0f 28 c8                                        	movaps xmm1,xmm0
  2e10c8:	f3 45 0f 5c c1                                  	subss  xmm8,xmm9
  2e10cd:	f3 0f 59 c2                                     	mulss  xmm0,xmm2
  2e10d1:	f3 0f 5e d1                                     	divss  xmm2,xmm1
  2e10d5:	f3 0f 11 46 0c                                  	movss  DWORD PTR [rsi+0xc],xmm0
  2e10da:	f3 0f 59 fa                                     	mulss  xmm7,xmm2
  2e10de:	f3 0f 59 f2                                     	mulss  xmm6,xmm2
  2e10e2:	f3 44 0f 59 c2                                  	mulss  xmm8,xmm2
  2e10e7:	f3 0f 11 3e                                     	movss  DWORD PTR [rsi],xmm7
  2e10eb:	f3 0f 11 76 04                                  	movss  DWORD PTR [rsi+0x4],xmm6
  2e10f0:	f3 44 0f 11 46 08                               	movss  DWORD PTR [rsi+0x8],xmm8
  2e10f6:	e9 23 01 00 00                                  	jmp    0x2e121e
  2e10fb:	0f 2f c1                                        	comiss xmm0,xmm1
  2e10fe:	72 62                                           	jb     0x2e1162
  2e1100:	0f 2f c2                                        	comiss xmm0,xmm2
  2e1103:	72 5d                                           	jb     0x2e1162
  2e1105:	f3 0f 58 05 47 c1 fa ff                         	addss  xmm0,DWORD PTR [rip+0xfffffffffffac147]        # 0x28d254
  2e110d:	f3 0f 5c c1                                     	subss  xmm0,xmm1
  2e1111:	f3 0f 5c c2                                     	subss  xmm0,xmm2
  2e1115:	e8 6e 2b 00 00                                  	call   0x2e3c88
  2e111a:	f3 0f 10 0d 2e c1 fa ff                         	movss  xmm1,DWORD PTR [rip+0xfffffffffffac12e]        # 0x28d250
  2e1122:	f3 45 0f 58 c8                                  	addss  xmm9,xmm8
  2e1127:	f3 0f 58 75 af                                  	addss  xmm6,DWORD PTR [rbp-0x51]
  2e112c:	0f 28 d1                                        	movaps xmm2,xmm1
  2e112f:	f3 41 0f 5c fa                                  	subss  xmm7,xmm10
  2e1134:	f3 0f 5e d0                                     	divss  xmm2,xmm0
  2e1138:	f3 0f 59 c1                                     	mulss  xmm0,xmm1
  2e113c:	f3 44 0f 59 ca                                  	mulss  xmm9,xmm2
  2e1141:	f3 0f 59 f2                                     	mulss  xmm6,xmm2
  2e1145:	f3 0f 59 fa                                     	mulss  xmm7,xmm2
  2e1149:	f3 44 0f 11 4e 04                               	movss  DWORD PTR [rsi+0x4],xmm9
  2e114f:	f3 0f 11 76 08                                  	movss  DWORD PTR [rsi+0x8],xmm6
  2e1154:	f3 0f 11 7e 0c                                  	movss  DWORD PTR [rsi+0xc],xmm7
  2e1159:	f3 0f 11 06                                     	movss  DWORD PTR [rsi],xmm0
  2e115d:	e9 bc 00 00 00                                  	jmp    0x2e121e
  2e1162:	0f 2f ca                                        	comiss xmm1,xmm2
  2e1165:	f3 44 0f 58 d7                                  	addss  xmm10,xmm7
  2e116a:	76 5a                                           	jbe    0x2e11c6
  2e116c:	f3 0f 58 0d e0 c0 fa ff                         	addss  xmm1,DWORD PTR [rip+0xfffffffffffac0e0]        # 0x28d254
  2e1174:	f3 0f 5c c8                                     	subss  xmm1,xmm0
  2e1178:	f3 0f 5c ca                                     	subss  xmm1,xmm2
  2e117c:	0f 28 c1                                        	movaps xmm0,xmm1
  2e117f:	e8 04 2b 00 00                                  	call   0x2e3c88
  2e1184:	f3 0f 10 0d c4 c0 fa ff                         	movss  xmm1,DWORD PTR [rip+0xfffffffffffac0c4]        # 0x28d250
  2e118c:	f3 45 0f 58 c8                                  	addss  xmm9,xmm8
  2e1191:	f3 0f 5c 75 af                                  	subss  xmm6,DWORD PTR [rbp-0x51]
  2e1196:	0f 28 d1                                        	movaps xmm2,xmm1
  2e1199:	f3 0f 5e d0                                     	divss  xmm2,xmm0
  2e119d:	f3 0f 59 c1                                     	mulss  xmm0,xmm1
  2e11a1:	f3 44 0f 59 ca                                  	mulss  xmm9,xmm2
  2e11a6:	f3 44 0f 59 d2                                  	mulss  xmm10,xmm2
  2e11ab:	f3 0f 59 f2                                     	mulss  xmm6,xmm2
  2e11af:	f3 44 0f 11 0e                                  	movss  DWORD PTR [rsi],xmm9
  2e11b4:	f3 44 0f 11 56 08                               	movss  DWORD PTR [rsi+0x8],xmm10
  2e11ba:	f3 0f 11 76 0c                                  	movss  DWORD PTR [rsi+0xc],xmm6
  2e11bf:	f3 0f 11 46 04                                  	movss  DWORD PTR [rsi+0x4],xmm0
  2e11c4:	eb 58                                           	jmp    0x2e121e
  2e11c6:	f3 0f 58 15 86 c0 fa ff                         	addss  xmm2,DWORD PTR [rip+0xfffffffffffac086]        # 0x28d254
  2e11ce:	f3 0f 5c d0                                     	subss  xmm2,xmm0
  2e11d2:	f3 0f 5c d1                                     	subss  xmm2,xmm1
  2e11d6:	0f 28 c2                                        	movaps xmm0,xmm2
  2e11d9:	e8 aa 2a 00 00                                  	call   0x2e3c88
  2e11de:	f3 0f 10 0d 6a c0 fa ff                         	movss  xmm1,DWORD PTR [rip+0xfffffffffffac06a]        # 0x28d250
  2e11e6:	f3 45 0f 5c c1                                  	subss  xmm8,xmm9
  2e11eb:	f3 0f 58 75 af                                  	addss  xmm6,DWORD PTR [rbp-0x51]
  2e11f0:	0f 28 d1                                        	movaps xmm2,xmm1
  2e11f3:	f3 0f 5e d0                                     	divss  xmm2,xmm0
  2e11f7:	f3 0f 59 c1                                     	mulss  xmm0,xmm1
  2e11fb:	f3 0f 59 f2                                     	mulss  xmm6,xmm2
  2e11ff:	f3 44 0f 59 d2                                  	mulss  xmm10,xmm2
  2e1204:	f3 44 0f 59 c2                                  	mulss  xmm8,xmm2
  2e1209:	f3 0f 11 36                                     	movss  DWORD PTR [rsi],xmm6
  2e120d:	f3 44 0f 11 56 04                               	movss  DWORD PTR [rsi+0x4],xmm10
  2e1213:	f3 44 0f 11 46 0c                               	movss  DWORD PTR [rsi+0xc],xmm8
  2e1219:	f3 0f 11 46 08                                  	movss  DWORD PTR [rsi+0x8],xmm0
  2e121e:	4c 8d 9c 24 b8 00 00 00                         	lea    r11,[rsp+0xb8]
  2e1226:	48 8b c6                                        	mov    rax,rsi
  2e1229:	41 0f 28 73 e8                                  	movaps xmm6,XMMWORD PTR [r11-0x18]
  2e122e:	41 0f 28 7b d8                                  	movaps xmm7,XMMWORD PTR [r11-0x28]
  2e1233:	45 0f 28 43 c8                                  	movaps xmm8,XMMWORD PTR [r11-0x38]
  2e1238:	45 0f 28 4b b8                                  	movaps xmm9,XMMWORD PTR [r11-0x48]
  2e123d:	45 0f 28 53 a8                                  	movaps xmm10,XMMWORD PTR [r11-0x58]
  2e1242:	49 8b e3                                        	mov    rsp,r11
  2e1245:	5f                                              	pop    rdi
  2e1246:	5e                                              	pop    rsi
  2e1247:	5b                                              	pop    rbx
  2e1248:	5d                                              	pop    rbp
  2e1249:	c3                                              	ret
