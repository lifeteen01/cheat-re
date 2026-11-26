307638 mov    rax,rsp
30763b mov    QWORD PTR [rax+0x8],rbx
30763f push   rbp
307640 push   rsi
307641 push   rdi
307642 push   r12
307644 push   r13
307646 push   r14
307648 push   r15
30764a lea    rbp,[rax-0x188]
307651 sub    rsp,0x250
307658 movaps XMMWORD PTR [rax-0x48],xmm6
30765c xor    ecx,ecx
30765e movaps XMMWORD PTR [rax-0x58],xmm7
307662 movaps XMMWORD PTR [rax-0x68],xmm8
307667 movaps XMMWORD PTR [rax-0x78],xmm9
30766c movaps XMMWORD PTR [rax-0x88],xmm10
307674 movaps XMMWORD PTR [rax-0x98],xmm11
30767c movaps XMMWORD PTR [rax-0xa8],xmm12
307684 movaps XMMWORD PTR [rax-0xb8],xmm13
30768c movaps XMMWORD PTR [rax-0xc8],xmm14
307694 movaps XMMWORD PTR [rax-0xd8],xmm15
30769c call   0x314bb4
3076a1 mov    rcx,rax
3076a4 mov    QWORD PTR [rbp-0x70],rax
3076a8 mov    r14,rax
3076ab call   0x2caf08
3076b0 xor    edi,edi
3076b2 test   al,al
3076b4 je     0x30966e
3076ba mov    rcx,r14
3076bd call   0x2e0e9c
3076c2 test   al,al
3076c4 je     0x30966e
3076ca mov    rcx,r14
3076cd call   0x369324
3076d2 mov    rcx,rax
3076d5 mov    QWORD PTR [rbp-0x68],rax
3076d9 mov    r12,rax
3076dc call   0x2caf08
3076e1 test   al,al
3076e3 je     0x30966e
3076e9 lea    r8d,[rdi+0x2]
3076ed lea    rdx,[rsp+0x48]
3076f2 lea    rcx,[rip+0xe8adf]        # 0x3f01d8 ; CONFIG VectorBools.hotbarOptions value(+0x48)
3076f9 call   0x2e98f0
3076fe mov    rcx,rax
307701 call   0x2d4d70
307706 movss  xmm6,DWORD PTR [rip+0xfffffffffff8b9ee]        # 0x2930fc ; f32=1.35
30770e lea    r13d,[rdi+0x1]
307712 movss  xmm12,DWORD PTR [rip+0xfffffffffff8bacd]        # 0x2931e8 ; f32=36
30771b xorps  xmm8,xmm8
30771f movss  xmm14,DWORD PTR [rip+0xfffffffffff863f4]        # 0x28db1c ; f32=10
307728 movss  xmm10,DWORD PTR [rip+0xfffffffffff85b1f]        # 0x28d250 ; f32=0.5
307731 movss  xmm11,DWORD PTR [rip+0xfffffffffff85b1a]        # 0x28d254 ; f32=1
30773a movss  xmm15,DWORD PTR [rip+0xfffffffffff863dd]        # 0x28db20 ; f32=20
307743 test   al,al
307745 je     0x307d89
30774b mov    edx,0x90
307750 mov    rcx,r14
307753 call   0x2dee3c
307758 mov    rsi,QWORD PTR [rax]
30775b mov    rcx,rsi
30775e call   0x2caf08
307763 test   al,al
307765 je     0x307d89
30776b mov    r15d,DWORD PTR [rsi+0x18]
30776f test   r15d,r15d
307772 jle    0x307d89
307778 xorps  xmm2,xmm2
30777b lea    rcx,[rbp+0x198]
307782 xorps  xmm1,xmm1
307785 call   0x2cc340
30778a movss  xmm2,DWORD PTR [rip+0xe870a]        # 0x3efe9c
307792 lea    rcx,[rbp+0x1a0]
307799 movss  xmm1,DWORD PTR [rip+0xe86f7]        # 0x3efe98 ; CONFIG V2.ParentedPosition value(+0x48)
3077a1 mov    rbx,rax
3077a4 call   0x2cc340
3077a9 mov    rcx,rax
3077ac lea    edx,[rdi+0x2]
3077af mov    r8,rbx
3077b2 call   0x39b734
3077b7 cmp    BYTE PTR [rip+0xde4ff],dil        # 0x3e5cbd
3077be je     0x307806
3077c0 xorps  xmm2,xmm2
3077c3 lea    rcx,[rbp+0x198]
3077ca xorps  xmm1,xmm1
3077cd call   0x2cc340
3077d2 movss  xmm2,DWORD PTR [rip+0xe86c2]        # 0x3efe9c
3077da lea    rcx,[rbp+0x1a0]
3077e1 movss  xmm1,DWORD PTR [rip+0xe86af]        # 0x3efe98 ; CONFIG V2.ParentedPosition value(+0x48)
3077e9 mov    rbx,rax
3077ec call   0x2cc340
3077f1 mov    rcx,rax
3077f4 mov    r8,rbx
3077f7 mov    edx,r13d
3077fa call   0x39b734
3077ff mov    BYTE PTR [rip+0xde4b7],dil        # 0x3e5cbd
307806 mov    edx,0x54
30780b mov    DWORD PTR [rsp+0x20],0xff
307813 lea    rcx,[rbp-0x50]
307817 lea    r9d,[rdx+0xe]
30781b lea    r8d,[rdx+0x7b]
30781f call   0x2db318
307824 mov    rcx,rax
307827 lea    rdx,[rsp+0x48]
30782c call   0x2ef800
307831 movss  xmm3,DWORD PTR [rsp+0x50]
307837 lea    rcx,[rsp+0x78]
30783c movss  xmm2,DWORD PTR [rsp+0x4c]
307842 movss  xmm1,DWORD PTR [rsp+0x48]
307848 movss  xmm0,DWORD PTR [rsp+0x54]
30784e divss  xmm3,xmm6
307852 divss  xmm2,xmm6
307856 divss  xmm1,xmm6
30785a movss  DWORD PTR [rsp+0x20],xmm0
307860 call   0x2cc350
307865 movss  xmm2,DWORD PTR [rip+0xe86cf]        # 0x3eff3c
30786d lea    rcx,[rbp+0x198]
307874 movss  xmm1,DWORD PTR [rip+0xe86bc]        # 0x3eff38 ; CONFIG V2.ParentedSize value(+0x48)
30787c call   0x2cc340
307881 mov    edx,0x2
307886 lea    rcx,[rbp+0x198]
30788d call   0x39b770
307892 xorps  xmm2,xmm2
307895 lea    rcx,[rbp+0x198]
30789c xorps  xmm1,xmm1
30789f call   0x2cc340
3078a4 lea    rdx,[rbp+0x198]
3078ab mov    ecx,0x2
3078b0 call   0x398c60
3078b5 movzx  ebx,BYTE PTR [rip+0xfffffffffff10f5c]        # 0x218818
3078bc lea    rdx,[rsp+0x48]
3078c1 lea    rcx,[rbp+0x198]
3078c8 call   0x2f2344 ; STRING getter=0x2f2344 Parented Window
3078cd mov    rcx,rax
3078d0 call   0x2dd160
3078d5 neg    ebx
3078d7 mov    rcx,rax
3078da sbb    r8d,r8d
3078dd xor    edx,edx
3078df and    r8d,0xfffffffc
3078e3 add    r8d,0x2f
3078e7 call   0x38cfa4
3078ec lea    rcx,[rbp+0x1a0]
3078f3 movaps xmm9,xmm12
3078f7 call   0x39246c
3078fc lea    rcx,[rbp-0x78]
307900 movss  xmm6,DWORD PTR [rax]
307904 call   0x39246c
307909 movaps xmm1,xmm6
30790c lea    rcx,[rbp+0x198]
307913 movss  xmm2,DWORD PTR [rax+0x4]
307918 call   0x2cc340
30791d movss  xmm0,DWORD PTR [rbp+0x198]
307925 mov    ecx,r13d
307928 movss  xmm1,DWORD PTR [rbp+0x19c]
307930 movss  DWORD PTR [rip+0xe8560],xmm0        # 0x3efe98 ; CONFIG V2.ParentedPosition value(+0x48)
307938 movss  DWORD PTR [rip+0xe855c],xmm1        # 0x3efe9c
307940 call   0x39896c
307945 lea    rcx,[rbp+0x1a0]
30794c call   0x392f14
307951 lea    rcx,[rbp-0x78]
307955 movss  xmm6,DWORD PTR [rax]
307959 call   0x392f14
30795e movaps xmm1,xmm6
307961 lea    rcx,[rbp+0x198]
307968 movss  xmm2,DWORD PTR [rax+0x4]
30796d call   0x2cc340
307972 movss  xmm0,DWORD PTR [rbp+0x198]
30797a lea    rdx,[rbp+0x1a0]
307981 movss  xmm1,DWORD PTR [rbp+0x19c]
307989 lea    rcx,[rbp+0x198]
307990 movss  DWORD PTR [rip+0xe85a0],xmm0        # 0x3eff38 ; CONFIG V2.ParentedSize value(+0x48)
307998 movss  DWORD PTR [rip+0xe859c],xmm1        # 0x3eff3c
3079a0 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
3079a5 mov    rcx,rax
3079a8 call   0x2d8464
3079ad mov    rdi,rax
3079b0 lea    rdx,[rbp+0x38]
3079b4 mov    rcx,r14
3079b7 call   0x369040
3079bc lea    rdx,[rsp+0x48]
3079c1 mov    rbx,rax
3079c4 lea    rcx,[rbp+0x198]
3079cb call   0x2f37b8 ; STRING getter=0x2f37b8 Parented(
3079d0 mov    rcx,rax
3079d3 call   0x2cdd44
3079d8 mov    rdx,rax
3079db lea    rcx,[rbp+0x18]
3079df mov    r8,rbx
3079e2 call   0x2ea6dc
3079e7 mov    rdx,rax
3079ea lea    rcx,[rbp-0x28]
3079ee mov    r8,rdi
3079f1 call   0x2cad38
3079f6 lea    rcx,[rbp+0x18]
3079fa call   0x2cc4f4
3079ff lea    rcx,[rbp+0x38]
307a03 call   0x2cc4f4
307a08 movss  xmm13,DWORD PTR [rip+0xe8527]        # 0x3eff38 ; CONFIG V2.ParentedSize value(+0x48)
307a11 lea    rcx,[rbp-0x28]
307a15 subss  xmm13,xmm14
307a1a call   0x2cd7ec
307a1f movss  xmm7,DWORD PTR [rip+0xfffffffffff8b839]        # 0x293260 ; f32=-1
307a27 lea    rcx,[rsp+0x70]
307a2c mov    rdx,rax
307a2f movss  DWORD PTR [rsp+0x20],xmm7
307a35 xor    r9d,r9d
307a38 xor    r8d,r8d
307a3b call   0x38f79c
307a40 movaps xmm6,xmm13
307a44 subss  xmm6,DWORD PTR [rsp+0x70]
307a4a mulss  xmm6,xmm10
307a4f call   0x392424
307a54 addss  xmm0,xmm6
307a58 call   0x39b410
307a5d lea    rdx,[rsp+0x78]
307a62 mov    ecx,r13d
307a65 call   0x398b84
307a6a lea    rcx,[rbp-0x28]
307a6e call   0x2cd7ec
307a73 mov    rcx,rax
307a76 call   0x3c4e90
307a7b mov    ecx,r13d
307a7e call   0x39890c
307a83 lea    rcx,[rbp+0x1a8]
307a8a call   0x39246c
307a8f movss  xmm0,DWORD PTR [rbp+0x1ac]
307a97 lea    rcx,[rbp+0x198]
307a9e addss  xmm0,DWORD PTR [rip+0xfffffffffff8b7c2]        # 0x293268 ; f32=-16
307aa6 movss  xmm1,DWORD PTR [rip+0xfffffffffff8b6e6]        # 0x293194 ; f32=7
307aae xorps  xmm2,xmm2
307ab1 movss  DWORD PTR [rbp+0x1ac],xmm0
307ab9 call   0x2cc340
307abe mov    r8,rax
307ac1 lea    rdx,[rbp+0x1a8]
307ac8 lea    rcx,[rsp+0x40]
307acd call   0x2ef9d8
307ad2 movss  xmm1,DWORD PTR [rip+0xe845e]        # 0x3eff38 ; CONFIG V2.ParentedSize value(+0x48)
307ada lea    rcx,[rbp+0x198]
307ae1 subss  xmm1,DWORD PTR [rip+0xfffffffffff8b6cb]        # 0x2931b4 ; f32=14
307ae9 movaps xmm2,xmm11
307aed mulss  xmm1,xmm10
307af2 call   0x2cc340
307af7 mov    r8,rax
307afa lea    rdx,[rsp+0x40]
307aff lea    rcx,[rbp-0x60]
307b03 call   0x2ef9d8
307b08 call   0x392ecc
307b0d lea    rdx,[rsp+0x78]
307b12 mov    rdi,rax
307b15 lea    rcx,[rsp+0x48]
307b1a call   0x2eecf0
307b1f mov    rcx,rax
307b22 call   0x2ef80c
307b27 lea    rdx,[rsp+0x78]
307b2c mov    ebx,eax
307b2e lea    rcx,[rbp-0x50]
307b32 call   0x2eecf0
307b37 mov    rcx,rax
307b3a call   0x2ef80c
307b3f xor    r13d,r13d
307b42 lea    r8,[rbp-0x60]
307b46 mov    DWORD PTR [rsp+0x30],r13d
307b4b lea    rdx,[rsp+0x40]
307b50 mov    DWORD PTR [rsp+0x28],ebx
307b54 xor    r9d,r9d
307b57 mov    rcx,rdi
307b5a mov    DWORD PTR [rsp+0x20],eax
307b5e call   0x3a12d8
307b63 movss  xmm1,DWORD PTR [rip+0xe83cd]        # 0x3eff38 ; CONFIG V2.ParentedSize value(+0x48)
307b6b lea    rcx,[rbp+0x198]
307b72 mulss  xmm1,xmm10
307b77 xorps  xmm2,xmm2
307b7a call   0x2cc340
307b7f mov    r8,rax
307b82 lea    rdx,[rbp+0x1a8]
307b89 lea    rcx,[rsp+0x68]
307b8e call   0x2ef9d8
307b93 movss  xmm1,DWORD PTR [rip+0xe839d]        # 0x3eff38 ; CONFIG V2.ParentedSize value(+0x48)
307b9b lea    rcx,[rbp+0x198]
307ba2 subss  xmm1,xmm14
307ba7 movaps xmm2,xmm11
307bab mulss  xmm1,xmm10
307bb0 call   0x2cc340
307bb5 mov    r8,rax
307bb8 lea    rdx,[rsp+0x68]
307bbd lea    rcx,[rbp-0x30]
307bc1 call   0x2ef9d8
307bc6 call   0x392ecc
307bcb lea    rdx,[rsp+0x78]
307bd0 mov    rdi,rax
307bd3 lea    rcx,[rsp+0x48]
307bd8 call   0x2eecf0
307bdd mov    rcx,rax
307be0 call   0x2ef80c
307be5 lea    rdx,[rsp+0x78]
307bea mov    ebx,eax
307bec lea    rcx,[rbp-0x50]
307bf0 call   0x2eecf0
307bf5 mov    rcx,rax
307bf8 call   0x2ef80c
307bfd mov    DWORD PTR [rsp+0x30],ebx
307c01 lea    r8,[rbp-0x30]
307c05 mov    r9d,eax
307c08 mov    DWORD PTR [rsp+0x28],r13d
307c0d lea    rdx,[rsp+0x68]
307c12 mov    DWORD PTR [rsp+0x20],r13d
307c17 mov    rcx,rdi
307c1a call   0x3a12d8
307c1f movss  xmm2,DWORD PTR [rip+0xfffffffffff8b571]        # 0x293198 ; f32=7.5
307c27 lea    rcx,[rbp+0x198]
307c2e xorps  xmm1,xmm1
307c31 call   0x2cc340
307c36 mov    rdx,rax
307c39 lea    ecx,[r13+0xe]
307c3d call   0x398c60
307c42 call   0x392448
307c47 subss  xmm0,DWORD PTR [rip+0xfffffffffff8b535]        # 0x293184 ; f32=5.7
307c4f call   0x39b44c
307c54 xor    edi,edi
307c56 mov    ebx,edi
307c58 lea    r13d,[rdi+0x1]
307c5c mov    rdx,QWORD PTR [rsi+0x10]
307c60 mov    rcx,rdx
307c63 call   0x2caf08
307c68 test   al,al
307c6a je     0x307d37
307c70 lea    eax,[rbx*8+0x0]
307c77 movsxd rcx,eax
307c7a mov    r8,QWORD PTR [rdx+rcx*1+0x20]
307c7f mov    rcx,r8
307c82 call   0x2caf08
307c87 test   al,al
307c89 je     0x307d37
307c8f mov    rcx,r8
307c92 call   0x367668
307c97 mov    edx,eax
307c99 lea    rcx,[rbp-0x50]
307c9d call   0x316574
307ca2 lea    rcx,[rbp-0x50]
307ca6 call   0x2d8694
307cab test   al,al
307cad jne    0x307d2e
307caf call   0x39254c
307cb4 mov    r9,rax
307cb7 lea    rdx,[rbp-0x50]
307cbb movaps xmm2,xmm13
307cbf lea    rcx,[rsp+0x48]
307cc4 call   0x318d74
307cc9 lea    rcx,[rsp+0x48]
307cce call   0x2cd7ec
307cd3 mov    rdx,rax
307cd6 movss  DWORD PTR [rsp+0x20],xmm7
307cdc xor    r9d,r9d
307cdf lea    rcx,[rbp+0x198]
307ce6 xor    r8d,r8d
307ce9 call   0x38f79c
307cee movaps xmm6,xmm13
307cf2 subss  xmm6,DWORD PTR [rbp+0x198]
307cfa mulss  xmm6,xmm10
307cff call   0x392424
307d04 addss  xmm0,xmm6
307d08 call   0x39b410
307d0d lea    rcx,[rsp+0x48]
307d12 call   0x2cd7ec
307d17 mov    rcx,rax
307d1a call   0x3c4e90
307d1f lea    rcx,[rsp+0x48]
307d24 addss  xmm9,xmm15
307d29 call   0x2cc4f4
307d2e lea    rcx,[rbp-0x50]
307d32 call   0x2cc4f4
307d37 add    ebx,r13d
307d3a cmp    ebx,r15d
307d3d jl     0x307c5c
307d43 movss  xmm1,DWORD PTR [rip+0xe81ed]        # 0x3eff38 ; CONFIG V2.ParentedSize value(+0x48)
307d4b lea    rcx,[rbp+0x198]
307d52 movaps xmm2,xmm9
307d56 call   0x2cc340
307d5b xor    edx,edx
307d5d lea    rcx,[rbp+0x198]
307d64 call   0x39bc6c
307d69 mov    ecx,r13d
307d6c call   0x39896c
307d71 lea    rcx,[rbp-0x28]
307d75 call   0x2cc4f4
307d7a call   0x390994
307d7f movss  xmm6,DWORD PTR [rip+0xfffffffffff8b375]        # 0x2930fc ; f32=1.35
307d87 jmp    0x307d91
307d89 movss  xmm7,DWORD PTR [rip+0xfffffffffff8b4cf]        # 0x293260 ; f32=-1
307d91 mov    r8,r13
307d94 lea    rdx,[rsp+0x48]
307d99 lea    rcx,[rip+0xe8438]        # 0x3f01d8 ; CONFIG VectorBools.hotbarOptions value(+0x48)
307da0 call   0x2e98f0
307da5 mov    rcx,rax
307da8 call   0x2d4d70
307dad movss  xmm9,DWORD PTR [rip+0xfffffffffff8b45a]        # 0x293210 ; f32=96
307db6 movss  xmm14,DWORD PTR [rip+0xfffffffffff8b3c9]        # 0x293188 ; f32=6
307dbf test   al,al
307dc1 je     0x3089f7
307dc7 mov    rcx,r12
307dca call   0x373e20
307dcf mov    rcx,rax
307dd2 mov    r13,rax
307dd5 call   0x2caf08
307dda test   al,al
307ddc je     0x3089f7
307de2 mov    rcx,r13
307de5 call   0x37224c
307dea mov    DWORD PTR [rbp+0x1a0],eax
307df0 mov    r15d,eax
307df3 test   eax,eax
307df5 jle    0x3089f7
307dfb mov    r8d,0x3
307e01 lea    rdx,[rsp+0x48]
307e06 lea    rcx,[rip+0xe83cb]        # 0x3f01d8 ; CONFIG VectorBools.hotbarOptions value(+0x48)
307e0d call   0x2e98f0
307e12 mov    rcx,rax
307e15 call   0x2d4d70
307e1a lea    rcx,[rbp+0x198]
307e21 test   al,al
307e23 je     0x308341
307e29 movss  xmm10,DWORD PTR [rip+0xe5fb6]        # 0x3edde8 ; CONFIG F.IconSize value(+0x48)
307e32 movaps xmm13,xmm10
307e36 movd   xmm1,r15d
307e3b mulss  xmm13,DWORD PTR [rip+0xfffffffffff85cfc]        # 0x28db40 ; f32=90
307e44 cvtdq2ps xmm1,xmm1
307e47 movaps xmm2,xmm13
307e4b addss  xmm2,DWORD PTR [rip+0xfffffffffff8b2e1]        # 0x293134 ; f32=2
307e53 mulss  xmm1,xmm10
307e58 mulss  xmm1,xmm9
307e5d addss  xmm1,xmm14
307e62 call   0x2cc340
307e67 mov    rcx,rax
307e6a xor    edx,edx
307e6c call   0x39b770
307e71 xorps  xmm3,xmm3
307e74 movss  DWORD PTR [rsp+0x20],xmm8
307e7b xorps  xmm2,xmm2
307e7e lea    rcx,[rsp+0x48]
307e83 xorps  xmm1,xmm1
307e86 call   0x2cc350
307e8b mov    rdx,rax
307e8e mov    ecx,0x36
307e93 call   0x398b84
307e98 xorps  xmm3,xmm3
307e9b movss  DWORD PTR [rsp+0x20],xmm8
307ea2 xorps  xmm2,xmm2
307ea5 lea    rcx,[rsp+0x48]
307eaa xorps  xmm1,xmm1
307ead call   0x2cc350
307eb2 mov    rdx,rax
307eb5 mov    ecx,0x3
307eba call   0x398b84
307ebf xorps  xmm1,xmm1
307ec2 mov    ecx,0x4
307ec7 call   0x398cc8
307ecc xorps  xmm2,xmm2
307ecf lea    rcx,[rbp+0x198]
307ed6 xorps  xmm1,xmm1
307ed9 call   0x2cc340
307ede movss  xmm2,DWORD PTR [rip+0xe7f66]        # 0x3efe4c
307ee6 lea    rcx,[rbp+0x1a8]
307eed movss  xmm1,DWORD PTR [rip+0xe7f53]        # 0x3efe48 ; CONFIG V2.ClothingPosition value(+0x48)
307ef5 mov    rbx,rax
307ef8 call   0x2cc340
307efd mov    rcx,rax
307f00 mov    r8,rbx
307f03 mov    edx,0x2
307f08 call   0x39b734
307f0d cmp    BYTE PTR [rip+0xddda8],dil        # 0x3e5cbc
307f14 je     0x307f5e
307f16 xorps  xmm2,xmm2
307f19 lea    rcx,[rbp+0x198]
307f20 xorps  xmm1,xmm1
307f23 call   0x2cc340
307f28 movss  xmm2,DWORD PTR [rip+0xe7f1c]        # 0x3efe4c
307f30 lea    rcx,[rbp+0x1a8]
307f37 movss  xmm1,DWORD PTR [rip+0xe7f09]        # 0x3efe48 ; CONFIG V2.ClothingPosition value(+0x48)
307f3f mov    rbx,rax
307f42 call   0x2cc340
307f47 mov    rcx,rax
307f4a mov    r8,rbx
307f4d mov    edx,0x1
307f52 call   0x39b734
307f57 mov    BYTE PTR [rip+0xddd5e],dil        # 0x3e5cbc
307f5e lea    rdx,[rsp+0x48]
307f63 lea    rcx,[rbp+0x198]
307f6a call   0x2f497c ; STRING getter=0x2f497c Clothing Icons
307f6f mov    rcx,rax
307f72 call   0x2d866c
307f77 mov    rcx,rax
307f7a xor    edx,edx
307f7c mov    r8d,0xab
307f82 call   0x38cfa4
307f87 test   al,al
307f89 je     0x30831f
307f8f movaps xmm0,xmm10
307f93 lea    rcx,[rsp+0x40]
307f98 mulss  xmm0,DWORD PTR [rip+0xfffffffffff8b26c]        # 0x29320c ; f32=91
307fa0 movss  DWORD PTR [rsp+0x70],xmm0
307fa6 call   0x392ef8
307fab movss  xmm2,DWORD PTR [rsp+0x44]
307fb1 lea    rcx,[rbp+0x198]
307fb8 movss  xmm1,DWORD PTR [rsp+0x40]
307fbe call   0x2cc340
307fc3 movss  xmm0,DWORD PTR [rbp+0x198]
307fcb movss  xmm1,DWORD PTR [rbp+0x19c]
307fd3 movss  DWORD PTR [rip+0xe7e6d],xmm0        # 0x3efe48 ; CONFIG V2.ClothingPosition value(+0x48)
307fdb movss  DWORD PTR [rip+0xe7e69],xmm1        # 0x3efe4c
307fe3 call   0x392ecc
307fe8 mov    r14d,DWORD PTR [rbp+0x1a0]
307fef movaps xmm0,xmm10
307ff3 mulss  xmm0,xmm9
307ff8 movaps xmm15,xmm10
307ffc mov    r12,rax
307fff mov    r15d,edi
308002 mulss  xmm15,DWORD PTR [rip+0xfffffffffff8b1f9]        # 0x293204 ; f32=77
30800b xorps  xmm6,xmm6
30800e movss  DWORD PTR [rsp+0x68],xmm0
308014 movaps xmm0,xmm10
308018 mulss  xmm10,DWORD PTR [rip+0xfffffffffff8b187]        # 0x2931a8 ; f32=12
308021 mulss  xmm0,xmm14
308026 movss  DWORD PTR [rbp+0x198],xmm6
30802e movss  DWORD PTR [rbp-0x30],xmm15
308034 movss  DWORD PTR [rbp+0x1a8],xmm0
30803c mov    edx,r15d
30803f mov    rcx,r13
308042 call   0x3722f0
308047 mov    rcx,rax
30804a mov    rbx,rax
30804d call   0x2caf08
308052 test   al,al
308054 je     0x3082eb
30805a mov    edx,0x10
30805f mov    rcx,rbx
308062 call   0x2dee3c
308067 mov    rcx,QWORD PTR [rax]
30806a call   0x2caf08
30806f test   al,al
308071 je     0x3082eb
308077 mov    rcx,rbx
30807a call   0x371294
30807f mov    rcx,rbx
308082 mov    DWORD PTR [rbp-0x60],eax
308085 call   0x371c38
30808a mov    rcx,rax
30808d mov    QWORD PTR [rbp-0x58],rax
308091 call   0x2caf08
308096 test   al,al
308098 je     0x3082eb
30809e mov    edx,0xd8
3080a3 mov    rcx,rbx
3080a6 call   0x2dee3c
3080ab mov    edx,0xb4
3080b0 mov    rcx,rbx
3080b3 movss  xmm0,DWORD PTR [rax]
3080b7 movss  DWORD PTR [rbp+0x1a0],xmm0
3080bf call   0x2dee3c
3080c4 mov    rcx,rbx
3080c7 movss  xmm15,DWORD PTR [rax]
3080cc call   0x372184
3080d1 movss  xmm9,DWORD PTR [rsp+0x44]
3080d8 movaps xmm12,xmm6
3080dc addss  xmm12,DWORD PTR [rsp+0x40]
3080e3 test   al,al
3080e5 je     0x3081a2
3080eb movss  xmm6,DWORD PTR [rbp+0x1a8]
3080f3 lea    rcx,[rbp+0x58]
3080f7 movaps xmm7,xmm9
3080fb addss  xmm6,xmm12
308100 addss  xmm7,xmm13
308105 movaps xmm1,xmm6
308108 movaps xmm2,xmm7
30810b call   0x2cc340
308110 movaps xmm2,xmm9
308114 lea    rcx,[rbp+0x60]
308118 movaps xmm1,xmm12
30811c mov    rbx,rax
30811f call   0x2cc340
308124 mov    rdx,rax
308127 mov    DWORD PTR [rsp+0x28],edi
30812b mov    r9d,0x4c42876e
308131 movss  DWORD PTR [rsp+0x20],xmm8
308138 mov    r8,rbx
30813b mov    rcx,r12
30813e call   0x3a1244
308143 movaps xmm2,xmm7
308146 lea    rcx,[rbp+0x68]
30814a movaps xmm1,xmm6
30814d call   0x2cc340
308152 divss  xmm15,DWORD PTR [rbp+0x1a0]
30815b lea    rcx,[rbp+0x70]
30815f mov    rbx,rax
308162 movaps xmm2,xmm11
308166 movaps xmm1,xmm12
30816a minss  xmm15,xmm11
30816f subss  xmm2,xmm15
308174 mulss  xmm2,xmm13
308179 addss  xmm2,xmm9
30817e call   0x2cc340
308183 mov    rdx,rax
308186 mov    DWORD PTR [rsp+0x28],edi
30818a mov    r9d,0xcc42876e
308190 movss  DWORD PTR [rsp+0x20],xmm8
308197 mov    r8,rbx
30819a mov    rcx,r12
30819d call   0x3a1244
3081a2 movaps xmm7,xmm9
3081a6 lea    rcx,[rbp+0x78]
3081aa movaps xmm6,xmm12
3081ae addss  xmm7,xmm11
3081b3 movaps xmm2,xmm11
3081b7 addss  xmm6,xmm14
3081bc movaps xmm1,xmm11
3081c0 call   0x2cc340
3081c5 xorps  xmm2,xmm2
3081c8 lea    rcx,[rbp+0x80]
3081cf xorps  xmm1,xmm1
3081d2 mov    rsi,rax
3081d5 call   0x2cc340
3081da movss  xmm0,DWORD PTR [rbp-0x30]
3081df lea    rcx,[rbp-0x50]
3081e3 movaps xmm2,xmm7
3081e6 movaps xmm1,xmm6
3081e9 addss  xmm2,xmm0
3081ed mov    rdi,rax
3081f0 addss  xmm1,xmm0
3081f4 call   0x2cc340
3081f9 movaps xmm2,xmm7
3081fc lea    rcx,[rsp+0x78]
308201 movaps xmm1,xmm6
308204 mov    rbx,rax
308207 call   0x2cc340
30820c mov    rdx,QWORD PTR [rbp-0x58]
308210 mov    r8,rax
308213 mov    DWORD PTR [rsp+0x30],0xffffffff
30821b mov    r9,rbx
30821e mov    QWORD PTR [rsp+0x28],rsi
308223 mov    rcx,r12
308226 mov    QWORD PTR [rsp+0x20],rdi
30822b call   0x3a0168
308230 mov    eax,DWORD PTR [rbp-0x60]
308233 cmp    eax,0x1
308236 jle    0x3082d3
30823c mov    edx,eax
30823e lea    rcx,[rbp-0x28]
308242 call   0x2d9510
308247 lea    rcx,[rbp-0x28]
30824b call   0x2cd7ec
308250 movss  xmm0,DWORD PTR [rip+0xfffffffffff8b008]        # 0x293260 ; f32=-1
308258 lea    rcx,[rbp-0x78]
30825c mov    rdx,rax
30825f movss  DWORD PTR [rsp+0x20],xmm0
308265 xor    r9d,r9d
308268 xor    r8d,r8d
30826b call   0x38f79c
308270 movss  xmm1,DWORD PTR [rsp+0x70]
308276 addss  xmm9,xmm13
30827b subss  xmm1,DWORD PTR [rbp-0x78]
308280 lea    rcx,[rsp+0x48]
308285 subss  xmm9,xmm10
30828a addss  xmm1,xmm12
30828f subss  xmm9,DWORD PTR [rip+0xfffffffffff8aee8]        # 0x293180 ; f32=5
308298 movaps xmm2,xmm9
30829c call   0x2cc340
3082a1 lea    rcx,[rbp-0x28]
3082a5 mov    rbx,rax
3082a8 call   0x2cd7ec
3082ad xor    edi,edi
3082af mov    r9,rax
3082b2 mov    r8d,0xc8ffffff
3082b8 mov    QWORD PTR [rsp+0x20],rdi
3082bd mov    rdx,rbx
3082c0 mov    rcx,r12
3082c3 call   0x3a31bc
3082c8 lea    rcx,[rbp-0x28]
3082cc call   0x2cc4f4
3082d1 jmp    0x3082d5
3082d3 xor    edi,edi
3082d5 movss  xmm6,DWORD PTR [rbp+0x198]
3082dd addss  xmm6,DWORD PTR [rsp+0x68]
3082e3 movss  DWORD PTR [rbp+0x198],xmm6
3082eb inc    r15d
3082ee cmp    r15d,r14d
3082f1 jl     0x30803c
3082f7 call   0x390994
3082fc movss  xmm9,DWORD PTR [rip+0xfffffffffff8af0b]        # 0x293210 ; f32=96
308305 movss  xmm12,DWORD PTR [rip+0xfffffffffff8aeda]        # 0x2931e8 ; f32=36
30830e movss  xmm15,DWORD PTR [rip+0xfffffffffff85809]        # 0x28db20 ; f32=20
308317 mov    r14,QWORD PTR [rbp-0x70]
30831b mov    r12,QWORD PTR [rbp-0x68]
30831f mov    ecx,0x1
308324 call   0x39896c
308329 mov    ecx,0x1
30832e call   0x39890c
308333 movss  xmm10,DWORD PTR [rip+0xfffffffffff84f14]        # 0x28d250 ; f32=0.5
30833c jmp    0x3089f7
308341 xorps  xmm2,xmm2
308344 xorps  xmm1,xmm1
308347 call   0x2cc340
30834c movss  xmm2,DWORD PTR [rip+0xe7af8]        # 0x3efe4c
308354 lea    rcx,[rbp+0x1a0]
30835b movss  xmm1,DWORD PTR [rip+0xe7ae5]        # 0x3efe48 ; CONFIG V2.ClothingPosition value(+0x48)
308363 mov    rbx,rax
308366 call   0x2cc340
30836b mov    rcx,rax
30836e mov    r8,rbx
308371 mov    edx,0x2
308376 call   0x39b734
30837b cmp    BYTE PTR [rip+0xdd93a],dil        # 0x3e5cbc
308382 je     0x3083cc
308384 xorps  xmm2,xmm2
308387 lea    rcx,[rbp+0x198]
30838e xorps  xmm1,xmm1
308391 call   0x2cc340
308396 movss  xmm2,DWORD PTR [rip+0xe7aae]        # 0x3efe4c
30839e lea    rcx,[rbp+0x1a0]
3083a5 movss  xmm1,DWORD PTR [rip+0xe7a9b]        # 0x3efe48 ; CONFIG V2.ClothingPosition value(+0x48)
3083ad mov    rbx,rax
3083b0 call   0x2cc340
3083b5 mov    rcx,rax
3083b8 mov    r8,rbx
3083bb mov    edx,0x1
3083c0 call   0x39b734
3083c5 mov    BYTE PTR [rip+0xdd8f0],dil        # 0x3e5cbc
3083cc mov    edx,0x54
3083d1 mov    DWORD PTR [rsp+0x20],0xff
3083d9 lea    rcx,[rbp-0x50]
3083dd lea    r9d,[rdx+0xe]
3083e1 lea    r8d,[rdx+0x7b]
3083e5 call   0x2db318
3083ea mov    rcx,rax
3083ed lea    rdx,[rsp+0x48]
3083f2 call   0x2ef800
3083f7 movss  xmm3,DWORD PTR [rsp+0x50]
3083fd lea    rcx,[rsp+0x78]
308402 movss  xmm2,DWORD PTR [rsp+0x4c]
308408 movss  xmm1,DWORD PTR [rsp+0x48]
30840e movss  xmm0,DWORD PTR [rsp+0x54]
308414 divss  xmm3,xmm6
308418 divss  xmm2,xmm6
30841c divss  xmm1,xmm6
308420 movss  DWORD PTR [rsp+0x20],xmm0
308426 call   0x2cc350
30842b movss  xmm2,DWORD PTR [rip+0xe7b59]        # 0x3eff8c
308433 lea    rcx,[rbp+0x198]
30843a movss  xmm1,DWORD PTR [rip+0xe7b46]        # 0x3eff88 ; CONFIG V2.ClothingSize value(+0x48)
308442 call   0x2cc340
308447 mov    edx,0x2
30844c lea    rcx,[rbp+0x198]
308453 call   0x39b770
308458 xorps  xmm2,xmm2
30845b lea    rcx,[rbp+0x198]
308462 xorps  xmm1,xmm1
308465 call   0x2cc340
30846a lea    rdx,[rbp+0x198]
308471 mov    ecx,0x2
308476 call   0x398c60
30847b movzx  ebx,BYTE PTR [rip+0xfffffffffff10396]        # 0x218818
308482 lea    rdx,[rsp+0x48]
308487 lea    rcx,[rbp+0x198]
30848e call   0x2f52ac ; STRING getter=0x2f52ac Clothing Window
308493 mov    rcx,rax
308496 call   0x2dd160
30849b neg    ebx
30849d mov    rcx,rax
3084a0 sbb    r8d,r8d
3084a3 xor    edx,edx
3084a5 and    r8d,0xfffffffc
3084a9 add    r8d,0x2f
3084ad call   0x38cfa4
3084b2 lea    rcx,[rbp+0x1a0]
3084b9 movaps xmm13,xmm12
3084bd call   0x39246c
3084c2 lea    rcx,[rbp+0x1a8]
3084c9 movss  xmm6,DWORD PTR [rax]
3084cd call   0x39246c
3084d2 movaps xmm1,xmm6
3084d5 lea    rcx,[rbp+0x198]
3084dc movss  xmm2,DWORD PTR [rax+0x4]
3084e1 call   0x2cc340
3084e6 movss  xmm0,DWORD PTR [rbp+0x198]
3084ee mov    ecx,0x1
3084f3 movss  xmm1,DWORD PTR [rbp+0x19c]
3084fb movss  DWORD PTR [rip+0xe7945],xmm0        # 0x3efe48 ; CONFIG V2.ClothingPosition value(+0x48)
308503 movss  DWORD PTR [rip+0xe7941],xmm1        # 0x3efe4c
30850b call   0x39896c
308510 lea    rcx,[rbp+0x1a0]
308517 call   0x392f14
30851c lea    rcx,[rbp+0x1a8]
308523 movss  xmm6,DWORD PTR [rax]
308527 call   0x392f14
30852c movaps xmm1,xmm6
30852f lea    rcx,[rbp+0x198]
308536 movss  xmm2,DWORD PTR [rax+0x4]
30853b call   0x2cc340
308540 movss  xmm0,DWORD PTR [rbp+0x198]
308548 lea    rdx,[rbp+0x1a0]
30854f movss  xmm1,DWORD PTR [rbp+0x19c]
308557 lea    rcx,[rbp+0x198]
30855e movss  DWORD PTR [rip+0xe7a22],xmm0        # 0x3eff88 ; CONFIG V2.ClothingSize value(+0x48)
308566 movss  DWORD PTR [rip+0xe7a1e],xmm1        # 0x3eff8c
30856e call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
308573 mov    rcx,rax
308576 call   0x2d8464
30857b mov    rdi,rax
30857e lea    rdx,[rbp+0x38]
308582 mov    rcx,r14
308585 call   0x369040
30858a lea    rdx,[rsp+0x48]
30858f mov    rbx,rax
308592 lea    rcx,[rbp+0x198]
308599 call   0x2f6060 ; STRING getter=0x2f6060 Clothing(
30859e mov    rcx,rax
3085a1 call   0x2cdd44
3085a6 mov    rdx,rax
3085a9 lea    rcx,[rbp+0x18]
3085ad mov    r8,rbx
3085b0 call   0x2ea6dc
3085b5 mov    rdx,rax
3085b8 lea    rcx,[rbp-0x8]
3085bc mov    r8,rdi
3085bf call   0x2cad38
3085c4 lea    rcx,[rbp+0x18]
3085c8 call   0x2cc4f4
3085cd lea    rcx,[rbp+0x38]
3085d1 call   0x2cc4f4
3085d6 movss  xmm6,DWORD PTR [rip+0xe79aa]        # 0x3eff88 ; CONFIG V2.ClothingSize value(+0x48)
3085de lea    rcx,[rbp-0x8]
3085e2 subss  xmm6,DWORD PTR [rip+0xfffffffffff85532]        # 0x28db1c ; f32=10
3085ea call   0x2cd7ec
3085ef mov    rdx,rax
3085f2 movss  DWORD PTR [rsp+0x20],xmm7
3085f8 xor    r9d,r9d
3085fb lea    rcx,[rbp-0x68]
3085ff xor    r8d,r8d
308602 call   0x38f79c
308607 subss  xmm6,DWORD PTR [rbp-0x68]
30860c mulss  xmm6,xmm10
308611 call   0x392424
308616 addss  xmm0,xmm6
30861a call   0x39b410
30861f lea    rdx,[rsp+0x78]
308624 mov    ecx,0x1
308629 call   0x398b84
30862e lea    rcx,[rbp-0x8]
308632 call   0x2cd7ec
308637 mov    rcx,rax
30863a call   0x3c4e90
30863f mov    ecx,0x1
308644 call   0x39890c
308649 lea    rcx,[rsp+0x40]
30864e call   0x39246c
308653 movss  xmm0,DWORD PTR [rsp+0x44]
308659 lea    rcx,[rbp+0x198]
308660 addss  xmm0,DWORD PTR [rip+0xfffffffffff8ac00]        # 0x293268 ; f32=-16
308668 movss  xmm1,DWORD PTR [rip+0xfffffffffff8ab24]        # 0x293194 ; f32=7
308670 xorps  xmm2,xmm2
308673 movss  DWORD PTR [rsp+0x44],xmm0
308679 call   0x2cc340
30867e mov    r8,rax
308681 lea    rdx,[rsp+0x40]
308686 lea    rcx,[rsp+0x68]
30868b call   0x2ef9d8
308690 movss  xmm1,DWORD PTR [rip+0xe78f0]        # 0x3eff88 ; CONFIG V2.ClothingSize value(+0x48)
308698 lea    rcx,[rbp+0x198]
30869f subss  xmm1,DWORD PTR [rip+0xfffffffffff8ab0d]        # 0x2931b4 ; f32=14
3086a7 movaps xmm2,xmm11
3086ab mulss  xmm1,xmm10
3086b0 call   0x2cc340
3086b5 mov    r8,rax
3086b8 lea    rdx,[rsp+0x68]
3086bd lea    rcx,[rbp-0x70]
3086c1 call   0x2ef9d8
3086c6 call   0x392ecc
3086cb lea    rdx,[rsp+0x78]
3086d0 mov    rdi,rax
3086d3 lea    rcx,[rsp+0x48]
3086d8 call   0x2eecf0
3086dd mov    rcx,rax
3086e0 call   0x2ef80c
3086e5 lea    rdx,[rsp+0x78]
3086ea mov    ebx,eax
3086ec lea    rcx,[rbp-0x50]
3086f0 call   0x2eecf0
3086f5 mov    rcx,rax
3086f8 call   0x2ef80c
3086fd xor    esi,esi
3086ff lea    r8,[rbp-0x70]
308703 mov    DWORD PTR [rsp+0x30],esi
308707 lea    rdx,[rsp+0x68]
30870c mov    DWORD PTR [rsp+0x28],ebx
308710 xor    r9d,r9d
308713 mov    rcx,rdi
308716 mov    DWORD PTR [rsp+0x20],eax
30871a call   0x3a12d8
30871f movss  xmm1,DWORD PTR [rip+0xe7861]        # 0x3eff88 ; CONFIG V2.ClothingSize value(+0x48)
308727 lea    rcx,[rbp+0x198]
30872e mulss  xmm1,xmm10
308733 xorps  xmm2,xmm2
308736 call   0x2cc340
30873b mov    r8,rax
30873e lea    rdx,[rsp+0x40]
308743 lea    rcx,[rsp+0x70]
308748 call   0x2ef9d8
30874d movss  xmm1,DWORD PTR [rip+0xe7833]        # 0x3eff88 ; CONFIG V2.ClothingSize value(+0x48)
308755 lea    rcx,[rbp+0x198]
30875c subss  xmm1,DWORD PTR [rip+0xfffffffffff853b8]        # 0x28db1c ; f32=10
308764 movaps xmm2,xmm11
308768 mulss  xmm1,xmm10
30876d call   0x2cc340
308772 mov    r8,rax
308775 lea    rdx,[rsp+0x70]
30877a lea    rcx,[rbp-0x78]
30877e call   0x2ef9d8
308783 call   0x392ecc
308788 lea    rdx,[rsp+0x78]
30878d mov    rdi,rax
308790 lea    rcx,[rsp+0x48]
308795 call   0x2eecf0
30879a mov    rcx,rax
30879d call   0x2ef80c
3087a2 lea    rdx,[rsp+0x78]
3087a7 mov    ebx,eax
3087a9 lea    rcx,[rbp-0x50]
3087ad call   0x2eecf0
3087b2 mov    rcx,rax
3087b5 call   0x2ef80c
3087ba mov    DWORD PTR [rsp+0x30],ebx
3087be lea    r8,[rbp-0x78]
3087c2 mov    r9d,eax
3087c5 mov    DWORD PTR [rsp+0x28],esi
3087c9 lea    rdx,[rsp+0x70]
3087ce mov    DWORD PTR [rsp+0x20],esi
3087d2 mov    rcx,rdi
3087d5 call   0x3a12d8
3087da movss  xmm2,DWORD PTR [rip+0xfffffffffff8a9b6]        # 0x293198 ; f32=7.5
3087e2 lea    rcx,[rbp+0x198]
3087e9 xorps  xmm1,xmm1
3087ec call   0x2cc340
3087f1 mov    rdx,rax
3087f4 lea    ecx,[rsi+0xe]
3087f7 call   0x398c60
3087fc call   0x392448
308801 subss  xmm0,DWORD PTR [rip+0xfffffffffff8a97b]        # 0x293184 ; f32=5.7
308809 call   0x39b44c
30880e mov    edx,esi
308810 mov    rcx,r13
308813 call   0x3722f0
308818 mov    rcx,rax
30881b mov    rbx,rax
30881e call   0x2caf08
308823 test   al,al
308825 je     0x3089ae
30882b mov    edx,0x10
308830 mov    rcx,rbx
308833 call   0x2dee3c
308838 mov    r8,QWORD PTR [rax]
30883b mov    rcx,r8
30883e call   0x2caf08
308843 test   al,al
308845 je     0x3089ae
30884b lea    rdx,[rsp+0x48]
308850 mov    rcx,r8
308853 call   0x372398
308858 lea    rcx,[rsp+0x48]
30885d call   0x2d8694
308862 test   al,al
308864 jne    0x3089a4
30886a mov    rcx,rbx
30886d call   0x371294
308872 mov    edx,eax
308874 lea    rcx,[rbp+0x18]
308878 mov    edi,eax
30887a call   0x2d9510
30887f lea    rdx,[rbp+0x1a8]
308886 lea    rcx,[rbp+0x198]
30888d call   0x2f7d24 ; STRING getter=0x2f7d24 ) 
308892 mov    rcx,rax
308895 call   0x3203f4
30889a lea    rdx,[rbp+0x1a0]
3088a1 mov    rbx,rax
3088a4 lea    rcx,[rbp+0x198]
3088ab call   0x2f08e0 ; STRING getter=0x2f08e0 (
3088b0 mov    rcx,rax
3088b3 call   0x2d8464
3088b8 mov    rdx,rax
3088bb lea    r8,[rbp+0x18]
3088bf lea    rcx,[rbp+0x88]
3088c6 call   0x2ea714
3088cb mov    rdx,rax
3088ce lea    rcx,[rbp+0x38]
3088d2 mov    r8,rbx
3088d5 call   0x2cad38
3088da lea    rcx,[rbp+0x88]
3088e1 call   0x2cc4f4
3088e6 movss  xmm6,DWORD PTR [rip+0xe769a]        # 0x3eff88 ; CONFIG V2.ClothingSize value(+0x48)
3088ee lea    rcx,[rbp-0x50]
3088f2 subss  xmm6,DWORD PTR [rip+0xfffffffffff85222]        # 0x28db1c ; f32=10
3088fa cmp    edi,0x1
3088fd jle    0x30890f
3088ff lea    r8,[rsp+0x48]
308904 lea    rdx,[rbp+0x38]
308908 call   0x2ea650
30890d jmp    0x308919
30890f lea    rdx,[rsp+0x48]
308914 call   0x2d4194
308919 call   0x39254c
30891e mov    r9,rax
308921 lea    rdx,[rbp-0x50]
308925 movaps xmm2,xmm6
308928 lea    rcx,[rbp-0x28]
30892c call   0x318d74
308931 lea    rcx,[rbp-0x28]
308935 call   0x2cd7ec
30893a mov    rdx,rax
30893d movss  DWORD PTR [rsp+0x20],xmm7
308943 xor    r9d,r9d
308946 lea    rcx,[rbp-0x58]
30894a xor    r8d,r8d
30894d call   0x38f79c
308952 subss  xmm6,DWORD PTR [rbp-0x58]
308957 mulss  xmm6,xmm10
30895c call   0x392424
308961 addss  xmm0,xmm6
308965 call   0x39b410
30896a lea    rcx,[rbp-0x28]
30896e call   0x2cd7ec
308973 mov    rcx,rax
308976 call   0x3c4e90
30897b lea    rcx,[rbp-0x28]
30897f addss  xmm13,xmm15
308984 call   0x2cc4f4
308989 lea    rcx,[rbp-0x50]
30898d call   0x2cc4f4
308992 lea    rcx,[rbp+0x38]
308996 call   0x2cc4f4
30899b lea    rcx,[rbp+0x18]
30899f call   0x2cc4f4
3089a4 lea    rcx,[rsp+0x48]
3089a9 call   0x2cc4f4
3089ae inc    esi
3089b0 cmp    esi,r15d
3089b3 jl     0x30880e
3089b9 movss  xmm1,DWORD PTR [rip+0xe75c7]        # 0x3eff88 ; CONFIG V2.ClothingSize value(+0x48)
3089c1 lea    rcx,[rbp+0x198]
3089c8 movaps xmm2,xmm13
3089cc call   0x2cc340
3089d1 xor    edx,edx
3089d3 lea    rcx,[rbp+0x198]
3089da call   0x39bc6c
3089df mov    ecx,0x1
3089e4 call   0x39896c
3089e9 lea    rcx,[rbp-0x8]
3089ed call   0x2cc4f4
3089f2 call   0x390994
3089f7 xor    r8d,r8d
3089fa lea    rdx,[rsp+0x48]
3089ff lea    rcx,[rip+0xe77d2]        # 0x3f01d8 ; CONFIG VectorBools.hotbarOptions value(+0x48)
308a06 call   0x2e98f0
308a0b mov    rcx,rax
308a0e call   0x2d4d70
308a13 xor    esi,esi
308a15 test   al,al
308a17 je     0x30966e
308a1d mov    rcx,r12
308a20 call   0x373dc8
308a25 mov    rcx,rax
308a28 mov    r13,rax
308a2b call   0x2caf08
308a30 test   al,al
308a32 je     0x30966e
308a38 mov    rcx,r13
308a3b call   0x37224c
308a40 mov    r12d,eax
308a43 test   eax,eax
308a45 jle    0x30966e
308a4b lea    r8d,[rsi+0x3]
308a4f lea    rdx,[rsp+0x48]
308a54 lea    rcx,[rip+0xe777d]        # 0x3f01d8 ; CONFIG VectorBools.hotbarOptions value(+0x48)
308a5b call   0x2e98f0
308a60 mov    rcx,rax
308a63 call   0x2d4d70
308a68 lea    rcx,[rbp+0x198]
308a6f test   al,al
308a71 je     0x308f4c
308a77 movss  xmm10,DWORD PTR [rip+0xe5368]        # 0x3edde8 ; CONFIG F.IconSize value(+0x48)
308a80 movaps xmm13,xmm10
308a84 movd   xmm1,r12d
308a89 mulss  xmm13,DWORD PTR [rip+0xfffffffffff850ae]        # 0x28db40 ; f32=90
308a92 cvtdq2ps xmm1,xmm1
308a95 movaps xmm2,xmm13
308a99 addss  xmm2,DWORD PTR [rip+0xfffffffffff8a693]        # 0x293134 ; f32=2
308aa1 mulss  xmm1,xmm10
308aa6 mulss  xmm1,xmm9
308aab addss  xmm1,xmm14
308ab0 call   0x2cc340
308ab5 mov    rcx,rax
308ab8 xor    edx,edx
308aba call   0x39b770
308abf xorps  xmm3,xmm3
308ac2 movss  DWORD PTR [rsp+0x20],xmm8
308ac9 xorps  xmm2,xmm2
308acc lea    rcx,[rsp+0x48]
308ad1 xorps  xmm1,xmm1
308ad4 call   0x2cc350
308ad9 mov    rdx,rax
308adc lea    ecx,[rsi+0x36]
308adf call   0x398b84
308ae4 xorps  xmm3,xmm3
308ae7 movss  DWORD PTR [rsp+0x20],xmm8
308aee xorps  xmm2,xmm2
308af1 lea    rcx,[rsp+0x48]
308af6 xorps  xmm1,xmm1
308af9 call   0x2cc350
308afe mov    rdx,rax
308b01 lea    ecx,[rsi+0x3]
308b04 call   0x398b84
308b09 xorps  xmm1,xmm1
308b0c lea    ecx,[rsi+0x4]
308b0f call   0x398cc8
308b14 xorps  xmm2,xmm2
308b17 lea    rcx,[rbp+0x198]
308b1e xorps  xmm1,xmm1
308b21 call   0x2cc340
308b26 movss  xmm2,DWORD PTR [rip+0xe72ce]        # 0x3efdfc
308b2e lea    rcx,[rbp+0x1a0]
308b35 movss  xmm1,DWORD PTR [rip+0xe72bb]        # 0x3efdf8 ; CONFIG V2.HotBarPosition value(+0x48)
308b3d mov    rbx,rax
308b40 call   0x2cc340
308b45 mov    rcx,rax
308b48 lea    edx,[rsi+0x2]
308b4b mov    r8,rbx
308b4e call   0x39b734
308b53 cmp    BYTE PTR [rip+0xdd161],sil        # 0x3e5cbb
308b5a je     0x308ba2
308b5c xorps  xmm2,xmm2
308b5f lea    rcx,[rbp+0x198]
308b66 xorps  xmm1,xmm1
308b69 call   0x2cc340
308b6e movss  xmm2,DWORD PTR [rip+0xe7286]        # 0x3efdfc
308b76 lea    rcx,[rbp+0x1a0]
308b7d movss  xmm1,DWORD PTR [rip+0xe7273]        # 0x3efdf8 ; CONFIG V2.HotBarPosition value(+0x48)
308b85 mov    rbx,rax
308b88 call   0x2cc340
308b8d mov    rcx,rax
308b90 lea    edx,[rsi+0x1]
308b93 mov    r8,rbx
308b96 call   0x39b734
308b9b mov    BYTE PTR [rip+0xdd119],sil        # 0x3e5cbb
308ba2 lea    rdx,[rsp+0x48]
308ba7 lea    rcx,[rbp+0x198]
308bae call   0x2f02c4 ; STRING getter=0x2f02c4 Hotbar Icons
308bb3 mov    rcx,rax
308bb6 call   0x2d85f4
308bbb mov    rcx,rax
308bbe xor    edx,edx
308bc0 mov    r8d,0xab
308bc6 call   0x38cfa4
308bcb test   al,al
308bcd je     0x308f33
308bd3 movaps xmm0,xmm10
308bd7 lea    rcx,[rsp+0x40]
308bdc mulss  xmm0,DWORD PTR [rip+0xfffffffffff8a628]        # 0x29320c ; f32=91
308be4 movss  DWORD PTR [rsp+0x70],xmm0
308bea call   0x392ef8
308bef movss  xmm2,DWORD PTR [rsp+0x44]
308bf5 lea    rcx,[rbp+0x198]
308bfc movss  xmm1,DWORD PTR [rsp+0x40]
308c02 call   0x2cc340
308c07 movss  xmm0,DWORD PTR [rbp+0x198]
308c0f movss  xmm1,DWORD PTR [rbp+0x19c]
308c17 movss  DWORD PTR [rip+0xe71d9],xmm0        # 0x3efdf8 ; CONFIG V2.HotBarPosition value(+0x48)
308c1f movss  DWORD PTR [rip+0xe71d5],xmm1        # 0x3efdfc
308c27 call   0x392ecc
308c2c movaps xmm0,xmm10
308c30 movaps xmm15,xmm10
308c34 mulss  xmm15,DWORD PTR [rip+0xfffffffffff8a5c7]        # 0x293204 ; f32=77
308c3d xorps  xmm6,xmm6
308c40 mov    r15,rax
308c43 mov    r14d,esi
308c46 mulss  xmm0,xmm9
308c4b movss  DWORD PTR [rbp+0x198],xmm6
308c53 movss  DWORD PTR [rbp-0x60],xmm0
308c58 movaps xmm0,xmm10
308c5c mulss  xmm10,DWORD PTR [rip+0xfffffffffff8a543]        # 0x2931a8 ; f32=12
308c65 mulss  xmm0,xmm14
308c6a movss  DWORD PTR [rbp+0x1a0],xmm0
308c72 mov    edx,r14d
308c75 mov    rcx,r13
308c78 call   0x3722f0
308c7d mov    rcx,rax
308c80 mov    rbx,rax
308c83 call   0x2caf08
308c88 test   al,al
308c8a je     0x308f22
308c90 mov    edx,0x10
308c95 mov    rcx,rbx
308c98 call   0x2dee3c
308c9d mov    rcx,QWORD PTR [rax]
308ca0 call   0x2caf08
308ca5 test   al,al
308ca7 je     0x308f22
308cad mov    rcx,rbx
308cb0 call   0x371294
308cb5 mov    rcx,rbx
308cb8 mov    DWORD PTR [rsp+0x68],eax
308cbc call   0x371c38
308cc1 mov    rcx,rax
308cc4 mov    QWORD PTR [rbp-0x68],rax
308cc8 call   0x2caf08
308ccd test   al,al
308ccf je     0x308f22
308cd5 mov    edx,0xd8
308cda mov    rcx,rbx
308cdd call   0x2dee3c
308ce2 mov    edx,0xb4
308ce7 mov    rcx,rbx
308cea movss  xmm0,DWORD PTR [rax]
308cee movss  DWORD PTR [rbp+0x1a8],xmm0
308cf6 call   0x2dee3c
308cfb mov    rcx,rbx
308cfe movss  xmm14,DWORD PTR [rax]
308d03 call   0x372184
308d08 movss  xmm9,DWORD PTR [rsp+0x44]
308d0f movaps xmm12,xmm6
308d13 addss  xmm12,DWORD PTR [rsp+0x40]
308d1a test   al,al
308d1c je     0x308dde
308d22 movss  xmm6,DWORD PTR [rbp+0x1a0]
308d2a lea    rcx,[rsp+0x48]
308d2f movaps xmm7,xmm9
308d33 addss  xmm6,xmm12
308d38 addss  xmm7,xmm13
308d3d movaps xmm1,xmm6
308d40 movaps xmm2,xmm7
308d43 call   0x2cc340
308d48 movaps xmm2,xmm9
308d4c lea    rcx,[rsp+0x78]
308d51 movaps xmm1,xmm12
308d55 mov    rbx,rax
308d58 call   0x2cc340
308d5d mov    rdx,rax
308d60 mov    DWORD PTR [rsp+0x28],esi
308d64 mov    r9d,0x4c42876e
308d6a movss  DWORD PTR [rsp+0x20],xmm8
308d71 mov    r8,rbx
308d74 mov    rcx,r15
308d77 call   0x3a1244
308d7c movaps xmm2,xmm7
308d7f lea    rcx,[rbp-0x50]
308d83 movaps xmm1,xmm6
308d86 call   0x2cc340
308d8b divss  xmm14,DWORD PTR [rbp+0x1a8]
308d94 lea    rcx,[rbp+0x80]
308d9b mov    rbx,rax
308d9e movaps xmm2,xmm11
308da2 movaps xmm1,xmm12
308da6 minss  xmm14,xmm11
308dab subss  xmm2,xmm14
308db0 mulss  xmm2,xmm13
308db5 addss  xmm2,xmm9
308dba call   0x2cc340
308dbf mov    rdx,rax
308dc2 mov    DWORD PTR [rsp+0x28],esi
308dc6 mov    r9d,0xcc42876e
308dcc movss  DWORD PTR [rsp+0x20],xmm8
308dd3 mov    r8,rbx
308dd6 mov    rcx,r15
308dd9 call   0x3a1244
308dde movaps xmm7,xmm9
308de2 lea    rcx,[rbp+0x78]
308de6 movaps xmm6,xmm12
308dea addss  xmm7,xmm11
308def addss  xmm6,DWORD PTR [rip+0xfffffffffff8a391]        # 0x293188 ; f32=6
308df7 movaps xmm2,xmm11
308dfb movaps xmm1,xmm11
308dff call   0x2cc340
308e04 xorps  xmm2,xmm2
308e07 lea    rcx,[rbp+0x70]
308e0b xorps  xmm1,xmm1
308e0e mov    rsi,rax
308e11 call   0x2cc340
308e16 movaps xmm2,xmm7
308e19 lea    rcx,[rbp+0x68]
308e1d movaps xmm1,xmm6
308e20 addss  xmm2,xmm15
308e25 addss  xmm1,xmm15
308e2a mov    rdi,rax
308e2d call   0x2cc340
308e32 movaps xmm2,xmm7
308e35 lea    rcx,[rbp+0x60]
308e39 movaps xmm1,xmm6
308e3c mov    rbx,rax
308e3f call   0x2cc340
308e44 mov    rdx,QWORD PTR [rbp-0x68]
308e48 mov    r8,rax
308e4b mov    DWORD PTR [rsp+0x30],0xffffffff
308e53 mov    r9,rbx
308e56 mov    QWORD PTR [rsp+0x28],rsi
308e5b mov    rcx,r15
308e5e mov    QWORD PTR [rsp+0x20],rdi
308e63 call   0x3a0168
308e68 mov    eax,DWORD PTR [rsp+0x68]
308e6c cmp    eax,0x1
308e6f jle    0x308f0b
308e75 mov    edx,eax
308e77 lea    rcx,[rbp-0x8]
308e7b call   0x2d9510
308e80 lea    rcx,[rbp-0x8]
308e84 call   0x2cd7ec
308e89 movss  xmm0,DWORD PTR [rip+0xfffffffffff8a3cf]        # 0x293260 ; f32=-1
308e91 lea    rcx,[rbp-0x70]
308e95 mov    rdx,rax
308e98 movss  DWORD PTR [rsp+0x20],xmm0
308e9e xor    r9d,r9d
308ea1 xor    r8d,r8d
308ea4 call   0x38f79c
308ea9 movss  xmm1,DWORD PTR [rsp+0x70]
308eaf addss  xmm9,xmm13
308eb4 subss  xmm1,DWORD PTR [rbp-0x70]
308eb9 lea    rcx,[rbp+0x58]
308ebd subss  xmm9,xmm10
308ec2 addss  xmm1,xmm12
308ec7 subss  xmm9,DWORD PTR [rip+0xfffffffffff8a2b0]        # 0x293180 ; f32=5
308ed0 movaps xmm2,xmm9
308ed4 call   0x2cc340
308ed9 lea    rcx,[rbp-0x8]
308edd mov    rbx,rax
308ee0 call   0x2cd7ec
308ee5 xor    esi,esi
308ee7 mov    r9,rax
308eea mov    r8d,0xc8ffffff
308ef0 mov    QWORD PTR [rsp+0x20],rsi
308ef5 mov    rdx,rbx
308ef8 mov    rcx,r15
308efb call   0x3a31bc
308f00 lea    rcx,[rbp-0x8]
308f04 call   0x2cc4f4
308f09 jmp    0x308f0d
308f0b xor    esi,esi
308f0d movss  xmm6,DWORD PTR [rbp+0x198]
308f15 addss  xmm6,DWORD PTR [rbp-0x60]
308f1a movss  DWORD PTR [rbp+0x198],xmm6
308f22 inc    r14d
308f25 cmp    r14d,r12d
308f28 jl     0x308c72
308f2e call   0x390994
308f33 mov    ecx,0x1
308f38 call   0x39896c
308f3d mov    ecx,0x1
308f42 call   0x39890c
308f47 jmp    0x30966e
308f4c xorps  xmm2,xmm2
308f4f xorps  xmm1,xmm1
308f52 call   0x2cc340
308f57 movss  xmm2,DWORD PTR [rip+0xe6e9d]        # 0x3efdfc
308f5f lea    rcx,[rbp+0x1a0]
308f66 movss  xmm1,DWORD PTR [rip+0xe6e8a]        # 0x3efdf8 ; CONFIG V2.HotBarPosition value(+0x48)
308f6e mov    rbx,rax
308f71 call   0x2cc340
308f76 mov    rcx,rax
308f79 mov    r8,rbx
308f7c mov    edx,0x2
308f81 call   0x39b734
308f86 cmp    BYTE PTR [rip+0xdcd2e],sil        # 0x3e5cbb
308f8d je     0x308fd7
308f8f xorps  xmm2,xmm2
308f92 lea    rcx,[rbp+0x198]
308f99 xorps  xmm1,xmm1
308f9c call   0x2cc340
308fa1 movss  xmm2,DWORD PTR [rip+0xe6e53]        # 0x3efdfc
308fa9 lea    rcx,[rbp+0x1a0]
308fb0 movss  xmm1,DWORD PTR [rip+0xe6e40]        # 0x3efdf8 ; CONFIG V2.HotBarPosition value(+0x48)
308fb8 mov    rbx,rax
308fbb call   0x2cc340
308fc0 mov    rcx,rax
308fc3 mov    r8,rbx
308fc6 mov    edx,0x1
308fcb call   0x39b734
308fd0 mov    BYTE PTR [rip+0xdcce4],sil        # 0x3e5cbb
308fd7 mov    edx,0x54
308fdc mov    DWORD PTR [rsp+0x20],0xff
308fe4 lea    rcx,[rbp-0x50]
308fe8 lea    r9d,[rdx+0xe]
308fec lea    r8d,[rdx+0x7b]
308ff0 call   0x2db318
308ff5 mov    rcx,rax
308ff8 lea    rdx,[rsp+0x48]
308ffd call   0x2ef800
309002 movss  xmm0,DWORD PTR [rip+0xfffffffffff8a0f2]        # 0x2930fc ; f32=1.35
30900a lea    rcx,[rsp+0x78]
30900f movss  xmm3,DWORD PTR [rsp+0x50]
309015 movss  xmm2,DWORD PTR [rsp+0x4c]
30901b movss  xmm1,DWORD PTR [rsp+0x48]
309021 divss  xmm3,xmm0
309025 divss  xmm2,xmm0
309029 divss  xmm1,xmm0
30902d movss  xmm0,DWORD PTR [rsp+0x54]
309033 movss  DWORD PTR [rsp+0x20],xmm0
309039 call   0x2cc350
30903e movss  xmm2,DWORD PTR [rip+0xe6ea6]        # 0x3efeec
309046 lea    rcx,[rbp+0x198]
30904d movss  xmm1,DWORD PTR [rip+0xe6e93]        # 0x3efee8 ; CONFIG V2.HotbarSize value(+0x48)
309055 call   0x2cc340
30905a mov    edx,0x2
30905f lea    rcx,[rbp+0x198]
309066 call   0x39b770
30906b xorps  xmm2,xmm2
30906e lea    rcx,[rbp+0x198]
309075 xorps  xmm1,xmm1
309078 call   0x2cc340
30907d lea    rdx,[rbp+0x198]
309084 mov    ecx,0x2
309089 call   0x398c60
30908e movzx  ebx,BYTE PTR [rip+0xfffffffffff0f783]        # 0x218818
309095 lea    rdx,[rsp+0x48]
30909a lea    rcx,[rbp+0x198]
3090a1 call   0x2f08ec ; STRING getter=0x2f08ec Hotbar Window
3090a6 mov    rcx,rax
3090a9 call   0x2dd188
3090ae neg    ebx
3090b0 mov    rcx,rax
3090b3 sbb    r8d,r8d
3090b6 xor    edx,edx
3090b8 and    r8d,0xfffffffc
3090bc add    r8d,0x2f
3090c0 call   0x38cfa4
3090c5 lea    rcx,[rbp+0x1a0]
3090cc call   0x39246c
3090d1 lea    rcx,[rbp+0x1a8]
3090d8 movss  xmm6,DWORD PTR [rax]
3090dc call   0x39246c
3090e1 movaps xmm1,xmm6
3090e4 lea    rcx,[rbp+0x198]
3090eb movss  xmm2,DWORD PTR [rax+0x4]
3090f0 call   0x2cc340
3090f5 movss  xmm0,DWORD PTR [rbp+0x198]
3090fd mov    ecx,0x1
309102 movss  xmm1,DWORD PTR [rbp+0x19c]
30910a movss  DWORD PTR [rip+0xe6ce6],xmm0        # 0x3efdf8 ; CONFIG V2.HotBarPosition value(+0x48)
309112 movss  DWORD PTR [rip+0xe6ce2],xmm1        # 0x3efdfc
30911a call   0x39896c
30911f lea    rcx,[rbp+0x1a0]
309126 call   0x392f14
30912b lea    rcx,[rbp+0x1a8]
309132 movss  xmm6,DWORD PTR [rax]
309136 call   0x392f14
30913b movaps xmm1,xmm6
30913e lea    rcx,[rbp+0x198]
309145 movss  xmm2,DWORD PTR [rax+0x4]
30914a call   0x2cc340
30914f movss  xmm0,DWORD PTR [rbp+0x198]
309157 lea    rdx,[rbp+0x1a0]
30915e movss  xmm1,DWORD PTR [rbp+0x19c]
309166 lea    rcx,[rbp+0x198]
30916d movss  DWORD PTR [rip+0xe6d73],xmm0        # 0x3efee8 ; CONFIG V2.HotbarSize value(+0x48)
309175 movss  DWORD PTR [rip+0xe6d6f],xmm1        # 0x3efeec
30917d call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
309182 mov    rcx,rax
309185 call   0x2d8464
30918a mov    rdi,rax
30918d lea    rdx,[rbp+0x18]
309191 mov    rcx,r14
309194 call   0x369040
309199 lea    rdx,[rbp+0x1a8]
3091a0 mov    rbx,rax
3091a3 lea    rcx,[rbp+0x198]
3091aa call   0x2f0bf8
3091af mov    rcx,rax
3091b2 call   0x2e3614
3091b7 mov    rdx,rax
3091ba lea    rcx,[rbp+0x88]
3091c1 mov    r8,rbx
3091c4 call   0x2ea6dc
3091c9 mov    rdx,rax
3091cc lea    rcx,[rbp+0x38]
3091d0 mov    r8,rdi
3091d3 call   0x2cad38
3091d8 lea    rcx,[rbp+0x88]
3091df call   0x2cc4f4
3091e4 lea    rcx,[rbp+0x18]
3091e8 call   0x2cc4f4
3091ed movss  xmm6,DWORD PTR [rip+0xe6cf3]        # 0x3efee8 ; CONFIG V2.HotbarSize value(+0x48)
3091f5 lea    rcx,[rbp+0x38]
3091f9 movss  xmm9,DWORD PTR [rip+0xfffffffffff8491a]        # 0x28db1c ; f32=10
309202 subss  xmm6,xmm9
309207 call   0x2cd7ec
30920c movss  xmm7,DWORD PTR [rip+0xfffffffffff8a04c]        # 0x293260 ; f32=-1
309214 lea    rcx,[rbp-0x68]
309218 mov    rdx,rax
30921b movss  DWORD PTR [rsp+0x20],xmm7
309221 xor    r9d,r9d
309224 xor    r8d,r8d
309227 call   0x38f79c
30922c subss  xmm6,DWORD PTR [rbp-0x68]
309231 mulss  xmm6,xmm10
309236 call   0x392424
30923b addss  xmm0,xmm6
30923f call   0x39b410
309244 lea    rdx,[rsp+0x78]
309249 mov    ecx,0x1
30924e call   0x398b84
309253 lea    rcx,[rbp+0x38]
309257 call   0x2cd7ec
30925c mov    rcx,rax
30925f call   0x3c4e90
309264 mov    ecx,0x1
309269 call   0x39890c
30926e lea    rcx,[rsp+0x40]
309273 call   0x39246c
309278 movss  xmm0,DWORD PTR [rsp+0x44]
30927e lea    rcx,[rbp+0x198]
309285 addss  xmm0,DWORD PTR [rip+0xfffffffffff89fdb]        # 0x293268 ; f32=-16
30928d movss  xmm1,DWORD PTR [rip+0xfffffffffff89eff]        # 0x293194 ; f32=7
309295 xorps  xmm2,xmm2
309298 movss  DWORD PTR [rsp+0x44],xmm0
30929e call   0x2cc340
3092a3 mov    r8,rax
3092a6 lea    rdx,[rsp+0x40]
3092ab lea    rcx,[rsp+0x68]
3092b0 call   0x2ef9d8
3092b5 movss  xmm1,DWORD PTR [rip+0xe6c2b]        # 0x3efee8 ; CONFIG V2.HotbarSize value(+0x48)
3092bd lea    rcx,[rbp+0x198]
3092c4 subss  xmm1,DWORD PTR [rip+0xfffffffffff89ee8]        # 0x2931b4 ; f32=14
3092cc movaps xmm2,xmm11
3092d0 mulss  xmm1,xmm10
3092d5 call   0x2cc340
3092da mov    r8,rax
3092dd lea    rdx,[rsp+0x68]
3092e2 lea    rcx,[rbp-0x70]
3092e6 call   0x2ef9d8
3092eb call   0x392ecc
3092f0 lea    rdx,[rsp+0x78]
3092f5 mov    rdi,rax
3092f8 lea    rcx,[rsp+0x48]
3092fd call   0x2eecf0
309302 mov    rcx,rax
309305 call   0x2ef80c
30930a lea    rdx,[rsp+0x78]
30930f mov    ebx,eax
309311 lea    rcx,[rbp-0x50]
309315 call   0x2eecf0
30931a mov    rcx,rax
30931d call   0x2ef80c
309322 mov    DWORD PTR [rsp+0x30],esi
309326 lea    r8,[rbp-0x70]
30932a mov    DWORD PTR [rsp+0x28],ebx
30932e lea    rdx,[rsp+0x68]
309333 xor    r9d,r9d
309336 mov    DWORD PTR [rsp+0x20],eax
30933a mov    rcx,rdi
30933d call   0x3a12d8
309342 movss  xmm1,DWORD PTR [rip+0xe6b9e]        # 0x3efee8 ; CONFIG V2.HotbarSize value(+0x48)
30934a lea    rcx,[rbp+0x198]
309351 mulss  xmm1,xmm10
309356 xorps  xmm2,xmm2
309359 call   0x2cc340
30935e mov    r8,rax
309361 lea    rdx,[rsp+0x40]
309366 lea    rcx,[rsp+0x70]
30936b call   0x2ef9d8
309370 movss  xmm1,DWORD PTR [rip+0xe6b70]        # 0x3efee8 ; CONFIG V2.HotbarSize value(+0x48)
309378 lea    rcx,[rbp+0x198]
30937f subss  xmm1,xmm9
309384 movaps xmm2,xmm11
309388 mulss  xmm1,xmm10
30938d call   0x2cc340
309392 mov    r8,rax
309395 lea    rdx,[rsp+0x70]
30939a lea    rcx,[rbp-0x78]
30939e call   0x2ef9d8
3093a3 call   0x392ecc
3093a8 lea    rdx,[rsp+0x78]
3093ad mov    rdi,rax
3093b0 lea    rcx,[rsp+0x48]
3093b5 call   0x2eecf0
3093ba mov    rcx,rax
3093bd call   0x2ef80c
3093c2 lea    rdx,[rsp+0x78]
3093c7 mov    ebx,eax
3093c9 lea    rcx,[rbp-0x50]
3093cd call   0x2eecf0
3093d2 mov    rcx,rax
3093d5 call   0x2ef80c
3093da mov    DWORD PTR [rsp+0x30],ebx
3093de lea    r8,[rbp-0x78]
3093e2 mov    r9d,eax
3093e5 mov    DWORD PTR [rsp+0x28],esi
3093e9 lea    rdx,[rsp+0x70]
3093ee mov    DWORD PTR [rsp+0x20],esi
3093f2 mov    rcx,rdi
3093f5 call   0x3a12d8
3093fa movss  xmm2,DWORD PTR [rip+0xfffffffffff89d96]        # 0x293198 ; f32=7.5
309402 lea    rcx,[rbp+0x198]
309409 xorps  xmm1,xmm1
30940c call   0x2cc340
309411 mov    rdx,rax
309414 mov    ecx,0xe
309419 call   0x398c60
30941e call   0x392448
309423 subss  xmm0,DWORD PTR [rip+0xfffffffffff89d59]        # 0x293184 ; f32=5.7
30942b call   0x39b44c
309430 mov    rcx,r14
309433 call   0x368a84
309438 mov    rcx,rax
30943b mov    rdx,rax
30943e call   0x2caf08
309443 test   al,al
309445 je     0x309454
309447 mov    rcx,rdx
30944a call   0x372220
30944f mov    r14d,eax
309452 jmp    0x30945a
309454 mov    r14d,0xfffea06f
30945a mov    edx,esi
30945c mov    rcx,r13
30945f call   0x3722f0
309464 mov    rcx,rax
309467 mov    rbx,rax
30946a call   0x2caf08
30946f test   al,al
309471 je     0x309625
309477 mov    edx,0x10
30947c mov    rcx,rbx
30947f call   0x2dee3c
309484 mov    r8,QWORD PTR [rax]
309487 mov    rcx,r8
30948a call   0x2caf08
30948f test   al,al
309491 je     0x309625
309497 lea    rdx,[rsp+0x48]
30949c mov    rcx,r8
30949f call   0x372398
3094a4 lea    rcx,[rsp+0x48]
3094a9 call   0x2d8694
3094ae test   al,al
3094b0 jne    0x30961b
3094b6 mov    rcx,rbx
3094b9 call   0x371604
3094be mov    rcx,rbx
3094c1 mov    r15d,eax
3094c4 call   0x371294
3094c9 mov    edx,eax
3094cb lea    rcx,[rbp-0x50]
3094cf mov    edi,eax
3094d1 call   0x2d9510
3094d6 lea    rdx,[rbp+0x1a8]
3094dd lea    rcx,[rbp+0x198]
3094e4 call   0x2f1560 ; STRING getter=0x2f1560 ) 
3094e9 mov    rcx,rax
3094ec call   0x3203f4
3094f1 lea    rdx,[rbp+0x1a0]
3094f8 mov    rbx,rax
3094fb lea    rcx,[rbp+0x198]
309502 call   0x2f08e0 ; STRING getter=0x2f08e0 (
309507 mov    rcx,rax
30950a call   0x2d8464
30950f mov    rdx,rax
309512 lea    r8,[rbp-0x50]
309516 lea    rcx,[rbp+0x88]
30951d call   0x2ea714
309522 mov    rdx,rax
309525 lea    rcx,[rbp+0x18]
309529 mov    r8,rbx
30952c call   0x2cad38
309531 lea    rcx,[rbp+0x88]
309538 call   0x2cc4f4
30953d movss  xmm6,DWORD PTR [rip+0xe69a3]        # 0x3efee8 ; CONFIG V2.HotbarSize value(+0x48)
309545 lea    rcx,[rbp-0x28]
309549 subss  xmm6,xmm9
30954e cmp    edi,0x1
309551 jle    0x309563
309553 lea    r8,[rsp+0x48]
309558 lea    rdx,[rbp+0x18]
30955c call   0x2ea650
309561 jmp    0x30956d
309563 lea    rdx,[rsp+0x48]
309568 call   0x2d4194
30956d call   0x39254c
309572 mov    r9,rax
309575 lea    rdx,[rbp-0x28]
309579 movaps xmm2,xmm6
30957c lea    rcx,[rbp-0x8]
309580 call   0x318d74
309585 lea    rcx,[rbp-0x8]
309589 call   0x2cd7ec
30958e mov    rdx,rax
309591 movss  DWORD PTR [rsp+0x20],xmm7
309597 xor    r9d,r9d
30959a lea    rcx,[rbp-0x58]
30959e xor    r8d,r8d
3095a1 call   0x38f79c
3095a6 subss  xmm6,DWORD PTR [rbp-0x58]
3095ab mulss  xmm6,xmm10
3095b0 call   0x392424
3095b5 addss  xmm0,xmm6
3095b9 call   0x39b410
3095be cmp    r14d,r15d
3095c1 jne    0x3095d2
3095c3 lea    rdx,[rsp+0x78]
3095c8 mov    ecx,0x1
3095cd call   0x398b84
3095d2 lea    rcx,[rbp-0x8]
3095d6 call   0x2cd7ec
3095db mov    rcx,rax
3095de call   0x3c4e90
3095e3 cmp    r14d,r15d
3095e6 jne    0x3095f2
3095e8 mov    ecx,0x1
3095ed call   0x39890c
3095f2 lea    rcx,[rbp-0x8]
3095f6 addss  xmm12,xmm15
3095fb call   0x2cc4f4
309600 lea    rcx,[rbp-0x28]
309604 call   0x2cc4f4
309609 lea    rcx,[rbp+0x18]
30960d call   0x2cc4f4
309612 lea    rcx,[rbp-0x50]
309616 call   0x2cc4f4
30961b lea    rcx,[rsp+0x48]
309620 call   0x2cc4f4
309625 inc    esi
309627 cmp    esi,r12d
30962a jl     0x30945a
309630 movss  xmm1,DWORD PTR [rip+0xe68b0]        # 0x3efee8 ; CONFIG V2.HotbarSize value(+0x48)
309638 lea    rcx,[rbp+0x198]
30963f movaps xmm2,xmm12
309643 call   0x2cc340
309648 xor    edx,edx
30964a lea    rcx,[rbp+0x198]
309651 call   0x39bc6c
309656 mov    ecx,0x1
30965b call   0x39896c
309660 lea    rcx,[rbp+0x38]
309664 call   0x2cc4f4
309669 call   0x390994
30966e lea    r11,[rsp+0x250]
309676 mov    rbx,QWORD PTR [r11+0x40]
30967a movaps xmm6,XMMWORD PTR [r11-0x10]
30967f movaps xmm7,XMMWORD PTR [r11-0x20]
309684 movaps xmm8,XMMWORD PTR [r11-0x30]
309689 movaps xmm9,XMMWORD PTR [r11-0x40]
30968e movaps xmm10,XMMWORD PTR [r11-0x50]
309693 movaps xmm11,XMMWORD PTR [r11-0x60]
309698 movaps xmm12,XMMWORD PTR [r11-0x70]
30969d movaps xmm13,XMMWORD PTR [r11-0x80]
3096a2 movaps xmm14,XMMWORD PTR [r11-0x90]
3096aa movaps xmm15,XMMWORD PTR [r11-0xa0]
3096b2 mov    rsp,r11
3096b5 pop    r15
3096b7 pop    r14
3096b9 pop    r13
3096bb pop    r12
3096bd pop    rdi
3096be pop    rsi
3096bf pop    rbp
3096c0 ret
