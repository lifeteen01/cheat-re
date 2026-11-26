; melee independent pdata/next-pdata extent 2e12e0..2e231d unwind3d2b00
2e12e0 mov    rax,rsp
2e12e3 mov    QWORD PTR [rax+0x8],rbx
2e12e7 push   rbp
2e12e8 push   rsi
2e12e9 push   rdi
2e12ea push   r12
2e12ec push   r13
2e12ee push   r14
2e12f0 push   r15
2e12f2 lea    rbp,[rax-0x138]
2e12f9 sub    rsp,0x200
2e1300 mov    ebx,DWORD PTR [rip+0x102cca]        # 0x3e3fd0
2e1306 mov    r13,rdx
2e1309 movaps XMMWORD PTR [rax-0x48],xmm6
2e130d mov    r12,rcx
2e1310 movaps XMMWORD PTR [rax-0x58],xmm7
2e1314 movaps XMMWORD PTR [rax-0x68],xmm8
2e1319 movaps XMMWORD PTR [rax-0x78],xmm10
2e131e movaps XMMWORD PTR [rax-0x88],xmm11
2e1325 
2e1326 movaps XMMWORD PTR [rax-0x98],xmm12
2e132d 
2e132e movaps XMMWORD PTR [rax-0xa8],xmm13
2e1335 
2e1336 test   bl,0x1
2e1339 jne    0x2e1359
2e133b or     ebx,0x1
2e133e lea    rcx,[rip+0x102c43]        # 0x3e3f88
2e1345 mov    DWORD PTR [rip+0x102c85],ebx        # 0x3e3fd0
2e134b call   0x2ce5d8
2e1350 mov    QWORD PTR [rip+0x102c71],rax        # 0x3e3fc8
2e1357 jmp    0x2e1360
2e1359 mov    rax,QWORD PTR [rip+0x102c68]        # 0x3e3fc8
2e1360 test   bl,0x2
2e1363 jne    0x2e1387
2e1365 mov    rcx,QWORD PTR [rip+0xf4af4]        # 0x3d5e60
2e136c lea    rdx,[rip+0x102c6d]        # 0x3e3fe0
2e1373 or     ebx,0x2
2e1376 xor    r9d,r9d
2e1379 mov    r8,rax
2e137c mov    DWORD PTR [rip+0x102c4e],ebx        # 0x3e3fd0
2e1382 call   0x2cbd24
2e1387 call   0x2dda9c
2e138c mov    rcx,rax
2e138f mov    r15,rax
2e1392 call   0x2caf08
2e1397 test   al,al
2e1399 jne    0x2e13b9
2e139b mov    rcx,QWORD PTR [rip+0xf4abe]        # 0x3d5e60
2e13a2 lea    rdx,[rip+0x102c37]        # 0x3e3fe0
2e13a9 mov    r9,r13
2e13ac mov    r8,r12
2e13af call   0x2d2094
2e13b4 jmp    0x2e22df
2e13b9 cmp    BYTE PTR [rip+0xf68d8],0x0        # 0x3d7c98
2e13c0 xorps  xmm7,xmm7
2e13c3 jne    0x2e1e21
2e13c9 lea    rdx,[rbp+0x150]
2e13d0 lea    rcx,[rbp+0x150]
2e13d7 call   0x2df818
2e13dc mov    rcx,rax
2e13df call   0x2cdcf4
2e13e4 lea    rdx,[rbp-0x30]
2e13e8 mov    rcx,r13
2e13eb mov    rbx,rax
2e13ee call   0x2d7e18
2e13f3 mov    rcx,rax
2e13f6 call   0x2cd7ec
2e13fb mov    rcx,rax
2e13fe mov    rdx,rbx
2e1401 call   0x3ca960
2e1406 lea    rcx,[rbp-0x30]
2e140a mov    rbx,rax
2e140d call   0x2cc4f4
2e1412 test   rbx,rbx
2e1415 je     0x2e1e21
2e141b lea    rdx,[rsp+0x70]
2e1420 mov    rcx,r15
2e1423 call   0x36924c
2e1428 movss  xmm6,DWORD PTR [r12+0x3b8]
2e142f 
2e1432 lea    rdx,[rbp+0x150]
2e1439 lea    rcx,[rbp+0x150]
2e1440 call   0x2cc730
2e1445 mov    rcx,rax
2e1448 call   0x2cdca4
2e144d lea    rdx,[rbp+0x0]
2e1451 mov    rbx,rax
2e1454 lea    rcx,[rbp+0x158]
2e145b call   0x2dfa74
2e1460 mov    rcx,rax
2e1463 call   0x2e3704
2e1468 mov    rcx,rax
2e146b mov    rdx,rbx
2e146e call   0x334224
2e1473 mov    rcx,rax
2e1476 mov    rdx,rax
2e1479 call   0x2caf08
2e147e test   al,al
2e1480 je     0x2e1e21
2e1486 mov    rcx,rdx
2e1489 call   0x2e3ce4
2e148e mov    rcx,rax
2e1491 mov    rdi,rax
2e1494 call   0x2caf08
2e1499 test   al,al
2e149b je     0x2e1e21
2e14a1 movaps xmm0,xmm6
2e14a4 call   0x2e091c
2e14a9 mov    sil,BYTE PTR [rip+0xf6df1]        # 0x3d82a1
2e14b0 movaps xmm13,xmm0
2e14b4 movss  xmm10,DWORD PTR [rip+0xfffffffffffac623]        # 0x28dae0
2e14bb 
2e14bd mov    r14d,0x35
2e14c3 movss  xmm11,DWORD PTR [rip+0xfffffffffffac630]        # 0x28dafc
2e14ca 
2e14cc movsd  xmm12,QWORD PTR [rip+0xfffffffffffac61b]        # 0x28daf0
2e14d3 
2e14d5 test   sil,sil
2e14d8 jne    0x2e1741
2e14de cmp    BYTE PTR [rip+0xf6853],sil        # 0x3d7d38
2e14e5 je     0x2e1741
2e14eb mov    rbx,QWORD PTR [rip+0xf5dc6]        # 0x3d72b8
2e14f2 mov    rcx,rbx
2e14f5 call   0x2caf08
2e14fa test   al,al
2e14fc je     0x2e1741
2e1502 mov    rcx,rbx
2e1505 call   0x2e0e9c
2e150a test   al,al
2e150c je     0x2e1741
2e1512 lea    r8d,[r14+0x9]
2e1516 mov    rcx,rbx
2e1519 lea    rdx,[rbp-0x80]
2e151d call   0x368be8
2e1522 movsd  xmm0,QWORD PTR [rbp-0x80]
2e1527 lea    rdx,[rsp+0x50]
2e152c mov    eax,DWORD PTR [rbp-0x78]
2e152f mov    rcx,r15
2e1532 movsd  QWORD PTR [rsp+0x50],xmm0
2e1538 mov    DWORD PTR [rsp+0x58],eax
2e153c call   0x3666b0
2e1541 movaps xmm1,xmm0
2e1544 movss  xmm0,DWORD PTR [rip+0xf5da0]        # 0x3d72ec
2e154b 
2e154c addss  xmm1,DWORD PTR [rip+0xfffffffffffabcfc]        # 0x28d250
2e1553 
2e1554 addss  xmm0,xmm10
2e1559 mulss  xmm0,xmm11
2e155e mulss  xmm0,DWORD PTR [rip+0xfffffffffffac5e2]        # 0x28db48
2e1565 
2e1566 cvtps2pd xmm0,xmm0
2e1569 addsd  xmm0,xmm12
2e156e cvtpd2ps xmm0,xmm0
2e1572 comiss xmm0,xmm1
2e1575 jbe    0x2e173a
2e157b mov    rdx,QWORD PTR [rbx+0x2e8]
2e1582 mov    rcx,rdx
2e1585 call   0x2caf08
2e158a test   al,al
2e158c je     0x2e173a
2e1592 mov    r8,QWORD PTR [rdx+0x28]
2e1596 mov    rcx,r8
2e1599 call   0x2caf08
2e159e test   al,al
2e15a0 je     0x2e173a
2e15a6 movss  xmm0,DWORD PTR [r8+0x24]
2e15ac xor    edx,edx
2e15ae comiss xmm0,xmm7
2e15b1 mov    rcx,rbx
2e15b4 setbe  dl
2e15b7 add    edx,0x3e
2e15ba call   0x368c60
2e15bf mov    rcx,rax
2e15c2 mov    rsi,rax
2e15c5 call   0x2caf08
2e15ca test   al,al
2e15cc je     0x2e173a
2e15d2 mov    edx,r14d
2e15d5 mov    rcx,r15
2e15d8 call   0x368c60
2e15dd mov    rcx,rax
2e15e0 call   0x2caf08
2e15e5 test   al,al
2e15e7 je     0x2e173a
2e15ed mov    r8d,r14d
2e15f0 lea    rdx,[rbp-0x50]
2e15f4 mov    rcx,r15
2e15f7 call   0x368be8
2e15fc lea    r8,[rsp+0x40]
2e1601 mov    rcx,rsi
2e1604 lea    rdx,[rsp+0x30]
2e1609 movsd  xmm0,QWORD PTR [rax]
2e160d mov    eax,DWORD PTR [rax+0x8]
2e1610 movsd  QWORD PTR [rsp+0x40],xmm0
2e1616 mov    DWORD PTR [rsp+0x48],eax
2e161a call   0x374d60
2e161f lea    rdx,[rsp+0x50]
2e1624 mov    rcx,rsi
2e1627 call   0x3747d4
2e162c movsd  xmm0,QWORD PTR [rsp+0x50]
2e1632 lea    r8,[rsp+0x40]
2e1637 mov    eax,DWORD PTR [rsp+0x58]
2e163b lea    rdx,[rsp+0x60]
2e1640 movsd  QWORD PTR [rsp+0x40],xmm0
2e1646 lea    rcx,[rbp-0x70]
2e164a movsd  xmm0,QWORD PTR [rsp+0x70]
2e1650 mov    DWORD PTR [rsp+0x48],eax
2e1654 mov    eax,DWORD PTR [rsp+0x78]
2e1658 movsd  QWORD PTR [rsp+0x60],xmm0
2e165e mov    DWORD PTR [rsp+0x68],eax
2e1662 call   0x2df29c
2e1667 movups xmm0,XMMWORD PTR [rbp-0x70]
2e166b lea    rdx,[rbp+0x150]
2e1672 mov    QWORD PTR [rdi+0xd8],rsi
2e1679 movsd  xmm1,QWORD PTR [rbp-0x60]
2e167e lea    rcx,[rbp+0x150]
2e1685 movups XMMWORD PTR [rdi+0x6c],xmm0
2e1689 mov    BYTE PTR [rdi+0xb0],0x1
2e1690 movsd  QWORD PTR [rdi+0x7c],xmm1
2e1695 mov    QWORD PTR [rdi+0x90],rbx
2e169c call   0x2dfbcc
2e16a1 mov    rcx,rax
2e16a4 call   0x2e3614
2e16a9 mov    rcx,rax
2e16ac call   0x2ce5dc
2e16b1 movsd  xmm0,QWORD PTR [rsp+0x30]
2e16b7 lea    r8,[rsp+0x60]
2e16bc mov    QWORD PTR [rdi+0xc0],rax
2e16c3 lea    rdx,[rbp-0x50]
2e16c7 mov    eax,DWORD PTR [rsp+0x38]
2e16cb mov    rcx,rsi
2e16ce movsd  QWORD PTR [rdi+0x5c],xmm0
2e16d3 movsd  xmm0,QWORD PTR [rsp+0x50]
2e16d9 mov    DWORD PTR [rdi+0x64],eax
2e16dc mov    eax,DWORD PTR [rsp+0x58]
2e16e0 movsd  QWORD PTR [rsp+0x60],xmm0
2e16e6 mov    DWORD PTR [rsp+0x68],eax
2e16ea call   0x374bf8
2e16ef lea    rdx,[rbp+0x150]
2e16f6 lea    rcx,[rbp+0x150]
2e16fd movsd  xmm0,QWORD PTR [rax]
2e1701 movsd  QWORD PTR [rdi+0xa4],xmm0
2e1708 
2e1709 mov    eax,DWORD PTR [rax+0x8]
2e170c mov    DWORD PTR [rdi+0xac],eax
2e1712 call   0x2dfc44
2e1717 mov    rcx,rax
2e171a call   0x2e3614
2e171f mov    rdx,rax
2e1722 mov    rcx,r12
2e1725 call   0x36c274
2e172a mov    rdx,rdi
2e172d mov    rcx,r12
2e1730 call   0x36bebc
2e1735 jmp    0x2e22df
2e173a mov    sil,BYTE PTR [rip+0xf6b60]        # 0x3d82a1
2e1741 cmp    BYTE PTR [rip+0xf6820],0x0        # 0x3d7f68
2e1748 je     0x2e1bb9
2e174e test   sil,sil
2e1751 jne    0x2e1bb9
2e1757 mov    rbx,QWORD PTR [rip+0xf5b62]        # 0x3d72c0
2e175e mov    rcx,rbx
2e1761 call   0x2caf08
2e1766 test   al,al
2e1768 je     0x2e1bb9
2e176e mov    rcx,rbx
2e1771 call   0x2e0e9c
2e1776 test   al,al
2e1778 je     0x2e1bb9
2e177e mov    rcx,rbx
2e1781 call   0x36acb8
2e1786 test   al,al
2e1788 jne    0x2e1bb2
2e178e mov    rcx,rbx
2e1791 call   0x36b288
2e1796 test   al,al
2e1798 jne    0x2e1bb2
2e179e mov    r8d,r14d
2e17a1 lea    rdx,[rsp+0x50]
2e17a6 mov    rcx,rbx
2e17a9 call   0x368be8
2e17ae lea    rdx,[rsp+0x60]
2e17b3 mov    rcx,r15
2e17b6 call   0x36924c
2e17bb movsd  xmm0,QWORD PTR [rsp+0x50]
2e17c1 lea    rdx,[rsp+0x30]
2e17c6 mov    eax,DWORD PTR [rsp+0x58]
2e17ca mov    rcx,r15
2e17cd movsd  QWORD PTR [rsp+0x30],xmm0
2e17d3 mov    DWORD PTR [rsp+0x38],eax
2e17d7 call   0x3666b0
2e17dc movss  xmm6,DWORD PTR [rip+0xf5b08]        # 0x3d72ec
2e17e3 
2e17e4 movaps xmm8,xmm0
2e17e8 addss  xmm8,DWORD PTR [rip+0xfffffffffffaba5f]        # 0x28d250
2e17ef 
2e17f1 addss  xmm6,xmm10
2e17f6 mov    rcx,rbx
2e17f9 mulss  xmm6,xmm11
2e17fe call   0x36942c
2e1803 xorps  xmm1,xmm1
2e1806 mulss  xmm0,xmm6
2e180a cvtss2sd xmm1,xmm0
2e180e addsd  xmm1,xmm12
2e1813 cvtpd2ps xmm0,xmm1
2e1817 comiss xmm0,xmm8
2e181b jbe    0x2e183f
2e181d mov    rcx,rbx
2e1820 call   0x36a0e0
2e1825 test   al,al
2e1827 je     0x2e183f
2e1829 movss  xmm0,DWORD PTR [rip+0xfffffffffffac303]        # 0x28db34
2e1830 
2e1831 comiss xmm0,xmm8
2e1835 jbe    0x2e183f
2e1837 mov    r14d,0x1
2e183d jmp    0x2e1842
2e183f xor    r14d,r14d
2e1842 movsd  xmm0,QWORD PTR [rsp+0x50]
2e1848 lea    rdx,[rsp+0x30]
2e184d mov    eax,DWORD PTR [rsp+0x58]
2e1851 lea    rcx,[rsp+0x40]
2e1856 movsd  QWORD PTR [rsp+0x30],xmm0
2e185c xorps  xmm3,xmm3
2e185f movsd  xmm0,QWORD PTR [rsp+0x60]
2e1865 mov    r8d,0x48a10000
2e186b mov    DWORD PTR [rsp+0x38],eax
2e186f mov    eax,DWORD PTR [rsp+0x68]
2e1873 movsd  QWORD PTR [rsp+0x40],xmm0
2e1879 movss  DWORD PTR [rsp+0x20],xmm7
2e187f mov    DWORD PTR [rsp+0x48],eax
2e1883 call   0x2e2320
2e1888 test   al,al
2e188a je     0x2e1bb2
2e1890 mov    rcx,rbx
2e1893 call   0x36a0e0
2e1898 xor    ecx,ecx
2e189a comiss xmm13,xmm8
2e189e seta   cl
2e18a1 test   al,al
2e18a3 cmovne ecx,r14d
2e18a7 test   ecx,ecx
2e18a9 je     0x2e1bb2
2e18af movss  xmm1,DWORD PTR [rip+0xfffffffffffac28d]        # 0x28db44
2e18b6 
2e18b7 xorps  xmm0,xmm0
2e18ba call   0x2e3d5c
2e18bf mov    eax,DWORD PTR [rip+0xf6833]        # 0x3d80f8
2e18c5 test   eax,eax
2e18c7 jne    0x2e18d3
2e18c9 mov    edx,0x35
2e18ce jmp    0x2e19f2
2e18d3 cmp    eax,0x1
2e18d6 jne    0x2e18e0
2e18d8 lea    edx,[rax+0x16]
2e18db jmp    0x2e19f2
2e18e0 cmp    eax,0x2
2e18e3 je     0x2e19da
2e18e9 mov    ecx,0x3
2e18ee cmp    eax,ecx
2e18f0 jne    0x2e18fc
2e18f2 mov    edx,0x11
2e18f7 jmp    0x2e19f2
2e18fc cmp    eax,0x4
2e18ff jne    0x2e195f
2e1901 comiss xmm0,DWORD PTR [rip+0xfffffffffffac238]        # 0x28db40
2e1908 ja     0x2e18c9
2e190a comiss xmm0,DWORD PTR [rip+0xfffffffffffac22b]        # 0x28db3c
2e1911 ja     0x2e1984
2e1913 comiss xmm0,DWORD PTR [rip+0xfffffffffffac21e]        # 0x28db38
2e191a ja     0x2e1994
2e191c comiss xmm0,DWORD PTR [rip+0xfffffffffffac20d]        # 0x28db30
2e1923 ja     0x2e19a4
2e1925 comiss xmm0,DWORD PTR [rip+0xfffffffffffac200]        # 0x28db2c
2e192c ja     0x2e19ba
2e1932 comiss xmm0,DWORD PTR [rip+0xfffffffffffac1ef]        # 0x28db28
2e1939 ja     0x2e18f2
2e193b comiss xmm0,DWORD PTR [rip+0xfffffffffffac1e2]        # 0x28db24
2e1942 ja     0x2e19ca
2e1948 comiss xmm0,DWORD PTR [rip+0xfffffffffffac1d1]        # 0x28db20
2e194f ja     0x2e19da
2e1955 mov    eax,0x3d
2e195a jmp    0x2e19e6
2e195f mov    edx,0x35
2e1964 cmp    eax,0x5
2e1967 jne    0x2e19f2
2e196d comiss xmm0,DWORD PTR [rip+0xfffffffffffac1cc]        # 0x28db40
2e1974 jbe    0x2e197b
2e1976 lea    edx,[rax+0x38]
2e1979 jmp    0x2e19f2
2e197b comiss xmm0,DWORD PTR [rip+0xfffffffffffac1ba]        # 0x28db3c
2e1982 jbe    0x2e198b
2e1984 mov    edx,0x34
2e1989 jmp    0x2e19f2
2e198b comiss xmm0,DWORD PTR [rip+0xfffffffffffac1a6]        # 0x28db38
2e1992 jbe    0x2e199b
2e1994 mov    edx,0x18
2e1999 jmp    0x2e19f2
2e199b comiss xmm0,DWORD PTR [rip+0xfffffffffffac18e]        # 0x28db30
2e19a2 jbe    0x2e19a8
2e19a4 xor    edx,edx
2e19a6 jmp    0x2e19f2
2e19a8 comiss xmm0,DWORD PTR [rip+0xfffffffffffac17d]        # 0x28db2c
2e19af ja     0x2e19ba
2e19b1 comiss xmm0,DWORD PTR [rip+0xfffffffffffac170]        # 0x28db28
2e19b8 jbe    0x2e19c1
2e19ba mov    edx,0xe
2e19bf jmp    0x2e19f2
2e19c1 comiss xmm0,DWORD PTR [rip+0xfffffffffffac15c]        # 0x28db24
2e19c8 jbe    0x2e19d1
2e19ca mov    edx,0x14
2e19cf jmp    0x2e19f2
2e19d1 comiss xmm0,DWORD PTR [rip+0xfffffffffffac148]        # 0x28db20
2e19d8 jbe    0x2e19e1
2e19da mov    edx,0x1d
2e19df jmp    0x2e19f2
2e19e1 mov    eax,0x19
2e19e6 comiss xmm0,DWORD PTR [rip+0xfffffffffffac12f]        # 0x28db1c
2e19ed mov    edx,ecx
2e19ef cmova  edx,eax
2e19f2 mov    rcx,rbx
2e19f5 call   0x368c60
2e19fa mov    rcx,rax
2e19fd mov    rsi,rax
2e1a00 call   0x2caf08
2e1a05 test   al,al
2e1a07 je     0x2e139b
2e1a0d mov    r8d,0x35
2e1a13 lea    rdx,[rsp+0x40]
2e1a18 mov    rcx,r15
2e1a1b call   0x368be8
2e1a20 lea    r8,[rsp+0x30]
2e1a25 mov    rcx,rsi
2e1a28 lea    rdx,[rbp-0x80]
2e1a2c movsd  xmm0,QWORD PTR [rax]
2e1a30 mov    eax,DWORD PTR [rax+0x8]
2e1a33 movsd  QWORD PTR [rsp+0x30],xmm0
2e1a39 mov    DWORD PTR [rsp+0x38],eax
2e1a3d call   0x374d60
2e1a42 lea    rdx,[rbp-0x70]
2e1a46 mov    rcx,rsi
2e1a49 call   0x3747d4
2e1a4e lea    r8,[rsp+0x30]
2e1a53 lea    rdx,[rsp+0x40]
2e1a58 lea    rcx,[rbp-0x30]
2e1a5c movsd  xmm0,QWORD PTR [rax]
2e1a60 mov    eax,DWORD PTR [rax+0x8]
2e1a63 movsd  QWORD PTR [rsp+0x30],xmm0
2e1a69 movsd  xmm0,QWORD PTR [rsp+0x70]
2e1a6f mov    DWORD PTR [rsp+0x38],eax
2e1a73 mov    eax,DWORD PTR [rsp+0x78]
2e1a77 movsd  QWORD PTR [rsp+0x40],xmm0
2e1a7d mov    DWORD PTR [rsp+0x48],eax
2e1a81 call   0x2df29c
2e1a86 movups xmm0,XMMWORD PTR [rbp-0x30]
2e1a8a lea    rdx,[rbp+0x150]
2e1a91 mov    QWORD PTR [rdi+0xd8],rsi
2e1a98 movsd  xmm1,QWORD PTR [rbp-0x20]
2e1a9d lea    rcx,[rbp+0x150]
2e1aa4 movups XMMWORD PTR [rdi+0x6c],xmm0
2e1aa8 mov    BYTE PTR [rdi+0xb0],0x1
2e1aaf movsd  QWORD PTR [rdi+0x7c],xmm1
2e1ab4 mov    QWORD PTR [rdi+0x90],rbx
2e1abb call   0x2dfcfc
2e1ac0 mov    rcx,rax
2e1ac3 call   0x2d84dc
2e1ac8 mov    rcx,rax
2e1acb call   0x2ce5dc
2e1ad0 lea    rdx,[rbp-0x70]
2e1ad4 mov    QWORD PTR [rdi+0xc0],rax
2e1adb mov    rcx,rsi
2e1ade call   0x3747d4
2e1ae3 lea    r8,[rsp+0x30]
2e1ae8 mov    rcx,rsi
2e1aeb lea    rdx,[rbp-0x50]
2e1aef movsd  xmm0,QWORD PTR [rax]
2e1af3 mov    eax,DWORD PTR [rax+0x8]
2e1af6 movsd  QWORD PTR [rsp+0x30],xmm0
2e1afc mov    DWORD PTR [rsp+0x38],eax
2e1b00 call   0x374d60
2e1b05 lea    rcx,[rbp-0x50]
2e1b09 test   r14d,r14d
2e1b0c lea    rax,[rbp-0x80]
2e1b10 cmove  rax,rcx
2e1b14 lea    rdx,[rbp-0x70]
2e1b18 mov    rcx,rsi
2e1b1b movsd  xmm0,QWORD PTR [rax]
2e1b1f mov    eax,DWORD PTR [rax+0x8]
2e1b22 movsd  QWORD PTR [rdi+0x5c],xmm0
2e1b27 mov    DWORD PTR [rdi+0x64],eax
2e1b2a call   0x3747d4
2e1b2f lea    r8,[rsp+0x30]
2e1b34 mov    rcx,rsi
2e1b37 lea    rdx,[rsp+0x40]
2e1b3c movsd  xmm0,QWORD PTR [rax]
2e1b40 mov    eax,DWORD PTR [rax+0x8]
2e1b43 movsd  QWORD PTR [rsp+0x30],xmm0
2e1b49 mov    DWORD PTR [rsp+0x38],eax
2e1b4d call   0x374bf8
2e1b52 lea    rdx,[rbp+0x150]
2e1b59 lea    rcx,[rbp+0x150]
2e1b60 movsd  xmm0,QWORD PTR [rax]
2e1b64 movsd  QWORD PTR [rdi+0xa4],xmm0
2e1b6b 
2e1b6c mov    eax,DWORD PTR [rax+0x8]
2e1b6f mov    DWORD PTR [rdi+0xac],eax
2e1b75 call   0x2dfc44
2e1b7a mov    rcx,rax
2e1b7d call   0x2e3614
2e1b82 mov    rdx,rax
2e1b85 mov    rcx,r12
2e1b88 call   0x36c274
2e1b8d mov    rdx,rdi
2e1b90 mov    rcx,r12
2e1b93 call   0x36bebc
2e1b98 cmp    BYTE PTR [rip+0xf6239],0x0        # 0x3d7dd8
2e1b9f je     0x2e22df
2e1ba5 mov    rcx,rbx
2e1ba8 call   0x36a464
2e1bad jmp    0x2e22df
2e1bb2 mov    sil,BYTE PTR [rip+0xf66e8]        # 0x3d82a1
2e1bb9 cmp    BYTE PTR [rip+0xf6358],0x0        # 0x3d7f18
2e1bc0 jne    0x2e1bd8
2e1bc2 cmp    BYTE PTR [rip+0xf6678],0x0        # 0x3d8241
2e1bc9 je     0x2e1e21
2e1bcf test   sil,sil
2e1bd2 jne    0x2e1e21
2e1bd8 mov    rsi,QWORD PTR [rip+0xf56e9]        # 0x3d72c8
2e1bdf mov    rcx,rsi
2e1be2 call   0x2caf08
2e1be7 test   al,al
2e1be9 je     0x2e1e21
2e1bef mov    rcx,rsi
2e1bf2 call   0x2e0e9c
2e1bf7 test   al,al
2e1bf9 je     0x2e1e21
2e1bff mov    rcx,rsi
2e1c02 call   0x2e0cf0
2e1c07 mov    rcx,rax
2e1c0a mov    r8,rax
2e1c0d call   0x2caf08
2e1c12 test   al,al
2e1c14 je     0x2e1e21
2e1c1a lea    rdx,[rbp-0x70]
2e1c1e mov    rcx,r8
2e1c21 call   0x3747d4
2e1c26 movss  xmm2,DWORD PTR [rip+0xfffffffffffabeba]        # 0x28dae8
2e1c2d 
2e1c2e lea    rcx,[rbp-0x50]
2e1c32 xorps  xmm3,xmm3
2e1c35 xorps  xmm1,xmm1
2e1c38 mov    rbx,rax
2e1c3b call   0x3c7ba8
2e1c40 mov    r8,rax
2e1c43 lea    rdx,[rsp+0x50]
2e1c48 mov    rcx,rbx
2e1c4b call   0x2df708
2e1c50 lea    rdx,[rsp+0x60]
2e1c55 mov    rcx,r15
2e1c58 call   0x368b9c
2e1c5d movsd  xmm0,QWORD PTR [rsp+0x50]
2e1c63 lea    rdx,[rsp+0x30]
2e1c68 mov    eax,DWORD PTR [rsp+0x58]
2e1c6c mov    rcx,r15
2e1c6f movsd  QWORD PTR [rsp+0x30],xmm0
2e1c75 mov    DWORD PTR [rsp+0x38],eax
2e1c79 call   0x3666b0
2e1c7e addss  xmm0,DWORD PTR [rip+0xfffffffffffab5ca]        # 0x28d250
2e1c85 
2e1c86 comiss xmm13,xmm0
2e1c8a jbe    0x2e1e21
2e1c90 mov    edx,0x1
2e1c95 mov    rcx,r12
2e1c98 call   0x36b494
2e1c9d test   al,al
2e1c9f je     0x2e1e21
2e1ca5 movsd  xmm0,QWORD PTR [rsp+0x50]
2e1cab lea    rdx,[rsp+0x30]
2e1cb0 mov    eax,DWORD PTR [rsp+0x58]
2e1cb4 lea    rcx,[rsp+0x40]
2e1cb9 movsd  QWORD PTR [rsp+0x30],xmm0
2e1cbf xorps  xmm3,xmm3
2e1cc2 movsd  xmm0,QWORD PTR [rsp+0x60]
2e1cc8 mov    r8d,0x48a10000
2e1cce mov    DWORD PTR [rsp+0x38],eax
2e1cd2 mov    eax,DWORD PTR [rsp+0x68]
2e1cd6 movsd  QWORD PTR [rsp+0x40],xmm0
2e1cdc movss  DWORD PTR [rsp+0x20],xmm7
2e1ce2 mov    DWORD PTR [rsp+0x48],eax
2e1ce6 call   0x2e2320
2e1ceb test   al,al
2e1ced je     0x2e1e21
2e1cf3 mov    rcx,rsi
2e1cf6 call   0x2e0cf0
2e1cfb mov    rcx,rax
2e1cfe mov    rbx,rax
2e1d01 call   0x2caf08
2e1d06 test   al,al
2e1d08 je     0x2e1e21
2e1d0e mov    ecx,DWORD PTR [rsp+0x58]
2e1d12 lea    r8,[rsp+0x30]
2e1d17 movsd  xmm0,QWORD PTR [rsp+0x50]
2e1d1d lea    rdx,[rsp+0x40]
2e1d22 mov    DWORD PTR [rsp+0x38],ecx
2e1d26 mov    ecx,DWORD PTR [rsp+0x78]
2e1d2a movsd  QWORD PTR [rsp+0x30],xmm0
2e1d30 movsd  xmm0,QWORD PTR [rsp+0x70]
2e1d36 mov    DWORD PTR [rsp+0x48],ecx
2e1d3a lea    rcx,[rbp-0x30]
2e1d3e movsd  QWORD PTR [rsp+0x40],xmm0
2e1d44 call   0x2df29c
2e1d49 movups xmm0,XMMWORD PTR [rbp-0x30]
2e1d4d lea    rdx,[rbp+0x150]
2e1d54 mov    QWORD PTR [rdi+0xd8],rbx
2e1d5b movsd  xmm1,QWORD PTR [rbp-0x20]
2e1d60 lea    rcx,[rbp+0x150]
2e1d67 movups XMMWORD PTR [rdi+0x6c],xmm0
2e1d6b mov    BYTE PTR [rdi+0xb0],0x1
2e1d72 movsd  QWORD PTR [rdi+0x7c],xmm1
2e1d77 mov    QWORD PTR [rdi+0x90],rsi
2e1d7e call   0x2dfbcc
2e1d83 mov    rcx,rax
2e1d86 call   0x2e3614
2e1d8b mov    rcx,rax
2e1d8e call   0x2ce5dc
2e1d93 movsd  xmm0,QWORD PTR [rsp+0x50]
2e1d99 lea    r8,[rsp+0x30]
2e1d9e mov    QWORD PTR [rdi+0xc0],rax
2e1da5 lea    rdx,[rbp-0x80]
2e1da9 mov    eax,DWORD PTR [rsp+0x58]
2e1dad mov    rcx,rbx
2e1db0 movsd  QWORD PTR [rsp+0x30],xmm0
2e1db6 mov    DWORD PTR [rsp+0x38],eax
2e1dba call   0x374d60
2e1dbf movsd  xmm0,QWORD PTR [rbp-0x80]
2e1dc4 lea    r8,[rsp+0x30]
2e1dc9 mov    eax,DWORD PTR [rbp-0x78]
2e1dcc lea    rdx,[rbp-0x70]
2e1dd0 movsd  QWORD PTR [rdi+0x5c],xmm0
2e1dd5 mov    rcx,rbx
2e1dd8 movsd  xmm0,QWORD PTR [rsp+0x50]
2e1dde mov    DWORD PTR [rdi+0x64],eax
2e1de1 mov    eax,DWORD PTR [rsp+0x58]
2e1de5 movsd  QWORD PTR [rsp+0x30],xmm0
2e1deb mov    DWORD PTR [rsp+0x38],eax
2e1def call   0x374bf8
2e1df4 lea    rdx,[rbp+0x150]
2e1dfb lea    rcx,[rbp+0x150]
2e1e02 movsd  xmm0,QWORD PTR [rax]
2e1e06 movsd  QWORD PTR [rdi+0xa4],xmm0
2e1e0d 
2e1e0e mov    eax,DWORD PTR [rax+0x8]
2e1e11 mov    DWORD PTR [rdi+0xac],eax
2e1e17 call   0x2dfc44
2e1e1c jmp    0x2e1717
2e1e21 mov    rcx,r15
2e1e24 call   0x369298
2e1e29 mov    rcx,rax
2e1e2c mov    QWORD PTR [rbp+0x150],rax
2e1e33 call   0x2caf08
2e1e38 test   al,al
2e1e3a je     0x2e139b
2e1e40 mov    rcx,r15
2e1e43 call   0x3680d4
2e1e48 mov    rcx,rax
2e1e4b mov    QWORD PTR [rsp+0x50],rax
2e1e50 mov    rdi,rax
2e1e53 call   0x2caf08
2e1e58 test   al,al
2e1e5a je     0x2e139b
2e1e60 mov    rcx,r15
2e1e63 call   0x368a84
2e1e68 mov    rcx,rax
2e1e6b mov    rdx,rax
2e1e6e call   0x2caf08
2e1e73 test   al,al
2e1e75 je     0x2e139b
2e1e7b mov    rcx,rdx
2e1e7e call   0x371630
2e1e83 mov    rcx,rax
2e1e86 mov    r14,rax
2e1e89 call   0x2caf08
2e1e8e test   al,al
2e1e90 je     0x2e139b
2e1e96 mov    rcx,r14
2e1e99 call   0x372abc
2e1e9e mov    rcx,rax
2e1ea1 mov    QWORD PTR [rbp+0x158],rax
2e1ea8 mov    rbx,rax
2e1eab call   0x2caf08
2e1eb0 test   al,al
2e1eb2 je     0x2e139b
2e1eb8 cmp    BYTE PTR [rip+0xf5e29],0x0        # 0x3d7ce8
2e1ebf movss  xmm11,DWORD PTR [r14+0x3c]
2e1ec5 movss  xmm8,DWORD PTR [r14+0x40]
2e1ecb movss  xmm12,DWORD PTR [r14+0x44]
2e1ed1 je     0x2e1ee5
2e1ed3 movss  xmm6,DWORD PTR [rip+0xf61cd]        # 0x3d80a8
2e1eda 
2e1edb minss  xmm6,DWORD PTR [rip+0xfffffffffffabc15]        # 0x28daf8
2e1ee2 
2e1ee3 jmp    0x2e1eed
2e1ee5 movss  xmm6,DWORD PTR [rip+0xfffffffffffab367]        # 0x28d254
2e1eec 
2e1eed movss  xmm10,DWORD PTR [rdi+0x50]
2e1ef3 lea    rdx,[rbp-0x10]
2e1ef7 mov    rcx,r15
2e1efa mulss  xmm6,xmm8
2e1eff call   0x36920c
2e1f04 cmp    BYTE PTR [rip+0xf5f6d],0x0        # 0x3d7e78
2e1f0b je     0x2e227c
2e1f11 cmp    BYTE PTR [rip+0xf5388],0x0        # 0x3d72a0
2e1f18 je     0x2e227c
2e1f1e call   0x2e02b0
2e1f23 mov    rcx,rax
2e1f26 mov    rsi,rax
2e1f29 call   0x2caf08
2e1f2e test   al,al
2e1f30 je     0x2e226c
2e1f36 mov    rcx,rsi
2e1f39 call   0x2e0e9c
2e1f3e test   al,al
2e1f40 je     0x2e226c
2e1f46 lea    rdx,[rsp+0x70]
2e1f4b mov    rcx,rsi
2e1f4e call   0x369790
2e1f53 cmp    BYTE PTR [rip+0xf60fe],0x0        # 0x3d8058
2e1f5a je     0x2e1f90
2e1f5c lea    rcx,[rbp-0x70]
2e1f60 call   0x3c7bbc
2e1f65 mov    rdx,rax
2e1f68 lea    rcx,[rip+0xf5361]        # 0x3d72d0
2e1f6f call   0x2df5dc
2e1f74 test   al,al
2e1f76 je     0x2e1f90
2e1f78 movsd  xmm0,QWORD PTR [rip+0xf5350]        # 0x3d72d0
2e1f7f 
2e1f80 mov    eax,DWORD PTR [rip+0xf5352]        # 0x3d72d8
2e1f86 movsd  QWORD PTR [rsp+0x70],xmm0
2e1f8c mov    DWORD PTR [rsp+0x78],eax
2e1f90 cmp    BYTE PTR [rip+0xf5f31],0x0        # 0x3d7ec8
2e1f97 je     0x2e1fd6
2e1f99 lea    rcx,[rbp-0x70]
2e1f9d call   0x3c7bbc
2e1fa2 mov    rdx,rax
2e1fa5 lea    rcx,[rip+0xf5334]        # 0x3d72e0
2e1fac call   0x2df5dc
2e1fb1 test   al,al
2e1fb3 je     0x2e1fd6
2e1fb5 cmp    BYTE PTR [rip+0xf6345],0x0        # 0x3d8301
2e1fbc je     0x2e1fd6
2e1fbe movsd  xmm0,QWORD PTR [rip+0xf531a]        # 0x3d72e0
2e1fc5 
2e1fc6 mov    eax,DWORD PTR [rip+0xf531c]        # 0x3d72e8
2e1fcc movsd  QWORD PTR [rsp+0x70],xmm0
2e1fd2 mov    DWORD PTR [rsp+0x78],eax
2e1fd6 lea    rcx,[rbp-0x70]
2e1fda call   0x3c7bbc
2e1fdf mov    rdx,rax
2e1fe2 lea    rcx,[rsp+0x70]
2e1fe7 call   0x2df5dc
2e1fec test   al,al
2e1fee je     0x2e226c
2e1ff4 movss  xmm1,DWORD PTR [rbx+0x44]
2e1ff9 lea    rcx,[rbp+0x0]
2e1ffd call   0x2d9540
2e2002 movss  xmm1,DWORD PTR [rbx+0x34]
2e2007 lea    rcx,[rbp+0x70]
2e200b mov    rsi,rax
2e200e call   0x2d9540
2e2013 movss  xmm1,DWORD PTR [rbx+0x38]
2e2018 lea    rcx,[rbp+0x50]
2e201c mov    rdi,rax
2e201f call   0x2d9540
2e2024 movaps xmm1,xmm6
2e2027 lea    rcx,[rbp+0x30]
2e202b mov    rbx,rax
2e202e call   0x2d9540
2e2033 mov    rdx,rax
2e2036 lea    rcx,[rbp-0x50]
2e203a mov    r8,rbx
2e203d call   0x2cef40
2e2042 mov    rdx,rax
2e2045 lea    rcx,[rbp-0x70]
2e2049 mov    r8,rdi
2e204c call   0x2cef40
2e2051 mov    rdx,rax
2e2054 lea    rcx,[rbp-0x30]
2e2058 mov    r8,rsi
2e205b call   0x2cef40
2e2060 lea    rcx,[rbp-0x70]
2e2064 call   0x2cc4f4
2e2069 lea    rcx,[rbp-0x50]
2e206d call   0x2cc4f4
2e2072 lea    rcx,[rbp+0x30]
2e2076 call   0x2cc4f4
2e207b lea    rcx,[rbp+0x50]
2e207f call   0x2cc4f4
2e2084 lea    rcx,[rbp+0x70]
2e2088 call   0x2cc4f4
2e208d lea    rcx,[rbp+0x0]
2e2091 call   0x2cc4f4
2e2096 lea    rcx,[rbp-0x30]
2e209a call   0x2cd7ec
2e209f mov    rcx,rax
2e20a2 call   0x2d6354
2e20a7 mov    rcx,rax
2e20aa mov    rdi,rax
2e20ad call   0x2e0e20
2e20b2 mov    rbx,rax
2e20b5 test   rax,rax
2e20b8 jne    0x2e20f1
2e20ba mov    rax,QWORD PTR [rbp+0x158]
2e20c1 movaps xmm1,xmm6
2e20c4 mov    rcx,rdi
2e20c7 movss  xmm0,DWORD PTR [rax+0x44]
2e20cc movss  xmm3,DWORD PTR [rax+0x34]
2e20d1 movss  xmm2,DWORD PTR [rax+0x38]
2e20d6 movss  DWORD PTR [rsp+0x20],xmm0
2e20dc call   0x2dfe64
2e20e1 mov    rbx,rax
2e20e4 test   rax,rax
2e20e7 je     0x2e20f1
2e20e9 mov    rcx,rax
2e20ec call   0x2e3a70
2e20f1 test   rbx,rbx
2e20f4 je     0x2e2255
2e20fa mov    ecx,DWORD PTR [rsp+0x78]
2e20fe lea    rdx,[rbp-0x70]
2e2102 movsd  xmm0,QWORD PTR [rip+0xf513e]        # 0x3d7248
2e2109 
2e210a movsd  xmm1,QWORD PTR [rsp+0x70]
2e2110 mov    eax,DWORD PTR [rip+0xf513a]        # 0x3d7250
2e2116 mov    DWORD PTR [rsp+0x68],ecx
2e211a mov    rcx,r15
2e211d movsd  QWORD PTR [rsp+0x30],xmm0
2e2123 mov    DWORD PTR [rsp+0x38],eax
2e2127 movsd  QWORD PTR [rsp+0x60],xmm1
2e212d call   0x369164
2e2132 lea    r9,[rsp+0x30]
2e2137 mov    QWORD PTR [rsp+0x20],rbx
2e213c lea    r8,[rsp+0x60]
2e2141 lea    rdx,[rsp+0x40]
2e2146 movsd  xmm0,QWORD PTR [rax]
2e214a lea    rcx,[rbp-0x80]
2e214e mov    eax,DWORD PTR [rax+0x8]
2e2151 movsd  QWORD PTR [rsp+0x40],xmm0
2e2157 mov    DWORD PTR [rsp+0x48],eax
2e215b call   0x2e2374
2e2160 lea    rcx,[rbp-0x80]
2e2164 call   0x2e3b58
2e2169 test   al,al
2e216b jne    0x2e2255
2e2171 lea    rdx,[rbp-0x70]
2e2175 lea    rcx,[rbp-0x80]
2e2179 call   0x2e1278
2e217e mov    rcx,rax
2e2181 lea    rdx,[rbp-0x50]
2e2185 movaps xmm2,xmm6
2e2188 call   0x2df66c
2e218d lea    rdx,[rsp+0x60]
2e2192 mov    rcx,r15
2e2195 mov    rbx,rax
2e2198 call   0x369164
2e219d mov    r8,rax
2e21a0 lea    rdx,[rsp+0x40]
2e21a5 mov    rcx,rbx
2e21a8 call   0x2df708
2e21ad lea    rdx,[rbp-0x70]
2e21b1 mov    rcx,r15
2e21b4 movsd  xmm0,QWORD PTR [rax]
2e21b8 movsd  QWORD PTR [rsp+0x70],xmm0
2e21be mov    eax,DWORD PTR [rax+0x8]
2e21c1 mov    DWORD PTR [rsp+0x78],eax
2e21c5 call   0x369164
2e21ca mov    r8,rax
2e21cd lea    rdx,[rbp-0x50]
2e21d1 lea    rcx,[rsp+0x70]
2e21d6 call   0x2df6cc
2e21db mov    rcx,rax
2e21de lea    rdx,[rsp+0x30]
2e21e3 call   0x2e1278
2e21e8 movss  xmm2,DWORD PTR [rip+0xfffffffffffab064]        # 0x28d254
2e21ef 
2e21f0 lea    rcx,[rbp-0x70]
2e21f4 xorps  xmm3,xmm3
2e21f7 xorps  xmm1,xmm1
2e21fa call   0x3c7ba8
2e21ff lea    r8,[rsp+0x60]
2e2204 lea    rdx,[rsp+0x40]
2e2209 lea    rcx,[rbp-0x50]
2e220d movsd  xmm0,QWORD PTR [rax]
2e2211 mov    eax,DWORD PTR [rax+0x8]
2e2214 movsd  QWORD PTR [rsp+0x60],xmm0
2e221a movsd  xmm0,QWORD PTR [rsp+0x30]
2e2220 mov    DWORD PTR [rsp+0x68],eax
2e2224 mov    eax,DWORD PTR [rsp+0x38]
2e2228 movsd  QWORD PTR [rsp+0x40],xmm0
2e222e mov    DWORD PTR [rsp+0x48],eax
2e2232 call   0x2e0ff0
2e2237 movups xmm0,XMMWORD PTR [rbp-0x50]
2e223b mov    rbx,QWORD PTR [rbp+0x150]
2e2242 lea    rdx,[rbp-0x70]
2e2246 mov    rcx,rbx
2e2249 movdqa XMMWORD PTR [rbp-0x70],xmm0
2e224e call   0x373d04
2e2253 jmp    0x2e225c
2e2255 mov    rbx,QWORD PTR [rbp+0x150]
2e225c lea    rcx,[rbp-0x30]
2e2260 call   0x2cc4f4
2e2265 mov    rdi,QWORD PTR [rsp+0x50]
2e226a jmp    0x2e2273
2e226c mov    rbx,QWORD PTR [rbp+0x150]
2e2273 mov    DWORD PTR [rdi+0x50],0x0
2e227a jmp    0x2e2283
2e227c mov    rbx,QWORD PTR [rbp+0x150]
2e2283 movss  DWORD PTR [r14+0x40],xmm6
2e2289 lea    rdx,[rip+0x101d50]        # 0x3e3fe0
2e2290 mov    DWORD PTR [r14+0x3c],0x0
2e2297 
2e2298 mov    r9,r13
2e229b mov    DWORD PTR [r14+0x44],0x0
2e22a2 
2e22a3 mov    r8,r12
2e22a6 mov    rcx,QWORD PTR [rip+0xf3bb3]        # 0x3d5e60
2e22ad call   0x2d2094
2e22b2 movups xmm0,XMMWORD PTR [rbp-0x10]
2e22b6 lea    rdx,[rbp-0x70]
2e22ba mov    rcx,rbx
2e22bd movdqa XMMWORD PTR [rbp-0x70],xmm0
2e22c2 call   0x373d04
2e22c7 movss  DWORD PTR [rdi+0x50],xmm10
2e22cd movss  DWORD PTR [r14+0x40],xmm8
2e22d3 movss  DWORD PTR [r14+0x3c],xmm11
2e22d9 movss  DWORD PTR [r14+0x44],xmm12
2e22df lea    r11,[rsp+0x200]
2e22e6 
2e22e7 mov    rbx,QWORD PTR [r11+0x40]
2e22eb movaps xmm6,XMMWORD PTR [r11-0x10]
2e22f0 movaps xmm7,XMMWORD PTR [r11-0x20]
2e22f5 movaps xmm8,XMMWORD PTR [r11-0x30]
2e22fa movaps xmm10,XMMWORD PTR [r11-0x40]
2e22ff movaps xmm11,XMMWORD PTR [r11-0x50]
2e2304 movaps xmm12,XMMWORD PTR [r11-0x60]
2e2309 movaps xmm13,XMMWORD PTR [r11-0x70]
2e230e mov    rsp,r11
2e2311 pop    r15
2e2313 pop    r14
2e2315 pop    r13
2e2317 pop    r12
2e2319 pop    rdi
2e231a pop    rsi
2e231b pop    rbp
2e231c ret
