; pdata function 0x2e12e0..0x2e231d unwind=0x3d2b00
2e12e0  48 8b c4                       mov    rax,rsp
2e12e3  48 89 58 08                    mov    QWORD PTR [rax+0x8],rbx
2e12e7  55                             push   rbp
2e12e8  56                             push   rsi
2e12e9  57                             push   rdi
2e12ea  41 54                          push   r12
2e12ec  41 55                          push   r13
2e12ee  41 56                          push   r14
2e12f0  41 57                          push   r15
2e12f2  48 8d a8 c8 fe ff ff           lea    rbp,[rax-0x138]
2e12f9  48 81 ec 00 02 00 00           sub    rsp,0x200
2e1300  8b 1d ca 2c 10 00              mov    ebx,DWORD PTR [rip+0x102cca]        # 0x3e3fd0
2e1306  4c 8b ea                       mov    r13,rdx
2e1309  0f 29 70 b8                    movaps XMMWORD PTR [rax-0x48],xmm6
2e130d  4c 8b e1                       mov    r12,rcx
2e1310  0f 29 78 a8                    movaps XMMWORD PTR [rax-0x58],xmm7
2e1314  44 0f 29 40 98                 movaps XMMWORD PTR [rax-0x68],xmm8
2e1319  44 0f 29 50 88                 movaps XMMWORD PTR [rax-0x78],xmm10
2e131e  44 0f 29 98 78 ff ff ff        movaps XMMWORD PTR [rax-0x88],xmm11
2e1326  44 0f 29 a0 68 ff ff ff        movaps XMMWORD PTR [rax-0x98],xmm12
2e132e  44 0f 29 a8 58 ff ff ff        movaps XMMWORD PTR [rax-0xa8],xmm13
2e1336  f6 c3 01                       test   bl,0x1
2e1339  75 1e                          jne    0x2e1359
2e133b  83 cb 01                       or     ebx,0x1
2e133e  48 8d 0d 43 2c 10 00           lea    rcx,[rip+0x102c43]        # 0x3e3f88
2e1345  89 1d 85 2c 10 00              mov    DWORD PTR [rip+0x102c85],ebx        # 0x3e3fd0
2e134b  e8 88 d2 fe ff                 call   0x2ce5d8
2e1350  48 89 05 71 2c 10 00           mov    QWORD PTR [rip+0x102c71],rax        # 0x3e3fc8
2e1357  eb 07                          jmp    0x2e1360
2e1359  48 8b 05 68 2c 10 00           mov    rax,QWORD PTR [rip+0x102c68]        # 0x3e3fc8
2e1360  f6 c3 02                       test   bl,0x2
2e1363  75 22                          jne    0x2e1387
2e1365  48 8b 0d f4 4a 0f 00           mov    rcx,QWORD PTR [rip+0xf4af4]        # 0x3d5e60
2e136c  48 8d 15 6d 2c 10 00           lea    rdx,[rip+0x102c6d]        # 0x3e3fe0
2e1373  83 cb 02                       or     ebx,0x2
2e1376  45 33 c9                       xor    r9d,r9d
2e1379  4c 8b c0                       mov    r8,rax
2e137c  89 1d 4e 2c 10 00              mov    DWORD PTR [rip+0x102c4e],ebx        # 0x3e3fd0
2e1382  e8 9d a9 fe ff                 call   0x2cbd24
2e1387  e8 10 c7 ff ff                 call   0x2dda9c
2e138c  48 8b c8                       mov    rcx,rax
2e138f  4c 8b f8                       mov    r15,rax
2e1392  e8 71 9b fe ff                 call   0x2caf08
2e1397  84 c0                          test   al,al
2e1399  75 1e                          jne    0x2e13b9
2e139b  48 8b 0d be 4a 0f 00           mov    rcx,QWORD PTR [rip+0xf4abe]        # 0x3d5e60
2e13a2  48 8d 15 37 2c 10 00           lea    rdx,[rip+0x102c37]        # 0x3e3fe0
2e13a9  4d 8b cd                       mov    r9,r13
2e13ac  4d 8b c4                       mov    r8,r12
2e13af  e8 e0 0c ff ff                 call   0x2d2094
2e13b4  e9 26 0f 00 00                 jmp    0x2e22df
2e13b9  80 3d d8 68 0f 00 00           cmp    BYTE PTR [rip+0xf68d8],0x0        # 0x3d7c98 ; CONFIG Bools.UseRageSilent value(+0x48)
2e13c0  0f 57 ff                       xorps  xmm7,xmm7
2e13c3  0f 85 58 0a 00 00              jne    0x2e1e21
2e13c9  48 8d 95 50 01 00 00           lea    rdx,[rbp+0x150]
2e13d0  48 8d 8d 50 01 00 00           lea    rcx,[rbp+0x150]
2e13d7  e8 3c e4 ff ff                 call   0x2df818 ; STRING getter=0x2df818 Strike
2e13dc  48 8b c8                       mov    rcx,rax
2e13df  e8 10 c9 fe ff                 call   0x2cdcf4
2e13e4  48 8d 55 d0                    lea    rdx,[rbp-0x30]
2e13e8  49 8b cd                       mov    rcx,r13
2e13eb  48 8b d8                       mov    rbx,rax
2e13ee  e8 25 6a ff ff                 call   0x2d7e18
2e13f3  48 8b c8                       mov    rcx,rax
2e13f6  e8 f1 c3 fe ff                 call   0x2cd7ec
2e13fb  48 8b c8                       mov    rcx,rax
2e13fe  48 8b d3                       mov    rdx,rbx
2e1401  e8 5a 95 0e 00                 call   0x3ca960
2e1406  48 8d 4d d0                    lea    rcx,[rbp-0x30]
2e140a  48 8b d8                       mov    rbx,rax
2e140d  e8 e2 b0 fe ff                 call   0x2cc4f4
2e1412  48 85 db                       test   rbx,rbx
2e1415  0f 84 06 0a 00 00              je     0x2e1e21
2e141b  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
2e1420  49 8b cf                       mov    rcx,r15
2e1423  e8 24 7e 08 00                 call   0x36924c
2e1428  f3 41 0f 10 b4 24 b8 03 00 00  movss  xmm6,DWORD PTR [r12+0x3b8]
2e1432  48 8d 95 50 01 00 00           lea    rdx,[rbp+0x150]
2e1439  48 8d 8d 50 01 00 00           lea    rcx,[rbp+0x150]
2e1440  e8 eb b2 fe ff                 call   0x2cc730
2e1445  48 8b c8                       mov    rcx,rax
2e1448  e8 57 c8 fe ff                 call   0x2cdca4
2e144d  48 8d 55 00                    lea    rdx,[rbp+0x0]
2e1451  48 8b d8                       mov    rbx,rax
2e1454  48 8d 8d 58 01 00 00           lea    rcx,[rbp+0x158]
2e145b  e8 14 e6 ff ff                 call   0x2dfa74 ; STRING getter=0x2dfa74 %9336ed0872d98b8fff022d5de288263d18c10462
2e1460  48 8b c8                       mov    rcx,rax
2e1463  e8 9c 22 00 00                 call   0x2e3704
2e1468  48 8b c8                       mov    rcx,rax
2e146b  48 8b d3                       mov    rdx,rbx
2e146e  e8 b1 2d 05 00                 call   0x334224
2e1473  48 8b c8                       mov    rcx,rax
2e1476  48 8b d0                       mov    rdx,rax
2e1479  e8 8a 9a fe ff                 call   0x2caf08
2e147e  84 c0                          test   al,al
2e1480  0f 84 9b 09 00 00              je     0x2e1e21
2e1486  48 8b ca                       mov    rcx,rdx
2e1489  e8 56 28 00 00                 call   0x2e3ce4
2e148e  48 8b c8                       mov    rcx,rax
2e1491  48 8b f8                       mov    rdi,rax
2e1494  e8 6f 9a fe ff                 call   0x2caf08
2e1499  84 c0                          test   al,al
2e149b  0f 84 80 09 00 00              je     0x2e1e21
2e14a1  0f 28 c6                       movaps xmm0,xmm6
2e14a4  e8 73 f4 ff ff                 call   0x2e091c
2e14a9  40 8a 35 f1 6d 0f 00           mov    sil,BYTE PTR [rip+0xf6df1]        # 0x3d82a1
2e14b0  44 0f 28 e8                    movaps xmm13,xmm0
2e14b4  f3 44 0f 10 15 23 c6 fa ff     movss  xmm10,DWORD PTR [rip+0xfffffffffffac623]        # 0x28dae0 ; f32=0.0333333
2e14bd  41 be 35 00 00 00              mov    r14d,0x35
2e14c3  f3 44 0f 10 1d 30 c6 fa ff     movss  xmm11,DWORD PTR [rip+0xfffffffffffac630]        # 0x28dafc ; f32=1.5
2e14cc  f2 44 0f 10 25 1b c6 fa ff     movsd  xmm12,QWORD PTR [rip+0xfffffffffffac61b]        # 0x28daf0
2e14d5  40 84 f6                       test   sil,sil
2e14d8  0f 85 63 02 00 00              jne    0x2e1741
2e14de  40 38 35 53 68 0f 00           cmp    BYTE PTR [rip+0xf6853],sil        # 0x3d7d38 ; CONFIG Bools.HeliSilentMelee value(+0x48)
2e14e5  0f 84 56 02 00 00              je     0x2e1741
2e14eb  48 8b 1d c6 5d 0f 00           mov    rbx,QWORD PTR [rip+0xf5dc6]        # 0x3d72b8
2e14f2  48 8b cb                       mov    rcx,rbx
2e14f5  e8 0e 9a fe ff                 call   0x2caf08
2e14fa  84 c0                          test   al,al
2e14fc  0f 84 3f 02 00 00              je     0x2e1741
2e1502  48 8b cb                       mov    rcx,rbx
2e1505  e8 92 f9 ff ff                 call   0x2e0e9c
2e150a  84 c0                          test   al,al
2e150c  0f 84 2f 02 00 00              je     0x2e1741
2e1512  45 8d 46 09                    lea    r8d,[r14+0x9]
2e1516  48 8b cb                       mov    rcx,rbx
2e1519  48 8d 55 80                    lea    rdx,[rbp-0x80]
2e151d  e8 c6 76 08 00                 call   0x368be8
2e1522  f2 0f 10 45 80                 movsd  xmm0,QWORD PTR [rbp-0x80]
2e1527  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
2e152c  8b 45 88                       mov    eax,DWORD PTR [rbp-0x78]
2e152f  49 8b cf                       mov    rcx,r15
2e1532  f2 0f 11 44 24 50              movsd  QWORD PTR [rsp+0x50],xmm0
2e1538  89 44 24 58                    mov    DWORD PTR [rsp+0x58],eax
2e153c  e8 6f 51 08 00                 call   0x3666b0
2e1541  0f 28 c8                       movaps xmm1,xmm0
2e1544  f3 0f 10 05 a0 5d 0f 00        movss  xmm0,DWORD PTR [rip+0xf5da0]        # 0x3d72ec
2e154c  f3 0f 58 0d fc bc fa ff        addss  xmm1,DWORD PTR [rip+0xfffffffffffabcfc]        # 0x28d250 ; f32=0.5
2e1554  f3 41 0f 58 c2                 addss  xmm0,xmm10
2e1559  f3 41 0f 59 c3                 mulss  xmm0,xmm11
2e155e  f3 0f 59 05 e2 c5 fa ff        mulss  xmm0,DWORD PTR [rip+0xfffffffffffac5e2]        # 0x28db48 ; f32=106.4
2e1566  0f 5a c0                       cvtps2pd xmm0,xmm0
2e1569  f2 41 0f 58 c4                 addsd  xmm0,xmm12
2e156e  66 0f 5a c0                    cvtpd2ps xmm0,xmm0
2e1572  0f 2f c1                       comiss xmm0,xmm1
2e1575  0f 86 bf 01 00 00              jbe    0x2e173a
2e157b  48 8b 93 e8 02 00 00           mov    rdx,QWORD PTR [rbx+0x2e8]
2e1582  48 8b ca                       mov    rcx,rdx
2e1585  e8 7e 99 fe ff                 call   0x2caf08
2e158a  84 c0                          test   al,al
2e158c  0f 84 a8 01 00 00              je     0x2e173a
2e1592  4c 8b 42 28                    mov    r8,QWORD PTR [rdx+0x28]
2e1596  49 8b c8                       mov    rcx,r8
2e1599  e8 6a 99 fe ff                 call   0x2caf08
2e159e  84 c0                          test   al,al
2e15a0  0f 84 94 01 00 00              je     0x2e173a
2e15a6  f3 41 0f 10 40 24              movss  xmm0,DWORD PTR [r8+0x24]
2e15ac  33 d2                          xor    edx,edx
2e15ae  0f 2f c7                       comiss xmm0,xmm7
2e15b1  48 8b cb                       mov    rcx,rbx
2e15b4  0f 96 c2                       setbe  dl
2e15b7  83 c2 3e                       add    edx,0x3e
2e15ba  e8 a1 76 08 00                 call   0x368c60
2e15bf  48 8b c8                       mov    rcx,rax
2e15c2  48 8b f0                       mov    rsi,rax
2e15c5  e8 3e 99 fe ff                 call   0x2caf08
2e15ca  84 c0                          test   al,al
2e15cc  0f 84 68 01 00 00              je     0x2e173a
2e15d2  41 8b d6                       mov    edx,r14d
2e15d5  49 8b cf                       mov    rcx,r15
2e15d8  e8 83 76 08 00                 call   0x368c60
2e15dd  48 8b c8                       mov    rcx,rax
2e15e0  e8 23 99 fe ff                 call   0x2caf08
2e15e5  84 c0                          test   al,al
2e15e7  0f 84 4d 01 00 00              je     0x2e173a
2e15ed  45 8b c6                       mov    r8d,r14d
2e15f0  48 8d 55 b0                    lea    rdx,[rbp-0x50]
2e15f4  49 8b cf                       mov    rcx,r15
2e15f7  e8 ec 75 08 00                 call   0x368be8
2e15fc  4c 8d 44 24 40                 lea    r8,[rsp+0x40]
2e1601  48 8b ce                       mov    rcx,rsi
2e1604  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
2e1609  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
2e160d  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
2e1610  f2 0f 11 44 24 40              movsd  QWORD PTR [rsp+0x40],xmm0
2e1616  89 44 24 48                    mov    DWORD PTR [rsp+0x48],eax
2e161a  e8 41 37 09 00                 call   0x374d60
2e161f  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
2e1624  48 8b ce                       mov    rcx,rsi
2e1627  e8 a8 31 09 00                 call   0x3747d4
2e162c  f2 0f 10 44 24 50              movsd  xmm0,QWORD PTR [rsp+0x50]
2e1632  4c 8d 44 24 40                 lea    r8,[rsp+0x40]
2e1637  8b 44 24 58                    mov    eax,DWORD PTR [rsp+0x58]
2e163b  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
2e1640  f2 0f 11 44 24 40              movsd  QWORD PTR [rsp+0x40],xmm0
2e1646  48 8d 4d 90                    lea    rcx,[rbp-0x70]
2e164a  f2 0f 10 44 24 70              movsd  xmm0,QWORD PTR [rsp+0x70]
2e1650  89 44 24 48                    mov    DWORD PTR [rsp+0x48],eax
2e1654  8b 44 24 78                    mov    eax,DWORD PTR [rsp+0x78]
2e1658  f2 0f 11 44 24 60              movsd  QWORD PTR [rsp+0x60],xmm0
2e165e  89 44 24 68                    mov    DWORD PTR [rsp+0x68],eax
2e1662  e8 35 dc ff ff                 call   0x2df29c
2e1667  0f 10 45 90                    movups xmm0,XMMWORD PTR [rbp-0x70]
2e166b  48 8d 95 50 01 00 00           lea    rdx,[rbp+0x150]
2e1672  48 89 b7 d8 00 00 00           mov    QWORD PTR [rdi+0xd8],rsi
2e1679  f2 0f 10 4d a0                 movsd  xmm1,QWORD PTR [rbp-0x60]
2e167e  48 8d 8d 50 01 00 00           lea    rcx,[rbp+0x150]
2e1685  0f 11 47 6c                    movups XMMWORD PTR [rdi+0x6c],xmm0
2e1689  c6 87 b0 00 00 00 01           mov    BYTE PTR [rdi+0xb0],0x1
2e1690  f2 0f 11 4f 7c                 movsd  QWORD PTR [rdi+0x7c],xmm1
2e1695  48 89 9f 90 00 00 00           mov    QWORD PTR [rdi+0x90],rbx
2e169c  e8 2b e5 ff ff                 call   0x2dfbcc
2e16a1  48 8b c8                       mov    rcx,rax
2e16a4  e8 6b 1f 00 00                 call   0x2e3614
2e16a9  48 8b c8                       mov    rcx,rax
2e16ac  e8 2b cf fe ff                 call   0x2ce5dc
2e16b1  f2 0f 10 44 24 30              movsd  xmm0,QWORD PTR [rsp+0x30]
2e16b7  4c 8d 44 24 60                 lea    r8,[rsp+0x60]
2e16bc  48 89 87 c0 00 00 00           mov    QWORD PTR [rdi+0xc0],rax
2e16c3  48 8d 55 b0                    lea    rdx,[rbp-0x50]
2e16c7  8b 44 24 38                    mov    eax,DWORD PTR [rsp+0x38]
2e16cb  48 8b ce                       mov    rcx,rsi
2e16ce  f2 0f 11 47 5c                 movsd  QWORD PTR [rdi+0x5c],xmm0
2e16d3  f2 0f 10 44 24 50              movsd  xmm0,QWORD PTR [rsp+0x50]
2e16d9  89 47 64                       mov    DWORD PTR [rdi+0x64],eax
2e16dc  8b 44 24 58                    mov    eax,DWORD PTR [rsp+0x58]
2e16e0  f2 0f 11 44 24 60              movsd  QWORD PTR [rsp+0x60],xmm0
2e16e6  89 44 24 68                    mov    DWORD PTR [rsp+0x68],eax
2e16ea  e8 09 35 09 00                 call   0x374bf8
2e16ef  48 8d 95 50 01 00 00           lea    rdx,[rbp+0x150]
2e16f6  48 8d 8d 50 01 00 00           lea    rcx,[rbp+0x150]
2e16fd  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
2e1701  f2 0f 11 87 a4 00 00 00        movsd  QWORD PTR [rdi+0xa4],xmm0
2e1709  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
2e170c  89 87 ac 00 00 00              mov    DWORD PTR [rdi+0xac],eax
2e1712  e8 2d e5 ff ff                 call   0x2dfc44
2e1717  48 8b c8                       mov    rcx,rax
2e171a  e8 f5 1e 00 00                 call   0x2e3614
2e171f  48 8b d0                       mov    rdx,rax
2e1722  49 8b cc                       mov    rcx,r12
2e1725  e8 4a ab 08 00                 call   0x36c274
2e172a  48 8b d7                       mov    rdx,rdi
2e172d  49 8b cc                       mov    rcx,r12
2e1730  e8 87 a7 08 00                 call   0x36bebc
2e1735  e9 a5 0b 00 00                 jmp    0x2e22df
2e173a  40 8a 35 60 6b 0f 00           mov    sil,BYTE PTR [rip+0xf6b60]        # 0x3d82a1
2e1741  80 3d 20 68 0f 00 00           cmp    BYTE PTR [rip+0xf6820],0x0        # 0x3d7f68 ; CONFIG Bools.SilentMeleePlayers value(+0x48)
2e1748  0f 84 6b 04 00 00              je     0x2e1bb9
2e174e  40 84 f6                       test   sil,sil
2e1751  0f 85 62 04 00 00              jne    0x2e1bb9
2e1757  48 8b 1d 62 5b 0f 00           mov    rbx,QWORD PTR [rip+0xf5b62]        # 0x3d72c0
2e175e  48 8b cb                       mov    rcx,rbx
2e1761  e8 a2 97 fe ff                 call   0x2caf08
2e1766  84 c0                          test   al,al
2e1768  0f 84 4b 04 00 00              je     0x2e1bb9
2e176e  48 8b cb                       mov    rcx,rbx
2e1771  e8 26 f7 ff ff                 call   0x2e0e9c
2e1776  84 c0                          test   al,al
2e1778  0f 84 3b 04 00 00              je     0x2e1bb9
2e177e  48 8b cb                       mov    rcx,rbx
2e1781  e8 32 95 08 00                 call   0x36acb8
2e1786  84 c0                          test   al,al
2e1788  0f 85 24 04 00 00              jne    0x2e1bb2
2e178e  48 8b cb                       mov    rcx,rbx
2e1791  e8 f2 9a 08 00                 call   0x36b288
2e1796  84 c0                          test   al,al
2e1798  0f 85 14 04 00 00              jne    0x2e1bb2
2e179e  45 8b c6                       mov    r8d,r14d
2e17a1  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
2e17a6  48 8b cb                       mov    rcx,rbx
2e17a9  e8 3a 74 08 00                 call   0x368be8
2e17ae  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
2e17b3  49 8b cf                       mov    rcx,r15
2e17b6  e8 91 7a 08 00                 call   0x36924c
2e17bb  f2 0f 10 44 24 50              movsd  xmm0,QWORD PTR [rsp+0x50]
2e17c1  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
2e17c6  8b 44 24 58                    mov    eax,DWORD PTR [rsp+0x58]
2e17ca  49 8b cf                       mov    rcx,r15
2e17cd  f2 0f 11 44 24 30              movsd  QWORD PTR [rsp+0x30],xmm0
2e17d3  89 44 24 38                    mov    DWORD PTR [rsp+0x38],eax
2e17d7  e8 d4 4e 08 00                 call   0x3666b0
2e17dc  f3 0f 10 35 08 5b 0f 00        movss  xmm6,DWORD PTR [rip+0xf5b08]        # 0x3d72ec
2e17e4  44 0f 28 c0                    movaps xmm8,xmm0
2e17e8  f3 44 0f 58 05 5f ba fa ff     addss  xmm8,DWORD PTR [rip+0xfffffffffffaba5f]        # 0x28d250 ; f32=0.5
2e17f1  f3 41 0f 58 f2                 addss  xmm6,xmm10
2e17f6  48 8b cb                       mov    rcx,rbx
2e17f9  f3 41 0f 59 f3                 mulss  xmm6,xmm11
2e17fe  e8 29 7c 08 00                 call   0x36942c
2e1803  0f 57 c9                       xorps  xmm1,xmm1
2e1806  f3 0f 59 c6                    mulss  xmm0,xmm6
2e180a  f3 0f 5a c8                    cvtss2sd xmm1,xmm0
2e180e  f2 41 0f 58 cc                 addsd  xmm1,xmm12
2e1813  66 0f 5a c1                    cvtpd2ps xmm0,xmm1
2e1817  41 0f 2f c0                    comiss xmm0,xmm8
2e181b  76 22                          jbe    0x2e183f
2e181d  48 8b cb                       mov    rcx,rbx
2e1820  e8 bb 88 08 00                 call   0x36a0e0
2e1825  84 c0                          test   al,al
2e1827  74 16                          je     0x2e183f
2e1829  f3 0f 10 05 03 c3 fa ff        movss  xmm0,DWORD PTR [rip+0xfffffffffffac303]        # 0x28db34 ; f32=65
2e1831  41 0f 2f c0                    comiss xmm0,xmm8
2e1835  76 08                          jbe    0x2e183f
2e1837  41 be 01 00 00 00              mov    r14d,0x1
2e183d  eb 03                          jmp    0x2e1842
2e183f  45 33 f6                       xor    r14d,r14d
2e1842  f2 0f 10 44 24 50              movsd  xmm0,QWORD PTR [rsp+0x50]
2e1848  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
2e184d  8b 44 24 58                    mov    eax,DWORD PTR [rsp+0x58]
2e1851  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2e1856  f2 0f 11 44 24 30              movsd  QWORD PTR [rsp+0x30],xmm0
2e185c  0f 57 db                       xorps  xmm3,xmm3
2e185f  f2 0f 10 44 24 60              movsd  xmm0,QWORD PTR [rsp+0x60]
2e1865  41 b8 00 00 a1 48              mov    r8d,0x48a10000
2e186b  89 44 24 38                    mov    DWORD PTR [rsp+0x38],eax
2e186f  8b 44 24 68                    mov    eax,DWORD PTR [rsp+0x68]
2e1873  f2 0f 11 44 24 40              movsd  QWORD PTR [rsp+0x40],xmm0
2e1879  f3 0f 11 7c 24 20              movss  DWORD PTR [rsp+0x20],xmm7
2e187f  89 44 24 48                    mov    DWORD PTR [rsp+0x48],eax
2e1883  e8 98 0a 00 00                 call   0x2e2320
2e1888  84 c0                          test   al,al
2e188a  0f 84 22 03 00 00              je     0x2e1bb2
2e1890  48 8b cb                       mov    rcx,rbx
2e1893  e8 48 88 08 00                 call   0x36a0e0
2e1898  33 c9                          xor    ecx,ecx
2e189a  45 0f 2f e8                    comiss xmm13,xmm8
2e189e  0f 97 c1                       seta   cl
2e18a1  84 c0                          test   al,al
2e18a3  41 0f 45 ce                    cmovne ecx,r14d
2e18a7  85 c9                          test   ecx,ecx
2e18a9  0f 84 03 03 00 00              je     0x2e1bb2
2e18af  f3 0f 10 0d 8d c2 fa ff        movss  xmm1,DWORD PTR [rip+0xfffffffffffac28d]        # 0x28db44 ; f32=100
2e18b7  0f 57 c0                       xorps  xmm0,xmm0
2e18ba  e8 9d 24 00 00                 call   0x2e3d5c
2e18bf  8b 05 33 68 0f 00              mov    eax,DWORD PTR [rip+0xf6833]        # 0x3d80f8 ; CONFIG i.SilentMeleeBone value(+0x48)
2e18c5  85 c0                          test   eax,eax
2e18c7  75 0a                          jne    0x2e18d3
2e18c9  ba 35 00 00 00                 mov    edx,0x35
2e18ce  e9 1f 01 00 00                 jmp    0x2e19f2
2e18d3  83 f8 01                       cmp    eax,0x1
2e18d6  75 08                          jne    0x2e18e0
2e18d8  8d 50 16                       lea    edx,[rax+0x16]
2e18db  e9 12 01 00 00                 jmp    0x2e19f2
2e18e0  83 f8 02                       cmp    eax,0x2
2e18e3  0f 84 f1 00 00 00              je     0x2e19da
2e18e9  b9 03 00 00 00                 mov    ecx,0x3
2e18ee  3b c1                          cmp    eax,ecx
2e18f0  75 0a                          jne    0x2e18fc
2e18f2  ba 11 00 00 00                 mov    edx,0x11
2e18f7  e9 f6 00 00 00                 jmp    0x2e19f2
2e18fc  83 f8 04                       cmp    eax,0x4
2e18ff  75 5e                          jne    0x2e195f
2e1901  0f 2f 05 38 c2 fa ff           comiss xmm0,DWORD PTR [rip+0xfffffffffffac238]        # 0x28db40 ; f32=90
2e1908  77 bf                          ja     0x2e18c9
2e190a  0f 2f 05 2b c2 fa ff           comiss xmm0,DWORD PTR [rip+0xfffffffffffac22b]        # 0x28db3c ; f32=80
2e1911  77 71                          ja     0x2e1984
2e1913  0f 2f 05 1e c2 fa ff           comiss xmm0,DWORD PTR [rip+0xfffffffffffac21e]        # 0x28db38 ; f32=70
2e191a  77 78                          ja     0x2e1994
2e191c  0f 2f 05 0d c2 fa ff           comiss xmm0,DWORD PTR [rip+0xfffffffffffac20d]        # 0x28db30 ; f32=60
2e1923  77 7f                          ja     0x2e19a4
2e1925  0f 2f 05 00 c2 fa ff           comiss xmm0,DWORD PTR [rip+0xfffffffffffac200]        # 0x28db2c ; f32=50
2e192c  0f 87 88 00 00 00              ja     0x2e19ba
2e1932  0f 2f 05 ef c1 fa ff           comiss xmm0,DWORD PTR [rip+0xfffffffffffac1ef]        # 0x28db28 ; f32=40
2e1939  77 b7                          ja     0x2e18f2
2e193b  0f 2f 05 e2 c1 fa ff           comiss xmm0,DWORD PTR [rip+0xfffffffffffac1e2]        # 0x28db24 ; f32=30
2e1942  0f 87 82 00 00 00              ja     0x2e19ca
2e1948  0f 2f 05 d1 c1 fa ff           comiss xmm0,DWORD PTR [rip+0xfffffffffffac1d1]        # 0x28db20 ; f32=20
2e194f  0f 87 85 00 00 00              ja     0x2e19da
2e1955  b8 3d 00 00 00                 mov    eax,0x3d
2e195a  e9 87 00 00 00                 jmp    0x2e19e6
2e195f  ba 35 00 00 00                 mov    edx,0x35
2e1964  83 f8 05                       cmp    eax,0x5
2e1967  0f 85 85 00 00 00              jne    0x2e19f2
2e196d  0f 2f 05 cc c1 fa ff           comiss xmm0,DWORD PTR [rip+0xfffffffffffac1cc]        # 0x28db40 ; f32=90
2e1974  76 05                          jbe    0x2e197b
2e1976  8d 50 38                       lea    edx,[rax+0x38]
2e1979  eb 77                          jmp    0x2e19f2
2e197b  0f 2f 05 ba c1 fa ff           comiss xmm0,DWORD PTR [rip+0xfffffffffffac1ba]        # 0x28db3c ; f32=80
2e1982  76 07                          jbe    0x2e198b
2e1984  ba 34 00 00 00                 mov    edx,0x34
2e1989  eb 67                          jmp    0x2e19f2
2e198b  0f 2f 05 a6 c1 fa ff           comiss xmm0,DWORD PTR [rip+0xfffffffffffac1a6]        # 0x28db38 ; f32=70
2e1992  76 07                          jbe    0x2e199b
2e1994  ba 18 00 00 00                 mov    edx,0x18
2e1999  eb 57                          jmp    0x2e19f2
2e199b  0f 2f 05 8e c1 fa ff           comiss xmm0,DWORD PTR [rip+0xfffffffffffac18e]        # 0x28db30 ; f32=60
2e19a2  76 04                          jbe    0x2e19a8
2e19a4  33 d2                          xor    edx,edx
2e19a6  eb 4a                          jmp    0x2e19f2
2e19a8  0f 2f 05 7d c1 fa ff           comiss xmm0,DWORD PTR [rip+0xfffffffffffac17d]        # 0x28db2c ; f32=50
2e19af  77 09                          ja     0x2e19ba
2e19b1  0f 2f 05 70 c1 fa ff           comiss xmm0,DWORD PTR [rip+0xfffffffffffac170]        # 0x28db28 ; f32=40
2e19b8  76 07                          jbe    0x2e19c1
2e19ba  ba 0e 00 00 00                 mov    edx,0xe
2e19bf  eb 31                          jmp    0x2e19f2
2e19c1  0f 2f 05 5c c1 fa ff           comiss xmm0,DWORD PTR [rip+0xfffffffffffac15c]        # 0x28db24 ; f32=30
2e19c8  76 07                          jbe    0x2e19d1
2e19ca  ba 14 00 00 00                 mov    edx,0x14
2e19cf  eb 21                          jmp    0x2e19f2
2e19d1  0f 2f 05 48 c1 fa ff           comiss xmm0,DWORD PTR [rip+0xfffffffffffac148]        # 0x28db20 ; f32=20
2e19d8  76 07                          jbe    0x2e19e1
2e19da  ba 1d 00 00 00                 mov    edx,0x1d
2e19df  eb 11                          jmp    0x2e19f2
2e19e1  b8 19 00 00 00                 mov    eax,0x19
2e19e6  0f 2f 05 2f c1 fa ff           comiss xmm0,DWORD PTR [rip+0xfffffffffffac12f]        # 0x28db1c ; f32=10
2e19ed  8b d1                          mov    edx,ecx
2e19ef  0f 47 d0                       cmova  edx,eax
2e19f2  48 8b cb                       mov    rcx,rbx
2e19f5  e8 66 72 08 00                 call   0x368c60
2e19fa  48 8b c8                       mov    rcx,rax
2e19fd  48 8b f0                       mov    rsi,rax
2e1a00  e8 03 95 fe ff                 call   0x2caf08
2e1a05  84 c0                          test   al,al
2e1a07  0f 84 8e f9 ff ff              je     0x2e139b
2e1a0d  41 b8 35 00 00 00              mov    r8d,0x35
2e1a13  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
2e1a18  49 8b cf                       mov    rcx,r15
2e1a1b  e8 c8 71 08 00                 call   0x368be8
2e1a20  4c 8d 44 24 30                 lea    r8,[rsp+0x30]
2e1a25  48 8b ce                       mov    rcx,rsi
2e1a28  48 8d 55 80                    lea    rdx,[rbp-0x80]
2e1a2c  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
2e1a30  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
2e1a33  f2 0f 11 44 24 30              movsd  QWORD PTR [rsp+0x30],xmm0
2e1a39  89 44 24 38                    mov    DWORD PTR [rsp+0x38],eax
2e1a3d  e8 1e 33 09 00                 call   0x374d60
2e1a42  48 8d 55 90                    lea    rdx,[rbp-0x70]
2e1a46  48 8b ce                       mov    rcx,rsi
2e1a49  e8 86 2d 09 00                 call   0x3747d4
2e1a4e  4c 8d 44 24 30                 lea    r8,[rsp+0x30]
2e1a53  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
2e1a58  48 8d 4d d0                    lea    rcx,[rbp-0x30]
2e1a5c  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
2e1a60  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
2e1a63  f2 0f 11 44 24 30              movsd  QWORD PTR [rsp+0x30],xmm0
2e1a69  f2 0f 10 44 24 70              movsd  xmm0,QWORD PTR [rsp+0x70]
2e1a6f  89 44 24 38                    mov    DWORD PTR [rsp+0x38],eax
2e1a73  8b 44 24 78                    mov    eax,DWORD PTR [rsp+0x78]
2e1a77  f2 0f 11 44 24 40              movsd  QWORD PTR [rsp+0x40],xmm0
2e1a7d  89 44 24 48                    mov    DWORD PTR [rsp+0x48],eax
2e1a81  e8 16 d8 ff ff                 call   0x2df29c
2e1a86  0f 10 45 d0                    movups xmm0,XMMWORD PTR [rbp-0x30]
2e1a8a  48 8d 95 50 01 00 00           lea    rdx,[rbp+0x150]
2e1a91  48 89 b7 d8 00 00 00           mov    QWORD PTR [rdi+0xd8],rsi
2e1a98  f2 0f 10 4d e0                 movsd  xmm1,QWORD PTR [rbp-0x20]
2e1a9d  48 8d 8d 50 01 00 00           lea    rcx,[rbp+0x150]
2e1aa4  0f 11 47 6c                    movups XMMWORD PTR [rdi+0x6c],xmm0
2e1aa8  c6 87 b0 00 00 00 01           mov    BYTE PTR [rdi+0xb0],0x1
2e1aaf  f2 0f 11 4f 7c                 movsd  QWORD PTR [rdi+0x7c],xmm1
2e1ab4  48 89 9f 90 00 00 00           mov    QWORD PTR [rdi+0x90],rbx
2e1abb  e8 3c e2 ff ff                 call   0x2dfcfc ; STRING getter=0x2dfcfc Flesh
2e1ac0  48 8b c8                       mov    rcx,rax
2e1ac3  e8 14 6a ff ff                 call   0x2d84dc
2e1ac8  48 8b c8                       mov    rcx,rax
2e1acb  e8 0c cb fe ff                 call   0x2ce5dc
2e1ad0  48 8d 55 90                    lea    rdx,[rbp-0x70]
2e1ad4  48 89 87 c0 00 00 00           mov    QWORD PTR [rdi+0xc0],rax
2e1adb  48 8b ce                       mov    rcx,rsi
2e1ade  e8 f1 2c 09 00                 call   0x3747d4
2e1ae3  4c 8d 44 24 30                 lea    r8,[rsp+0x30]
2e1ae8  48 8b ce                       mov    rcx,rsi
2e1aeb  48 8d 55 b0                    lea    rdx,[rbp-0x50]
2e1aef  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
2e1af3  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
2e1af6  f2 0f 11 44 24 30              movsd  QWORD PTR [rsp+0x30],xmm0
2e1afc  89 44 24 38                    mov    DWORD PTR [rsp+0x38],eax
2e1b00  e8 5b 32 09 00                 call   0x374d60
2e1b05  48 8d 4d b0                    lea    rcx,[rbp-0x50]
2e1b09  45 85 f6                       test   r14d,r14d
2e1b0c  48 8d 45 80                    lea    rax,[rbp-0x80]
2e1b10  48 0f 44 c1                    cmove  rax,rcx
2e1b14  48 8d 55 90                    lea    rdx,[rbp-0x70]
2e1b18  48 8b ce                       mov    rcx,rsi
2e1b1b  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
2e1b1f  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
2e1b22  f2 0f 11 47 5c                 movsd  QWORD PTR [rdi+0x5c],xmm0
2e1b27  89 47 64                       mov    DWORD PTR [rdi+0x64],eax
2e1b2a  e8 a5 2c 09 00                 call   0x3747d4
2e1b2f  4c 8d 44 24 30                 lea    r8,[rsp+0x30]
2e1b34  48 8b ce                       mov    rcx,rsi
2e1b37  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
2e1b3c  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
2e1b40  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
2e1b43  f2 0f 11 44 24 30              movsd  QWORD PTR [rsp+0x30],xmm0
2e1b49  89 44 24 38                    mov    DWORD PTR [rsp+0x38],eax
2e1b4d  e8 a6 30 09 00                 call   0x374bf8
2e1b52  48 8d 95 50 01 00 00           lea    rdx,[rbp+0x150]
2e1b59  48 8d 8d 50 01 00 00           lea    rcx,[rbp+0x150]
2e1b60  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
2e1b64  f2 0f 11 87 a4 00 00 00        movsd  QWORD PTR [rdi+0xa4],xmm0
2e1b6c  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
2e1b6f  89 87 ac 00 00 00              mov    DWORD PTR [rdi+0xac],eax
2e1b75  e8 ca e0 ff ff                 call   0x2dfc44
2e1b7a  48 8b c8                       mov    rcx,rax
2e1b7d  e8 92 1a 00 00                 call   0x2e3614
2e1b82  48 8b d0                       mov    rdx,rax
2e1b85  49 8b cc                       mov    rcx,r12
2e1b88  e8 e7 a6 08 00                 call   0x36c274
2e1b8d  48 8b d7                       mov    rdx,rdi
2e1b90  49 8b cc                       mov    rcx,r12
2e1b93  e8 24 a3 08 00                 call   0x36bebc
2e1b98  80 3d 39 62 0f 00 00           cmp    BYTE PTR [rip+0xf6239],0x0        # 0x3d7dd8 ; CONFIG Bools.HitChams value(+0x48)
2e1b9f  0f 84 3a 07 00 00              je     0x2e22df
2e1ba5  48 8b cb                       mov    rcx,rbx
2e1ba8  e8 b7 88 08 00                 call   0x36a464
2e1bad  e9 2d 07 00 00                 jmp    0x2e22df
2e1bb2  40 8a 35 e8 66 0f 00           mov    sil,BYTE PTR [rip+0xf66e8]        # 0x3d82a1
2e1bb9  80 3d 58 63 0f 00 00           cmp    BYTE PTR [rip+0xf6358],0x0        # 0x3d7f18 ; CONFIG Bools.SilentFarmOre value(+0x48)
2e1bc0  75 16                          jne    0x2e1bd8
2e1bc2  80 3d 78 66 0f 00 00           cmp    BYTE PTR [rip+0xf6678],0x0        # 0x3d8241
2e1bc9  0f 84 52 02 00 00              je     0x2e1e21
2e1bcf  40 84 f6                       test   sil,sil
2e1bd2  0f 85 49 02 00 00              jne    0x2e1e21
2e1bd8  48 8b 35 e9 56 0f 00           mov    rsi,QWORD PTR [rip+0xf56e9]        # 0x3d72c8
2e1bdf  48 8b ce                       mov    rcx,rsi
2e1be2  e8 21 93 fe ff                 call   0x2caf08
2e1be7  84 c0                          test   al,al
2e1be9  0f 84 32 02 00 00              je     0x2e1e21
2e1bef  48 8b ce                       mov    rcx,rsi
2e1bf2  e8 a5 f2 ff ff                 call   0x2e0e9c
2e1bf7  84 c0                          test   al,al
2e1bf9  0f 84 22 02 00 00              je     0x2e1e21
2e1bff  48 8b ce                       mov    rcx,rsi
2e1c02  e8 e9 f0 ff ff                 call   0x2e0cf0
2e1c07  48 8b c8                       mov    rcx,rax
2e1c0a  4c 8b c0                       mov    r8,rax
2e1c0d  e8 f6 92 fe ff                 call   0x2caf08
2e1c12  84 c0                          test   al,al
2e1c14  0f 84 07 02 00 00              je     0x2e1e21
2e1c1a  48 8d 55 90                    lea    rdx,[rbp-0x70]
2e1c1e  49 8b c8                       mov    rcx,r8
2e1c21  e8 ae 2b 09 00                 call   0x3747d4
2e1c26  f3 0f 10 15 ba be fa ff        movss  xmm2,DWORD PTR [rip+0xfffffffffffabeba]        # 0x28dae8 ; f32=0.4
2e1c2e  48 8d 4d b0                    lea    rcx,[rbp-0x50]
2e1c32  0f 57 db                       xorps  xmm3,xmm3
2e1c35  0f 57 c9                       xorps  xmm1,xmm1
2e1c38  48 8b d8                       mov    rbx,rax
2e1c3b  e8 68 5f 0e 00                 call   0x3c7ba8
2e1c40  4c 8b c0                       mov    r8,rax
2e1c43  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
2e1c48  48 8b cb                       mov    rcx,rbx
2e1c4b  e8 b8 da ff ff                 call   0x2df708
2e1c50  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
2e1c55  49 8b cf                       mov    rcx,r15
2e1c58  e8 3f 6f 08 00                 call   0x368b9c
2e1c5d  f2 0f 10 44 24 50              movsd  xmm0,QWORD PTR [rsp+0x50]
2e1c63  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
2e1c68  8b 44 24 58                    mov    eax,DWORD PTR [rsp+0x58]
2e1c6c  49 8b cf                       mov    rcx,r15
2e1c6f  f2 0f 11 44 24 30              movsd  QWORD PTR [rsp+0x30],xmm0
2e1c75  89 44 24 38                    mov    DWORD PTR [rsp+0x38],eax
2e1c79  e8 32 4a 08 00                 call   0x3666b0
2e1c7e  f3 0f 58 05 ca b5 fa ff        addss  xmm0,DWORD PTR [rip+0xfffffffffffab5ca]        # 0x28d250 ; f32=0.5
2e1c86  44 0f 2f e8                    comiss xmm13,xmm0
2e1c8a  0f 86 91 01 00 00              jbe    0x2e1e21
2e1c90  ba 01 00 00 00                 mov    edx,0x1
2e1c95  49 8b cc                       mov    rcx,r12
2e1c98  e8 f7 97 08 00                 call   0x36b494
2e1c9d  84 c0                          test   al,al
2e1c9f  0f 84 7c 01 00 00              je     0x2e1e21
2e1ca5  f2 0f 10 44 24 50              movsd  xmm0,QWORD PTR [rsp+0x50]
2e1cab  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
2e1cb0  8b 44 24 58                    mov    eax,DWORD PTR [rsp+0x58]
2e1cb4  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2e1cb9  f2 0f 11 44 24 30              movsd  QWORD PTR [rsp+0x30],xmm0
2e1cbf  0f 57 db                       xorps  xmm3,xmm3
2e1cc2  f2 0f 10 44 24 60              movsd  xmm0,QWORD PTR [rsp+0x60]
2e1cc8  41 b8 00 00 a1 48              mov    r8d,0x48a10000
2e1cce  89 44 24 38                    mov    DWORD PTR [rsp+0x38],eax
2e1cd2  8b 44 24 68                    mov    eax,DWORD PTR [rsp+0x68]
2e1cd6  f2 0f 11 44 24 40              movsd  QWORD PTR [rsp+0x40],xmm0
2e1cdc  f3 0f 11 7c 24 20              movss  DWORD PTR [rsp+0x20],xmm7
2e1ce2  89 44 24 48                    mov    DWORD PTR [rsp+0x48],eax
2e1ce6  e8 35 06 00 00                 call   0x2e2320
2e1ceb  84 c0                          test   al,al
2e1ced  0f 84 2e 01 00 00              je     0x2e1e21
2e1cf3  48 8b ce                       mov    rcx,rsi
2e1cf6  e8 f5 ef ff ff                 call   0x2e0cf0
2e1cfb  48 8b c8                       mov    rcx,rax
2e1cfe  48 8b d8                       mov    rbx,rax
2e1d01  e8 02 92 fe ff                 call   0x2caf08
2e1d06  84 c0                          test   al,al
2e1d08  0f 84 13 01 00 00              je     0x2e1e21
2e1d0e  8b 4c 24 58                    mov    ecx,DWORD PTR [rsp+0x58]
2e1d12  4c 8d 44 24 30                 lea    r8,[rsp+0x30]
2e1d17  f2 0f 10 44 24 50              movsd  xmm0,QWORD PTR [rsp+0x50]
2e1d1d  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
2e1d22  89 4c 24 38                    mov    DWORD PTR [rsp+0x38],ecx
2e1d26  8b 4c 24 78                    mov    ecx,DWORD PTR [rsp+0x78]
2e1d2a  f2 0f 11 44 24 30              movsd  QWORD PTR [rsp+0x30],xmm0
2e1d30  f2 0f 10 44 24 70              movsd  xmm0,QWORD PTR [rsp+0x70]
2e1d36  89 4c 24 48                    mov    DWORD PTR [rsp+0x48],ecx
2e1d3a  48 8d 4d d0                    lea    rcx,[rbp-0x30]
2e1d3e  f2 0f 11 44 24 40              movsd  QWORD PTR [rsp+0x40],xmm0
2e1d44  e8 53 d5 ff ff                 call   0x2df29c
2e1d49  0f 10 45 d0                    movups xmm0,XMMWORD PTR [rbp-0x30]
2e1d4d  48 8d 95 50 01 00 00           lea    rdx,[rbp+0x150]
2e1d54  48 89 9f d8 00 00 00           mov    QWORD PTR [rdi+0xd8],rbx
2e1d5b  f2 0f 10 4d e0                 movsd  xmm1,QWORD PTR [rbp-0x20]
2e1d60  48 8d 8d 50 01 00 00           lea    rcx,[rbp+0x150]
2e1d67  0f 11 47 6c                    movups XMMWORD PTR [rdi+0x6c],xmm0
2e1d6b  c6 87 b0 00 00 00 01           mov    BYTE PTR [rdi+0xb0],0x1
2e1d72  f2 0f 11 4f 7c                 movsd  QWORD PTR [rdi+0x7c],xmm1
2e1d77  48 89 b7 90 00 00 00           mov    QWORD PTR [rdi+0x90],rsi
2e1d7e  e8 49 de ff ff                 call   0x2dfbcc
2e1d83  48 8b c8                       mov    rcx,rax
2e1d86  e8 89 18 00 00                 call   0x2e3614
2e1d8b  48 8b c8                       mov    rcx,rax
2e1d8e  e8 49 c8 fe ff                 call   0x2ce5dc
2e1d93  f2 0f 10 44 24 50              movsd  xmm0,QWORD PTR [rsp+0x50]
2e1d99  4c 8d 44 24 30                 lea    r8,[rsp+0x30]
2e1d9e  48 89 87 c0 00 00 00           mov    QWORD PTR [rdi+0xc0],rax
2e1da5  48 8d 55 80                    lea    rdx,[rbp-0x80]
2e1da9  8b 44 24 58                    mov    eax,DWORD PTR [rsp+0x58]
2e1dad  48 8b cb                       mov    rcx,rbx
2e1db0  f2 0f 11 44 24 30              movsd  QWORD PTR [rsp+0x30],xmm0
2e1db6  89 44 24 38                    mov    DWORD PTR [rsp+0x38],eax
2e1dba  e8 a1 2f 09 00                 call   0x374d60
2e1dbf  f2 0f 10 45 80                 movsd  xmm0,QWORD PTR [rbp-0x80]
2e1dc4  4c 8d 44 24 30                 lea    r8,[rsp+0x30]
2e1dc9  8b 45 88                       mov    eax,DWORD PTR [rbp-0x78]
2e1dcc  48 8d 55 90                    lea    rdx,[rbp-0x70]
2e1dd0  f2 0f 11 47 5c                 movsd  QWORD PTR [rdi+0x5c],xmm0
2e1dd5  48 8b cb                       mov    rcx,rbx
2e1dd8  f2 0f 10 44 24 50              movsd  xmm0,QWORD PTR [rsp+0x50]
2e1dde  89 47 64                       mov    DWORD PTR [rdi+0x64],eax
2e1de1  8b 44 24 58                    mov    eax,DWORD PTR [rsp+0x58]
2e1de5  f2 0f 11 44 24 30              movsd  QWORD PTR [rsp+0x30],xmm0
2e1deb  89 44 24 38                    mov    DWORD PTR [rsp+0x38],eax
2e1def  e8 04 2e 09 00                 call   0x374bf8
2e1df4  48 8d 95 50 01 00 00           lea    rdx,[rbp+0x150]
2e1dfb  48 8d 8d 50 01 00 00           lea    rcx,[rbp+0x150]
2e1e02  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
2e1e06  f2 0f 11 87 a4 00 00 00        movsd  QWORD PTR [rdi+0xa4],xmm0
2e1e0e  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
2e1e11  89 87 ac 00 00 00              mov    DWORD PTR [rdi+0xac],eax
2e1e17  e8 28 de ff ff                 call   0x2dfc44
2e1e1c  e9 f6 f8 ff ff                 jmp    0x2e1717
2e1e21  49 8b cf                       mov    rcx,r15
2e1e24  e8 6f 74 08 00                 call   0x369298
2e1e29  48 8b c8                       mov    rcx,rax
2e1e2c  48 89 85 50 01 00 00           mov    QWORD PTR [rbp+0x150],rax
2e1e33  e8 d0 90 fe ff                 call   0x2caf08
2e1e38  84 c0                          test   al,al
2e1e3a  0f 84 5b f5 ff ff              je     0x2e139b
2e1e40  49 8b cf                       mov    rcx,r15
2e1e43  e8 8c 62 08 00                 call   0x3680d4
2e1e48  48 8b c8                       mov    rcx,rax
2e1e4b  48 89 44 24 50                 mov    QWORD PTR [rsp+0x50],rax
2e1e50  48 8b f8                       mov    rdi,rax
2e1e53  e8 b0 90 fe ff                 call   0x2caf08
2e1e58  84 c0                          test   al,al
2e1e5a  0f 84 3b f5 ff ff              je     0x2e139b
2e1e60  49 8b cf                       mov    rcx,r15
2e1e63  e8 1c 6c 08 00                 call   0x368a84
2e1e68  48 8b c8                       mov    rcx,rax
2e1e6b  48 8b d0                       mov    rdx,rax
2e1e6e  e8 95 90 fe ff                 call   0x2caf08
2e1e73  84 c0                          test   al,al
2e1e75  0f 84 20 f5 ff ff              je     0x2e139b
2e1e7b  48 8b ca                       mov    rcx,rdx
2e1e7e  e8 ad f7 08 00                 call   0x371630
2e1e83  48 8b c8                       mov    rcx,rax
2e1e86  4c 8b f0                       mov    r14,rax
2e1e89  e8 7a 90 fe ff                 call   0x2caf08
2e1e8e  84 c0                          test   al,al
2e1e90  0f 84 05 f5 ff ff              je     0x2e139b
2e1e96  49 8b ce                       mov    rcx,r14
2e1e99  e8 1e 0c 09 00                 call   0x372abc
2e1e9e  48 8b c8                       mov    rcx,rax
2e1ea1  48 89 85 58 01 00 00           mov    QWORD PTR [rbp+0x158],rax
2e1ea8  48 8b d8                       mov    rbx,rax
2e1eab  e8 58 90 fe ff                 call   0x2caf08
2e1eb0  84 c0                          test   al,al
2e1eb2  0f 84 e3 f4 ff ff              je     0x2e139b
2e1eb8  80 3d 29 5e 0f 00 00           cmp    BYTE PTR [rip+0xf5e29],0x0        # 0x3d7ce8 ; CONFIG Bools.IncreaseVelocity value(+0x48)
2e1ebf  f3 45 0f 10 5e 3c              movss  xmm11,DWORD PTR [r14+0x3c]
2e1ec5  f3 45 0f 10 46 40              movss  xmm8,DWORD PTR [r14+0x40]
2e1ecb  f3 45 0f 10 66 44              movss  xmm12,DWORD PTR [r14+0x44]
2e1ed1  74 12                          je     0x2e1ee5
2e1ed3  f3 0f 10 35 cd 61 0f 00        movss  xmm6,DWORD PTR [rip+0xf61cd]        # 0x3d80a8 ; CONFIG F.projectilespeed value(+0x48)
2e1edb  f3 0f 5d 35 15 bc fa ff        minss  xmm6,DWORD PTR [rip+0xfffffffffffabc15]        # 0x28daf8
2e1ee3  eb 08                          jmp    0x2e1eed
2e1ee5  f3 0f 10 35 67 b3 fa ff        movss  xmm6,DWORD PTR [rip+0xfffffffffffab367]        # 0x28d254 ; f32=1
2e1eed  f3 44 0f 10 57 50              movss  xmm10,DWORD PTR [rdi+0x50]
2e1ef3  48 8d 55 f0                    lea    rdx,[rbp-0x10]
2e1ef7  49 8b cf                       mov    rcx,r15
2e1efa  f3 41 0f 59 f0                 mulss  xmm6,xmm8
2e1eff  e8 08 73 08 00                 call   0x36920c
2e1f04  80 3d 6d 5f 0f 00 00           cmp    BYTE PTR [rip+0xf5f6d],0x0        # 0x3d7e78 ; CONFIG Bools.PSilent value(+0x48)
2e1f0b  0f 84 6b 03 00 00              je     0x2e227c
2e1f11  80 3d 88 53 0f 00 00           cmp    BYTE PTR [rip+0xf5388],0x0        # 0x3d72a0
2e1f18  0f 84 5e 03 00 00              je     0x2e227c
2e1f1e  e8 8d e3 ff ff                 call   0x2e02b0
2e1f23  48 8b c8                       mov    rcx,rax
2e1f26  48 8b f0                       mov    rsi,rax
2e1f29  e8 da 8f fe ff                 call   0x2caf08
2e1f2e  84 c0                          test   al,al
2e1f30  0f 84 36 03 00 00              je     0x2e226c
2e1f36  48 8b ce                       mov    rcx,rsi
2e1f39  e8 5e ef ff ff                 call   0x2e0e9c
2e1f3e  84 c0                          test   al,al
2e1f40  0f 84 26 03 00 00              je     0x2e226c
2e1f46  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
2e1f4b  48 8b ce                       mov    rcx,rsi
2e1f4e  e8 3d 78 08 00                 call   0x369790
2e1f53  80 3d fe 60 0f 00 00           cmp    BYTE PTR [rip+0xf60fe],0x0        # 0x3d8058 ; CONFIG Bools.DoFatBulletHit value(+0x48)
2e1f5a  74 34                          je     0x2e1f90
2e1f5c  48 8d 4d 90                    lea    rcx,[rbp-0x70]
2e1f60  e8 57 5c 0e 00                 call   0x3c7bbc
2e1f65  48 8b d0                       mov    rdx,rax
2e1f68  48 8d 0d 61 53 0f 00           lea    rcx,[rip+0xf5361]        # 0x3d72d0
2e1f6f  e8 68 d6 ff ff                 call   0x2df5dc
2e1f74  84 c0                          test   al,al
2e1f76  74 18                          je     0x2e1f90
2e1f78  f2 0f 10 05 50 53 0f 00        movsd  xmm0,QWORD PTR [rip+0xf5350]        # 0x3d72d0
2e1f80  8b 05 52 53 0f 00              mov    eax,DWORD PTR [rip+0xf5352]        # 0x3d72d8
2e1f86  f2 0f 11 44 24 70              movsd  QWORD PTR [rsp+0x70],xmm0
2e1f8c  89 44 24 78                    mov    DWORD PTR [rsp+0x78],eax
2e1f90  80 3d 31 5f 0f 00 00           cmp    BYTE PTR [rip+0xf5f31],0x0        # 0x3d7ec8 ; CONFIG Bools.Pierce value(+0x48)
2e1f97  74 3d                          je     0x2e1fd6
2e1f99  48 8d 4d 90                    lea    rcx,[rbp-0x70]
2e1f9d  e8 1a 5c 0e 00                 call   0x3c7bbc
2e1fa2  48 8b d0                       mov    rdx,rax
2e1fa5  48 8d 0d 34 53 0f 00           lea    rcx,[rip+0xf5334]        # 0x3d72e0
2e1fac  e8 2b d6 ff ff                 call   0x2df5dc
2e1fb1  84 c0                          test   al,al
2e1fb3  74 21                          je     0x2e1fd6
2e1fb5  80 3d 45 63 0f 00 00           cmp    BYTE PTR [rip+0xf6345],0x0        # 0x3d8301
2e1fbc  74 18                          je     0x2e1fd6
2e1fbe  f2 0f 10 05 1a 53 0f 00        movsd  xmm0,QWORD PTR [rip+0xf531a]        # 0x3d72e0
2e1fc6  8b 05 1c 53 0f 00              mov    eax,DWORD PTR [rip+0xf531c]        # 0x3d72e8
2e1fcc  f2 0f 11 44 24 70              movsd  QWORD PTR [rsp+0x70],xmm0
2e1fd2  89 44 24 78                    mov    DWORD PTR [rsp+0x78],eax
2e1fd6  48 8d 4d 90                    lea    rcx,[rbp-0x70]
2e1fda  e8 dd 5b 0e 00                 call   0x3c7bbc
2e1fdf  48 8b d0                       mov    rdx,rax
2e1fe2  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
2e1fe7  e8 f0 d5 ff ff                 call   0x2df5dc
2e1fec  84 c0                          test   al,al
2e1fee  0f 84 78 02 00 00              je     0x2e226c
2e1ff4  f3 0f 10 4b 44                 movss  xmm1,DWORD PTR [rbx+0x44]
2e1ff9  48 8d 4d 00                    lea    rcx,[rbp+0x0]
2e1ffd  e8 3e 75 ff ff                 call   0x2d9540
2e2002  f3 0f 10 4b 34                 movss  xmm1,DWORD PTR [rbx+0x34]
2e2007  48 8d 4d 70                    lea    rcx,[rbp+0x70]
2e200b  48 8b f0                       mov    rsi,rax
2e200e  e8 2d 75 ff ff                 call   0x2d9540
2e2013  f3 0f 10 4b 38                 movss  xmm1,DWORD PTR [rbx+0x38]
2e2018  48 8d 4d 50                    lea    rcx,[rbp+0x50]
2e201c  48 8b f8                       mov    rdi,rax
2e201f  e8 1c 75 ff ff                 call   0x2d9540
2e2024  0f 28 ce                       movaps xmm1,xmm6
2e2027  48 8d 4d 30                    lea    rcx,[rbp+0x30]
2e202b  48 8b d8                       mov    rbx,rax
2e202e  e8 0d 75 ff ff                 call   0x2d9540
2e2033  48 8b d0                       mov    rdx,rax
2e2036  48 8d 4d b0                    lea    rcx,[rbp-0x50]
2e203a  4c 8b c3                       mov    r8,rbx
2e203d  e8 fe ce fe ff                 call   0x2cef40
2e2042  48 8b d0                       mov    rdx,rax
2e2045  48 8d 4d 90                    lea    rcx,[rbp-0x70]
2e2049  4c 8b c7                       mov    r8,rdi
2e204c  e8 ef ce fe ff                 call   0x2cef40
2e2051  48 8b d0                       mov    rdx,rax
2e2054  48 8d 4d d0                    lea    rcx,[rbp-0x30]
2e2058  4c 8b c6                       mov    r8,rsi
2e205b  e8 e0 ce fe ff                 call   0x2cef40
2e2060  48 8d 4d 90                    lea    rcx,[rbp-0x70]
2e2064  e8 8b a4 fe ff                 call   0x2cc4f4
2e2069  48 8d 4d b0                    lea    rcx,[rbp-0x50]
2e206d  e8 82 a4 fe ff                 call   0x2cc4f4
2e2072  48 8d 4d 30                    lea    rcx,[rbp+0x30]
2e2076  e8 79 a4 fe ff                 call   0x2cc4f4
2e207b  48 8d 4d 50                    lea    rcx,[rbp+0x50]
2e207f  e8 70 a4 fe ff                 call   0x2cc4f4
2e2084  48 8d 4d 70                    lea    rcx,[rbp+0x70]
2e2088  e8 67 a4 fe ff                 call   0x2cc4f4
2e208d  48 8d 4d 00                    lea    rcx,[rbp+0x0]
2e2091  e8 5e a4 fe ff                 call   0x2cc4f4
2e2096  48 8d 4d d0                    lea    rcx,[rbp-0x30]
2e209a  e8 4d b7 fe ff                 call   0x2cd7ec
2e209f  48 8b c8                       mov    rcx,rax
2e20a2  e8 ad 42 ff ff                 call   0x2d6354
2e20a7  48 8b c8                       mov    rcx,rax
2e20aa  48 8b f8                       mov    rdi,rax
2e20ad  e8 6e ed ff ff                 call   0x2e0e20
2e20b2  48 8b d8                       mov    rbx,rax
2e20b5  48 85 c0                       test   rax,rax
2e20b8  75 37                          jne    0x2e20f1
2e20ba  48 8b 85 58 01 00 00           mov    rax,QWORD PTR [rbp+0x158]
2e20c1  0f 28 ce                       movaps xmm1,xmm6
2e20c4  48 8b cf                       mov    rcx,rdi
2e20c7  f3 0f 10 40 44                 movss  xmm0,DWORD PTR [rax+0x44]
2e20cc  f3 0f 10 58 34                 movss  xmm3,DWORD PTR [rax+0x34]
2e20d1  f3 0f 10 50 38                 movss  xmm2,DWORD PTR [rax+0x38]
2e20d6  f3 0f 11 44 24 20              movss  DWORD PTR [rsp+0x20],xmm0
2e20dc  e8 83 dd ff ff                 call   0x2dfe64
2e20e1  48 8b d8                       mov    rbx,rax
2e20e4  48 85 c0                       test   rax,rax
2e20e7  74 08                          je     0x2e20f1
2e20e9  48 8b c8                       mov    rcx,rax
2e20ec  e8 7f 19 00 00                 call   0x2e3a70
2e20f1  48 85 db                       test   rbx,rbx
2e20f4  0f 84 5b 01 00 00              je     0x2e2255
2e20fa  8b 4c 24 78                    mov    ecx,DWORD PTR [rsp+0x78]
2e20fe  48 8d 55 90                    lea    rdx,[rbp-0x70]
2e2102  f2 0f 10 05 3e 51 0f 00        movsd  xmm0,QWORD PTR [rip+0xf513e]        # 0x3d7248
2e210a  f2 0f 10 4c 24 70              movsd  xmm1,QWORD PTR [rsp+0x70]
2e2110  8b 05 3a 51 0f 00              mov    eax,DWORD PTR [rip+0xf513a]        # 0x3d7250
2e2116  89 4c 24 68                    mov    DWORD PTR [rsp+0x68],ecx
2e211a  49 8b cf                       mov    rcx,r15
2e211d  f2 0f 11 44 24 30              movsd  QWORD PTR [rsp+0x30],xmm0
2e2123  89 44 24 38                    mov    DWORD PTR [rsp+0x38],eax
2e2127  f2 0f 11 4c 24 60              movsd  QWORD PTR [rsp+0x60],xmm1
2e212d  e8 32 70 08 00                 call   0x369164
2e2132  4c 8d 4c 24 30                 lea    r9,[rsp+0x30]
2e2137  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
2e213c  4c 8d 44 24 60                 lea    r8,[rsp+0x60]
2e2141  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
2e2146  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
2e214a  48 8d 4d 80                    lea    rcx,[rbp-0x80]
2e214e  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
2e2151  f2 0f 11 44 24 40              movsd  QWORD PTR [rsp+0x40],xmm0
2e2157  89 44 24 48                    mov    DWORD PTR [rsp+0x48],eax
2e215b  e8 14 02 00 00                 call   0x2e2374
2e2160  48 8d 4d 80                    lea    rcx,[rbp-0x80]
2e2164  e8 ef 19 00 00                 call   0x2e3b58
2e2169  84 c0                          test   al,al
2e216b  0f 85 e4 00 00 00              jne    0x2e2255
2e2171  48 8d 55 90                    lea    rdx,[rbp-0x70]
2e2175  48 8d 4d 80                    lea    rcx,[rbp-0x80]
2e2179  e8 fa f0 ff ff                 call   0x2e1278
2e217e  48 8b c8                       mov    rcx,rax
2e2181  48 8d 55 b0                    lea    rdx,[rbp-0x50]
2e2185  0f 28 d6                       movaps xmm2,xmm6
2e2188  e8 df d4 ff ff                 call   0x2df66c
2e218d  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
2e2192  49 8b cf                       mov    rcx,r15
2e2195  48 8b d8                       mov    rbx,rax
2e2198  e8 c7 6f 08 00                 call   0x369164
2e219d  4c 8b c0                       mov    r8,rax
2e21a0  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
2e21a5  48 8b cb                       mov    rcx,rbx
2e21a8  e8 5b d5 ff ff                 call   0x2df708
2e21ad  48 8d 55 90                    lea    rdx,[rbp-0x70]
2e21b1  49 8b cf                       mov    rcx,r15
2e21b4  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
2e21b8  f2 0f 11 44 24 70              movsd  QWORD PTR [rsp+0x70],xmm0
2e21be  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
2e21c1  89 44 24 78                    mov    DWORD PTR [rsp+0x78],eax
2e21c5  e8 9a 6f 08 00                 call   0x369164
2e21ca  4c 8b c0                       mov    r8,rax
2e21cd  48 8d 55 b0                    lea    rdx,[rbp-0x50]
2e21d1  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
2e21d6  e8 f1 d4 ff ff                 call   0x2df6cc
2e21db  48 8b c8                       mov    rcx,rax
2e21de  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
2e21e3  e8 90 f0 ff ff                 call   0x2e1278
2e21e8  f3 0f 10 15 64 b0 fa ff        movss  xmm2,DWORD PTR [rip+0xfffffffffffab064]        # 0x28d254 ; f32=1
2e21f0  48 8d 4d 90                    lea    rcx,[rbp-0x70]
2e21f4  0f 57 db                       xorps  xmm3,xmm3
2e21f7  0f 57 c9                       xorps  xmm1,xmm1
2e21fa  e8 a9 59 0e 00                 call   0x3c7ba8
2e21ff  4c 8d 44 24 60                 lea    r8,[rsp+0x60]
2e2204  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
2e2209  48 8d 4d b0                    lea    rcx,[rbp-0x50]
2e220d  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
2e2211  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
2e2214  f2 0f 11 44 24 60              movsd  QWORD PTR [rsp+0x60],xmm0
2e221a  f2 0f 10 44 24 30              movsd  xmm0,QWORD PTR [rsp+0x30]
2e2220  89 44 24 68                    mov    DWORD PTR [rsp+0x68],eax
2e2224  8b 44 24 38                    mov    eax,DWORD PTR [rsp+0x38]
2e2228  f2 0f 11 44 24 40              movsd  QWORD PTR [rsp+0x40],xmm0
2e222e  89 44 24 48                    mov    DWORD PTR [rsp+0x48],eax
2e2232  e8 b9 ed ff ff                 call   0x2e0ff0
2e2237  0f 10 45 b0                    movups xmm0,XMMWORD PTR [rbp-0x50]
2e223b  48 8b 9d 50 01 00 00           mov    rbx,QWORD PTR [rbp+0x150]
2e2242  48 8d 55 90                    lea    rdx,[rbp-0x70]
2e2246  48 8b cb                       mov    rcx,rbx
2e2249  66 0f 7f 45 90                 movdqa XMMWORD PTR [rbp-0x70],xmm0
2e224e  e8 b1 1a 09 00                 call   0x373d04
2e2253  eb 07                          jmp    0x2e225c
2e2255  48 8b 9d 50 01 00 00           mov    rbx,QWORD PTR [rbp+0x150]
2e225c  48 8d 4d d0                    lea    rcx,[rbp-0x30]
2e2260  e8 8f a2 fe ff                 call   0x2cc4f4
2e2265  48 8b 7c 24 50                 mov    rdi,QWORD PTR [rsp+0x50]
2e226a  eb 07                          jmp    0x2e2273
2e226c  48 8b 9d 50 01 00 00           mov    rbx,QWORD PTR [rbp+0x150]
2e2273  c7 47 50 00 00 00 00           mov    DWORD PTR [rdi+0x50],0x0
2e227a  eb 07                          jmp    0x2e2283
2e227c  48 8b 9d 50 01 00 00           mov    rbx,QWORD PTR [rbp+0x150]
2e2283  f3 41 0f 11 76 40              movss  DWORD PTR [r14+0x40],xmm6
2e2289  48 8d 15 50 1d 10 00           lea    rdx,[rip+0x101d50]        # 0x3e3fe0
2e2290  41 c7 46 3c 00 00 00 00        mov    DWORD PTR [r14+0x3c],0x0
2e2298  4d 8b cd                       mov    r9,r13
2e229b  41 c7 46 44 00 00 00 00        mov    DWORD PTR [r14+0x44],0x0
2e22a3  4d 8b c4                       mov    r8,r12
2e22a6  48 8b 0d b3 3b 0f 00           mov    rcx,QWORD PTR [rip+0xf3bb3]        # 0x3d5e60
2e22ad  e8 e2 fd fe ff                 call   0x2d2094
2e22b2  0f 10 45 f0                    movups xmm0,XMMWORD PTR [rbp-0x10]
2e22b6  48 8d 55 90                    lea    rdx,[rbp-0x70]
2e22ba  48 8b cb                       mov    rcx,rbx
2e22bd  66 0f 7f 45 90                 movdqa XMMWORD PTR [rbp-0x70],xmm0
2e22c2  e8 3d 1a 09 00                 call   0x373d04
2e22c7  f3 44 0f 11 57 50              movss  DWORD PTR [rdi+0x50],xmm10
2e22cd  f3 45 0f 11 46 40              movss  DWORD PTR [r14+0x40],xmm8
2e22d3  f3 45 0f 11 5e 3c              movss  DWORD PTR [r14+0x3c],xmm11
2e22d9  f3 45 0f 11 66 44              movss  DWORD PTR [r14+0x44],xmm12
2e22df  4c 8d 9c 24 00 02 00 00        lea    r11,[rsp+0x200]
2e22e7  49 8b 5b 40                    mov    rbx,QWORD PTR [r11+0x40]
2e22eb  41 0f 28 73 f0                 movaps xmm6,XMMWORD PTR [r11-0x10]
2e22f0  41 0f 28 7b e0                 movaps xmm7,XMMWORD PTR [r11-0x20]
2e22f5  45 0f 28 43 d0                 movaps xmm8,XMMWORD PTR [r11-0x30]
2e22fa  45 0f 28 53 c0                 movaps xmm10,XMMWORD PTR [r11-0x40]
2e22ff  45 0f 28 5b b0                 movaps xmm11,XMMWORD PTR [r11-0x50]
2e2304  45 0f 28 63 a0                 movaps xmm12,XMMWORD PTR [r11-0x60]
2e2309  45 0f 28 6b 90                 movaps xmm13,XMMWORD PTR [r11-0x70]
2e230e  49 8b e3                       mov    rsp,r11
2e2311  41 5f                          pop    r15
2e2313  41 5e                          pop    r14
2e2315  41 5d                          pop    r13
2e2317  41 5c                          pop    r12
2e2319  5f                             pop    rdi
2e231a  5e                             pop    rsi
2e231b  5d                             pop    rbp
2e231c  c3                             ret
