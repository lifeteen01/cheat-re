; helpers independent pdata/next-pdata extent 32bb60..32bd49 unwind3d3594
32bb60 rex push rbp
32bb62 push   rbx
32bb63 push   rsi
32bb64 push   rdi
32bb65 push   r14
32bb67 push   r15
32bb69 mov    rbp,rsp
32bb6c sub    rsp,0x78
32bb70 movaps XMMWORD PTR [rsp+0x60],xmm6
32bb75 mov    rdi,rcx
32bb78 call   0x2dda9c
32bb7d mov    rcx,rax
32bb80 call   0x2caf08
32bb85 test   al,al
32bb87 je     0x32bd34
32bb8d mov    rcx,rdi
32bb90 call   0x2caf08
32bb95 test   al,al
32bb97 je     0x32bd34
32bb9d mov    rcx,rdi
32bba0 call   0x371404
32bba5 mov    rcx,rdi
32bba8 mov    rbx,rax
32bbab call   0x372100
32bbb0 mov    rcx,rdi
32bbb3 mov    r15,rax
32bbb6 call   0x371764
32bbbb mov    rcx,rdi
32bbbe mov    r14,rax
32bbc1 call   0x371f24
32bbc6 mov    rcx,rdi
32bbc9 mov    rsi,rax
32bbcc call   0x371328
32bbd1 mov    rcx,rbx
32bbd4 mov    rdx,rax
32bbd7 call   0x2caf08
32bbdc test   al,al
32bbde je     0x32bbed
32bbe0 movss  xmm0,DWORD PTR [rip+0xfffffffffff675d0]        # 0x2931b8
32bbe7 
32bbe8 jmp    0x32bd37
32bbed mov    rcx,r15
32bbf0 call   0x2caf08
32bbf5 test   al,al
32bbf7 jne    0x32bd34
32bbfd mov    rcx,rdx
32bc00 call   0x2caf08
32bc05 test   al,al
32bc07 jne    0x32bd34
32bc0d mov    rcx,r14
32bc10 call   0x2caf08
32bc15 test   al,al
32bc17 je     0x32bc26
32bc19 movss  xmm0,DWORD PTR [rip+0xfffffffffff67537]        # 0x293158
32bc20 
32bc21 jmp    0x32bd37
32bc26 mov    rcx,rsi
32bc29 call   0x2caf08
32bc2e test   al,al
32bc30 je     0x32bd2a
32bc36 lea    rdx,[rbp-0x38]
32bc3a mov    rcx,rsi
32bc3d call   0x36b530
32bc42 lea    rcx,[rbp-0x38]
32bc46 call   0x2d8694
32bc4b test   al,al
32bc4d jne    0x32bd14
32bc53 lea    rcx,[rbp-0x38]
32bc57 call   0x2cd7ec
32bc5c mov    rcx,rax
32bc5f call   0x2d6354
32bc64 lea    rdx,[rbp-0x58]
32bc68 mov    rbx,rax
32bc6b lea    rcx,[rbp+0x40]
32bc6f call   0x32b8b8
32bc74 mov    rcx,rax
32bc77 call   0x2e9bdc
32bc7c movabs rdi,0xcbf29ce484222325
32bc83 
32bc86 mov    rcx,rax
32bc89 mov    rdx,rdi
32bc8c call   0x2e5b4c
32bc91 cmp    rbx,rax
32bc94 je     0x32bd14
32bc96 lea    rdx,[rbp-0x58]
32bc9a lea    rcx,[rbp+0x40]
32bc9e call   0x32b920
32bca3 mov    rcx,rax
32bca6 call   0x32a8d4
32bcab mov    rcx,rax
32bcae mov    rdx,rdi
32bcb1 call   0x2e5b4c
32bcb6 cmp    rbx,rax
32bcb9 je     0x32bd14
32bcbb lea    rdx,[rbp-0x58]
32bcbf lea    rcx,[rbp+0x40]
32bcc3 call   0x32b9bc
32bcc8 mov    rcx,rax
32bccb call   0x2d866c
32bcd0 mov    rcx,rax
32bcd3 mov    rdx,rdi
32bcd6 call   0x2e5b4c
32bcdb cmp    rbx,rax
32bcde jne    0x32bce5
32bce0 xorps  xmm6,xmm6
32bce3 jmp    0x32bd1c
32bce5 lea    rdx,[rbp-0x58]
32bce9 lea    rcx,[rbp+0x40]
32bced call   0x32ba48
32bcf2 mov    rcx,rax
32bcf5 call   0x2dd188
32bcfa mov    rcx,rax
32bcfd mov    rdx,rdi
32bd00 call   0x2e5b4c
32bd05 cmp    rbx,rax
32bd08 jne    0x32bd14
32bd0a movss  xmm6,DWORD PTR [rip+0xfffffffffff61e0a]        # 0x28db1c
32bd11 
32bd12 jmp    0x32bd1c
32bd14 movss  xmm6,DWORD PTR [rip+0xfffffffffff6743c]        # 0x293158
32bd1b 
32bd1c lea    rcx,[rbp-0x38]
32bd20 call   0x2cc4f4
32bd25 movaps xmm0,xmm6
32bd28 jmp    0x32bd37
32bd2a movss  xmm0,DWORD PTR [rip+0xfffffffffff67456]        # 0x293188
32bd31 
32bd32 jmp    0x32bd37
32bd34 xorps  xmm0,xmm0
32bd37 movaps xmm6,XMMWORD PTR [rsp+0x60]
32bd3c add    rsp,0x78
32bd40 pop    r15
32bd42 pop    r14
32bd44 pop    rdi
32bd45 pop    rsi
32bd46 pop    rbx
32bd47 pop    rbp
32bd48 ret

; helpers independent pdata/next-pdata extent 2e091c..2e09ef unwind3d2ae8
2e091c mov    rax,rsp
2e091f sub    rsp,0x88
2e0926 movaps XMMWORD PTR [rax-0x18],xmm6
2e092a lea    rcx,[rax-0x58]
2e092e movaps XMMWORD PTR [rax-0x28],xmm7
2e0932 movaps XMMWORD PTR [rax-0x38],xmm8
2e0937 movaps XMMWORD PTR [rax-0x48],xmm9
2e093c movaps xmm9,xmm0
2e0940 call   0x3c7bbc
2e0945 lea    rcx,[rsp+0x20]
2e094a movsd  xmm1,QWORD PTR [rax]
2e094e mov    eax,DWORD PTR [rax+0x8]
2e0951 movsd  QWORD PTR [rsp+0x20],xmm1
2e0957 mov    DWORD PTR [rsp+0x28],eax
2e095b call   0x2e0080
2e0960 movaps xmm8,xmm0
2e0964 call   0x2e081c
2e0969 movaps xmm7,xmm0
2e096c call   0x2e0bf0
2e0971 movaps xmm6,xmm0
2e0974 call   0x2e071c
2e0979 movaps xmm2,xmm7
2e097c movaps xmm1,xmm6
2e097f call   0x2e124c
2e0984 movss  xmm1,DWORD PTR [rip+0xf6960]        # 0x3d72ec
2e098b 
2e098c addss  xmm0,xmm0
2e0990 addss  xmm1,DWORD PTR [rip+0xfffffffffffad148]        # 0x28dae0
2e0997 
2e0998 movss  xmm2,DWORD PTR [rip+0xfffffffffffad15c]        # 0x28dafc
2e099f 
2e09a0 movaps xmm6,XMMWORD PTR [rsp+0x70]
2e09a5 movaps xmm7,XMMWORD PTR [rsp+0x60]
2e09aa mulss  xmm9,xmm2
2e09af addss  xmm0,xmm1
2e09b3 xorps  xmm1,xmm1
2e09b6 mulss  xmm0,xmm2
2e09ba mulss  xmm0,xmm8
2e09bf movaps xmm8,XMMWORD PTR [rsp+0x50]
2e09c5 cvtss2sd xmm1,xmm0
2e09c9 xorps  xmm0,xmm0
2e09cc addsd  xmm1,QWORD PTR [rip+0xfffffffffffad11c]        # 0x28daf0
2e09d3 
2e09d4 cvtss2sd xmm0,xmm9
2e09d9 movaps xmm9,XMMWORD PTR [rsp+0x40]
2e09df addsd  xmm1,xmm0
2e09e3 cvtpd2ps xmm0,xmm1
2e09e7 add    rsp,0x88
2e09ee ret

; helpers independent pdata/next-pdata extent 2e124c..2e126e unwind3d23fc
2e124c sub    rsp,0x38
2e1250 movaps XMMWORD PTR [rsp+0x20],xmm6
2e1255 movaps xmm6,xmm2
2e1258 call   0x2e1270
2e125d movaps xmm1,xmm6
2e1260 movaps xmm6,XMMWORD PTR [rsp+0x20]
2e1265 add    rsp,0x38
2e1269 jmp    0x2e1270

; helpers independent pdata/next-pdata extent 2e0ff0..2e124a unwind3d29cc
2e0ff0 mov    rax,rsp
2e0ff3 push   rbp
2e0ff4 push   rbx
2e0ff5 push   rsi
2e0ff6 push   rdi
2e0ff7 lea    rbp,[rax-0x5f]
2e0ffb sub    rsp,0xb8
2e1002 movaps XMMWORD PTR [rax-0x38],xmm6
2e1006 mov    rbx,rdx
2e1009 movaps XMMWORD PTR [rax-0x48],xmm7
2e100d lea    rdx,[rbp-0x49]
2e1011 movaps XMMWORD PTR [rax-0x58],xmm8
2e1016 mov    rsi,rcx
2e1019 movaps XMMWORD PTR [rax-0x68],xmm9
2e101e mov    rcx,rbx
2e1021 movaps XMMWORD PTR [rax-0x78],xmm10
2e1026 mov    rdi,r8
2e1029 call   0x2e1278
2e102e movsd  xmm6,QWORD PTR [rbx]
2e1032 lea    r8,[rbp-0x49]
2e1036 mov    ebx,DWORD PTR [rbx+0x8]
2e1039 lea    rdx,[rbp-0x29]
2e103d mov    rcx,rdi
2e1040 movsd  QWORD PTR [rbp-0x49],xmm6
2e1045 mov    DWORD PTR [rbp-0x41],ebx
2e1048 call   0x2dfed0
2e104d mov    rcx,rax
2e1050 lea    rdx,[rbp-0x59]
2e1054 call   0x2e1278
2e1059 lea    r8,[rbp-0x59]
2e105d lea    rdx,[rbp-0x39]
2e1061 lea    rcx,[rbp-0x49]
2e1065 call   0x2dfed0
2e106a movss  xmm1,DWORD PTR [rbp-0x35]
2e106f movss  xmm0,DWORD PTR [rbp-0x59]
2e1074 movaps xmm3,xmm1
2e1077 movss  xmm8,DWORD PTR [rbp-0x55]
2e107d addss  xmm3,xmm0
2e1081 movss  xmm9,DWORD PTR [rbp-0x39]
2e1087 movss  xmm7,DWORD PTR [rbp-0x31]
2e108c movss  xmm10,DWORD PTR [rbp-0x45]
2e1092 movd   xmm2,ebx
2e1096 addss  xmm3,xmm2
2e109a comiss xmm3,DWORD PTR [rip+0xfffffffffffac1ab]        # 0x28d24c
2e10a1 jbe    0x2e10fb
2e10a3 addss  xmm3,DWORD PTR [rip+0xfffffffffffac1a9]        # 0x28d254
2e10aa 
2e10ab movaps xmm0,xmm3
2e10ae call   0x2e3c88
2e10b3 movss  xmm2,DWORD PTR [rip+0xfffffffffffac195]        # 0x28d250
2e10ba 
2e10bb subss  xmm7,xmm10
2e10c0 subss  xmm6,DWORD PTR [rbp-0x51]
2e10c5 movaps xmm1,xmm0
2e10c8 subss  xmm8,xmm9
2e10cd mulss  xmm0,xmm2
2e10d1 divss  xmm2,xmm1
2e10d5 movss  DWORD PTR [rsi+0xc],xmm0
2e10da mulss  xmm7,xmm2
2e10de mulss  xmm6,xmm2
2e10e2 mulss  xmm8,xmm2
2e10e7 movss  DWORD PTR [rsi],xmm7
2e10eb movss  DWORD PTR [rsi+0x4],xmm6
2e10f0 movss  DWORD PTR [rsi+0x8],xmm8
2e10f6 jmp    0x2e121e
2e10fb comiss xmm0,xmm1
2e10fe jb     0x2e1162
2e1100 comiss xmm0,xmm2
2e1103 jb     0x2e1162
2e1105 addss  xmm0,DWORD PTR [rip+0xfffffffffffac147]        # 0x28d254
2e110c 
2e110d subss  xmm0,xmm1
2e1111 subss  xmm0,xmm2
2e1115 call   0x2e3c88
2e111a movss  xmm1,DWORD PTR [rip+0xfffffffffffac12e]        # 0x28d250
2e1121 
2e1122 addss  xmm9,xmm8
2e1127 addss  xmm6,DWORD PTR [rbp-0x51]
2e112c movaps xmm2,xmm1
2e112f subss  xmm7,xmm10
2e1134 divss  xmm2,xmm0
2e1138 mulss  xmm0,xmm1
2e113c mulss  xmm9,xmm2
2e1141 mulss  xmm6,xmm2
2e1145 mulss  xmm7,xmm2
2e1149 movss  DWORD PTR [rsi+0x4],xmm9
2e114f movss  DWORD PTR [rsi+0x8],xmm6
2e1154 movss  DWORD PTR [rsi+0xc],xmm7
2e1159 movss  DWORD PTR [rsi],xmm0
2e115d jmp    0x2e121e
2e1162 comiss xmm1,xmm2
2e1165 addss  xmm10,xmm7
2e116a jbe    0x2e11c6
2e116c addss  xmm1,DWORD PTR [rip+0xfffffffffffac0e0]        # 0x28d254
2e1173 
2e1174 subss  xmm1,xmm0
2e1178 subss  xmm1,xmm2
2e117c movaps xmm0,xmm1
2e117f call   0x2e3c88
2e1184 movss  xmm1,DWORD PTR [rip+0xfffffffffffac0c4]        # 0x28d250
2e118b 
2e118c addss  xmm9,xmm8
2e1191 subss  xmm6,DWORD PTR [rbp-0x51]
2e1196 movaps xmm2,xmm1
2e1199 divss  xmm2,xmm0
2e119d mulss  xmm0,xmm1
2e11a1 mulss  xmm9,xmm2
2e11a6 mulss  xmm10,xmm2
2e11ab mulss  xmm6,xmm2
2e11af movss  DWORD PTR [rsi],xmm9
2e11b4 movss  DWORD PTR [rsi+0x8],xmm10
2e11ba movss  DWORD PTR [rsi+0xc],xmm6
2e11bf movss  DWORD PTR [rsi+0x4],xmm0
2e11c4 jmp    0x2e121e
2e11c6 addss  xmm2,DWORD PTR [rip+0xfffffffffffac086]        # 0x28d254
2e11cd 
2e11ce subss  xmm2,xmm0
2e11d2 subss  xmm2,xmm1
2e11d6 movaps xmm0,xmm2
2e11d9 call   0x2e3c88
2e11de movss  xmm1,DWORD PTR [rip+0xfffffffffffac06a]        # 0x28d250
2e11e5 
2e11e6 subss  xmm8,xmm9
2e11eb addss  xmm6,DWORD PTR [rbp-0x51]
2e11f0 movaps xmm2,xmm1
2e11f3 divss  xmm2,xmm0
2e11f7 mulss  xmm0,xmm1
2e11fb mulss  xmm6,xmm2
2e11ff mulss  xmm10,xmm2
2e1204 mulss  xmm8,xmm2
2e1209 movss  DWORD PTR [rsi],xmm6
2e120d movss  DWORD PTR [rsi+0x4],xmm10
2e1213 movss  DWORD PTR [rsi+0xc],xmm8
2e1219 movss  DWORD PTR [rsi+0x8],xmm0
2e121e lea    r11,[rsp+0xb8]
2e1225 
2e1226 mov    rax,rsi
2e1229 movaps xmm6,XMMWORD PTR [r11-0x18]
2e122e movaps xmm7,XMMWORD PTR [r11-0x28]
2e1233 movaps xmm8,XMMWORD PTR [r11-0x38]
2e1238 movaps xmm9,XMMWORD PTR [r11-0x48]
2e123d movaps xmm10,XMMWORD PTR [r11-0x58]
2e1242 mov    rsp,r11
2e1245 pop    rdi
2e1246 pop    rsi
2e1247 pop    rbx
2e1248 pop    rbp
2e1249 ret

; helpers independent pdata/next-pdata extent 2e6340..2e6744 unwind3d2cf8
2e6340 rex push rbp
2e6342 push   rbx
2e6343 push   rsi
2e6344 push   rdi
2e6345 push   r14
2e6347 push   r15
2e6349 lea    rbp,[rsp-0x2f]
2e634e sub    rsp,0xd8
2e6355 cmp    BYTE PTR [rip+0xfdedc],0x0        # 0x3e4238
2e635c mov    rsi,r8
2e635f mov    rdi,rdx
2e6362 mov    r14,rcx
2e6365 jne    0x2e65a1
2e636b call   0x2caf08
2e6370 test   al,al
2e6372 je     0x2e65a1
2e6378 mov    rcx,rdx
2e637b call   0x2caf08
2e6380 test   al,al
2e6382 je     0x2e65a1
2e6388 mov    rcx,r8
2e638b call   0x2caf08
2e6390 test   al,al
2e6392 je     0x2e65a1
2e6398 lea    rdx,[rbp-0x59]
2e639c mov    rcx,r8
2e639f call   0x369790
2e63a4 lea    rcx,[rbp-0x9]
2e63a8 call   0x3c7bbc
2e63ad mov    rdx,rax
2e63b0 lea    rcx,[rbp-0x59]
2e63b4 call   0x2df5b0
2e63b9 test   al,al
2e63bb jne    0x2e65a1
2e63c1 mov    r8d,0x36
2e63c7 lea    rdx,[rbp+0x17]
2e63cb mov    rcx,rsi
2e63ce call   0x368be8
2e63d3 lea    rdx,[rbp-0x29]
2e63d7 mov    rcx,r14
2e63da call   0x369164
2e63df lea    rdx,[rbp-0x59]
2e63e3 lea    rcx,[rbp-0x29]
2e63e7 call   0x2dff30
2e63ec movd   xmm1,DWORD PTR [rip+0xf1d54]        # 0x3d8148
2e63f3 
2e63f4 cvtdq2ps xmm1,xmm1
2e63f7 comiss xmm0,xmm1
2e63fa ja     0x2e65a1
2e6400 mov    rcx,rdi
2e6403 call   0x371464
2e6408 mov    rcx,rdi
2e640b mov    rbx,rax
2e640e call   0x3721b4
2e6413 mov    rcx,rdi
2e6416 mov    r15,rax
2e6419 call   0x371eb8
2e641e mov    rcx,rax
2e6421 mov    rdx,rax
2e6424 call   0x2caf08
2e6429 test   al,al
2e642b je     0x2e65b3
2e6431 mov    rcx,rdx
2e6434 call   0x36b938
2e6439 mov    rcx,rax
2e643c mov    rdx,rax
2e643f call   0x2caf08
2e6444 test   al,al
2e6446 je     0x2e65a1
2e644c mov    rcx,rdx
2e644f call   0x372b30
2e6454 mov    rcx,rax
2e6457 call   0x2caf08
2e645c test   al,al
2e645e je     0x2e65a1
2e6464 lea    rdx,[rbp-0x79]
2e6468 mov    rcx,r14
2e646b call   0x368100
2e6470 mov    rcx,rax
2e6473 lea    rdx,[rbp-0x9]
2e6477 call   0x2e1278
2e647c movss  xmm2,DWORD PTR [rip+0xfffffffffffa6dd0]        # 0x28d254
2e6483 
2e6484 lea    rdx,[rbp-0x79]
2e6488 lea    rcx,[rbp-0x9]
2e648c call   0x2df66c
2e6491 mov    r8,rax
2e6494 lea    rdx,[rbp-0x19]
2e6498 lea    rcx,[rbp-0x29]
2e649c call   0x2df708
2e64a1 mov    rcx,rsi
2e64a4 call   0x2e6110
2e64a9 mov    rcx,rax
2e64ac mov    r8,rax
2e64af call   0x2caf08
2e64b4 test   al,al
2e64b6 je     0x2e64d5
2e64b8 lea    rdx,[rbp-0x79]
2e64bc mov    rcx,r8
2e64bf call   0x3747d4
2e64c4 movsd  xmm1,QWORD PTR [rax]
2e64c8 movsd  QWORD PTR [rbp-0x59],xmm1
2e64cd mov    ecx,DWORD PTR [rax+0x8]
2e64d0 mov    DWORD PTR [rbp-0x51],ecx
2e64d3 jmp    0x2e64dd
2e64d5 mov    ecx,DWORD PTR [rbp-0x51]
2e64d8 movsd  xmm1,QWORD PTR [rbp-0x59]
2e64dd mov    rdx,QWORD PTR [rip+0xff234]        # 0x3e5718
2e64e4 test   rdx,rdx
2e64e7 je     0x2e65a1
2e64ed movsd  xmm0,QWORD PTR [rip+0xf0d53]        # 0x3d7248
2e64f4 
2e64f5 lea    r9,[rbp-0x39]
2e64f9 mov    eax,DWORD PTR [rip+0xf0d51]        # 0x3d7250
2e64ff lea    r8,[rbp-0x69]
2e6503 movsd  QWORD PTR [rbp-0x39],xmm0
2e6508 movsd  xmm0,QWORD PTR [rbp-0x19]
2e650d mov    DWORD PTR [rbp-0x31],eax
2e6510 mov    eax,DWORD PTR [rbp-0x11]
2e6513 mov    DWORD PTR [rbp-0x61],ecx
2e6516 lea    rcx,[rbp-0x49]
2e651a mov    QWORD PTR [rsp+0x20],rdx
2e651f lea    rdx,[rbp-0x79]
2e6523 movsd  QWORD PTR [rbp-0x79],xmm0
2e6528 movsd  QWORD PTR [rbp-0x69],xmm1
2e652d mov    DWORD PTR [rbp-0x71],eax
2e6530 call   0x2e2374
2e6535 lea    rcx,[rbp-0x49]
2e6539 call   0x2e3b58
2e653e test   al,al
2e6540 jne    0x2e65a1
2e6542 mov    rbx,QWORD PTR [rip+0xff1cf]        # 0x3e5718
2e6549 lea    rdx,[rbp+0x7]
2e654d lea    rcx,[rbp-0x49]
2e6551 call   0x2e1278
2e6556 lea    r8,[rbp-0x79]
2e655a lea    rdx,[rbp-0x69]
2e655e lea    rcx,[rbp-0x39]
2e6562 movsd  xmm0,QWORD PTR [rax]
2e6566 mov    eax,DWORD PTR [rax+0x8]
2e6569 movsd  QWORD PTR [rbp-0x79],xmm0
2e656e movsd  xmm0,QWORD PTR [rbp-0x59]
2e6573 mov    DWORD PTR [rbp-0x71],eax
2e6576 mov    eax,DWORD PTR [rbp-0x51]
2e6579 movsd  QWORD PTR [rbp-0x69],xmm0
2e657e movsd  xmm0,QWORD PTR [rbp-0x19]
2e6583 mov    DWORD PTR [rbp-0x61],eax
2e6586 mov    eax,DWORD PTR [rbp-0x11]
2e6589 movsd  QWORD PTR [rbp-0x39],xmm0
2e658e mov    DWORD PTR [rbp-0x31],eax
2e6591 mov    r9,rbx
2e6594 call   0x2e8a30
2e6599 test   al,al
2e659b jne    0x2e673d
2e65a1 xor    al,al
2e65a3 add    rsp,0xd8
2e65aa pop    r15
2e65ac pop    r14
2e65ae pop    rdi
2e65af pop    rsi
2e65b0 pop    rbx
2e65b1 pop    rbp
2e65b2 ret
2e65b3 mov    rcx,rbx
2e65b6 call   0x2caf08
2e65bb test   al,al
2e65bd je     0x2e6635
2e65bf mov    rcx,rdi
2e65c2 call   0x37154c
2e65c7 mov    rcx,rax
2e65ca mov    rdi,rax
2e65cd call   0x2caf08
2e65d2 test   al,al
2e65d4 je     0x2e65a1
2e65d6 mov    rcx,rbx
2e65d9 call   0x36b938
2e65de mov    rcx,rax
2e65e1 mov    rdx,rax
2e65e4 call   0x2caf08
2e65e9 test   al,al
2e65eb je     0x2e65a1
2e65ed mov    rcx,rdx
2e65f0 call   0x372abc
2e65f5 mov    rcx,rax
2e65f8 call   0x2caf08
2e65fd test   al,al
2e65ff je     0x2e65a1
2e6601 mov    rcx,rdi
2e6604 call   0x37261c
2e6609 cmp    eax,0x34b73d71
2e660e jne    0x2e6618
2e6610 mov    rcx,rbx
2e6613 call   0x36b504
2e6618 mov    rcx,rbx
2e661b call   0x36b758
2e6620 ucomiss xmm0,DWORD PTR [rip+0xfffffffffffa6c25]        # 0x28d24c
2e6627 jp     0x2e662b
2e6629 je     0x2e6678
2e662b mov    rcx,rbx
2e662e call   0x36b758
2e6633 jmp    0x2e6678
2e6635 mov    rcx,r15
2e6638 call   0x2caf08
2e663d test   al,al
2e663f je     0x2e65a1
2e6645 mov    rcx,rdi
2e6648 call   0x371630
2e664d mov    rcx,rax
2e6650 mov    rdx,rax
2e6653 call   0x2caf08
2e6658 test   al,al
2e665a je     0x2e65a1
2e6660 mov    rcx,rdx
2e6663 call   0x372abc
2e6668 mov    rcx,rax
2e666b call   0x2caf08
2e6670 test   al,al
2e6672 je     0x2e65a1
2e6678 mov    rcx,QWORD PTR [rip+0xff099]        # 0x3e5718
2e667f test   rcx,rcx
2e6682 je     0x2e65a1
2e6688 movsd  xmm0,QWORD PTR [rip+0xf0bb8]        # 0x3d7248
2e668f 
2e6690 lea    r9,[rbp-0x49]
2e6694 mov    eax,DWORD PTR [rip+0xf0bb6]        # 0x3d7250
2e669a lea    r8,[rbp-0x79]
2e669e movsd  QWORD PTR [rbp-0x49],xmm0
2e66a3 lea    rdx,[rbp-0x69]
2e66a7 movsd  xmm0,QWORD PTR [rbp-0x59]
2e66ac mov    DWORD PTR [rbp-0x41],eax
2e66af mov    eax,DWORD PTR [rbp-0x51]
2e66b2 movsd  QWORD PTR [rbp-0x79],xmm0
2e66b7 movsd  xmm0,QWORD PTR [rbp-0x29]
2e66bc mov    DWORD PTR [rbp-0x71],eax
2e66bf mov    eax,DWORD PTR [rbp-0x21]
2e66c2 mov    QWORD PTR [rsp+0x20],rcx
2e66c7 lea    rcx,[rbp-0x39]
2e66cb movsd  QWORD PTR [rbp-0x69],xmm0
2e66d0 mov    DWORD PTR [rbp-0x61],eax
2e66d3 call   0x2e2374
2e66d8 lea    rcx,[rbp-0x39]
2e66dc call   0x2e3b58
2e66e1 test   al,al
2e66e3 jne    0x2e65a1
2e66e9 mov    rbx,QWORD PTR [rip+0xff028]        # 0x3e5718
2e66f0 lea    rdx,[rbp+0x7]
2e66f4 lea    rcx,[rbp-0x39]
2e66f8 call   0x2e1278
2e66fd lea    r8,[rbp-0x49]
2e6701 lea    rdx,[rbp-0x79]
2e6705 lea    rcx,[rbp-0x69]
2e6709 movsd  xmm0,QWORD PTR [rax]
2e670d mov    eax,DWORD PTR [rax+0x8]
2e6710 movsd  QWORD PTR [rbp-0x49],xmm0
2e6715 movsd  xmm0,QWORD PTR [rbp-0x59]
2e671a mov    DWORD PTR [rbp-0x41],eax
2e671d mov    eax,DWORD PTR [rbp-0x51]
2e6720 movsd  QWORD PTR [rbp-0x79],xmm0
2e6725 movsd  xmm0,QWORD PTR [rbp-0x29]
2e672a mov    DWORD PTR [rbp-0x71],eax
2e672d mov    eax,DWORD PTR [rbp-0x21]
2e6730 movsd  QWORD PTR [rbp-0x69],xmm0
2e6735 mov    DWORD PTR [rbp-0x61],eax
2e6738 jmp    0x2e6591
2e673d mov    al,0x1
2e673f jmp    0x2e65a3

; helpers independent pdata/next-pdata extent 2e8a30..2e8e85 unwind3d2ca8
2e8a30 mov    rax,rsp
2e8a33 push   rbp
2e8a34 push   rbx
2e8a35 push   rsi
2e8a36 push   rdi
2e8a37 push   r12
2e8a39 push   r13
2e8a3b push   r14
2e8a3d push   r15
2e8a3f lea    rbp,[rax-0x1d8]
2e8a46 sub    rsp,0x298
2e8a4d movaps XMMWORD PTR [rax-0x58],xmm6
2e8a51 mov    rsi,rcx
2e8a54 movaps XMMWORD PTR [rax-0x68],xmm7
2e8a58 mov    rcx,r8
2e8a5b movaps XMMWORD PTR [rax-0x78],xmm8
2e8a60 mov    r12,r9
2e8a63 movaps XMMWORD PTR [rax-0x88],xmm9
2e8a6a 
2e8a6b mov    rdi,r8
2e8a6e movaps XMMWORD PTR [rax-0x98],xmm10
2e8a75 
2e8a76 mov    rbx,rdx
2e8a79 movaps XMMWORD PTR [rax-0xa8],xmm11
2e8a80 
2e8a81 movaps XMMWORD PTR [rax-0xb8],xmm12
2e8a88 
2e8a89 movaps XMMWORD PTR [rax-0xc8],xmm13
2e8a90 
2e8a91 movaps XMMWORD PTR [rax-0xd8],xmm14
2e8a98 
2e8a99 call   0x2e3b58
2e8a9e test   al,al
2e8aa0 jne    0x2e8e38
2e8aa6 movss  xmm2,DWORD PTR [r12]
2e8aac lea    rdx,[rsp+0x70]
2e8ab1 mov    rcx,rdi
2e8ab4 call   0x2df66c
2e8ab9 xorps  xmm7,xmm7
2e8abc xorps  xmm12,xmm12
2e8ac0 call   0x2e6a6c
2e8ac5 lea    rcx,[rbp-0x80]
2e8ac9 mov    r13d,eax
2e8acc call   0x3c7bbc
2e8ad1 movsd  xmm8,QWORD PTR [rsi]
2e8ad6 xor    r15d,r15d
2e8ad9 mov    edi,DWORD PTR [rsi+0x8]
2e8adc xor    r14d,r14d
2e8adf movss  xmm11,DWORD PTR [rip+0xfffffffffffa4b18]        # 0x28d600
2e8ae6 
2e8ae8 xorps  xmm6,xmm6
2e8aeb movss  xmm13,DWORD PTR [rip+0xfffffffffffa56ec]        # 0x28e1e0
2e8af2 
2e8af4 movsd  QWORD PTR [rsp+0x40],xmm8
2e8afb mov    DWORD PTR [rsp+0x48],edi
2e8aff test   r15d,r15d
2e8b02 jne    0x2e8b0f
2e8b04 movss  xmm9,DWORD PTR [rip+0xfffffffffffa56b3]        # 0x28e1c0
2e8b0b 
2e8b0d jmp    0x2e8b18
2e8b0f movss  xmm9,DWORD PTR [rip+0xfffffffffffa4fc4]        # 0x28dadc
2e8b16 
2e8b18 movsd  xmm0,QWORD PTR [rsi]
2e8b1c lea    rdx,[rbp+0x70]
2e8b20 mov    eax,DWORD PTR [rsi+0x8]
2e8b23 lea    rcx,[rsp+0x70]
2e8b28 movaps xmm2,xmm9
2e8b2c movsd  QWORD PTR [rbp-0x70],xmm0
2e8b31 mov    DWORD PTR [rbp-0x68],eax
2e8b34 call   0x2df66c
2e8b39 mov    r8,rax
2e8b3c lea    rdx,[rsp+0x30]
2e8b41 mov    rcx,rsi
2e8b44 call   0x2df708
2e8b49 lea    r8,[rbp-0x70]
2e8b4d lea    rdx,[rbp+0x7c]
2e8b51 lea    rcx,[rsp+0x30]
2e8b56 call   0x2df6cc
2e8b5b mov    rcx,rax
2e8b5e call   0x2e0ee8
2e8b63 movsd  xmm1,QWORD PTR [rsp+0x30]
2e8b69 lea    r8,[rbp-0x60]
2e8b6d mov    eax,DWORD PTR [rsp+0x38]
2e8b71 lea    rdx,[rbp-0x50]
2e8b75 movsd  QWORD PTR [rbp-0x60],xmm1
2e8b7a lea    rcx,[rbp+0xc8]
2e8b81 movsd  xmm1,QWORD PTR [rsi]
2e8b85 movaps xmm10,xmm0
2e8b89 mov    DWORD PTR [rbp-0x58],eax
2e8b8c mov    eax,DWORD PTR [rsi+0x8]
2e8b8f movsd  QWORD PTR [rbp-0x50],xmm1
2e8b94 mov    DWORD PTR [rbp-0x48],eax
2e8b97 call   0x2df29c
2e8b9c movsd  xmm0,QWORD PTR [rbx]
2e8ba0 lea    r8,[rbp-0x40]
2e8ba4 mov    eax,DWORD PTR [rbx+0x8]
2e8ba7 lea    rdx,[rbp+0x30]
2e8bab lea    rcx,[rbp+0xc8]
2e8bb2 movsd  QWORD PTR [rbp-0x40],xmm0
2e8bb7 mov    DWORD PTR [rbp-0x38],eax
2e8bba call   0x2e5a80
2e8bbf lea    rdx,[rbp+0x30]
2e8bc3 mov    rcx,rbx
2e8bc6 call   0x2dff30
2e8bcb movaps xmm14,xmm0
2e8bcf comiss xmm14,xmm11
2e8bd3 jbe    0x2e8be2
2e8bd5 inc    r14d
2e8bd8 cmp    r14d,0x2
2e8bdc jge    0x2e8de2
2e8be2 addss  xmm6,xmm10
2e8be7 test   r15d,r15d
2e8bea jne    0x2e8bf1
2e8bec xorps  xmm0,xmm0
2e8bef jmp    0x2e8bf9
2e8bf1 movss  xmm0,DWORD PTR [rip+0xfffffffffffa55eb]        # 0x28e1e4
2e8bf8 
2e8bf9 comiss xmm6,xmm0
2e8bfc jb     0x2e8d42
2e8c02 xorps  xmm0,xmm0
2e8c05 lea    rcx,[rbp+0x40]
2e8c09 movups XMMWORD PTR [rbp+0x50],xmm0
2e8c0d movups XMMWORD PTR [rbp+0x5c],xmm0
2e8c11 movups XMMWORD PTR [rbp+0x40],xmm0
2e8c15 call   0x2e4f04
2e8c1a lea    rdx,[rsp+0x30]
2e8c1f lea    rcx,[rsp+0x40]
2e8c24 call   0x2dff30
2e8c29 lea    r8,[rsp+0x40]
2e8c2e movaps xmm6,xmm0
2e8c31 lea    rdx,[rbp+0x88]
2e8c38 lea    rcx,[rsp+0x30]
2e8c3d call   0x2df6cc
2e8c42 mov    DWORD PTR [rsp+0x28],0x0
2e8c49 
2e8c4a lea    rdx,[rbp-0x30]
2e8c4e mov    r9d,r13d
2e8c51 movsd  QWORD PTR [rbp-0x20],xmm8
2e8c57 movaps xmm2,xmm6
2e8c5a mov    DWORD PTR [rbp-0x18],edi
2e8c5d movsd  xmm1,QWORD PTR [rax]
2e8c61 lea    rcx,[rbp-0x20]
2e8c65 mov    eax,DWORD PTR [rax+0x8]
2e8c68 mov    DWORD PTR [rbp-0x28],eax
2e8c6b lea    rax,[rbp+0x40]
2e8c6f mov    QWORD PTR [rsp+0x20],rax
2e8c74 movsd  QWORD PTR [rbp-0x30],xmm1
2e8c79 call   0x2e8fac
2e8c7e test   al,al
2e8c80 jne    0x2e8e38
2e8c86 movsd  xmm0,QWORD PTR [rsp+0x30]
2e8c8c lea    r8,[rbp-0x10]
2e8c90 mov    eax,DWORD PTR [rsp+0x38]
2e8c94 lea    rdx,[rbp+0x0]
2e8c98 lea    rcx,[rbp+0xe0]
2e8c9f movsd  QWORD PTR [rbp-0x10],xmm0
2e8ca4 mov    DWORD PTR [rbp-0x8],eax
2e8ca7 movsd  QWORD PTR [rbp+0x0],xmm8
2e8cad mov    DWORD PTR [rbp+0x8],edi
2e8cb0 call   0x2df29c
2e8cb5 movsd  xmm0,QWORD PTR [rbx]
2e8cb9 lea    r8,[rbp+0x10]
2e8cbd mov    eax,DWORD PTR [rbx+0x8]
2e8cc0 lea    rdx,[rbp+0x20]
2e8cc4 lea    rcx,[rbp+0xe0]
2e8ccb movsd  QWORD PTR [rbp+0x10],xmm0
2e8cd0 mov    DWORD PTR [rbp+0x18],eax
2e8cd3 call   0x2e5a80
2e8cd8 movsd  xmm0,QWORD PTR [rbx]
2e8cdc mov    eax,DWORD PTR [rbx+0x8]
2e8cdf movsd  QWORD PTR [rsp+0x50],xmm0
2e8ce5 movsd  xmm0,QWORD PTR [rbp+0x20]
2e8cea mov    DWORD PTR [rsp+0x58],eax
2e8cee mov    eax,DWORD PTR [rbp+0x28]
2e8cf1 movsd  QWORD PTR [rsp+0x60],xmm0
2e8cf7 mov    DWORD PTR [rsp+0x68],eax
2e8cfb call   0x2e6a6c
2e8d00 mov    r8d,eax
2e8d03 movss  DWORD PTR [rsp+0x20],xmm7
2e8d09 xorps  xmm3,xmm3
2e8d0c lea    rdx,[rsp+0x50]
2e8d11 lea    rcx,[rsp+0x60]
2e8d16 call   0x2e2320
2e8d1b test   al,al
2e8d1d jne    0x2e8e34
2e8d23 movsd  xmm0,QWORD PTR [rsp+0x30]
2e8d29 xorps  xmm6,xmm6
2e8d2c mov    eax,DWORD PTR [rsp+0x38]
2e8d30 movaps xmm8,xmm0
2e8d34 movsd  QWORD PTR [rsp+0x40],xmm0
2e8d3a mov    edi,eax
2e8d3c mov    DWORD PTR [rsp+0x48],eax
2e8d40 jmp    0x2e8d4c
2e8d42 mov    eax,DWORD PTR [rsp+0x38]
2e8d46 movsd  xmm0,QWORD PTR [rsp+0x30]
2e8d4c movss  xmm2,DWORD PTR [r12+0x8]
2e8d53 lea    rcx,[rbp+0x94]
2e8d5a mulss  xmm2,DWORD PTR [rip+0xfffffffffffa548a]        # 0x28e1ec
2e8d61 
2e8d62 xorps  xmm3,xmm3
2e8d65 movsd  QWORD PTR [rsi],xmm0
2e8d69 xorps  xmm1,xmm1
2e8d6c movaps xmm11,xmm14
2e8d70 mov    DWORD PTR [rsi+0x8],eax
2e8d73 call   0x3c7ba8
2e8d78 mov    rcx,rax
2e8d7b lea    rdx,[rbp+0xa0]
2e8d82 movaps xmm2,xmm9
2e8d86 call   0x2df66c
2e8d8b mov    rdx,rax
2e8d8e lea    rcx,[rsp+0x70]
2e8d93 call   0x3c7bc8
2e8d98 movss  xmm2,DWORD PTR [r12+0x4]
2e8d9f lea    rdx,[rbp+0xac]
2e8da6 lea    rcx,[rsp+0x70]
2e8dab call   0x2df66c
2e8db0 mov    rcx,rax
2e8db3 lea    rdx,[rbp+0xb8]
2e8dba movaps xmm2,xmm9
2e8dbe call   0x2df66c
2e8dc3 mov    rdx,rax
2e8dc6 lea    rcx,[rsp+0x70]
2e8dcb call   0x3c7bf8
2e8dd0 addss  xmm12,xmm9
2e8dd5 inc    r15d
2e8dd8 comiss xmm13,xmm12
2e8ddc ja     0x2e8aff
2e8de2 lea    rcx,[rbp-0x80]
2e8de6 call   0x2e3b58
2e8deb test   al,al
2e8ded jne    0x2e8e38
2e8def movsd  xmm0,QWORD PTR [rbx]
2e8df3 mov    eax,DWORD PTR [rbx+0x8]
2e8df6 movsd  QWORD PTR [rsp+0x60],xmm0
2e8dfc movsd  xmm0,QWORD PTR [rbp-0x80]
2e8e01 mov    DWORD PTR [rsp+0x68],eax
2e8e05 mov    eax,DWORD PTR [rbp-0x78]
2e8e08 movsd  QWORD PTR [rsp+0x50],xmm0
2e8e0e mov    DWORD PTR [rsp+0x58],eax
2e8e12 call   0x2e6a6c
2e8e17 mov    r8d,eax
2e8e1a movss  DWORD PTR [rsp+0x20],xmm7
2e8e20 xorps  xmm3,xmm3
2e8e23 lea    rdx,[rsp+0x60]
2e8e28 lea    rcx,[rsp+0x50]
2e8e2d call   0x2e2320
2e8e32 jmp    0x2e8e3a
2e8e34 mov    al,0x1
2e8e36 jmp    0x2e8e3a
2e8e38 xor    al,al
2e8e3a lea    r11,[rsp+0x298]
2e8e41 
2e8e42 movaps xmm6,XMMWORD PTR [r11-0x18]
2e8e47 movaps xmm7,XMMWORD PTR [r11-0x28]
2e8e4c movaps xmm8,XMMWORD PTR [r11-0x38]
2e8e51 movaps xmm9,XMMWORD PTR [r11-0x48]
2e8e56 movaps xmm10,XMMWORD PTR [r11-0x58]
2e8e5b movaps xmm11,XMMWORD PTR [r11-0x68]
2e8e60 movaps xmm12,XMMWORD PTR [r11-0x78]
2e8e65 movaps xmm13,XMMWORD PTR [r11-0x88]
2e8e6c 
2e8e6d movaps xmm14,XMMWORD PTR [r11-0x98]
2e8e74 
2e8e75 mov    rsp,r11
2e8e78 pop    r15
2e8e7a pop    r14
2e8e7c pop    r13
2e8e7e pop    r12
2e8e80 pop    rdi
2e8e81 pop    rsi
2e8e82 pop    rbx
2e8e83 pop    rbp
2e8e84 ret

; helpers independent pdata/next-pdata extent 2e89e4..2e8a2d unwind3d2040
2e89e4 mov    QWORD PTR [rsp+0x8],rbx
2e89e9 push   rdi
2e89ea sub    rsp,0x20
2e89ee mov    dil,dl
2e89f1 mov    rbx,rcx
2e89f4 call   0x2e6744
2e89f9 test   al,al
2e89fb je     0x2e8a02
2e89fd test   dil,dil
2e8a00 jne    0x2e8a20
2e8a02 mov    ecx,DWORD PTR [rbx]
2e8a04 xor    edx,edx
2e8a06 call   0x2e5e4c
2e8a0b test   al,al
2e8a0d je     0x2e8a1c
2e8a0f cmp    BYTE PTR [rbx+0x8],0x0
2e8a13 jne    0x2e8a20
2e8a15 mov    al,0x1
2e8a17 mov    BYTE PTR [rbx+0x8],al
2e8a1a jmp    0x2e8a22
2e8a1c mov    BYTE PTR [rbx+0x8],0x0
2e8a20 xor    al,al
2e8a22 mov    rbx,QWORD PTR [rsp+0x30]
2e8a27 add    rsp,0x20
2e8a2b pop    rdi
2e8a2c ret

; helpers independent pdata/next-pdata extent 2e8910..2e89e1 unwind3d2c04
2e8910 mov    QWORD PTR [rsp+0x10],rbx
2e8915 mov    DWORD PTR [rsp+0x8],ecx
2e8919 push   rdi
2e891a sub    rsp,0x20
2e891e mov    bl,dl
2e8920 call   0x2e6744
2e8925 test   al,al
2e8927 je     0x2e8934
2e8929 test   bl,bl
2e892b je     0x2e8934
2e892d xor    al,al
2e892f jmp    0x2e89d6
2e8934 mov    eax,DWORD PTR [rip+0xfc3b6]        # 0x3e4cf0
2e893a mov    ebx,0x1
2e893f test   bl,al
2e8941 jne    0x2e8963
2e8943 or     eax,ebx
2e8945 lea    rcx,[rip+0xfc364]        # 0x3e4cb0
2e894c mov    DWORD PTR [rip+0xfc39e],eax        # 0x3e4cf0
2e8952 call   0x2e4dd0
2e8957 lea    rcx,[rip+0xe625e]        # 0x3cebbc
2e895e call   0x2cd32c
2e8963 mov    ecx,DWORD PTR [rsp+0x30]
2e8967 xor    edx,edx
2e8969 call   0x2e5e4c
2e896e lea    r8,[rsp+0x30]
2e8973 mov    dil,al
2e8976 lea    rdx,[rsp+0x40]
2e897b lea    rcx,[rip+0xfc32e]        # 0x3e4cb0
2e8982 call   0x2d8880
2e8987 lea    rdx,[rsp+0x48]
2e898c lea    rcx,[rip+0xfc31d]        # 0x3e4cb0
2e8993 call   0x2d86b8
2e8998 mov    rdx,rax
2e899b lea    rcx,[rsp+0x40]
2e89a0 call   0x2cc534
2e89a5 test   al,al
2e89a7 jne    0x2e89b9
2e89a9 lea    rcx,[rsp+0x40]
2e89ae call   0x2d4da0
2e89b3 cmp    BYTE PTR [rax+0x4],0x0
2e89b7 jne    0x2e89be
2e89b9 test   dil,dil
2e89bc jne    0x2e89c0
2e89be xor    bl,bl
2e89c0 lea    rdx,[rsp+0x30]
2e89c5 lea    rcx,[rip+0xfc2e4]        # 0x3e4cb0
2e89cc call   0x2e50f8
2e89d1 mov    BYTE PTR [rax],dil
2e89d4 mov    al,bl
2e89d6 mov    rbx,QWORD PTR [rsp+0x38]
2e89db add    rsp,0x20
2e89df pop    rdi
2e89e0 ret

; helpers independent pdata/next-pdata extent 2e5b7c..2e5bc3 unwind3d2c10
2e5b7c rex push rbx
2e5b7e sub    rsp,0x40
2e5b82 movaps XMMWORD PTR [rsp+0x30],xmm6
2e5b87 mov    rbx,rcx
2e5b8a movss  xmm6,DWORD PTR [rcx]
2e5b8e movaps XMMWORD PTR [rsp+0x20],xmm7
2e5b93 movaps xmm7,xmm1
2e5b96 call   0x2e6240
2e5b9b comiss xmm0,xmm6
2e5b9e jbe    0x2e5bb1
2e5ba0 call   0x2e6240
2e5ba5 addss  xmm0,xmm7
2e5ba9 mov    al,0x1
2e5bab movss  DWORD PTR [rbx],xmm0
2e5baf jmp    0x2e5bb3
2e5bb1 xor    al,al
2e5bb3 movaps xmm6,XMMWORD PTR [rsp+0x30]
2e5bb8 movaps xmm7,XMMWORD PTR [rsp+0x20]
2e5bbd add    rsp,0x40
2e5bc1 pop    rbx
2e5bc2 ret

; helpers independent pdata/next-pdata extent 2e6a6c..2e6a84 unwind0
2e6a6c cmp    BYTE PTR [rip+0xfe7b5],0x0        # 0x3e5228
2e6a73 mov    eax,0x48a10101
2e6a78 mov    ecx,0x48a12101
2e6a7d cmove  eax,ecx
2e6a80 ret
2e6a81 int3
2e6a82 int3
2e6a83 int3

; helpers independent pdata/next-pdata extent 2f7dd0..2f8034 unwind3d32a4
2f7dd0 mov    rax,rsp
2f7dd3 push   rbp
2f7dd4 push   rbx
2f7dd5 push   rsi
2f7dd6 push   rdi
2f7dd7 push   r14
2f7dd9 lea    rbp,[rax-0x5f]
2f7ddd sub    rsp,0xd0
2f7de4 cmp    BYTE PTR [rip+0xe01cd],0x0        # 0x3d7fb8
2f7deb movaps XMMWORD PTR [rax-0x38],xmm6
2f7def movaps XMMWORD PTR [rax-0x48],xmm7
2f7df3 movaps XMMWORD PTR [rax-0x58],xmm8
2f7df8 movaps XMMWORD PTR [rax-0x68],xmm9
2f7dfd je     0x2f800c
2f7e03 call   0x2dda9c
2f7e08 mov    rcx,rax
2f7e0b mov    r14,rax
2f7e0e call   0x2caf08
2f7e13 test   al,al
2f7e15 je     0x2f800c
2f7e1b mov    rcx,r14
2f7e1e call   0x368a84
2f7e23 mov    rcx,rax
2f7e26 mov    rsi,rax
2f7e29 call   0x2caf08
2f7e2e test   al,al
2f7e30 je     0x2f800c
2f7e36 mov    rcx,rsi
2f7e39 call   0x371464
2f7e3e mov    rcx,rax
2f7e41 mov    rbx,rax
2f7e44 call   0x2caf08
2f7e49 test   al,al
2f7e4b je     0x2f800c
2f7e51 mov    rcx,rbx
2f7e54 call   0x36b938
2f7e59 mov    rcx,rax
2f7e5c mov    rdi,rax
2f7e5f call   0x2caf08
2f7e64 test   al,al
2f7e66 je     0x2f800c
2f7e6c movss  xmm7,DWORD PTR [rbx+0x3ac]
2f7e73 
2f7e74 mov    rcx,rsi
2f7e77 call   0x37154c
2f7e7c mov    rcx,rax
2f7e7f mov    rdx,rax
2f7e82 call   0x2caf08
2f7e87 test   al,al
2f7e89 je     0x2f7ea5
2f7e8b mov    rcx,rdx
2f7e8e call   0x37261c
2f7e93 cmp    eax,0x34b73d71
2f7e98 jne    0x2f7ea5
2f7e9a mov    rcx,rbx
2f7e9d call   0x36b504
2f7ea2 movaps xmm7,xmm0
2f7ea5 movss  xmm8,DWORD PTR [rdi+0x44]
2f7eab movss  xmm9,DWORD PTR [rdi+0x40]
2f7eb1 call   0x2e02b0
2f7eb6 mov    rcx,rax
2f7eb9 mov    rdi,rax
2f7ebc call   0x2caf08
2f7ec1 test   al,al
2f7ec3 je     0x2f800c
2f7ec9 mov    rcx,rdi
2f7ecc call   0x2e0e9c
2f7ed1 test   al,al
2f7ed3 je     0x2f800c
2f7ed9 lea    rdx,[rbp-0x69]
2f7edd mov    rcx,rdi
2f7ee0 call   0x369790
2f7ee5 lea    rcx,[rbp-0x49]
2f7ee9 call   0x3c7bbc
2f7eee mov    rdx,rax
2f7ef1 lea    rcx,[rbp-0x69]
2f7ef5 call   0x2df5b0
2f7efa test   al,al
2f7efc jne    0x2f800c
2f7f02 call   0x2e6a6c
2f7f07 lea    rdx,[rbp-0x19]
2f7f0b mov    rcx,r14
2f7f0e mov    ebx,eax
2f7f10 call   0x369164
2f7f15 xorps  xmm6,xmm6
2f7f18 lea    rdx,[rbp-0x59]
2f7f1c xorps  xmm3,xmm3
2f7f1f movss  DWORD PTR [rsp+0x20],xmm6
2f7f25 mov    r8d,ebx
2f7f28 mov    ecx,DWORD PTR [rax+0x8]
2f7f2b movsd  xmm0,QWORD PTR [rax]
2f7f2f mov    DWORD PTR [rbp-0x51],ecx
2f7f32 mov    ecx,DWORD PTR [rbp-0x61]
2f7f35 movsd  QWORD PTR [rbp-0x59],xmm0
2f7f3a movsd  xmm0,QWORD PTR [rbp-0x69]
2f7f3f mov    DWORD PTR [rbp-0x41],ecx
2f7f42 lea    rcx,[rbp-0x49]
2f7f46 movsd  QWORD PTR [rbp-0x49],xmm0
2f7f4b call   0x2e2320
2f7f50 mov    cl,BYTE PTR [rip+0xe0102]        # 0x3d8058
2f7f56 test   al,al
2f7f58 jne    0x2f7f62
2f7f5a test   cl,cl
2f7f5c je     0x2f800c
2f7f62 cmp    BYTE PTR [rip+0xedf10],0x0        # 0x3e5e79
2f7f69 jne    0x2f7f73
2f7f6b test   cl,cl
2f7f6d jne    0x2f800c
2f7f73 lea    rdx,[rbp-0x29]
2f7f77 mov    rcx,r14
2f7f7a call   0x369164
2f7f7f mov    r8d,0x7
2f7f85 lea    rdx,[rbp-0x19]
2f7f89 mov    rcx,rdi
2f7f8c call   0x368be8
2f7f91 movss  xmm2,DWORD PTR [rip+0xfffffffffff9b2c3]        # 0x29325c
2f7f98 
2f7f99 lea    rcx,[rbp-0x49]
2f7f9d xorps  xmm3,xmm3
2f7fa0 xorps  xmm1,xmm1
2f7fa3 mov    rbx,rax
2f7fa6 call   0x3c7ba8
2f7fab mov    r8,rax
2f7fae lea    rdx,[rbp-0x39]
2f7fb2 mov    rcx,rbx
2f7fb5 call   0x2df708
2f7fba lea    rdx,[rbp-0x39]
2f7fbe lea    rcx,[rbp-0x29]
2f7fc2 call   0x2dff30
2f7fc7 addss  xmm8,xmm9
2f7fcc mov    rcx,rsi
2f7fcf movaps xmm6,xmm0
2f7fd2 mulss  xmm8,xmm7
2f7fd7 mulss  xmm8,DWORD PTR [rip+0xfffffffffff95b18]        # 0x28daf8
2f7fde 
2f7fe0 mulss  xmm8,DWORD PTR [rip+0xfffffffffff9b10b]        # 0x2930f4
2f7fe7 
2f7fe9 call   0x32bb60
2f7fee addss  xmm0,xmm8
2f7ff3 comiss xmm0,xmm6
2f7ff6 jbe    0x2f800c
2f7ff8 movss  xmm0,DWORD PTR [rip+0xfffffffffff961cc]        # 0x28e1cc
2f7fff 
2f8000 comiss xmm0,DWORD PTR [rip+0xec24d]        # 0x3e4254
2f8007 seta   al
2f800a jmp    0x2f800e
2f800c xor    al,al
2f800e lea    r11,[rsp+0xd0]
2f8015 
2f8016 movaps xmm6,XMMWORD PTR [r11-0x10]
2f801b movaps xmm7,XMMWORD PTR [r11-0x20]
2f8020 movaps xmm8,XMMWORD PTR [r11-0x30]
2f8025 movaps xmm9,XMMWORD PTR [r11-0x40]
2f802a mov    rsp,r11
2f802d pop    r14
2f802f pop    rdi
2f8030 pop    rsi
2f8031 pop    rbx
2f8032 pop    rbp
2f8033 ret

; helpers independent pdata/next-pdata extent 2f824c..2f84e8 unwind3d31cc
2f824c mov    rax,rsp
2f824f push   rbp
2f8250 push   rbx
2f8251 push   rsi
2f8252 push   rdi
2f8253 push   r14
2f8255 lea    rbp,[rax-0x5f]
2f8259 sub    rsp,0xe0
2f8260 cmp    BYTE PTR [rip+0xdfd51],0x0        # 0x3d7fb8
2f8267 movaps XMMWORD PTR [rax-0x38],xmm6
2f826b movaps XMMWORD PTR [rax-0x48],xmm7
2f826f movaps XMMWORD PTR [rax-0x58],xmm8
2f8274 movaps XMMWORD PTR [rax-0x68],xmm9
2f8279 movaps XMMWORD PTR [rax-0x78],xmm10
2f827e je     0x2f84bb
2f8284 call   0x2dda9c
2f8289 mov    rcx,rax
2f828c mov    r14,rax
2f828f call   0x2caf08
2f8294 test   al,al
2f8296 je     0x2f84bb
2f829c mov    rcx,r14
2f829f call   0x368a84
2f82a4 mov    rcx,rax
2f82a7 mov    rsi,rax
2f82aa call   0x2caf08
2f82af test   al,al
2f82b1 je     0x2f84bb
2f82b7 mov    rcx,rsi
2f82ba call   0x371464
2f82bf mov    rcx,rax
2f82c2 mov    rbx,rax
2f82c5 call   0x2caf08
2f82ca test   al,al
2f82cc je     0x2f84bb
2f82d2 mov    rcx,rbx
2f82d5 call   0x36b938
2f82da mov    rcx,rax
2f82dd mov    rdi,rax
2f82e0 call   0x2caf08
2f82e5 test   al,al
2f82e7 je     0x2f84bb
2f82ed movss  xmm8,DWORD PTR [rbx+0x3ac]
2f82f4 
2f82f6 mov    rcx,rsi
2f82f9 call   0x37154c
2f82fe mov    rcx,rax
2f8301 mov    rdx,rax
2f8304 call   0x2caf08
2f8309 test   al,al
2f830b je     0x2f8328
2f830d mov    rcx,rdx
2f8310 call   0x37261c
2f8315 cmp    eax,0x34b73d71
2f831a jne    0x2f8328
2f831c mov    rcx,rbx
2f831f call   0x36b504
2f8324 movaps xmm8,xmm0
2f8328 movss  xmm9,DWORD PTR [rdi+0x44]
2f832e movss  xmm10,DWORD PTR [rdi+0x40]
2f8334 call   0x2e02b0
2f8339 mov    rcx,rax
2f833c mov    rdi,rax
2f833f call   0x2caf08
2f8344 test   al,al
2f8346 je     0x2f84bb
2f834c mov    rcx,rdi
2f834f call   0x2e0e9c
2f8354 test   al,al
2f8356 je     0x2f84bb
2f835c lea    rdx,[rbp-0x79]
2f8360 mov    rcx,rdi
2f8363 call   0x369790
2f8368 lea    rcx,[rbp-0x59]
2f836c call   0x3c7bbc
2f8371 mov    rdx,rax
2f8374 lea    rcx,[rbp-0x79]
2f8378 call   0x2df5b0
2f837d test   al,al
2f837f jne    0x2f84bb
2f8385 call   0x2e6a6c
2f838a lea    rdx,[rbp-0x29]
2f838e mov    rcx,r14
2f8391 mov    ebx,eax
2f8393 call   0x369164
2f8398 xorps  xmm6,xmm6
2f839b lea    rdx,[rbp-0x69]
2f839f xorps  xmm3,xmm3
2f83a2 movss  DWORD PTR [rsp+0x20],xmm6
2f83a8 mov    r8d,ebx
2f83ab mov    ecx,DWORD PTR [rax+0x8]
2f83ae movsd  xmm0,QWORD PTR [rax]
2f83b2 mov    DWORD PTR [rbp-0x61],ecx
2f83b5 mov    ecx,DWORD PTR [rbp-0x71]
2f83b8 movsd  QWORD PTR [rbp-0x69],xmm0
2f83bd movsd  xmm0,QWORD PTR [rbp-0x79]
2f83c2 mov    DWORD PTR [rbp-0x51],ecx
2f83c5 lea    rcx,[rbp-0x59]
2f83c9 movsd  QWORD PTR [rbp-0x59],xmm0
2f83ce call   0x2e2320
2f83d3 mov    cl,BYTE PTR [rip+0xdfc7f]        # 0x3d8058
2f83d9 test   al,al
2f83db jne    0x2f83e5
2f83dd test   cl,cl
2f83df je     0x2f84bb
2f83e5 cmp    BYTE PTR [rip+0xeda8d],0x0        # 0x3e5e79
2f83ec jne    0x2f83f6
2f83ee test   cl,cl
2f83f0 jne    0x2f84bb
2f83f6 lea    rdx,[rbp-0x39]
2f83fa mov    rcx,r14
2f83fd call   0x369164
2f8402 mov    r8d,0x7
2f8408 lea    rdx,[rbp-0x29]
2f840c mov    rcx,rdi
2f840f call   0x368be8
2f8414 movss  xmm2,DWORD PTR [rip+0xfffffffffff9ae40]        # 0x29325c
2f841b 
2f841c lea    rcx,[rbp-0x59]
2f8420 xorps  xmm3,xmm3
2f8423 xorps  xmm1,xmm1
2f8426 mov    rbx,rax
2f8429 call   0x3c7ba8
2f842e mov    r8,rax
2f8431 lea    rdx,[rbp-0x49]
2f8435 mov    rcx,rbx
2f8438 call   0x2df708
2f843d lea    rdx,[rbp-0x49]
2f8441 lea    rcx,[rbp-0x39]
2f8445 call   0x2dff30
2f844a movss  xmm6,DWORD PTR [rip+0xdee9a]        # 0x3d72ec
2f8451 
2f8452 addss  xmm9,xmm10
2f8457 addss  xmm6,DWORD PTR [rip+0xfffffffffff95681]        # 0x28dae0
2f845e 
2f845f mov    rcx,rsi
2f8462 movaps xmm7,xmm0
2f8465 mulss  xmm9,xmm8
2f846a mulss  xmm6,DWORD PTR [rip+0xfffffffffff9568a]        # 0x28dafc
2f8471 
2f8472 mulss  xmm9,DWORD PTR [rip+0xfffffffffff9567d]        # 0x28daf8
2f8479 
2f847b addss  xmm6,DWORD PTR [rip+0xfffffffffff95661]        # 0x28dae4
2f8482 
2f8483 mulss  xmm6,xmm9
2f8488 call   0x32bb60
2f848d addss  xmm0,xmm6
2f8491 comiss xmm0,xmm7
2f8494 jbe    0x2f84bb
2f8496 movss  xmm0,DWORD PTR [rip+0xfffffffffff95d2e]        # 0x28e1cc
2f849d 
2f849e comiss xmm0,DWORD PTR [rip+0xebdaf]        # 0x3e4254
2f84a5 jbe    0x2f84bb
2f84a7 movss  xmm0,DWORD PTR [rip+0xfffffffffff9ac21]        # 0x2930d0
2f84ae 
2f84af comiss xmm0,DWORD PTR [rip+0xdee36]        # 0x3d72ec
2f84b6 setae  al
2f84b9 jmp    0x2f84bd
2f84bb xor    al,al
2f84bd lea    r11,[rsp+0xe0]
2f84c4 
2f84c5 movaps xmm6,XMMWORD PTR [r11-0x10]
2f84ca movaps xmm7,XMMWORD PTR [r11-0x20]
2f84cf movaps xmm8,XMMWORD PTR [r11-0x30]
2f84d4 movaps xmm9,XMMWORD PTR [r11-0x40]
2f84d9 movaps xmm10,XMMWORD PTR [r11-0x50]
2f84de mov    rsp,r11
2f84e1 pop    r14
2f84e3 pop    rdi
2f84e4 pop    rsi
2f84e5 pop    rbx
2f84e6 pop    rbp
2f84e7 ret

; helpers independent pdata/next-pdata extent 2e0e20..2e0e4c unwind0
2e0e20 xor    edx,edx
2e0e22 lea    r9,[rip+0xf74e7]        # 0x3d8310
2e0e29 lea    r8,[rdx+rdx*2]
2e0e2d shl    r8,0x4
2e0e31 cmp    QWORD PTR [r9+r8*1],rcx
2e0e35 je     0x2e0e44
2e0e37 inc    edx
2e0e39 cmp    edx,0x3e8
2e0e3f jl     0x2e0e29
2e0e41 xor    eax,eax
2e0e43 ret
2e0e44 lea    rax,[r9+0x8]
2e0e48 add    rax,r8
2e0e4b ret

; helpers independent pdata/next-pdata extent 2dfe64..2dfed0 unwind3d25c0
2dfe64 rex push rbx
2dfe66 sub    rsp,0x60
2dfe6a xor    edx,edx
2dfe6c lea    r9,[rip+0xf849d]        # 0x3d8310
2dfe73 lea    r8,[rdx+rdx*2]
2dfe77 add    r8,r8
2dfe7a cmp    QWORD PTR [r9+r8*8],0x0
2dfe7f je     0x2dfe8f
2dfe81 inc    edx
2dfe83 cmp    edx,0x3e8
2dfe89 jl     0x2dfe73
2dfe8b xor    eax,eax
2dfe8d jmp    0x2dfeca
2dfe8f movss  xmm0,DWORD PTR [rsp+0x90]
2dfe96 
2dfe98 lea    rbx,[r9+r8*8]
2dfe9c mov    QWORD PTR [r9+r8*8],rcx
2dfea0 lea    rcx,[rsp+0x30]
2dfea5 movss  DWORD PTR [rsp+0x20],xmm0
2dfeab call   0x2df2e8
2dfeb0 mov    rdx,rax
2dfeb3 lea    rcx,[rbx+0x8]
2dfeb7 call   0x2df578
2dfebc lea    rcx,[rsp+0x30]
2dfec1 call   0x2df494
2dfec6 lea    rax,[rbx+0x8]
2dfeca add    rsp,0x60
2dfece pop    rbx
2dfecf ret

; helpers independent pdata/next-pdata extent 2d9540..2d955b unwind3d2038
2d9540 rex push rbx
2d9542 sub    rsp,0x20
2d9546 cvtss2sd xmm1,xmm1
2d954a mov    rbx,rcx
2d954d call   0x2d955c
2d9552 mov    rax,rbx
2d9555 add    rsp,0x20
2d9559 pop    rbx
2d955a ret

; helpers independent pdata/next-pdata extent 2df29c..2df2e6 unwind3d2130
2df29c rex push rbx
2df29e push   rbp
2df29f push   rsi
2df2a0 push   rdi
2df2a1 sub    rsp,0x28
2df2a5 mov    rsi,r8
2df2a8 mov    rbx,rdx
2df2ab mov    rbp,rcx
2df2ae call   0x3c7bbc
2df2b3 lea    rcx,[rbp+0xc]
2df2b7 call   0x3c7bbc
2df2bc mov    eax,DWORD PTR [rbx+0x8]
2df2bf movsd  xmm0,QWORD PTR [rbx]
2df2c3 movsd  QWORD PTR [rbp+0x0],xmm0
2df2c8 movsd  xmm0,QWORD PTR [rsi]
2df2cc mov    DWORD PTR [rbp+0x8],eax
2df2cf mov    eax,DWORD PTR [rsi+0x8]
2df2d2 movsd  QWORD PTR [rbp+0xc],xmm0
2df2d7 mov    DWORD PTR [rbp+0x14],eax
2df2da mov    rax,rbp
2df2dd add    rsp,0x28
2df2e1 pop    rdi
2df2e2 pop    rsi
2df2e3 pop    rbp
2df2e4 pop    rbx
2df2e5 ret

; helpers independent pdata/next-pdata extent 2e1270..2e1278 unwind0
2e1270 maxss  xmm1,xmm0
2e1274 movaps xmm0,xmm1
2e1277 ret

; helpers independent pdata/next-pdata extent 2e1278..2e12df unwind3d2040
2e1278 mov    QWORD PTR [rsp+0x8],rbx
2e127d push   rdi
2e127e sub    rsp,0x20
2e1282 mov    rdi,rcx
2e1285 mov    rbx,rdx
2e1288 mov    rcx,rdx
2e128b call   0x3c7bbc
2e1290 mov    rcx,rdi
2e1293 call   0x2e0ee8
2e1298 xorps  xmm1,xmm1
2e129b comiss xmm0,xmm1
2e129e jbe    0x2e12c5
2e12a0 movss  xmm1,DWORD PTR [rdi]
2e12a4 divss  xmm1,xmm0
2e12a8 movss  DWORD PTR [rbx],xmm1
2e12ac movss  xmm2,DWORD PTR [rdi+0x4]
2e12b1 divss  xmm2,xmm0
2e12b5 movss  DWORD PTR [rbx+0x4],xmm2
2e12ba movss  xmm1,DWORD PTR [rdi+0x8]
2e12bf divss  xmm1,xmm0
2e12c3 jmp    0x2e12cc
2e12c5 mov    QWORD PTR [rbx],0x0
2e12cc movss  DWORD PTR [rbx+0x8],xmm1
2e12d1 mov    rax,rbx
2e12d4 mov    rbx,QWORD PTR [rsp+0x30]
2e12d9 add    rsp,0x20
2e12dd pop    rdi
2e12de ret

; helpers independent pdata/next-pdata extent 2dfed0..2dff2f unwind3d2038
2dfed0 rex push rbx
2dfed2 sub    rsp,0x20
2dfed6 movss  xmm0,DWORD PTR [rcx+0x4]
2dfedb mov    rbx,rdx
2dfede mulss  xmm0,DWORD PTR [r8]
2dfee3 movss  xmm4,DWORD PTR [rcx+0x8]
2dfee8 movss  xmm3,DWORD PTR [rcx]
2dfeec movaps xmm2,xmm4
2dfeef movss  xmm1,DWORD PTR [r8+0x8]
2dfef5 mulss  xmm3,DWORD PTR [r8+0x4]
2dfefb mulss  xmm2,DWORD PTR [r8]
2dff00 mulss  xmm4,DWORD PTR [r8+0x4]
2dff06 subss  xmm3,xmm0
2dff0a movaps xmm0,xmm1
2dff0d mulss  xmm1,DWORD PTR [rcx+0x4]
2dff12 mulss  xmm0,DWORD PTR [rcx]
2dff16 mov    rcx,rdx
2dff19 subss  xmm1,xmm4
2dff1d subss  xmm2,xmm0
2dff21 call   0x3c7ba8
2dff26 mov    rax,rbx
2dff29 add    rsp,0x20
2dff2d pop    rbx
2dff2e ret

; helpers independent pdata/next-pdata extent 2e5a80..2e5b49 unwind3d2ba0
2e5a80 mov    rax,rsp
2e5a83 mov    QWORD PTR [rax+0x8],rbx
2e5a87 mov    QWORD PTR [rax+0x10],rsi
2e5a8b push   rdi
2e5a8c sub    rsp,0x70
2e5a90 mov    rbx,rcx
2e5a93 movaps XMMWORD PTR [rax-0x18],xmm6
2e5a97 mov    rsi,r8
2e5a9a mov    rdi,rdx
2e5a9d mov    r8,rbx
2e5aa0 lea    rdx,[rax-0x58]
2e5aa4 add    rcx,0xc
2e5aa8 call   0x2df6cc
2e5aad lea    rcx,[rsp+0x20]
2e5ab2 call   0x2e0ee8
2e5ab7 movaps xmm6,xmm0
2e5aba ucomiss xmm6,DWORD PTR [rip+0xfffffffffffa778b]        # 0x28d24c
2e5ac1 jp     0x2e5ad5
2e5ac3 jne    0x2e5ad5
2e5ac5 movsd  xmm0,QWORD PTR [rbx]
2e5ac9 movsd  QWORD PTR [rdi],xmm0
2e5acd mov    eax,DWORD PTR [rbx+0x8]
2e5ad0 mov    DWORD PTR [rdi+0x8],eax
2e5ad3 jmp    0x2e5b2f
2e5ad5 movaps xmm2,xmm6
2e5ad8 lea    rdx,[rsp+0x30]
2e5add lea    rcx,[rsp+0x20]
2e5ae2 call   0x2df744
2e5ae7 mov    r8,rbx
2e5aea lea    rdx,[rsp+0x40]
2e5aef mov    rcx,rsi
2e5af2 call   0x2df6cc
2e5af7 mov    rcx,rax
2e5afa lea    rdx,[rsp+0x30]
2e5aff call   0x2e5bc4
2e5b04 movaps xmm2,xmm6
2e5b07 xorps  xmm1,xmm1
2e5b0a call   0x2e5a44
2e5b0f movaps xmm2,xmm0
2e5b12 lea    rdx,[rsp+0x4c]
2e5b17 lea    rcx,[rsp+0x30]
2e5b1c call   0x2df66c
2e5b21 mov    r8,rax
2e5b24 mov    rdx,rdi
2e5b27 mov    rcx,rbx
2e5b2a call   0x2df708
2e5b2f movaps xmm6,XMMWORD PTR [rsp+0x60]
2e5b34 lea    r11,[rsp+0x70]
2e5b39 mov    rbx,QWORD PTR [r11+0x10]
2e5b3d mov    rax,rdi
2e5b40 mov    rsi,QWORD PTR [r11+0x18]
2e5b44 mov    rsp,r11
2e5b47 pop    rdi
2e5b48 ret
