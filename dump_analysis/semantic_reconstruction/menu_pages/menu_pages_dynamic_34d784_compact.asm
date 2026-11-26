; pdata function 0x34d784..0x34e43b unwind=0x3d3d14
34d784 mov    rax,rsp
34d787 push   rbp
34d788 push   rbx
34d789 push   rsi
34d78a push   rdi
34d78b push   r13
34d78d push   r14
34d78f push   r15
34d791 lea    rbp,[rax-0x178]
34d798 sub    rsp,0x240
34d79f movaps XMMWORD PTR [rax-0x48],xmm6
34d7a3 movaps XMMWORD PTR [rax-0x58],xmm7
34d7a7 movaps XMMWORD PTR [rax-0x68],xmm8
34d7ac movaps XMMWORD PTR [rax-0x78],xmm11
34d7b1 call   0x38ec90
34d7b6 movss  xmm11,DWORD PTR [rip+0xfffffffffff3fa95]        # 0x28d254 ; f32=1
34d7bf mov    ecx,0x4
34d7c4 movaps xmm1,xmm11
34d7c8 call   0x392298
34d7cd mov    edx,eax
34d7cf mov    ecx,0x8
34d7d4 call   0x398bec
34d7d9 lea    rdx,[rip+0xafae8]        # 0x3fd2c8 ; CONFIG S.SearchInputTest value(+0x48)
34d7e0 lea    rcx,[rbp+0x40]
34d7e4 call   0x2d4194
34d7e9 lea    rcx,[rbp+0x198]
34d7f0 call   0x39233c
34d7f5 movss  xmm8,DWORD PTR [rip+0xfffffffffff40326]        # 0x28db24 ; f32=30
34d7fe movss  xmm6,DWORD PTR [rax]
34d802 mulss  xmm6,DWORD PTR [rip+0xfffffffffff3fa46]        # 0x28d250 ; f32=0.5
34d80a subss  xmm6,xmm8
34d80f call   0x3925cc
34d814 movaps xmm2,xmm0
34d817 lea    rcx,[rbp+0x190]
34d81e movaps xmm1,xmm6
34d821 call   0x2cc340
34d826 lea    rcx,[rbp+0x40]
34d82a call   0x2d8ad8
34d82f lea    rcx,[rbp+0x40]
34d833 mov    rdi,rax
34d836 call   0x2cd7ec
34d83b mov    ecx,DWORD PTR [rip+0xaf8a7]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34d841 mov    r15d,0x1
34d847 mov    rsi,rax
34d84a cmp    ecx,r15d
34d84d jne    0x34d85d
34d84f lea    rcx,[rip+0xfffffffffff5a42a]        # 0x2a7c80
34d856 call   0x365004
34d85b jmp    0x34d884
34d85d cmp    ecx,0x2
34d860 jne    0x34d86b
34d862 lea    rcx,[rip+0xfffffffffff5a427]        # 0x2a7c90
34d869 jmp    0x34d856
34d86b lea    rdx,[rsp+0x40]
34d870 lea    rcx,[rbp+0x188]
34d877 call   0x3538ec ; STRING getter=0x3538ec Search..
34d87c mov    rcx,rax
34d87f call   0x2e9b8c
34d884 lea    rdx,[rbp-0x70]
34d888 mov    rbx,rax
34d88b lea    rcx,[rbp+0x188]
34d892 call   0x352224 ; STRING getter=0x352224 ##search
34d897 mov    rcx,rax
34d89a call   0x2e9b8c
34d89f mov    QWORD PTR [rsp+0x38],0x0
34d8a8 mov    rcx,rax
34d8ab lea    rax,[rbp+0x190]
34d8b2 mov    QWORD PTR [rsp+0x30],0x0
34d8bb mov    DWORD PTR [rsp+0x28],0x5000
34d8c3 mov    r9d,edi
34d8c6 mov    r8,rsi
34d8c9 mov    QWORD PTR [rsp+0x20],rax
34d8ce mov    rdx,rbx
34d8d1 call   0x3c0538
34d8d6 call   0x39408c
34d8db mov    ecx,r15d
34d8de mov    BYTE PTR [rip+0xafc11],al        # 0x3fd4f5
34d8e4 call   0x39890c
34d8e9 mov    eax,DWORD PTR [rip+0xafef9]        # 0x3fd7e8
34d8ef test   r15b,al
34d8f2 jne    0x34d909
34d8f4 or     eax,r15d
34d8f7 lea    rcx,[rip+0x832a6]        # 0x3d0ba4
34d8fe mov    DWORD PTR [rip+0xafee4],eax        # 0x3fd7e8
34d904 call   0x2cd32c
34d909 movss  xmm1,DWORD PTR [rip+0xfffffffffff458ab]        # 0x2931bc ; f32=16
34d911 lea    rcx,[rbp+0x188]
34d918 movaps xmm2,xmm1
34d91b call   0x2cc340
34d920 lea    rdx,[rbp+0x188]
34d927 mov    ecx,0x2
34d92c call   0x398c60
34d931 lea    rcx,[rsp+0x58]
34d936 call   0x39233c
34d93b movss  xmm2,DWORD PTR [rip+0xfffffffffff4591d]        # 0x293260 ; f32=-1
34d943 lea    rcx,[rbp+0x198]
34d94a movss  xmm1,DWORD PTR [rax]
34d94e mulss  xmm1,DWORD PTR [rip+0xfffffffffff3f8fa]        # 0x28d250 ; f32=0.5
34d956 subss  xmm1,xmm8
34d95b call   0x2cc340
34d960 lea    rdx,[rbp+0x190]
34d967 lea    rcx,[rbp+0x188]
34d96e call   0x354d24 ; STRING getter=0x354d24 list
34d973 mov    rcx,rax
34d976 call   0x2cdccc
34d97b mov    rcx,rax
34d97e lea    rdx,[rbp+0x198]
34d985 mov    r9d,0x10000
34d98b xor    r8d,r8d
34d98e call   0x38e97c
34d993 lea    r13,[rip+0xae6fe]        # 0x3fc098
34d99a mov    rcx,r13
34d99d call   0x2dcf98
34d9a2 lea    r14,[rip+0xffffffffffecaea7]        # 0x218850
34d9a9 xor    esi,esi
34d9ab mov    rcx,r14
34d9ae call   0x364fe0
34d9b3 test   rax,rax
34d9b6 je     0x34db7b
34d9bc movsxd rdx,esi
34d9bf mov    rcx,r14
34d9c2 call   0x3367a4
34d9c7 lea    rdx,[rbp+0x198]
34d9ce mov    r14,rax
34d9d1 lea    rcx,[rax+0x48]
34d9d5 call   0x2d86d4
34d9da lea    rdx,[rsp+0x58]
34d9df lea    rcx,[r14+0x48]
34d9e3 mov    rbx,QWORD PTR [rax]
34d9e6 call   0x2d7cf0
34d9eb lea    rcx,[rbp+0x188]
34d9f2 mov    rdi,rax
34d9f5 call   0x2cb3a4
34d9fa mov    rdx,QWORD PTR [rdi]
34d9fd lea    rcx,[rbp-0x58]
34da01 mov    r9,rax
34da04 mov    r8,rbx
34da07 call   0x335520
34da0c lea    rdi,[rip+0xaf8b5]        # 0x3fd2c8 ; CONFIG S.SearchInputTest value(+0x48)
34da13 mov    rcx,rdi
34da16 call   0x3360f0
34da1b test   al,al
34da1d jne    0x34db48
34da23 lea    rdx,[r14+0x28]
34da27 lea    rcx,[rbp-0x38]
34da2b call   0x2d4194
34da30 mov    edx,DWORD PTR [r14+0x90]
34da37 lea    rcx,[rbp-0x10]
34da3b call   0x2d9510
34da40 lea    rdx,[rbp+0x28]
34da44 mov    rcx,rdi
34da47 call   0x2d86d4
34da4c lea    rdx,[rbp+0x30]
34da50 mov    rcx,rdi
34da53 mov    rbx,QWORD PTR [rax]
34da56 call   0x2d7cf0
34da5b lea    rcx,[rbp+0x190]
34da62 mov    rdi,rax
34da65 call   0x2cb3a4
34da6a mov    rdx,QWORD PTR [rdi]
34da6d lea    rcx,[rsp+0x60]
34da72 mov    r9,rax
34da75 mov    r8,rbx
34da78 call   0x335520
34da7d lea    rdx,[rbp-0x80]
34da81 lea    rcx,[rbp-0x38]
34da85 call   0x2d7cf0
34da8a lea    rdx,[rbp+0x10]
34da8e lea    rcx,[rbp-0x38]
34da92 mov    rdi,QWORD PTR [rax]
34da95 call   0x2d86d4
34da9a lea    rdx,[rbp-0x70]
34da9e lea    rcx,[rbp-0x38]
34daa2 mov    rbx,QWORD PTR [rax]
34daa5 call   0x2d7cf0
34daaa lea    rcx,[rip+0xfffffffffff88a5f]        # 0x2d6510
34dab1 mov    r9,rdi
34dab4 mov    QWORD PTR [rsp+0x20],rcx
34dab9 mov    r8,rbx
34dabc lea    rcx,[rsp+0x40]
34dac1 mov    rdx,QWORD PTR [rax]
34dac4 call   0x3362d0
34dac9 xor    r8d,r8d
34dacc lea    rdx,[rsp+0x60]
34dad1 lea    rcx,[rbp-0x38]
34dad5 call   0x2d88e0
34dada cmp    rax,0xffffffffffffffff
34dade jne    0x34db2c
34dae0 xor    r8d,r8d
34dae3 lea    rdx,[rsp+0x60]
34dae8 lea    rcx,[rbp-0x58]
34daec call   0x2d88e0
34daf1 cmp    rax,0xffffffffffffffff
34daf5 jne    0x34db2c
34daf7 xor    r8d,r8d
34dafa lea    rdx,[rsp+0x60]
34daff lea    rcx,[rbp-0x10]
34db03 call   0x2d88e0
34db08 cmp    rax,0xffffffffffffffff
34db0c jne    0x34db2c
34db0e lea    rcx,[rsp+0x60]
34db13 call   0x2cc4f4
34db18 lea    rcx,[rbp-0x10]
34db1c call   0x2cc4f4
34db21 lea    rcx,[rbp-0x38]
34db25 call   0x2cc4f4
34db2a jmp    0x34db54
34db2c lea    rcx,[rsp+0x60]
34db31 call   0x2cc4f4
34db36 lea    rcx,[rbp-0x10]
34db3a call   0x2cc4f4
34db3f lea    rcx,[rbp-0x38]
34db43 call   0x2cc4f4
34db48 lea    rdx,[r14+0x28]
34db4c mov    rcx,r13
34db4f call   0x2d901c
34db54 lea    rcx,[rbp-0x58]
34db58 call   0x2cc4f4
34db5d lea    r14,[rip+0xffffffffffecacec]        # 0x218850
34db64 add    esi,r15d
34db67 mov    rcx,r14
34db6a call   0x364fe0
34db6f movsxd rcx,esi
34db72 cmp    rcx,rax
34db75 jb     0x34d9bc
34db7b mov    rcx,r13
34db7e call   0x2d86a0
34db83 test   al,al
34db85 je     0x34db93
34db87 mov    DWORD PTR [rip+0xafc5b],0xffffffff        # 0x3fd7ec
34db91 jmp    0x34dbbc
34db93 movsxd rbx,DWORD PTR [rip+0xafc52]        # 0x3fd7ec
34db9a test   ebx,ebx
34db9c js     0x34dbab
34db9e mov    rcx,r13
34dba1 call   0x2d93e8
34dba6 cmp    rbx,rax
34dba9 jb     0x34dbbc
34dbab mov    rcx,r13
34dbae call   0x2d93e8
34dbb3 sub    eax,r15d
34dbb6 mov    DWORD PTR [rip+0xafc30],eax        # 0x3fd7ec
34dbbc mov    rcx,r13
34dbbf call   0x2d86a0
34dbc4 xorps  xmm7,xmm7
34dbc7 test   al,al
34dbc9 jne    0x34dc47
34dbcb lea    rcx,[rbp+0x188]
34dbd2 call   0x39233c
34dbd7 xorps  xmm2,xmm2
34dbda lea    rcx,[rbp+0x188]
34dbe1 movss  xmm1,DWORD PTR [rax]
34dbe5 call   0x2cc340
34dbea mov    rdx,r13
34dbed lea    rcx,[rsp+0x40]
34dbf2 call   0x2db2bc
34dbf7 mov    rdx,r13
34dbfa lea    rcx,[rbp-0x70]
34dbfe mov    rdi,rax
34dc01 call   0x2db2bc
34dc06 lea    rdx,[rbp+0x190]
34dc0d mov    rbx,rax
34dc10 lea    rcx,[rbp+0x188]
34dc17 call   0x356580 ; STRING getter=0x356580 Player
34dc1c mov    rcx,rax
34dc1f call   0x2cdcf4
34dc24 mov    rdx,QWORD PTR [rbp+0x188]
34dc2b lea    r8,[rip+0xafbba]        # 0x3fd7ec
34dc32 mov    rcx,rax
34dc35 mov    BYTE PTR [rsp+0x28],r15b
34dc3a mov    r9,rbx
34dc3d mov    QWORD PTR [rsp+0x20],rdi
34dc42 call   0x387a4c
34dc47 call   0x390a88
34dc4c mov    ecx,r15d
34dc4f call   0x39896c
34dc54 call   0x390efc
34dc59 movss  xmm1,DWORD PTR [rip+0xfffffffffff455ff]        # 0x293260 ; f32=-1
34dc61 xorps  xmm0,xmm0
34dc64 call   0x39ac04
34dc69 movss  xmm2,DWORD PTR [rip+0xfffffffffff455ef]        # 0x293260 ; f32=-1
34dc71 lea    rcx,[rbp+0x198]
34dc78 xorps  xmm1,xmm1
34dc7b call   0x2cc340
34dc80 lea    rdx,[rsp+0x40]
34dc85 lea    rcx,[rbp+0x188]
34dc8c movsd  xmm6,QWORD PTR [rax]
34dc90 call   0x357f68 ; STRING getter=0x357f68 All Options
34dc95 mov    rcx,rax
34dc98 call   0x2cde34
34dc9d lea    rdx,[rbp+0x190]
34dca4 mov    rbx,rax
34dca7 lea    rcx,[rbp+0x188]
34dcae call   0x35073c ; STRING getter=0x35073c H
34dcb3 mov    rcx,rax
34dcb6 call   0x2d8464
34dcbb mov    rdx,rax
34dcbe lea    rcx,[rbp+0x60]
34dcc2 call   0x2cc2cc
34dcc7 mov    rcx,rax
34dcca mov    r9b,r15b
34dccd movq   r8,xmm6
34dcd2 mov    rdx,rbx
34dcd5 call   0x384df0
34dcda movsxd rbx,DWORD PTR [rip+0xafb0b]        # 0x3fd7ec
34dce1 test   ebx,ebx
34dce3 js     0x34e403
34dce9 mov    rcx,r13
34dcec call   0x2d93e8
34dcf1 cmp    rbx,rax
34dcf4 jae    0x34e403
34dcfa lea    rdx,[rbp+0x188]
34dd01 mov    rcx,r14
34dd04 call   0x2d87b0
34dd09 lea    rdx,[rbp+0x190]
34dd10 mov    rcx,r14
34dd13 mov    rbx,QWORD PTR [rax]
34dd16 call   0x2d7d90
34dd1b mov    r9b,BYTE PTR [rbp+0x188]
34dd22 lea    rcx,[rbp+0x198]
34dd29 mov    r8,rbx
34dd2c mov    rdx,QWORD PTR [rax]
34dd2f call   0x33615c
34dd34 lea    rdx,[rsp+0x40]
34dd39 mov    rcx,r14
34dd3c mov    rbx,rax
34dd3f call   0x2d7d90
34dd44 mov    rdx,rax
34dd47 mov    rcx,rbx
34dd4a call   0x3367c0
34dd4f mov    rcx,r14
34dd52 movsxd rbx,eax
34dd55 call   0x364fe0
34dd5a cmp    rbx,rax
34dd5d jae    0x34e403
34dd63 mov    rdx,rbx
34dd66 mov    rcx,r14
34dd69 call   0x3367a4
34dd6e xor    ecx,ecx
34dd70 mov    r14,rax
34dd73 call   0x2caf08
34dd78 test   al,al
34dd7a je     0x34de66
34dd80 movss  xmm1,DWORD PTR [rip+0xfffffffffff3fdbc]        # 0x28db44 ; f32=100
34dd88 lea    rcx,[rbp+0x188]
34dd8f movaps xmm2,xmm1
34dd92 call   0x2cc340
34dd97 lea    rcx,[rbp+0x190]
34dd9e call   0x39233c
34dda3 movss  xmm1,DWORD PTR [rbp+0x190]
34ddab lea    rcx,[rbp+0x198]
34ddb2 subss  xmm1,DWORD PTR [rbp+0x188]
34ddba xorps  xmm2,xmm2
34ddbd addss  xmm1,DWORD PTR [rip+0xfffffffffff45417]        # 0x2931dc ; f32=28
34ddc5 call   0x2cc340
34ddca lea    rcx,[rsp+0x58]
34ddcf call   0x3923d8
34ddd4 lea    rcx,[rbp+0x198]
34dddb call   0x39b3b8
34dde0 xorps  xmm3,xmm3
34dde3 movss  DWORD PTR [rsp+0x20],xmm7
34dde9 xorps  xmm2,xmm2
34ddec lea    rcx,[rbp+0x10]
34ddf0 xorps  xmm1,xmm1
34ddf3 call   0x2cc350
34ddf8 movaps xmm3,xmm11
34ddfc movss  DWORD PTR [rsp+0x20],xmm11
34de03 movaps xmm2,xmm11
34de07 lea    rcx,[rbp-0x80]
34de0b movaps xmm1,xmm11
34de0f mov    rsi,rax
34de12 call   0x2cc350
34de17 movaps xmm2,xmm11
34de1b lea    rcx,[rsp+0x40]
34de20 movaps xmm1,xmm11
34de24 mov    rdi,rax
34de27 call   0x2cc340
34de2c xorps  xmm2,xmm2
34de2f lea    rcx,[rbp-0x70]
34de33 xorps  xmm1,xmm1
34de36 mov    rbx,rax
34de39 call   0x2cc340
34de3e mov    r8,rax
34de41 mov    QWORD PTR [rsp+0x28],rsi
34de46 mov    r9,rbx
34de49 mov    QWORD PTR [rsp+0x20],rdi
34de4e lea    rdx,[rbp+0x188]
34de55 xor    ecx,ecx
34de57 call   0x3c01ac
34de5c lea    rcx,[rsp+0x58]
34de61 call   0x39b3b8
34de66 lea    rdx,[r14+0x48]
34de6a lea    rcx,[rsp+0x60]
34de6f call   0x2d4194
34de74 lea    rdx,[r14+0x28]
34de78 lea    rcx,[rbp-0x58]
34de7c call   0x2d4194
34de81 mov    edx,DWORD PTR [r14+0x90]
34de88 lea    rcx,[rbp+0x60]
34de8c call   0x2d9510
34de91 lea    rdx,[r14+0x68]
34de95 lea    rcx,[rbp+0x80]
34de9c call   0x2d4194
34dea1 lea    rcx,[rsp+0x60]
34dea6 call   0x2d8694
34deab test   al,al
34dead jne    0x34e3db
34deb3 lea    rcx,[rbp-0x58]
34deb7 call   0x2d8694
34debc test   al,al
34debe jne    0x34e3db
34dec4 call   0x392f34
34dec9 mulss  xmm0,DWORD PTR [rip+0xfffffffffff3f37f]        # 0x28d250 ; f32=0.5
34ded1 lea    rcx,[rbp+0x190]
34ded8 movaps xmm2,xmm8
34dedc subss  xmm0,xmm8
34dee1 movaps xmm1,xmm0
34dee4 call   0x2cc340
34dee9 lea    rdx,[rsp+0x40]
34deee lea    rcx,[rbp+0x188]
34def5 call   0x358c60 ; STRING getter=0x358c60 Refresh List
34defa mov    rcx,rax
34defd call   0x2d85f4
34df02 mov    rcx,rax
34df05 lea    rdx,[rbp+0x190]
34df0c call   0x3bc7d8
34df11 test   al,al
34df13 je     0x34df2b
34df15 lea    rcx,[rip+0xffffffffffeca934]        # 0x218850
34df1c mov    DWORD PTR [rip+0xaf8c6],0xffffffff        # 0x3fd7ec
34df26 call   0x36306c
34df2b movss  xmm1,DWORD PTR [rip+0xfffffffffff4532d]        # 0x293260 ; f32=-1
34df33 xorps  xmm0,xmm0
34df36 call   0x39ac04
34df3b call   0x392f34
34df40 mulss  xmm0,DWORD PTR [rip+0xfffffffffff3f308]        # 0x28d250 ; f32=0.5
34df48 lea    rcx,[rbp+0x190]
34df4f movaps xmm2,xmm8
34df53 subss  xmm0,xmm8
34df58 movaps xmm1,xmm0
34df5b call   0x2cc340
34df60 lea    rdx,[rsp+0x40]
34df65 lea    rcx,[rbp+0x188]
34df6c call   0x35a6a4 ; STRING getter=0x35a6a4 Copy Steam Link
34df71 mov    rcx,rax
34df74 call   0x2dd160
34df79 mov    rcx,rax
34df7c lea    rdx,[rbp+0x190]
34df83 call   0x3bc7d8
34df88 test   al,al
34df8a je     0x34e0ce
34df90 lea    rdx,[rbp-0x38]
34df94 lea    rcx,[rbp+0x188]
34df9b call   0x345490 ; STRING getter=0x345490 https://steamcommunity.com/profiles/
34dfa0 mov    rcx,rax
34dfa3 call   0x363cfc
34dfa8 mov    rdx,rax
34dfab lea    r8,[rsp+0x60]
34dfb0 lea    rcx,[rbp-0x10]
34dfb4 call   0x2ea714
34dfb9 mov    eax,DWORD PTR [rip+0xaf829]        # 0x3fd7e8
34dfbf test   al,0x2
34dfc1 jne    0x34e074
34dfc7 or     eax,0x2
34dfca lea    rdx,[rbp+0x188]
34dfd1 lea    rcx,[rbp+0x188]
34dfd8 mov    DWORD PTR [rip+0xaf80a],eax        # 0x3fd7e8
34dfde call   0x2cc730
34dfe3 mov    rcx,rax
34dfe6 call   0x2cdca4
34dfeb lea    rdx,[rbp+0x10]
34dfef mov    rsi,rax
34dff2 lea    rcx,[rbp+0x190]
34dff9 call   0x3512e8 ; STRING getter=0x3512e8 set_systemCopyBuffer
34dffe mov    rcx,rax
34e001 call   0x3204bc
34e006 lea    rdx,[rbp-0x70]
34e00a mov    rdi,rax
34e00d lea    rcx,[rbp+0x190]
34e014 call   0x350e34 ; STRING getter=0x350e34 UnityEngine
34e019 mov    rcx,rax
34e01c call   0x2cde34
34e021 lea    rdx,[rsp+0x40]
34e026 mov    rbx,rax
34e029 lea    rcx,[rbp+0x190]
34e030 call   0x35069c ; STRING getter=0x35069c GUIUtility
34e035 mov    rcx,rax
34e038 call   0x2e9c54
34e03d mov    rcx,rax
34e040 mov    rdx,rbx
34e043 call   0x334224
34e048 mov    rcx,rax
34e04b mov    DWORD PTR [rsp+0x20],0xffffffff
34e053 mov    r9,rsi
34e056 or     r8d,0xffffffff
34e05a mov    rdx,rdi
34e05d call   0x3349ac
34e062 mov    r8,QWORD PTR [rax]
34e065 mov    eax,DWORD PTR [rip+0xaf77d]        # 0x3fd7e8
34e06b mov    QWORD PTR [rip+0xaf77e],r8        # 0x3fd7f0
34e072 jmp    0x34e07b
34e074 mov    r8,QWORD PTR [rip+0xaf775]        # 0x3fd7f0
34e07b test   al,0x4
34e07d jne    0x34e09e
34e07f mov    rcx,QWORD PTR [rip+0x87dda]        # 0x3d5e60
34e086 lea    rdx,[rip+0xaf773]        # 0x3fd800
34e08d or     eax,0x4
34e090 xor    r9d,r9d
34e093 mov    DWORD PTR [rip+0xaf74f],eax        # 0x3fd7e8
34e099 call   0x2cbd24
34e09e lea    rcx,[rbp-0x10]
34e0a2 call   0x2cd7ec
34e0a7 mov    rcx,rax
34e0aa call   0x2ce5dc
34e0af mov    rcx,QWORD PTR [rip+0x87daa]        # 0x3d5e60
34e0b6 lea    rdx,[rip+0xaf743]        # 0x3fd800
34e0bd mov    r8,rax
34e0c0 call   0x2cb9fc
34e0c5 lea    rcx,[rbp-0x10]
34e0c9 call   0x2cc4f4
34e0ce lea    rcx,[rbp+0x188]
34e0d5 call   0x2cb3a4
34e0da mov    ecx,DWORD PTR [rip+0xaf008]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34e0e0 mov    rbx,rax
34e0e3 cmp    ecx,r15d
34e0e6 jne    0x34e0f1
34e0e8 lea    rcx,[rip+0xfffffffffff59bb1]        # 0x2a7ca0
34e0ef jmp    0x34e0fd
34e0f1 cmp    ecx,0x2
34e0f4 jne    0x34e104
34e0f6 lea    rcx,[rip+0xfffffffffff59bbb]        # 0x2a7cb8
34e0fd call   0x365004
34e102 jmp    0x34e11d
34e104 lea    rdx,[rsp+0x40]
34e109 lea    rcx,[rbp+0x188]
34e110 call   0x3517cc
34e115 mov    rcx,rax
34e118 call   0x2e3614
34e11d mov    rdx,rax
34e120 lea    rcx,[rbp+0xa0]
34e127 call   0x2cc2cc
34e12c mov    eax,DWORD PTR [rip+0xaefb6]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34e132 cmp    eax,r15d
34e135 jne    0x34e140
34e137 lea    rcx,[rip+0xfffffffffff59b82]        # 0x2a7cc0
34e13e jmp    0x34e14c
34e140 cmp    eax,0x2
34e143 jne    0x34e153
34e145 lea    rcx,[rip+0xfffffffffff59b8c]        # 0x2a7cd8
34e14c call   0x365004
34e151 jmp    0x34e16b
34e153 lea    rdx,[rbp-0x70]
34e157 lea    rcx,[rbp+0x190]
34e15e call   0x351a74 ; STRING getter=0x351a74 Friendly
34e163 mov    rcx,rax
34e166 call   0x2e9b8c
34e16b mov    rdx,rax
34e16e lea    rcx,[rbp+0xc0]
34e175 call   0x2cc2cc
34e17a mov    eax,DWORD PTR [rip+0xaef68]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34e180 cmp    eax,r15d
34e183 jne    0x34e18e
34e185 lea    rcx,[rip+0xfffffffffff4a6c4]        # 0x298850
34e18c jmp    0x34e19a
34e18e cmp    eax,0x2
34e191 jne    0x34e1a1
34e193 lea    rcx,[rip+0xfffffffffff4a6c2]        # 0x29885c
34e19a call   0x365004
34e19f jmp    0x34e1bc
34e1a1 lea    rdx,[rbp+0x198]
34e1a8 lea    rcx,[rbp+0x190]
34e1af call   0x351c88 ; STRING getter=0x351c88 Enemy
34e1b4 mov    rcx,rax
34e1b7 call   0x2d84dc
34e1bc mov    rdx,rax
34e1bf lea    rcx,[rbp+0xe0]
34e1c6 call   0x2cc2cc
34e1cb lea    r8,[rbp+0x100]
34e1d2 lea    rdx,[rbp+0xa0]
34e1d9 lea    rcx,[rbp+0x30]
34e1dd call   0x2cc46c
34e1e2 mov    r8,rbx
34e1e5 lea    rdx,[rbp-0x80]
34e1e9 lea    rcx,[rbp-0x38]
34e1ed movups xmm0,XMMWORD PTR [rax]
34e1f0 movdqu XMMWORD PTR [rbp-0x80],xmm0
34e1f5 call   0x336438
34e1fa lea    rdx,[rsp+0x60]
34e1ff mov    rbx,rax
34e202 lea    rcx,[rip+0x89057]        # 0x3d7260
34e209 call   0x2ef794
34e20e mov    ecx,DWORD PTR [rip+0xaeed4]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34e214 lea    rdi,[rax+0x24]
34e218 cmp    ecx,r15d
34e21b jne    0x34e226
34e21d lea    rcx,[rip+0xfffffffffff59abc]        # 0x2a7ce0
34e224 jmp    0x34e232
34e226 cmp    ecx,0x2
34e229 jne    0x34e239
34e22b lea    rcx,[rip+0xfffffffffff59ade]        # 0x2a7d10
34e232 call   0x365004
34e237 jmp    0x34e251
34e239 lea    rdx,[rbp+0x10]
34e23d lea    rcx,[rbp+0x190]
34e244 call   0x35153c ; STRING getter=0x35153c Custom status
34e249 mov    rcx,rax
34e24c call   0x2dd188
34e251 mov    r8,rbx
34e254 mov    rdx,rdi
34e257 mov    rcx,rax
34e25a call   0x3bf008
34e25f mov    edx,0x20
34e264 lea    r9,[rip+0xfffffffffff7e289]        # 0x2cc4f4
34e26b lea    rcx,[rbp+0xa0]
34e272 lea    r8d,[rdx-0x1d]
34e276 call   0x2dbac8
34e27b lea    rcx,[rbp-0x58]
34e27f call   0x2cd7ec
34e284 mov    ecx,DWORD PTR [rip+0xaee5e]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34e28a mov    rbx,rax
34e28d cmp    ecx,r15d
34e290 jne    0x34e29b
34e292 lea    rcx,[rip+0xfffffffffff59a87]        # 0x2a7d20
34e299 jmp    0x34e2a7
34e29b cmp    ecx,0x2
34e29e jne    0x34e2ae
34e2a0 lea    rcx,[rip+0xfffffffffff59a89]        # 0x2a7d30
34e2a7 call   0x365004
34e2ac jmp    0x34e2c7
34e2ae lea    rdx,[rsp+0x40]
34e2b3 lea    rcx,[rbp+0x188]
34e2ba call   0x351eb4 ; STRING getter=0x351eb4 Name: %s
34e2bf mov    rcx,rax
34e2c2 call   0x2e9b8c
34e2c7 mov    rdx,rbx
34e2ca mov    rcx,rax
34e2cd call   0x3c4e90
34e2d2 lea    rcx,[rsp+0x60]
34e2d7 call   0x2cd7ec
34e2dc mov    ecx,DWORD PTR [rip+0xaee06]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34e2e2 mov    rbx,rax
34e2e5 cmp    ecx,r15d
34e2e8 jne    0x34e2f3
34e2ea lea    rcx,[rip+0xfffffffffff59a4f]        # 0x2a7d40
34e2f1 jmp    0x34e2ff
34e2f3 cmp    ecx,0x2
34e2f6 jne    0x34e306
34e2f8 lea    rcx,[rip+0xfffffffffff59a59]        # 0x2a7d58
34e2ff call   0x365004
34e304 jmp    0x34e31f
34e306 lea    rdx,[rsp+0x40]
34e30b lea    rcx,[rbp+0x188]
34e312 call   0x352168 ; STRING getter=0x352168 Steam ID: %s
34e317 mov    rcx,rax
34e31a call   0x2d85f4
34e31f mov    rdx,rbx
34e322 mov    rcx,rax
34e325 call   0x3c4e90
34e32a lea    rcx,[rbp+0x60]
34e32e call   0x2cd7ec
34e333 mov    ecx,DWORD PTR [rip+0xaedaf]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34e339 mov    rbx,rax
34e33c cmp    ecx,r15d
34e33f jne    0x34e34a
34e341 lea    rcx,[rip+0xfffffffffff59a28]        # 0x2a7d70
34e348 jmp    0x34e356
34e34a cmp    ecx,0x2
34e34d jne    0x34e35d
34e34f lea    rcx,[rip+0xfffffffffff59a3a]        # 0x2a7d90
34e356 call   0x365004
34e35b jmp    0x34e376
34e35d lea    rdx,[rsp+0x40]
34e362 lea    rcx,[rbp+0x188]
34e369 call   0x3524f4 ; STRING getter=0x3524f4 Team ID: %s
34e36e mov    rcx,rax
34e371 call   0x2cde34
34e376 mov    rdx,rbx
34e379 mov    rcx,rax
34e37c call   0x3c4e90
34e381 lea    rcx,[rbp+0x80]
34e388 call   0x2cd7ec
34e38d mov    ecx,DWORD PTR [rip+0xaed55]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34e393 mov    rbx,rax
34e396 cmp    ecx,r15d
34e399 jne    0x34e3a4
34e39b lea    rcx,[rip+0xfffffffffff59a06]        # 0x2a7da8
34e3a2 jmp    0x34e3b0
34e3a4 cmp    ecx,0x2
34e3a7 jne    0x34e3b7
34e3a9 lea    rcx,[rip+0xfffffffffff59a38]        # 0x2a7de8
34e3b0 call   0x365004
34e3b5 jmp    0x34e3d0
34e3b7 lea    rdx,[rsp+0x40]
34e3bc lea    rcx,[rbp+0x188]
34e3c3 call   0x352704 ; STRING getter=0x352704 Last Known Grid : %s
34e3c8 mov    rcx,rax
34e3cb call   0x3204bc
34e3d0 mov    rdx,rbx
34e3d3 mov    rcx,rax
34e3d6 call   0x3c4e90
34e3db lea    rcx,[rbp+0x80]
34e3e2 call   0x2cc4f4
34e3e7 lea    rcx,[rbp+0x60]
34e3eb call   0x2cc4f4
34e3f0 lea    rcx,[rbp-0x58]
34e3f4 call   0x2cc4f4
34e3f9 lea    rcx,[rsp+0x60]
34e3fe call   0x2cc4f4
34e403 call   0x38724c
34e408 lea    rcx,[rbp+0x40]
34e40c call   0x2cc4f4
34e411 lea    r11,[rsp+0x240]
34e419 movaps xmm6,XMMWORD PTR [r11-0x10]
34e41e movaps xmm7,XMMWORD PTR [r11-0x20]
34e423 movaps xmm8,XMMWORD PTR [r11-0x30]
34e428 movaps xmm11,XMMWORD PTR [r11-0x40]
34e42d mov    rsp,r11
34e430 pop    r15
34e432 pop    r14
34e434 pop    r13
34e436 pop    rdi
34e437 pop    rsi
34e438 pop    rbx
34e439 pop    rbp
34e43a ret
