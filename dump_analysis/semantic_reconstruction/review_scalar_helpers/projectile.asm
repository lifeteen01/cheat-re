; projectile independent pdata/next-pdata extent 3727e0..372953 unwind3d4014
3727e0 rex push rbx
3727e2 push   rbp
3727e3 push   rsi
3727e4 push   rdi
3727e5 sub    rsp,0x78
3727e9 movaps XMMWORD PTR [rsp+0x60],xmm6
3727ee mov    rbx,rcx
3727f1 call   0x2caf08
3727f6 test   al,al
3727f8 je     0x37293d
3727fe cmp    edx,0xffffffff
372801 je     0x372818
372803 movd   xmm6,edx
372807 movd   xmm0,r8d
37280c cvtdq2ps xmm6,xmm6
37280f cvtdq2ps xmm0,xmm0
372812 divss  xmm6,xmm0
372816 jmp    0x37282b
372818 movss  xmm1,DWORD PTR [rip+0xfffffffffff1aa34]        # 0x28d254
37281f 
372820 xorps  xmm0,xmm0
372823 call   0x2e3d5c
372828 movaps xmm6,xmm0
37282b mov    rbp,QWORD PTR [rbx+0x50]
37282f mov    rcx,rbp
372832 call   0x2caf08
372837 test   al,al
372839 je     0x37293d
37283f mov    eax,DWORD PTR [rip+0x8e5db]        # 0x400e20
372845 test   al,0x1
372847 jne    0x3728f8
37284d or     eax,0x1
372850 lea    rdx,[rsp+0xb8]
372857 
372858 lea    rcx,[rsp+0xb8]
37285f 
372860 mov    DWORD PTR [rip+0x8e5ba],eax        # 0x400e20
372866 call   0x2cc730
37286b mov    rcx,rax
37286e call   0x2cdca4
372873 lea    rdx,[rsp+0x31]
372878 mov    rsi,rax
37287b lea    rcx,[rsp+0x30]
372880 call   0x37271c
372885 mov    rcx,rax
372888 call   0x2e9b8c
37288d lea    rdx,[rsp+0x3a]
372892 mov    rdi,rax
372895 lea    rcx,[rsp+0x30]
37289a call   0x3726e4
37289f mov    rcx,rax
3728a2 call   0x2cde34
3728a7 lea    rdx,[rsp+0x46]
3728ac mov    rbx,rax
3728af lea    rcx,[rsp+0x30]
3728b4 call   0x372644
3728b9 mov    rcx,rax
3728bc call   0x2d866c
3728c1 mov    rcx,rax
3728c4 mov    rdx,rbx
3728c7 call   0x334224
3728cc mov    rcx,rax
3728cf mov    DWORD PTR [rsp+0x20],0xffffffff
3728d6 
3728d7 mov    r9,rsi
3728da or     r8d,0xffffffff
3728de mov    rdx,rdi
3728e1 call   0x3349ac
3728e6 mov    r8,QWORD PTR [rax]
3728e9 mov    eax,DWORD PTR [rip+0x8e531]        # 0x400e20
3728ef mov    QWORD PTR [rip+0x8e522],r8        # 0x400e18
3728f6 jmp    0x3728ff
3728f8 mov    r8,QWORD PTR [rip+0x8e519]        # 0x400e18
3728ff test   al,0x2
372901 jne    0x372922
372903 mov    rcx,QWORD PTR [rip+0x63556]        # 0x3d5e60
37290a lea    rdx,[rip+0x8e51f]        # 0x400e30
372911 or     eax,0x2
372914 xor    r9d,r9d
372917 mov    DWORD PTR [rip+0x8e503],eax        # 0x400e20
37291d call   0x2cbd24
372922 mov    rcx,QWORD PTR [rip+0x63537]        # 0x3d5e60
372929 lea    rdx,[rip+0x8e500]        # 0x400e30
372930 movaps xmm3,xmm6
372933 mov    r8,rbp
372936 call   0x32b728
37293b jmp    0x372945
37293d movss  xmm0,DWORD PTR [rip+0xfffffffffff1a90f]        # 0x28d254
372944 
372945 movaps xmm6,XMMWORD PTR [rsp+0x60]
37294a add    rsp,0x78
37294e pop    rdi
37294f pop    rsi
372950 pop    rbp
372951 pop    rbx
372952 ret

; projectile independent pdata/next-pdata extent 372954..372aba unwind3d2578
372954 mov    QWORD PTR [rsp+0x8],rbx
372959 push   rbp
37295a push   rsi
37295b push   rdi
37295c sub    rsp,0x60
372960 mov    rdx,rcx
372963 call   0x2caf08
372968 test   al,al
37296a je     0x372aa2
372970 cmp    BYTE PTR [rdx+0x48],0x0
372974 je     0x372aa2
37297a mov    rbp,QWORD PTR [rdx+0x50]
37297e mov    rcx,rbp
372981 call   0x2caf08
372986 test   al,al
372988 je     0x372aa2
37298e mov    eax,DWORD PTR [rip+0x8e57c]        # 0x400f10
372994 test   al,0x1
372996 jne    0x372a4d
37299c or     eax,0x1
37299f lea    rdx,[rsp+0x88]
3729a6 
3729a7 lea    rcx,[rsp+0x88]
3729ae 
3729af mov    DWORD PTR [rip+0x8e55b],eax        # 0x400f10
3729b5 call   0x2cc730
3729ba mov    rcx,rax
3729bd call   0x2cdca4
3729c2 lea    rdx,[rsp+0x30]
3729c7 mov    rsi,rax
3729ca lea    rcx,[rsp+0x90]
3729d1 
3729d2 call   0x372738
3729d7 mov    rcx,rax
3729da call   0x2e9b8c
3729df lea    rdx,[rsp+0x39]
3729e4 mov    rdi,rax
3729e7 lea    rcx,[rsp+0x90]
3729ee 
3729ef call   0x372700
3729f4 mov    rcx,rax
3729f7 call   0x2cde34
3729fc lea    rdx,[rsp+0x45]
372a01 mov    rbx,rax
372a04 lea    rcx,[rsp+0x90]
372a0b 
372a0c call   0x3726b4
372a11 mov    rcx,rax
372a14 call   0x2d866c
372a19 mov    rcx,rax
372a1c mov    rdx,rbx
372a1f call   0x334224
372a24 or     r8d,0xffffffff
372a28 mov    rcx,rax
372a2b mov    r9,rsi
372a2e mov    DWORD PTR [rsp+0x20],r8d
372a33 mov    rdx,rdi
372a36 call   0x3349ac
372a3b mov    r8,QWORD PTR [rax]
372a3e mov    eax,DWORD PTR [rip+0x8e4cc]        # 0x400f10
372a44 mov    QWORD PTR [rip+0x8e4bd],r8        # 0x400f08
372a4b jmp    0x372a54
372a4d mov    r8,QWORD PTR [rip+0x8e4b4]        # 0x400f08
372a54 test   al,0x2
372a56 jne    0x372a77
372a58 mov    rcx,QWORD PTR [rip+0x63401]        # 0x3d5e60
372a5f lea    rdx,[rip+0x8e4ba]        # 0x400f20
372a66 or     eax,0x2
372a69 xor    r9d,r9d
372a6c mov    DWORD PTR [rip+0x8e49e],eax        # 0x400f10
372a72 call   0x2cbd24
372a77 movss  xmm1,DWORD PTR [rip+0xfffffffffff1a7d5]        # 0x28d254
372a7e 
372a7f xorps  xmm0,xmm0
372a82 call   0x2e3d5c
372a87 mov    rcx,QWORD PTR [rip+0x633d2]        # 0x3d5e60
372a8e lea    rdx,[rip+0x8e48b]        # 0x400f20
372a95 movaps xmm3,xmm0
372a98 mov    r8,rbp
372a9b call   0x32b728
372aa0 jmp    0x372aaa
372aa2 movss  xmm0,DWORD PTR [rip+0xfffffffffff1a7aa]        # 0x28d254
372aa9 
372aaa mov    rbx,QWORD PTR [rsp+0x80]
372ab1 
372ab2 add    rsp,0x60
372ab6 pop    rdi
372ab7 pop    rsi
372ab8 pop    rbp
372ab9 ret

; projectile independent pdata/next-pdata extent 32bd4c..32be05 unwind3d3580
32bd4c mov    QWORD PTR [rsp+0x8],rbx
32bd51 mov    QWORD PTR [rsp+0x10],rsi
32bd56 push   rdi
32bd57 sub    rsp,0x40
32bd5b mov    edx,DWORD PTR [rip+0xcbe6f]        # 0x3f7bd0
32bd61 mov    dil,r9b
32bd64 movaps XMMWORD PTR [rsp+0x30],xmm6
32bd69 mov    rsi,r8
32bd6c movaps xmm6,xmm1
32bd6f mov    rbx,rcx
32bd72 test   dl,0x1
32bd75 jne    0x32bd97
32bd77 mov    r8,QWORD PTR [rip+0xab182]        # 0x3d6f00
32bd7e or     edx,0x1
32bd81 add    r8,0x36586b0
32bd88 mov    DWORD PTR [rip+0xcbe42],edx        # 0x3f7bd0
32bd8e mov    QWORD PTR [rip+0xcbe33],r8        # 0x3f7bc8
32bd95 jmp    0x32bd9e
32bd97 mov    r8,QWORD PTR [rip+0xcbe2a]        # 0x3f7bc8
32bd9e test   dl,0x2
32bda1 jne    0x32bdc2
32bda3 mov    rcx,QWORD PTR [rip+0xaa0b6]        # 0x3d5e60
32bdaa or     edx,0x2
32bdad mov    DWORD PTR [rip+0xcbe1d],edx        # 0x3f7bd0
32bdb3 xor    r9d,r9d
32bdb6 lea    rdx,[rip+0xcbe23]        # 0x3f7be0
32bdbd call   0x2cbd24
32bdc2 mov    rcx,rbx
32bdc5 call   0x3c7bbc
32bdca mov    rcx,QWORD PTR [rip+0xaa08f]        # 0x3d5e60
32bdd1 lea    rdx,[rip+0xcbe08]        # 0x3f7be0
32bdd8 movaps xmm3,xmm6
32bddb mov    BYTE PTR [rsp+0x28],dil
32bde0 mov    r8,rbx
32bde3 mov    QWORD PTR [rsp+0x20],rsi
32bde8 call   0x32b7a0
32bded mov    rsi,QWORD PTR [rsp+0x58]
32bdf2 mov    rax,rbx
32bdf5 mov    rbx,QWORD PTR [rsp+0x50]
32bdfa movaps xmm6,XMMWORD PTR [rsp+0x30]
32bdff add    rsp,0x40
32be03 pop    rdi
32be04 ret

; projectile independent pdata/next-pdata extent 32b728..32b7a0 unwind3d33cc
32b728 rex push rbx
32b72a sub    rsp,0x40
32b72e mov    rbx,rdx
32b731 movaps XMMWORD PTR [rsp+0x30],xmm6
32b736 mov    rdx,r8
32b739 lea    rcx,[rsp+0x20]
32b73e movaps xmm6,xmm3
32b741 call   0x2cc268
32b746 movaps xmm1,xmm6
32b749 lea    rcx,[rsp+0x28]
32b74e call   0x2ddbf8
32b753 movzx  eax,WORD PTR [rsp+0x5a]
32b758 mov    rcx,rbx
32b75b movups xmm0,XMMWORD PTR [rsp+0x20]
32b760 mov    WORD PTR [rbx+0xd2],ax
32b767 lea    rax,[rsp+0x48]
32b76c mov    QWORD PTR [rbx+0x78],rax
32b770 movdqu XMMWORD PTR [rbx+0x88],xmm0
32b777 
32b778 mov    WORD PTR [rbx+0xd0],0x100
32b77f 
32b781 mov    QWORD PTR [rbx+0x80],0x2
32b788 
32b78c call   0x3cdbd4
32b791 movaps xmm6,XMMWORD PTR [rsp+0x30]
32b796 add    rsp,0x40
32b79a pop    rbx
32b79b jmp    0x3cdbb0

; projectile independent pdata/next-pdata extent 32b7a0..32b836 unwind3d243c
32b7a0 rex push rbx
32b7a2 sub    rsp,0x50
32b7a6 mov    rbx,rdx
32b7a9 movaps XMMWORD PTR [rsp+0x40],xmm6
32b7ae mov    rdx,r8
32b7b1 lea    rcx,[rsp+0x20]
32b7b6 movaps xmm6,xmm3
32b7b9 call   0x2cc268
32b7be movaps xmm1,xmm6
32b7c1 lea    rcx,[rsp+0x28]
32b7c6 call   0x2ddbf8
32b7cb mov    rdx,QWORD PTR [rsp+0x80]
32b7d2 
32b7d3 lea    rcx,[rsp+0x30]
32b7d8 call   0x2cc268
32b7dd mov    dl,BYTE PTR [rsp+0x88]
32b7e4 lea    rcx,[rsp+0x38]
32b7e9 call   0x2d4928
32b7ee movups xmm0,XMMWORD PTR [rsp+0x20]
32b7f3 lea    rax,[rsp+0x58]
32b7f8 mov    rcx,rbx
32b7fb movups xmm1,XMMWORD PTR [rsp+0x30]
32b800 mov    DWORD PTR [rbx+0xd0],0x100
32b807 
32b80a movups XMMWORD PTR [rbx+0x88],xmm0
32b811 mov    QWORD PTR [rbx+0x80],0x4
32b818 
32b81c movups XMMWORD PTR [rbx+0x98],xmm1
32b823 mov    QWORD PTR [rbx+0x78],rax
32b827 movaps xmm6,XMMWORD PTR [rsp+0x40]
32b82c add    rsp,0x50
32b830 pop    rbx
32b831 jmp    0x3cdbd4
