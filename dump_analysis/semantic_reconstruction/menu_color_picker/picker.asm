; picker independent pdata/next-pdata extent 379680..379e60 unwind3d41e8
379680 mov    rax,rsp
379683 mov    QWORD PTR [rax+0x8],rbx
379687 push   rbp
379688 push   rsi
379689 push   rdi
37968a push   r12
37968c push   r13
37968e push   r14
379690 push   r15
379692 lea    rbp,[rax-0x4e8]
379699 sub    rsp,0x5b0
3796a0 movaps XMMWORD PTR [rax-0x48],xmm6
3796a4 mov    r15,rdx
3796a7 movaps XMMWORD PTR [rax-0x58],xmm7
3796ab movaps XMMWORD PTR [rax-0x68],xmm8
3796b0 movaps XMMWORD PTR [rax-0x78],xmm9
3796b5 movaps XMMWORD PTR [rax-0x88],xmm10
3796bc 
3796bd movaps XMMWORD PTR [rax-0x98],xmm11
3796c4 
3796c5 movaps XMMWORD PTR [rax-0xa8],xmm13
3796cc 
3796cd call   0x392ca4
3796d2 mov    edx,0x8
3796d7 lea    rcx,[rbp-0x20]
3796db lea    r8d,[rdx+0x78]
3796df movups xmm0,XMMWORD PTR [rax]
3796e2 movups xmm1,XMMWORD PTR [rax+0x10]
3796e6 movups XMMWORD PTR [rcx],xmm0
3796e9 movups xmm0,XMMWORD PTR [rax+0x20]
3796ed movups XMMWORD PTR [rcx+0x10],xmm1
3796f1 movups xmm1,XMMWORD PTR [rax+0x30]
3796f5 movups XMMWORD PTR [rcx+0x20],xmm0
3796f9 movups xmm0,XMMWORD PTR [rax+0x40]
3796fd movups XMMWORD PTR [rcx+0x30],xmm1
379701 movups xmm1,XMMWORD PTR [rax+0x50]
379705 movups XMMWORD PTR [rcx+0x40],xmm0
379709 movups xmm0,XMMWORD PTR [rax+0x60]
37970d movups XMMWORD PTR [rcx+0x50],xmm1
379711 movups xmm1,XMMWORD PTR [rax+0x70]
379715 add    rax,r8
379718 movups XMMWORD PTR [rcx+0x60],xmm0
37971c movups XMMWORD PTR [rcx+0x70],xmm1
379720 add    rcx,r8
379723 sub    rdx,0x1
379727 jne    0x3796df
379729 movups xmm0,XMMWORD PTR [rax]
37972c movups xmm1,XMMWORD PTR [rax+0x10]
379730 movups XMMWORD PTR [rcx],xmm0
379733 movups xmm0,XMMWORD PTR [rax+0x20]
379737 movups XMMWORD PTR [rcx+0x10],xmm1
37973b movups xmm1,XMMWORD PTR [rax+0x30]
37973f movups XMMWORD PTR [rcx+0x20],xmm0
379743 movups xmm0,XMMWORD PTR [rax+0x40]
379747 mov    rax,QWORD PTR [rax+0x50]
37974b movups XMMWORD PTR [rcx+0x30],xmm1
37974f movups XMMWORD PTR [rcx+0x40],xmm0
379753 mov    QWORD PTR [rcx+0x50],rax
379757 call   0x35d200
37975c movss  xmm4,DWORD PTR [r15]
379761 xorps  xmm9,xmm9
379765 comiss xmm4,xmm9
379769 mov    r12,rax
37976c mov    r13,QWORD PTR [rip+0x8c3b5]        # 0x405b28
379773 movss  xmm3,DWORD PTR [r15+0x4]
379779 movss  xmm13,DWORD PTR [rax+0x100]
379780 
379782 movss  xmm2,DWORD PTR [r15+0x8]
379788 movss  xmm6,DWORD PTR [r15+0xc]
37978e movss  xmm11,DWORD PTR [rip+0xfffffffffff13abd]        # 0x28d254
379795 
379797 movss  xmm1,DWORD PTR [rip+0xfffffffffff2facd]        # 0x2a926c
37979e 
37979f movss  xmm8,DWORD PTR [rip+0xfffffffffff13aa8]        # 0x28d250
3797a6 
3797a8 movss  DWORD PTR [rsp+0x60],xmm4
3797ae movss  DWORD PTR [rsp+0x64],xmm3
3797b4 movss  DWORD PTR [rsp+0x68],xmm2
3797ba mov    DWORD PTR [rsp+0x40],0x3f800000
3797c1 
3797c2 mov    DWORD PTR [rsp+0x44],0x3f800000
3797c9 
3797ca mov    DWORD PTR [rsp+0x48],0x3f800000
3797d1 
3797d2 movss  DWORD PTR [rsp+0x6c],xmm6
3797d8 jb     0x3797e0
3797da movaps xmm5,xmm8
3797de jmp    0x3797e3
3797e0 movaps xmm5,xmm1
3797e3 comiss xmm3,xmm9
3797e7 movss  xmm7,DWORD PTR [rip+0xfffffffffff13ef5]        # 0x28d6e4
3797ee 
3797ef movaps xmm0,xmm4
3797f2 mulss  xmm0,xmm7
3797f6 addss  xmm0,xmm5
3797fa cvttss2si eax,xmm0
3797fe mov    DWORD PTR [rsp+0x50],eax
379802 jb     0x37980a
379804 movaps xmm5,xmm8
379808 jmp    0x37980d
37980a movaps xmm5,xmm1
37980d comiss xmm2,xmm9
379811 movaps xmm0,xmm3
379814 mulss  xmm0,xmm7
379818 addss  xmm0,xmm5
37981c cvttss2si eax,xmm0
379820 mov    DWORD PTR [rsp+0x54],eax
379824 jb     0x37982c
379826 movaps xmm5,xmm8
37982a jmp    0x37982f
37982c movaps xmm5,xmm1
37982f comiss xmm6,xmm9
379833 movaps xmm0,xmm2
379836 mulss  xmm0,xmm7
37983a addss  xmm0,xmm5
37983e cvttss2si eax,xmm0
379842 mov    DWORD PTR [rsp+0x58],eax
379846 jb     0x37984c
379848 movaps xmm1,xmm8
37984c mulss  xmm6,xmm7
379850 lea    r9,[rsp+0x40]
379855 mov    BYTE PTR [rbp+0x4f8],0x0
37985c movaps xmm0,xmm4
37985f addss  xmm6,xmm1
379863 movaps xmm1,xmm3
379866 cvttss2si eax,xmm6
37986a mov    DWORD PTR [rsp+0x5c],eax
37986e lea    rax,[rsp+0x48]
379873 mov    QWORD PTR [rsp+0x28],rax
379878 lea    rax,[rsp+0x44]
37987d mov    QWORD PTR [rsp+0x20],rax
379882 call   0x39062c
379887 lea    r9,[rsp+0x48]
37988c mov    rcx,r15
37988f lea    r8,[rsp+0x44]
379894 lea    rdx,[rsp+0x40]
379899 call   0x3795d4
37989e mov    ecx,DWORD PTR [rsp+0x5c]
3798a2 xor    edx,edx
3798a4 mov    r8d,0xff
3798aa call   0x3762ac
3798af mov    ecx,DWORD PTR [rsp+0x58]
3798b3 mov    r14d,eax
3798b6 call   0x3762ac
3798bb mov    ecx,DWORD PTR [rsp+0x54]
3798bf mov    esi,eax
3798c1 call   0x3762ac
3798c6 mov    ecx,DWORD PTR [rsp+0x50]
3798ca mov    edi,eax
3798cc call   0x3762ac
3798d1 lea    rdx,[rbp-0x80]
3798d5 mov    ebx,eax
3798d7 lea    rcx,[rbp+0x500]
3798de call   0x378700
3798e3 mov    rcx,rax
3798e6 call   0x37a090
3798eb mov    DWORD PTR [rsp+0x30],r14d
3798f0 lea    rcx,[rbp-0x60]
3798f4 mov    DWORD PTR [rsp+0x28],esi
3798f8 mov    r8,rax
3798fb mov    DWORD PTR [rsp+0x20],edi
3798ff mov    r9d,ebx
379902 mov    edi,0x40
379907 mov    edx,edi
379909 call   0x393110
37990e movss  xmm1,DWORD PTR [rip+0xffffffffffecf5d2]        # 0x248ee8
379915 
379916 lea    rcx,[rbp+0x500]
37991d mov    rax,QWORD PTR [rip+0x8c204]        # 0x405b28
379924 movaps xmm2,xmm1
379927 movss  xmm6,DWORD PTR [rip+0xfffffffffff2f939]        # 0x2a9268
37992e 
37992f mulss  xmm1,DWORD PTR [rip+0xfffffffffff2f929]        # 0x2a9260
379936 
379937 movss  xmm0,DWORD PTR [rax+0x3c30]
37993e 
37993f mulss  xmm2,xmm6
379943 mulss  xmm0,xmm8
379948 mulss  xmm2,xmm8
37994d subss  xmm2,xmm0
379951 call   0x2cc340
379956 lea    rdx,[rbp+0x500]
37995d lea    ecx,[rdi-0x35]
379960 call   0x398c60
379965 movss  xmm0,DWORD PTR [rbp-0x20]
37996a lea    rcx,[rbp-0x80]
37996e mulss  xmm0,DWORD PTR [rip+0xfffffffffff2f8c6]        # 0x2a923c
379975 
379976 movaps xmm3,xmm11
37997a movaps xmm2,xmm11
37997e movaps xmm1,xmm11
379982 movss  DWORD PTR [rsp+0x20],xmm0
379988 call   0x2cc350
37998d mov    rdx,rax
379990 lea    ecx,[rdi-0x38]
379993 call   0x398b84
379998 movss  xmm1,DWORD PTR [rip+0xfffffffffff19898]        # 0x293238
37999f 
3799a0 lea    rcx,[rsp+0x78]
3799a5 movss  xmm2,DWORD PTR [rip+0xffffffffffecf53b]        # 0x248ee8
3799ac 
3799ad movss  xmm10,DWORD PTR [rbp-0x18]
3799b3 mulss  xmm10,DWORD PTR [rip+0xfffffffffff19778]        # 0x293134
3799ba 
3799bc mulss  xmm2,xmm6
3799c0 subss  xmm1,xmm10
3799c5 call   0x2cc340
3799ca lea    rdx,[rbp+0x500]
3799d1 lea    rcx,[rbp+0x500]
3799d8 call   0x2cc730
3799dd mov    rcx,rax
3799e0 call   0x2cdca4
3799e5 lea    rdx,[rbp-0x80]
3799e9 mov    rbx,rax
3799ec lea    rcx,[rbp+0x508]
3799f3 call   0x37873c
3799f8 mov    rcx,rax
3799fb call   0x37a068
379a00 xor    esi,esi
379a02 lea    r8,[rbp-0x60]
379a06 mov    QWORD PTR [rsp+0x38],rsi
379a0b mov    rcx,rax
379a0e mov    QWORD PTR [rsp+0x30],rsi
379a13 lea    rax,[rsp+0x78]
379a18 mov    DWORD PTR [rsp+0x28],esi
379a1c mov    r9d,edi
379a1f mov    rdx,rbx
379a22 mov    QWORD PTR [rsp+0x20],rax
379a27 call   0x3c0538
379a2c lea    r14d,[rdi-0x3f]
379a30 test   al,al
379a32 je     0x379b01
379a38 mov    BYTE PTR [rbp+0x4f8],r14b
379a3f lea    rbx,[rbp-0x60]
379a43 cmp    BYTE PTR [rbx],0x23
379a46 je     0x379a53
379a48 mov    cl,BYTE PTR [rbx]
379a4a call   0x37897c
379a4f test   al,al
379a51 je     0x379a58
379a53 add    rbx,r14
379a56 jmp    0x379a43
379a58 lea    rdx,[rbp-0x80]
379a5c mov    QWORD PTR [rsp+0x54],rsi
379a61 lea    rcx,[rbp+0x500]
379a68 mov    DWORD PTR [rsp+0x50],esi
379a6c mov    DWORD PTR [rsp+0x5c],0xff
379a73 
379a74 call   0x378750
379a79 mov    rcx,rax
379a7c call   0x37a090
379a81 mov    rdx,rax
379a84 lea    r9,[rsp+0x54]
379a89 lea    rax,[rsp+0x5c]
379a8e mov    rcx,rbx
379a91 mov    QWORD PTR [rsp+0x28],rax
379a96 lea    r8,[rsp+0x50]
379a9b lea    rax,[rsp+0x58]
379aa0 mov    QWORD PTR [rsp+0x20],rax
379aa5 call   0x37b608
379aaa movd   xmm0,DWORD PTR [rsp+0x50]
379ab0 lea    rax,[rsp+0x48]
379ab5 movd   xmm1,DWORD PTR [rsp+0x54]
379abb lea    r9,[rsp+0x40]
379ac0 movd   xmm2,DWORD PTR [rsp+0x58]
379ac6 cvtdq2ps xmm0,xmm0
379ac9 mov    QWORD PTR [rsp+0x28],rax
379ace lea    rax,[rsp+0x44]
379ad3 mov    QWORD PTR [rsp+0x20],rax
379ad8 cvtdq2ps xmm1,xmm1
379adb cvtdq2ps xmm2,xmm2
379ade divss  xmm0,xmm7
379ae2 divss  xmm1,xmm7
379ae6 divss  xmm2,xmm7
379aea movss  DWORD PTR [rsp+0x60],xmm0
379af0 movss  DWORD PTR [rsp+0x64],xmm1
379af6 movss  DWORD PTR [rsp+0x68],xmm2
379afc call   0x39062c
379b01 mov    ecx,r14d
379b04 call   0x39890c
379b09 movaps xmm1,xmm11
379b0d mov    ecx,0x2
379b12 call   0x392298
379b17 mov    edx,eax
379b19 mov    ecx,r14d
379b1c call   0x398bec
379b21 lea    rdx,[rbp+0x508]
379b28 lea    rcx,[rbp+0x500]
379b2f call   0x378768
379b34 mov    rcx,rax
379b37 call   0x379fc8
379b3c lea    rdx,[rsp+0x70]
379b41 mov    rdi,rax
379b44 lea    rcx,[rbp+0x500]
379b4b call   0x378768
379b50 mov    rcx,rax
379b53 call   0x379fc8
379b58 movss  xmm0,DWORD PTR [rip+0xfffffffffff19700]        # 0x293260
379b5f 
379b60 lea    rcx,[rbp-0x80]
379b64 mov    rdx,rax
379b67 movss  DWORD PTR [rsp+0x20],xmm0
379b6d xor    r9d,r9d
379b70 xor    r8d,r8d
379b73 call   0x38f79c
379b78 mov    rbx,rax
379b7b call   0x392ca4
379b80 movss  xmm0,DWORD PTR [rbx]
379b84 mulss  xmm0,xmm8
379b89 movss  xmm7,DWORD PTR [rax+0x3c]
379b8e mulss  xmm7,xmm8
379b93 addss  xmm7,xmm13
379b98 subss  xmm7,xmm0
379b9c addss  xmm7,xmm11
379ba1 call   0x392ca4
379ba6 movss  xmm6,DWORD PTR [rax+0x40]
379bab call   0x3925cc
379bb0 movss  xmm2,DWORD PTR [r12+0x104]
379bb7 
379bba lea    rcx,[rsp+0x78]
379bbf subss  xmm2,xmm0
379bc3 movaps xmm1,xmm7
379bc6 subss  xmm2,DWORD PTR [rbp+0x30]
379bcb addss  xmm2,xmm6
379bcf call   0x2cc340
379bd4 mov    r9b,r14b
379bd7 xor    r8d,r8d
379bda mov    rdx,rdi
379bdd mov    rcx,QWORD PTR [rax]
379be0 call   0x399994
379be5 mov    ecx,r14d
379be8 call   0x39890c
379bed mov    ecx,r14d
379bf0 call   0x39896c
379bf5 movss  xmm1,DWORD PTR [rsp+0x40]
379bfb lea    rax,[rbp+0x4f8]
379c02 lea    r9,[rsp+0x48]
379c07 mov    QWORD PTR [rsp+0x20],rax
379c0c lea    r8,[rsp+0x44]
379c11 mov    rcx,r15
379c14 call   0x37afd4
379c19 movss  xmm1,DWORD PTR [rsp+0x40]
379c1f lea    r8,[rbp+0x4f8]
379c26 mov    rcx,r15
379c29 call   0x37a0b8
379c2e lea    r8,[rbp+0x4f8]
379c35 movss  DWORD PTR [rsp+0x40],xmm0
379c3b lea    rdx,[rsp+0x6c]
379c40 mov    rcx,r15
379c43 call   0x378f1c
379c48 movss  xmm0,DWORD PTR [rip+0xffffffffffecf298]        # 0x248ee8
379c4f 
379c50 movss  xmm7,DWORD PTR [rip+0xfffffffffff19528]        # 0x293180
379c57 
379c58 movaps xmm1,xmm0
379c5b mulss  xmm1,DWORD PTR [rip+0xfffffffffff195d5]        # 0x293238
379c62 
379c63 movaps xmm2,xmm0
379c66 movss  xmm6,DWORD PTR [rip+0xfffffffffff2f5f6]        # 0x2a9264
379c6d 
379c6e mulss  xmm0,xmm7
379c72 subss  xmm1,xmm10
379c77 mulss  xmm2,xmm6
379c7b mulss  xmm1,xmm8
379c80 subss  xmm1,xmm0
379c84 lea    rcx,[rbp+0x508]
379c8b call   0x2cc340
379c90 lea    rdx,[rbp+0x500]
379c97 lea    rcx,[rbp+0x500]
379c9e call   0x378774
379ca3 mov    rcx,rax
379ca6 call   0x37600c
379cab mov    rcx,rax
379cae lea    rdx,[rbp+0x508]
379cb5 call   0x3bc7d8
379cba lea    rbx,[rip+0x8904f]        # 0x402d10
379cc1 test   al,al
379cc3 je     0x379cd8
379cc5 mov    rcx,rsi
379cc8 mov    eax,DWORD PTR [r15+rcx*4]
379ccc mov    DWORD PTR [rbx+rcx*4],eax
379ccf add    rcx,r14
379cd2 cmp    rcx,0x4
379cd6 jne    0x379cc8
379cd8 movss  xmm1,DWORD PTR [rip+0xffffffffffecf208]        # 0x248ee8
379cdf 
379ce0 xorps  xmm0,xmm0
379ce3 mulss  xmm1,DWORD PTR [rip+0xfffffffffff13e31]        # 0x28db1c
379cea 
379ceb call   0x39ac04
379cf0 movss  xmm0,DWORD PTR [rip+0xffffffffffecf1f0]        # 0x248ee8
379cf7 
379cf8 lea    rcx,[rbp+0x508]
379cff movaps xmm1,xmm0
379d02 movaps xmm2,xmm0
379d05 mulss  xmm1,DWORD PTR [rip+0xfffffffffff1952b]        # 0x293238
379d0c 
379d0d mulss  xmm0,xmm7
379d11 subss  xmm1,xmm10
379d16 mulss  xmm2,xmm6
379d1a mulss  xmm1,xmm8
379d1f subss  xmm1,xmm0
379d23 call   0x2cc340
379d28 lea    rdx,[rbp+0x500]
379d2f lea    rcx,[rbp+0x500]
379d36 call   0x37878c
379d3b mov    rcx,rax
379d3e call   0x37a040
379d43 mov    rcx,rax
379d46 lea    rdx,[rbp+0x508]
379d4d call   0x3bc7d8
379d52 test   al,al
379d54 je     0x379d69
379d56 mov    rcx,rsi
379d59 mov    eax,DWORD PTR [rbx+rcx*4]
379d5c mov    DWORD PTR [r15+rcx*4],eax
379d60 add    rcx,r14
379d63 cmp    rcx,0x4
379d67 jne    0x379d59
379d69 movss  xmm2,DWORD PTR [rsp+0x48]
379d6f lea    rax,[rsp+0x68]
379d74 movss  xmm1,DWORD PTR [rsp+0x44]
379d7a lea    r9,[rsp+0x60]
379d7f movss  xmm0,DWORD PTR [rsp+0x40]
379d85 mov    QWORD PTR [rsp+0x28],rax
379d8a lea    rax,[rsp+0x64]
379d8f mov    QWORD PTR [rsp+0x20],rax
379d94 call   0x3904e0
379d99 cmp    BYTE PTR [rbp+0x4f8],sil
379da0 je     0x379e1f
379da2 movss  xmm0,DWORD PTR [rsp+0x40]
379da8 lea    rcx,[rbp-0x80]
379dac movss  DWORD PTR [r13+0x5b48],xmm0
379db3 
379db5 movss  xmm1,DWORD PTR [rsp+0x44]
379dbb movss  DWORD PTR [r13+0x5b4c],xmm1
379dc2 
379dc4 movss  xmm3,DWORD PTR [r15+0x8]
379dca movss  xmm2,DWORD PTR [r15+0x4]
379dd0 movss  xmm1,DWORD PTR [r15]
379dd5 movss  DWORD PTR [rsp+0x20],xmm9
379ddc call   0x2cc350
379de1 mov    rcx,rax
379de4 call   0x39045c
379de9 mov    DWORD PTR [r13+0x5b50],eax
379df0 movss  xmm0,DWORD PTR [rsp+0x60]
379df6 movss  xmm1,DWORD PTR [rsp+0x64]
379dfc movss  DWORD PTR [r15],xmm0
379e01 movss  xmm0,DWORD PTR [rsp+0x68]
379e07 movss  DWORD PTR [r15+0x4],xmm1
379e0d movss  xmm1,DWORD PTR [rsp+0x6c]
379e13 movss  DWORD PTR [r15+0x8],xmm0
379e19 movss  DWORD PTR [r15+0xc],xmm1
379e1f lea    r11,[rsp+0x5b0]
379e26 
379e27 mov    al,r14b
379e2a mov    rbx,QWORD PTR [r11+0x40]
379e2e movaps xmm6,XMMWORD PTR [r11-0x10]
379e33 movaps xmm7,XMMWORD PTR [r11-0x20]
379e38 movaps xmm8,XMMWORD PTR [r11-0x30]
379e3d movaps xmm9,XMMWORD PTR [r11-0x40]
379e42 movaps xmm10,XMMWORD PTR [r11-0x50]
379e47 movaps xmm11,XMMWORD PTR [r11-0x60]
379e4c movaps xmm13,XMMWORD PTR [r11-0x70]
379e51 mov    rsp,r11
379e54 pop    r15
379e56 pop    r14
379e58 pop    r13
379e5a pop    r12
379e5c pop    rdi
379e5d pop    rsi
379e5e pop    rbp
379e5f ret
