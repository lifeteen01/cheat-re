; editor independent pdata/next-pdata extent 3c0538..3c2a7f unwind3d58a0
3c0538 mov    rax,rsp
3c053b mov    DWORD PTR [rax+0x20],r9d
3c053f mov    QWORD PTR [rax+0x18],r8
3c0543 mov    QWORD PTR [rax+0x10],rdx
3c0547 mov    QWORD PTR [rax+0x8],rcx
3c054b push   rbp
3c054c push   rbx
3c054d push   rsi
3c054e push   rdi
3c054f push   r12
3c0551 push   r13
3c0553 push   r14
3c0555 push   r15
3c0557 lea    rbp,[rax-0x1c8]
3c055e sub    rsp,0x288
3c0565 movaps XMMWORD PTR [rax-0x58],xmm6
3c0569 mov    rbx,rcx
3c056c movaps XMMWORD PTR [rax-0x68],xmm7
3c0570 movaps XMMWORD PTR [rax-0x78],xmm8
3c0575 movaps XMMWORD PTR [rax-0x88],xmm9
3c057c 
3c057d movaps XMMWORD PTR [rax-0x98],xmm10
3c0584 
3c0585 movaps XMMWORD PTR [rax-0xa8],xmm11
3c058c 
3c058d movaps XMMWORD PTR [rax-0xb8],xmm12
3c0594 
3c0595 movaps XMMWORD PTR [rax-0xc8],xmm13
3c059c 
3c059d movaps XMMWORD PTR [rax-0xd8],xmm14
3c05a4 
3c05a5 call   0x35d200
3c05aa xor    r12d,r12d
3c05ad mov    rdi,rax
3c05b0 cmp    BYTE PTR [rax+0xbb],r12b
3c05b7 jne    0x3c073b
3c05bd mov    r13d,DWORD PTR [rbp+0x1f8]
3c05c4 mov    r14d,r13d
3c05c7 mov    r15,QWORD PTR [rip+0x4555a]        # 0x405b28
3c05ce and    r14d,0x4000000
3c05d5 mov    DWORD PTR [rsp+0x5c],r14d
3c05da mov    QWORD PTR [rbp-0x68],r15
3c05de je     0x3c05e5
3c05e0 call   0x38ec90
3c05e5 xor    r8d,r8d
3c05e8 mov    rdx,rbx
3c05eb mov    rcx,rdi
3c05ee call   0x392614
3c05f3 movss  xmm14,DWORD PTR [rip+0xffffffffffed2c64]        # 0x293260
3c05fa 
3c05fc lea    rcx,[rbp+0x48]
3c0600 mov    r9b,0x1
3c0603 movss  DWORD PTR [rsp+0x20],xmm14
3c060a xor    r8d,r8d
3c060d mov    DWORD PTR [rsp+0x60],eax
3c0611 mov    rdx,rbx
3c0614 mov    esi,eax
3c0616 call   0x38f79c
3c061b test   r14d,r14d
3c061e je     0x3c0633
3c0620 movss  xmm7,DWORD PTR [r15+0x3c30]
3c0627 
3c0629 mulss  xmm7,DWORD PTR [rip+0xffffffffffecdbaf]        # 0x28e1e0
3c0630 
3c0631 jmp    0x3c0638
3c0633 movss  xmm7,DWORD PTR [rbp+0x4c]
3c0638 movss  xmm6,DWORD PTR [r15+0x3810]
3c063f 
3c0641 call   0x38f370
3c0646 mov    rdx,QWORD PTR [rbp+0x1f0]
3c064d addss  xmm6,xmm6
3c0651 movaps xmm2,xmm0
3c0654 lea    rcx,[rbp-0x8]
3c0658 mov    rdx,QWORD PTR [rdx]
3c065b addss  xmm6,xmm7
3c065f movaps xmm3,xmm6
3c0662 call   0x38f224
3c0667 movss  xmm1,DWORD PTR [rbp+0x48]
3c066c xorps  xmm10,xmm10
3c0670 comiss xmm1,xmm10
3c0674 jbe    0x3c0681
3c0676 addss  xmm1,DWORD PTR [r15+0x3824]
3c067d 
3c067f jmp    0x3c0684
3c0681 xorps  xmm1,xmm1
3c0684 addss  xmm1,DWORD PTR [rbp-0x8]
3c0689 movss  xmm2,DWORD PTR [rbp-0x4]
3c068e lea    rcx,[rbp-0x48]
3c0692 call   0x2cc340
3c0697 lea    rbx,[rdi+0x100]
3c069e mov    rdx,rbx
3c06a1 lea    r8,[rbp-0x8]
3c06a5 lea    rcx,[rbp-0x70]
3c06a9 call   0x2ef9d8
3c06ae mov    r8,rax
3c06b1 lea    rcx,[rbp-0x38]
3c06b5 mov    rdx,rbx
3c06b8 call   0x2db388
3c06bd lea    r8,[rbp-0x48]
3c06c1 lea    rdx,[rbp-0x38]
3c06c5 lea    rcx,[rbp-0x70]
3c06c9 call   0x2ef9d8
3c06ce mov    r8,rax
3c06d1 lea    rdx,[rbp-0x38]
3c06d5 lea    rcx,[rbp+0x70]
3c06d9 call   0x2db388
3c06de movss  xmm12,DWORD PTR [rbp-0x8]
3c06e4 lea    rcx,[rbp+0xa8]
3c06eb movss  xmm13,DWORD PTR [rbp-0x4]
3c06f1 call   0x38b058
3c06f6 movss  xmm1,DWORD PTR [r15+0x3810]
3c06fd 
3c06ff lea    rcx,[rbp+0x70]
3c0703 test   r14d,r14d
3c0706 je     0x3c08b2
3c070c movss  xmm6,DWORD PTR [rbx]
3c0710 movss  xmm7,DWORD PTR [rdi+0x104]
3c0717 
3c0718 call   0x37ca80
3c071d mov    r9d,0x400
3c0723 lea    r8,[rbp-0x38]
3c0727 mov    edx,esi
3c0729 lea    rcx,[rbp+0x70]
3c072d call   0x3948dc
3c0732 test   al,al
3c0734 jne    0x3c0788
3c0736 call   0x390efc
3c073b xor    al,al
3c073d lea    r11,[rsp+0x288]
3c0744 
3c0745 movaps xmm6,XMMWORD PTR [r11-0x18]
3c074a movaps xmm7,XMMWORD PTR [r11-0x28]
3c074f movaps xmm8,XMMWORD PTR [r11-0x38]
3c0754 movaps xmm9,XMMWORD PTR [r11-0x48]
3c0759 movaps xmm10,XMMWORD PTR [r11-0x58]
3c075e movaps xmm11,XMMWORD PTR [r11-0x68]
3c0763 movaps xmm12,XMMWORD PTR [r11-0x78]
3c0768 movaps xmm13,XMMWORD PTR [r11-0x88]
3c076f 
3c0770 movaps xmm14,XMMWORD PTR [r11-0x98]
3c0777 
3c0778 mov    rsp,r11
3c077b pop    r15
3c077d pop    r14
3c077f pop    r13
3c0781 pop    r12
3c0783 pop    rdi
3c0784 pop    rsi
3c0785 pop    rbx
3c0786 pop    rbp
3c0787 ret
3c0788 movups xmm0,XMMWORD PTR [r15+0x47a4]
3c078f 
3c0790 mov    r12d,DWORD PTR [r15+0x47ac]
3c0797 lea    rdx,[r15+0x3938]
3c079e movups xmm1,XMMWORD PTR [r15+0x47b4]
3c07a5 
3c07a6 movups XMMWORD PTR [rbp+0xa8],xmm0
3c07ad movups xmm0,XMMWORD PTR [r15+0x47c4]
3c07b4 
3c07b5 movups XMMWORD PTR [rbp+0xb8],xmm1
3c07bc movups xmm1,XMMWORD PTR [r15+0x47d0]
3c07c3 
3c07c4 movss  DWORD PTR [rbx],xmm6
3c07c8 mov    ebx,0x4
3c07cd movups XMMWORD PTR [rbp+0xc8],xmm0
3c07d4 mov    ecx,ebx
3c07d6 movss  DWORD PTR [rdi+0x104],xmm7
3c07dd 
3c07de movups XMMWORD PTR [rbp+0xd4],xmm1
3c07e5 call   0x398b84
3c07ea movss  xmm1,DWORD PTR [r15+0x3814]
3c07f1 
3c07f3 lea    ecx,[rbx+0x3]
3c07f6 call   0x398cc8
3c07fb movss  xmm1,DWORD PTR [r15+0x3818]
3c0802 
3c0804 lea    ecx,[rbx+0x4]
3c0807 call   0x398cc8
3c080c xorps  xmm2,xmm2
3c080f lea    rcx,[rbp-0x48]
3c0813 xorps  xmm1,xmm1
3c0816 call   0x2cc340
3c081b mov    rdx,rax
3c081e lea    ecx,[rbx-0x2]
3c0821 call   0x398c60
3c0826 lea    rdx,[rbp-0x48]
3c082a lea    rcx,[rbp-0x38]
3c082e call   0x378940
3c0833 mov    rcx,QWORD PTR [rbp+0x1d0]
3c083a mov    r8,rax
3c083d mov    r9b,0x1
3c0840 mov    DWORD PTR [rsp+0x20],ebx
3c0844 mov    edx,esi
3c0846 call   0x38e9c4
3c084b mov    ecx,0x3
3c0850 mov    bl,al
3c0852 call   0x39896c
3c0857 mov    ecx,0x1
3c085c call   0x39890c
3c0861 test   bl,bl
3c0863 jne    0x3c086f
3c0865 call   0x390a88
3c086a jmp    0x3c0736
3c086f mov    r14,QWORD PTR [r15+0x3f08]
3c0876 lea    rdx,[r15+0x380c]
3c087d mov    QWORD PTR [rbp-0x70],r14
3c0881 movsx  ecx,WORD PTR [r14+0x15e]
3c0888 
3c0889 mov    eax,DWORD PTR [r14+0x158]
3c0890 bts    ecx,eax
3c0893 mov    WORD PTR [r14+0x15e],cx
3c089a 
3c089b lea    rcx,[r14+0x100]
3c08a2 call   0x38cc48
3c08a7 subss  xmm12,DWORD PTR [r14+0xac]
3c08ae 
3c08b0 jmp    0x3c08e6
3c08b2 call   0x37ca80
3c08b7 bt     r13d,0x1c
3c08bc jb     0x3c08db
3c08be mov    r9d,0x400
3c08c4 lea    r8,[rbp-0x38]
3c08c8 mov    edx,esi
3c08ca lea    rcx,[rbp+0x70]
3c08ce call   0x3948dc
3c08d3 test   al,al
3c08d5 je     0x3c073b
3c08db mov    r12d,DWORD PTR [r15+0x47ac]
3c08e2 mov    QWORD PTR [rbp-0x70],rdi
3c08e6 mov    eax,r13d
3c08e9 lea    rcx,[rbp-0x38]
3c08ed and    eax,0x4000
3c08f2 mov    edx,esi
3c08f4 mov    DWORD PTR [rsp+0x64],eax
3c08f8 mov    eax,r13d
3c08fb and    eax,0x8000
3c0900 mov    DWORD PTR [rbp-0x58],eax
3c0903 mov    eax,r13d
3c0906 and    eax,0x40000
3c090b mov    DWORD PTR [rbp-0x80],eax
3c090e call   0x394a14
3c0913 mov    BYTE PTR [rsp+0x6c],al
3c0917 mov    bl,al
3c0919 test   al,al
3c091b je     0x3c0928
3c091d mov    DWORD PTR [r15+0x4a88],0x1
3c0924 
3c0928 mov    ecx,esi
3c092a call   0x3bfef4
3c092f mov    r13,rax
3c0932 mov    QWORD PTR [rbp-0x48],rax
3c0936 mov    eax,DWORD PTR [r15+0x3f68]
3c093d and    r12d,0x100
3c0944 cmp    eax,esi
3c0946 je     0x3c096f
3c0948 cmp    DWORD PTR [r15+0x48f8],esi
3c094f jne    0x3c096f
3c0951 test   BYTE PTR [r15+0x4904],0x1
3c0958 
3c0959 jne    0x3c0965
3c095b cmp    DWORD PTR [r15+0x491c],0x2
3c0962 
3c0963 jne    0x3c096f
3c0965 mov    BYTE PTR [rsp+0x52],0x1
3c096a xor    r10d,r10d
3c096d jmp    0x3c0977
3c096f xor    r10d,r10d
3c0972 mov    BYTE PTR [rsp+0x52],r10b
3c0977 test   bl,bl
3c0979 je     0x3c0987
3c097b mov    r14b,0x1
3c097e cmp    BYTE PTR [r15+0x3748],r10b
3c0985 jne    0x3c098a
3c0987 mov    r14b,r10b
3c098a mov    esi,DWORD PTR [rsp+0x5c]
3c098e mov    BYTE PTR [rsp+0x53],r14b
3c0993 test   esi,esi
3c0995 je     0x3c09be
3c0997 test   r13,r13
3c099a je     0x3c09be
3c099c test   eax,eax
3c099e jne    0x3c09be
3c09a0 mov    rcx,QWORD PTR [rbp-0x70]
3c09a4 lea    edx,[rax+0x1]
3c09a7 mov    ebx,DWORD PTR [r15+0x3f98]
3c09ae call   0x3bff14
3c09b3 cmp    ebx,eax
3c09b5 jne    0x3c09bb
3c09b7 mov    bl,0x1
3c09b9 jmp    0x3c09ca
3c09bb xor    r10d,r10d
3c09be mov    bl,r10b
3c09c1 test   esi,esi
3c09c3 je     0x3c09ec
3c09c5 test   r13,r13
3c09c8 je     0x3c09ec
3c09ca mov    rcx,QWORD PTR [rbp-0x70]
3c09ce mov    edx,0x1
3c09d3 call   0x3bff14
3c09d8 xor    r10d,r10d
3c09db cmp    DWORD PTR [r15+0x3f68],eax
3c09e2 jne    0x3c09ec
3c09e4 mov    dl,0x1
3c09e6 mov    BYTE PTR [rsp+0x56],dl
3c09ea jmp    0x3c09f7
3c09ec mov    dl,r10b
3c09ef mov    BYTE PTR [rsp+0x56],dl
3c09f3 test   esi,esi
3c09f5 je     0x3c0a06
3c09f7 mov    rax,QWORD PTR [rbp-0x70]
3c09fb movss  xmm8,DWORD PTR [rax+0x88]
3c0a02 
3c0a04 jmp    0x3c0a13
3c0a06 movss  xmm8,DWORD PTR [rip+0xffffffffffecd145]        # 0x28db54
3c0a0d 
3c0a0f mov    BYTE PTR [rsp+0x56],dl
3c0a13 test   r13,r13
3c0a16 je     0x3c0a2c
3c0a18 movzx  ecx,BYTE PTR [r13+0x6b]
3c0a1d test   esi,esi
3c0a1f mov    eax,r10d
3c0a22 mov    sil,0x1
3c0a25 sete   al
3c0a28 cmp    ecx,eax
3c0a2a jne    0x3c0a2f
3c0a2c mov    sil,r10b
3c0a2f mov    al,r14b
3c0a32 or     al,bl
3c0a34 jne    0x3c0a50
3c0a36 movzx  eax,BYTE PTR [rsp+0x52]
3c0a3b or     eax,r12d
3c0a3e jne    0x3c0a50
3c0a40 mov    BYTE PTR [rsp+0x57],r10b
3c0a45 test   dl,dl
3c0a47 jne    0x3c0a55
3c0a49 mov    BYTE PTR [rsp+0x58],r10b
3c0a4e jmp    0x3c0a67
3c0a50 mov    BYTE PTR [rsp+0x57],0x1
3c0a55 mov    eax,DWORD PTR [rsp+0x60]
3c0a59 mov    BYTE PTR [rsp+0x58],0x1
3c0a5e cmp    DWORD PTR [r15+0x3f68],eax
3c0a65 jne    0x3c0a73
3c0a67 mov    r14b,r10b
3c0a6a test   sil,sil
3c0a6d je     0x3c0c17
3c0a73 lea    r13,[r15+0x4c18]
3c0a7a mov    rcx,r13
3c0a7d mov    QWORD PTR [rbp-0x48],r13
3c0a81 call   0x3bfd58
3c0a86 mov    ecx,DWORD PTR [r15+0x4c20]
3c0a8d call   0x3c04d0
3c0a92 mov    rcx,QWORD PTR [rbp+0x1e0]
3c0a99 call   0x3ca904
3c0a9e lea    rcx,[r15+0x4c50]
3c0aa5 mov    r14,rax
3c0aa8 lea    ebx,[rax+0x1]
3c0aab mov    edx,ebx
3c0aad call   0x37acd4
3c0ab2 mov    rdx,QWORD PTR [rbp+0x1e0]
3c0ab9 mov    rcx,QWORD PTR [r15+0x4c58]
3c0ac0 movsxd r8,ebx
3c0ac3 call   0x3c8d4c
3c0ac8 mov    eax,DWORD PTR [rsp+0x60]
3c0acc xor    ecx,ecx
3c0ace cmp    DWORD PTR [r15+0x4c20],eax
3c0ad5 jne    0x3c0b0c
3c0ad7 test   sil,sil
3c0ada jne    0x3c0b0c
3c0adc cmp    DWORD PTR [r15+0x4c28],r14d
3c0ae3 jne    0x3c0b0c
3c0ae5 mov    bl,0x1
3c0ae7 cmp    BYTE PTR [r15+0x4c60],cl
3c0aee je     0x3c0b0e
3c0af0 mov    rdx,QWORD PTR [rbp+0x1e0]
3c0af7 mov    r8d,r14d
3c0afa mov    rcx,QWORD PTR [r15+0x4c48]
3c0b01 call   0x3ca918
3c0b06 xor    ecx,ecx
3c0b08 test   eax,eax
3c0b0a je     0x3c0b0e
3c0b0c mov    bl,cl
3c0b0e mov    eax,DWORD PTR [rsp+0x60]
3c0b12 mov    r14d,DWORD PTR [rbp+0x1e8]
3c0b19 mov    QWORD PTR [rbp-0x78],rcx
3c0b1d lea    rcx,[r15+0x4c30]
3c0b24 mov    DWORD PTR [r15+0x4c20],eax
3c0b2b lea    edx,[r14+0x1]
3c0b2f call   0x37ad04
3c0b34 lea    rcx,[r15+0x4c40]
3c0b3b xor    edx,edx
3c0b3d call   0x37acd4
3c0b42 mov    rsi,QWORD PTR [rbp+0x1e0]
3c0b49 lea    rax,[rbp-0x78]
3c0b4d mov    rcx,QWORD PTR [r15+0x4c38]
3c0b54 mov    r8,rsi
3c0b57 xor    r9d,r9d
3c0b5a mov    QWORD PTR [rsp+0x20],rax
3c0b5f mov    edx,r14d
3c0b62 mov    BYTE PTR [r15+0x4c60],0x0
3c0b69 
3c0b6a call   0x393ba4
3c0b6f mov    DWORD PTR [r15+0x4c24],eax
3c0b76 xor    r10d,r10d
3c0b79 mov    eax,DWORD PTR [rbp-0x78]
3c0b7c sub    eax,esi
3c0b7e mov    DWORD PTR [r15+0x4c28],eax
3c0b85 test   bl,bl
3c0b87 je     0x3c0b9b
3c0b89 mov    rcx,r13
3c0b8c call   0x3bfd64
3c0b91 mov    r9d,DWORD PTR [rsp+0x5c]
3c0b96 xor    r10d,r10d
3c0b99 jmp    0x3c0bbc
3c0b9b mov    r9d,DWORD PTR [rsp+0x5c]
3c0ba0 lea    rcx,[r15+0x4c6c]
3c0ba7 test   r9d,r9d
3c0baa mov    DWORD PTR [r15+0x4c68],r10d
3c0bb1 mov    edx,r10d
3c0bb4 sete   dl
3c0bb7 call   0x3c6904
3c0bbc mov    eax,DWORD PTR [rbp+0x1f8]
3c0bc2 mov    r14b,r10b
3c0bc5 test   r9d,r9d
3c0bc8 jne    0x3c0c03
3c0bca test   al,0x10
3c0bcc setne  r14b
3c0bd0 cmp    BYTE PTR [rsp+0x52],r10b
3c0bd5 je     0x3c0be8
3c0bd7 test   bl,bl
3c0bd9 je     0x3c0be5
3c0bdb test   BYTE PTR [r15+0x4904],0x4
3c0be2 
3c0be3 jne    0x3c0be8
3c0be5 mov    r14b,0x1
3c0be8 mov    bl,BYTE PTR [rsp+0x53]
3c0bec test   r12d,r12d
3c0bef jne    0x3c0bfe
3c0bf1 test   bl,bl
3c0bf3 je     0x3c0c07
3c0bf5 cmp    BYTE PTR [r15+0xe24],r10b
3c0bfc je     0x3c0c07
3c0bfe mov    r14b,0x1
3c0c01 jmp    0x3c0c07
3c0c03 mov    bl,BYTE PTR [rsp+0x53]
3c0c07 bt     eax,0xd
3c0c0b jae    0x3c0c1b
3c0c0d mov    BYTE PTR [r15+0x4c78],0x1
3c0c14 
3c0c15 jmp    0x3c0c1b
3c0c17 mov    bl,BYTE PTR [rsp+0x53]
3c0c1b mov    r12b,BYTE PTR [r15+0x79]
3c0c1f mov    eax,DWORD PTR [rsp+0x60]
3c0c23 mov    sil,BYTE PTR [rsp+0x57]
3c0c28 mov    BYTE PTR [rsp+0x6a],r12b
3c0c2d cmp    DWORD PTR [r15+0x3f68],eax
3c0c34 je     0x3c0c5b
3c0c36 test   sil,sil
3c0c39 je     0x3c0c5b
3c0c3b mov    rdx,rdi
3c0c3e mov    ecx,eax
3c0c40 call   0x39b0cc
3c0c45 mov    ecx,DWORD PTR [rsp+0x60]
3c0c49 mov    rdx,rdi
3c0c4c call   0x39b488
3c0c51 xor    edx,edx
3c0c53 mov    rcx,rdi
3c0c56 call   0x391efc
3c0c5b mov    edi,DWORD PTR [rsp+0x60]
3c0c5f cmp    DWORD PTR [r15+0x3f68],edi
3c0c66 jne    0x3c0d32
3c0c6c test   bl,bl
3c0c6e je     0x3c0c7f
3c0c70 xor    r8d,r8d
3c0c73 mov    edx,edi
3c0c75 mov    ecx,0x281
3c0c7a call   0x39b584
3c0c7f mov    ecx,DWORD PTR [r15+0x4778]
3c0c86 mov    eax,ecx
3c0c88 mov    ebx,DWORD PTR [rsp+0x5c]
3c0c8c or     eax,0x3
3c0c8f mov    DWORD PTR [r15+0x4778],eax
3c0c96 test   ebx,ebx
3c0c98 jne    0x3c0ca3
3c0c9a test   BYTE PTR [rbp+0x1f8],0x80
3c0ca1 je     0x3c0cad
3c0ca3 or     ecx,0xf
3c0ca6 mov    DWORD PTR [r15+0x4778],ecx
3c0cad xor    r8d,r8d
3c0cb0 mov    edx,edi
3c0cb2 mov    ecx,0x207
3c0cb7 call   0x39b584
3c0cbc xor    r8d,r8d
3c0cbf mov    edx,edi
3c0cc1 mov    ecx,0x208
3c0cc6 call   0x39b584
3c0ccb test   ebx,ebx
3c0ccd je     0x3c0ced
3c0ccf xor    r8d,r8d
3c0cd2 mov    edx,edi
3c0cd4 mov    ecx,0x205
3c0cd9 call   0x39b584
3c0cde xor    r8d,r8d
3c0ce1 mov    edx,edi
3c0ce3 mov    ecx,0x206
3c0ce8 call   0x39b584
3c0ced test   r12b,r12b
3c0cf0 je     0x3c0d01
3c0cf2 xor    r8d,r8d
3c0cf5 mov    edx,edi
3c0cf7 mov    ecx,0x4000
3c0cfc call   0x39b584
3c0d01 test   DWORD PTR [rbp+0x1f8],0x440
3c0d08 
3c0d0b je     0x3c0d1c
3c0d0d xor    r8d,r8d
3c0d10 mov    edx,edi
3c0d12 mov    ecx,0x200
3c0d17 call   0x39b8ac
3c0d1c cmp    DWORD PTR [r15+0x3f68],edi
3c0d23 jne    0x3c0d32
3c0d25 xor    r9d,r9d
3c0d28 test   r13,r13
3c0d2b jne    0x3c0d35
3c0d2d call   0x390078
3c0d32 xor    r9d,r9d
3c0d35 cmp    DWORD PTR [r15+0x3f68],edi
3c0d3c jne    0x3c0d69
3c0d3e mov    BYTE PTR [rsp+0x54],r9b
3c0d43 cmp    BYTE PTR [r15+0x3748],r9b
3c0d4a je     0x3c0d7a
3c0d4c mov    BYTE PTR [rsp+0x54],r9b
3c0d51 cmp    BYTE PTR [rsp+0x58],r9b
3c0d56 jne    0x3c0d7a
3c0d58 mov    BYTE PTR [rsp+0x54],r9b
3c0d5d test   sil,sil
3c0d60 jne    0x3c0d7a
3c0d62 mov    BYTE PTR [rsp+0x54],0x1
3c0d67 jmp    0x3c0d7a
3c0d69 test   r13,r13
3c0d6c je     0x3c0d7e
3c0d6e mov    BYTE PTR [rsp+0x54],r9b
3c0d73 cmp    BYTE PTR [rsp+0x56],r9b
3c0d78 je     0x3c0d7e
3c0d7a mov    bl,0x1
3c0d7c jmp    0x3c0d86
3c0d7e mov    bl,r9b
3c0d81 mov    BYTE PTR [rsp+0x54],r9b
3c0d86 mov    BYTE PTR [rsp+0x51],bl
3c0d8a test   r13,r13
3c0d8d je     0x3c0da9
3c0d8f mov    rcx,r13
3c0d92 call   0x3c0020
3c0d97 xor    r9d,r9d
3c0d9a test   al,al
3c0d9c jne    0x3c0da3
3c0d9e test   r14b,r14b
3c0da1 je     0x3c0da9
3c0da3 mov    cl,0x1
3c0da5 test   bl,bl
3c0da7 jne    0x3c0dac
3c0da9 mov    cl,r9b
3c0dac mov    edx,DWORD PTR [rsp+0x64]
3c0db0 mov    BYTE PTR [rsp+0x50],cl
3c0db4 mov    BYTE PTR [rsp+0x55],r9b
3c0db9 mov    BYTE PTR [rsp+0x58],r9b
3c0dbe test   edx,edx
3c0dc0 je     0x3c0e39
3c0dc2 test   r13,r13
3c0dc5 je     0x3c0e39
3c0dc7 test   bl,bl
3c0dc9 jne    0x3c0dcf
3c0dcb test   cl,cl
3c0dcd je     0x3c0e3f
3c0dcf mov    edx,DWORD PTR [rbp+0x1e8]
3c0dd5 lea    rcx,[r13+0x18]
3c0dd9 inc    edx
3c0ddb mov    QWORD PTR [rbp-0x78],r9
3c0ddf call   0x37ad04
3c0de4 mov    rsi,QWORD PTR [rbp+0x1e0]
3c0deb lea    rax,[rbp-0x78]
3c0def mov    edx,DWORD PTR [r13+0x18]
3c0df3 mov    r8,rsi
3c0df6 mov    rcx,QWORD PTR [r13+0x20]
3c0dfa xor    r9d,r9d
3c0dfd mov    QWORD PTR [rsp+0x20],rax
3c0e02 call   0x393ba4
3c0e07 mov    DWORD PTR [r13+0xc],eax
3c0e0b mov    rcx,r13
3c0e0e mov    eax,DWORD PTR [rbp-0x78]
3c0e11 sub    eax,esi
3c0e13 mov    DWORD PTR [r13+0x10],eax
3c0e17 call   0x3bfd64
3c0e1c mov    rcx,r13
3c0e1f call   0x3c0020
3c0e24 mov    cl,BYTE PTR [rsp+0x50]
3c0e28 mov    bl,BYTE PTR [rsp+0x51]
3c0e2c and    cl,al
3c0e2e mov    edx,DWORD PTR [rsp+0x64]
3c0e32 xor    r9d,r9d
3c0e35 mov    BYTE PTR [rsp+0x50],cl
3c0e39 mov    al,bl
3c0e3b or     al,cl
3c0e3d jne    0x3c0e48
3c0e3f cmp    DWORD PTR [r15+0x3f68],edi
3c0e46 jne    0x3c0e59
3c0e48 test   edx,edx
3c0e4a jne    0x3c0e59
3c0e4c test   r13,r13
3c0e4f je     0x3c0e59
3c0e51 mov    al,0x1
3c0e53 cmp    BYTE PTR [r13+0x48],r9b
3c0e57 jne    0x3c0e5c
3c0e59 mov    al,r9b
3c0e5c mov    BYTE PTR [rsp+0x70],al
3c0e60 cmp    QWORD PTR [rbp+0x1d8],r9
3c0e67 je     0x3c0e8b
3c0e69 test   al,al
3c0e6b je     0x3c0e73
3c0e6d mov    rax,QWORD PTR [r13+0x30]
3c0e71 jmp    0x3c0e7a
3c0e73 mov    rax,QWORD PTR [rbp+0x1e0]
3c0e7a cmp    BYTE PTR [rax],r9b
3c0e7d jne    0x3c0e8b
3c0e7f mov    ebx,0x2
3c0e84 mov    al,0x1
3c0e86 mov    DWORD PTR [rbp-0x28],ebx
3c0e89 jmp    0x3c0e9a
3c0e8b mov    al,r9b
3c0e8e mov    DWORD PTR [rbp-0x28],0x1
3c0e95 mov    ebx,0x2
3c0e9a mov    BYTE PTR [rsp+0x59],al
3c0e9e cmp    DWORD PTR [rbp-0x58],r9d
3c0ea2 je     0x3c0f13
3c0ea4 test   al,al
3c0ea6 jne    0x3c0f13
3c0ea8 mov    rcx,QWORD PTR [r15+0x3c28]
3c0eaf mov    edx,0x2a
3c0eb4 call   0x3a4520
3c0eb9 mov    rdx,QWORD PTR [r15+0x3c28]
3c0ec0 mov    ecx,DWORD PTR [rdx+0x14]
3c0ec3 mov    DWORD PTR [r15+0x5ad4],ecx
3c0eca mov    ecx,DWORD PTR [rdx+0x64]
3c0ecd mov    DWORD PTR [r15+0x5b24],ecx
3c0ed4 mov    ecx,DWORD PTR [rdx+0x68]
3c0ed7 mov    DWORD PTR [r15+0x5b28],ecx
3c0ede mov    ecx,DWORD PTR [rdx+0x6c]
3c0ee1 mov    DWORD PTR [r15+0x5b2c],ecx
3c0ee8 mov    rcx,QWORD PTR [rdx+0x40]
3c0eec mov    QWORD PTR [r15+0x5b00],rcx
3c0ef3 lea    rcx,[r15+0x5ac0]
3c0efa mov    QWORD PTR [r15+0x5af8],rax
3c0f01 mov    eax,DWORD PTR [rax+0x4]
3c0f04 mov    DWORD PTR [r15+0x5ad0],eax
3c0f0b call   0x398a98
3c0f10 xor    r9d,r9d
3c0f13 movss  xmm11,DWORD PTR [rip+0xffffffffffecc334]        # 0x28d250
3c0f1a 
3c0f1c mov    esi,DWORD PTR [rsp+0x5c]
3c0f20 mov    DWORD PTR [rbp-0x78],r9d
3c0f24 cmp    DWORD PTR [r15+0x3f68],edi
3c0f2b jne    0x3c12ad
3c0f31 mov    eax,DWORD PTR [r13+0x10]
3c0f35 mov    r8d,DWORD PTR [rbp+0x1f8]
3c0f3c mov    DWORD PTR [rbp-0x78],eax
3c0f3f mov    eax,DWORD PTR [rbp+0x1e8]
3c0f45 mov    DWORD PTR [r13+0x4c],eax
3c0f49 mov    BYTE PTR [r13+0xe86],r9b
3c0f50 mov    DWORD PTR [r13+0xe88],r8d
3c0f57 mov    cl,BYTE PTR [r15+0xe10]
3c0f5e test   cl,cl
3c0f60 sete   al
3c0f63 mov    BYTE PTR [r15+0x3f75],al
3c0f6a test   esi,esi
3c0f6c je     0x3c0f85
3c0f6e mov    rax,QWORD PTR [rbp-0x70]
3c0f72 movss  xmm3,DWORD PTR [r15+0xe0c]
3c0f79 
3c0f7b subss  xmm3,DWORD PTR [rax+0x104]
3c0f82 
3c0f83 jmp    0x3c0f93
3c0f85 movss  xmm3,DWORD PTR [r15+0x3c30]
3c0f8c 
3c0f8e mulss  xmm3,xmm11
3c0f93 test   r14b,r14b
3c0f96 je     0x3c0faf
3c0f98 mov    rcx,r13
3c0f9b call   0x3c3890
3c0fa0 lea    rbx,[r13+0xe85]
3c0fa7 mov    BYTE PTR [rbx],0x1
3c0faa jmp    0x3c116b
3c0faf movss  xmm2,DWORD PTR [r15+0xe08]
3c0fb6 
3c0fb8 subss  xmm2,DWORD PTR [rbp-0x38]
3c0fbd mov    dl,BYTE PTR [rsp+0x6c]
3c0fc1 subss  xmm2,DWORD PTR [r15+0x380c]
3c0fc8 
3c0fca addss  xmm2,DWORD PTR [r13+0x50]
3c0fd0 test   dl,dl
3c0fd2 je     0x3c10e5
3c0fd8 cmp    WORD PTR [r15+0x3752],bx
3c0fdf 
3c0fe0 jb     0x3c10e5
3c0fe6 cmp    BYTE PTR [r15+0xe25],r9b
3c0fed jne    0x3c10e5
3c0ff3 lea    rdi,[r13+0x54]
3c0ff7 mov    rcx,r13
3c0ffa mov    rdx,rdi
3c0ffd call   0x3c6494
3c1002 test   BYTE PTR [r15+0x3752],0x1
3c1009 
3c100a mov    edx,DWORD PTR [rdi]
3c100c jne    0x3c1074
3c100e xor    ebx,ebx
3c1010 test   edx,edx
3c1012 je     0x3c1028
3c1014 dec    edx
3c1016 mov    rcx,r13
3c1019 call   0x3c2f30
3c101e lea    ecx,[rbx+0xa]
3c1021 cmp    ax,cx
3c1024 mov    cl,bl
3c1026 jne    0x3c102a
3c1028 mov    cl,0x1
3c102a mov    eax,DWORD PTR [r13+0x5c]
3c102e cmp    DWORD PTR [r13+0x58],eax
3c1032 jne    0x3c1038
3c1034 test   cl,cl
3c1036 jne    0x3c1045
3c1038 mov    edx,0x20000c
3c103d mov    rcx,r13
3c1040 call   0x3c2e94
3c1045 mov    eax,DWORD PTR [r13+0x5c]
3c1049 cmp    DWORD PTR [r13+0x58],eax
3c104d jne    0x3c1057
3c104f mov    rcx,rdi
3c1052 call   0x3c7b10
3c1057 mov    edx,DWORD PTR [rdi]
3c1059 mov    rcx,r13
3c105c call   0x3c31a0
3c1061 mov    rdx,rdi
3c1064 mov    DWORD PTR [rdi],eax
3c1066 mov    rcx,r13
3c1069 mov    DWORD PTR [r13+0x5c],eax
3c106d call   0x3c6418
3c1072 jmp    0x3c10cd
3c1074 mov    rcx,r13
3c1077 call   0x3c2f30
3c107c mov    edx,0x200004
3c1081 mov    rcx,r13
3c1084 movzx  ebx,ax
3c1087 call   0x3c2e94
3c108c mov    edx,0x600005
3c1091 mov    rcx,r13
3c1094 call   0x3c2e94
3c1099 mov    edx,0x600001
3c109e mov    rcx,r13
3c10a1 call   0x3c2e94
3c10a6 mov    eax,0xa
3c10ab cmp    bx,ax
3c10ae je     0x3c10c5
3c10b0 test   esi,esi
3c10b2 je     0x3c10c5
3c10b4 lea    rdx,[r13+0x5c]
3c10b8 lea    rcx,[r13+0x58]
3c10bc call   0x3b5ba8
3c10c1 mov    ecx,DWORD PTR [rdx]
3c10c3 mov    DWORD PTR [rdi],ecx
3c10c5 mov    BYTE PTR [r13+0xe84],0x0
3c10cc 
3c10cd mov    rcx,r13
3c10d0 call   0x3bfd58
3c10d5 mov    edi,DWORD PTR [rsp+0x60]
3c10d9 lea    rbx,[r13+0xe85]
3c10e0 jmp    0x3c116b
3c10e5 lea    rbx,[r13+0xe85]
3c10ec mov    al,BYTE PTR [rbx]
3c10ee cmp    BYTE PTR [r15+0x3748],r9b
3c10f5 je     0x3c1125
3c10f7 test   al,al
3c10f9 jne    0x3c1125
3c10fb test   dl,dl
3c10fd je     0x3c1175
3c10ff lea    rdx,[r13+0x54]
3c1103 mov    rcx,r13
3c1106 cmp    BYTE PTR [r15+0xe25],r9b
3c110d je     0x3c1116
3c110f call   0x3c6730
3c1114 jmp    0x3c111b
3c1116 call   0x3c6494
3c111b mov    rcx,r13
3c111e call   0x3bfd58
3c1123 jmp    0x3c116b
3c1125 test   cl,cl
3c1127 je     0x3c1175
3c1129 test   al,al
3c112b jne    0x3c1175
3c112d movss  xmm0,DWORD PTR [r15+0xf8]
3c1134 
3c1136 ucomiss xmm0,xmm10
3c113a jp     0x3c114f
3c113c jne    0x3c114f
3c113e movss  xmm0,DWORD PTR [r15+0xfc]
3c1145 
3c1147 ucomiss xmm0,xmm10
3c114b jp     0x3c114f
3c114d je     0x3c1175
3c114f lea    rdx,[r13+0x54]
3c1153 mov    rcx,r13
3c1156 call   0x3c6730
3c115b mov    rcx,r13
3c115e call   0x3bfd58
3c1163 mov    BYTE PTR [r13+0xe84],0x1
3c116a 
3c116b mov    r8d,DWORD PTR [rbp+0x1f8]
3c1172 xor    r9d,r9d
3c1175 cmp    BYTE PTR [rbx],r9b
3c1178 je     0x3c1186
3c117a cmp    BYTE PTR [r15+0xe10],r9b
3c1181 jne    0x3c1186
3c1183 mov    BYTE PTR [rbx],r9b
3c1186 bt     r8d,0xa
3c118b jae    0x3c11f1
3c118d xor    r8d,r8d
3c1190 mov    edx,edi
3c1192 mov    ecx,0x200
3c1197 call   0x39bde4
3c119c mov    edx,DWORD PTR [rsp+0x64]
3c11a0 xor    r9d,r9d
3c11a3 mov    r14,QWORD PTR [rbp+0x208]
3c11aa test   al,al
3c11ac je     0x3c11fc
3c11ae test   edx,edx
3c11b0 jne    0x3c11fc
3c11b2 mov    r8,QWORD PTR [rbp+0x200]
3c11b9 lea    rcx,[rbp-0x60]
3c11bd mov    edx,DWORD PTR [rbp+0x1f8]
3c11c3 mov    r9,r14
3c11c6 mov    DWORD PTR [rbp-0x60],0x9
3c11cd mov    DWORD PTR [rsp+0x20],0x2
3c11d4 
3c11d5 call   0x3c2a80
3c11da xor    r9d,r9d
3c11dd test   al,al
3c11df je     0x3c11f8
3c11e1 mov    edx,DWORD PTR [rbp-0x60]
3c11e4 mov    rcx,r13
3c11e7 call   0x3c2e94
3c11ec xor    r9d,r9d
3c11ef jmp    0x3c11f8
3c11f1 mov    r14,QWORD PTR [rbp+0x208]
3c11f8 mov    edx,DWORD PTR [rsp+0x64]
3c11fc cmp    BYTE PTR [r15+0xe24],r9b
3c1203 je     0x3c120e
3c1205 cmp    BYTE PTR [r15+0xe26],r9b
3c120c je     0x3c121c
3c120e test   r12b,r12b
3c1211 je     0x3c1220
3c1213 cmp    BYTE PTR [r15+0xe27],r9b
3c121a je     0x3c1220
3c121c mov    al,0x1
3c121e jmp    0x3c1223
3c1220 mov    al,r9b
3c1223 lea    rdi,[r15+0x37c0]
3c122a cmp    DWORD PTR [rdi],r9d
3c122d jle    0x3c12a9
3c122f test   al,al
3c1231 jne    0x3c129c
3c1233 movzx  ecx,BYTE PTR [rsp+0x52]
3c1238 mov    eax,edx
3c123a or     eax,ecx
3c123c jne    0x3c129c
3c123e mov    esi,DWORD PTR [rbp+0x1f8]
3c1244 lea    r12d,[rax+0x9]
3c1248 mov    ebx,r9d
3c124b mov    edx,ebx
3c124d mov    rcx,rdi
3c1250 call   0x39f604
3c1255 movzx  ecx,WORD PTR [rax]
3c1258 mov    DWORD PTR [rbp-0x60],ecx
3c125b cmp    cx,r12w
3c125f je     0x3c128d
3c1261 mov    r8,QWORD PTR [rbp+0x200]
3c1268 lea    rcx,[rbp-0x60]
3c126c mov    r9,r14
3c126f mov    DWORD PTR [rsp+0x20],0x2
3c1276 
3c1277 mov    edx,esi
3c1279 call   0x3c2a80
3c127e test   al,al
3c1280 je     0x3c128d
3c1282 mov    edx,DWORD PTR [rbp-0x60]
3c1285 mov    rcx,r13
3c1288 call   0x3c2e94
3c128d inc    ebx
3c128f cmp    ebx,DWORD PTR [rdi]
3c1291 jl     0x3c124b
3c1293 mov    r12b,BYTE PTR [rsp+0x6a]
3c1298 mov    esi,DWORD PTR [rsp+0x5c]
3c129c xor    edx,edx
3c129e mov    rcx,rdi
3c12a1 call   0x37ad04
3c12a6 xor    r9d,r9d
3c12a9 mov    edi,DWORD PTR [rsp+0x60]
3c12ad mov    r14b,r9b
3c12b0 mov    BYTE PTR [rsp+0x52],r9b
3c12b5 cmp    DWORD PTR [r15+0x3f68],edi
3c12bc jne    0x3c1b6d
3c12c2 mov    al,BYTE PTR [rsp+0x54]
3c12c6 or     al,BYTE PTR [r15+0x3f74]
3c12cd jne    0x3c1b6d
3c12d3 mov    ebx,DWORD PTR [rbp+0x1f8]
3c12d9 movaps xmm0,xmm13
3c12dd subss  xmm0,DWORD PTR [r15+0x3810]
3c12e4 
3c12e6 mov    r14d,0x1
3c12ec and    ebx,0x10000
3c12f2 mov    edx,r14d
3c12f5 divss  xmm0,DWORD PTR [r15+0x3c30]
3c12fc 
3c12fe cvttss2si ecx,xmm0
3c1302 call   0x39f28c
3c1307 mov    DWORD PTR [rbp-0x50],eax
3c130a mov    DWORD PTR [r13+0x64],eax
3c130e mov    al,BYTE PTR [r15+0xe25]
3c1315 mov    cl,al
3c1317 mov    BYTE PTR [rsp+0x56],al
3c131b neg    cl
3c131d mov    cl,r12b
3c1320 sbb    eax,eax
3c1322 and    eax,0x400000
3c1327 neg    cl
3c1329 mov    DWORD PTR [rbp-0x60],eax
3c132c sbb    rdx,rdx
3c132f and    edx,0x2
3c1332 mov    al,BYTE PTR [rdx+r15*1+0xe24]
3c1339 
3c133a mov    BYTE PTR [rsp+0x53],al
3c133e test   r12b,r12b
3c1341 je     0x3c136d
3c1343 cmp    BYTE PTR [r15+0xe27],r9b
3c134a je     0x3c136d
3c134c cmp    BYTE PTR [r15+0xe24],r9b
3c1353 jne    0x3c136d
3c1355 cmp    BYTE PTR [r15+0xe26],r9b
3c135c jne    0x3c136d
3c135e mov    eax,0x200006
3c1363 mov    BYTE PTR [rsp+0x68],r14b
3c1368 lea    ecx,[rax+0x1]
3c136b jmp    0x3c137a
3c136d mov    eax,0x200002
3c1372 mov    BYTE PTR [rsp+0x68],r9b
3c1377 lea    ecx,[rax+0x1]
3c137a mov    DWORD PTR [rbp-0x20],ecx
3c137d mov    r8d,r14d
3c1380 mov    ecx,0xa39
3c1385 mov    DWORD PTR [rbp+0x40],eax
3c1388 mov    edx,edi
3c138a call   0x39bde4
3c138f xor    ecx,ecx
3c1391 test   al,al
3c1393 jne    0x3c13aa
3c1395 mov    r8d,r14d
3c1398 mov    edx,edi
3c139a mov    ecx,0x220a
3c139f call   0x39bde4
3c13a4 xor    ecx,ecx
3c13a6 test   al,al
3c13a8 je     0x3c13d0
3c13aa mov    r14d,DWORD PTR [rsp+0x64]
3c13af mov    eax,r14d
3c13b2 or     eax,DWORD PTR [rbp-0x58]
3c13b5 jne    0x3c13d5
3c13b7 test   esi,esi
3c13b9 je     0x3c13c9
3c13bb mov    rcx,r13
3c13be call   0x3c0020
3c13c3 xor    ecx,ecx
3c13c5 test   al,al
3c13c7 je     0x3c13d5
3c13c9 mov    BYTE PTR [rsp+0x57],0x1
3c13ce jmp    0x3c13d9
3c13d0 mov    r14d,DWORD PTR [rsp+0x64]
3c13d5 mov    BYTE PTR [rsp+0x57],cl
3c13d9 xor    r8d,r8d
3c13dc mov    edx,edi
3c13de mov    ecx,0xa24
3c13e3 call   0x39bde4
3c13e8 test   al,al
3c13ea jne    0x3c13ff
3c13ec xor    r8d,r8d
3c13ef mov    edx,edi
3c13f1 mov    ecx,0x1209
3c13f6 call   0x39bde4
3c13fb test   al,al
3c13fd je     0x3c1423
3c13ff xor    eax,eax
3c1401 cmp    DWORD PTR [rbp-0x58],eax
3c1404 jne    0x3c1423
3c1406 test   esi,esi
3c1408 je     0x3c141a
3c140a mov    rcx,r13
3c140d call   0x3c0020
3c1412 xor    esi,esi
3c1414 test   al,al
3c1416 je     0x3c1425
3c1418 jmp    0x3c141c
3c141a xor    esi,esi
3c141c mov    BYTE PTR [rsp+0x6b],0x1
3c1421 jmp    0x3c142a
3c1423 xor    esi,esi
3c1425 mov    BYTE PTR [rsp+0x6b],sil
3c142a mov    r8d,0x1
3c1430 mov    edx,edi
3c1432 mov    ecx,0xa37
3c1437 call   0x39bde4
3c143c test   al,al
3c143e jne    0x3c1456
3c1440 mov    r8d,0x1
3c1446 mov    edx,edi
3c1448 mov    ecx,0x2209
3c144d call   0x39bde4
3c1452 test   al,al
3c1454 je     0x3c1460
3c1456 mov    BYTE PTR [rsp+0x6c],0x1
3c145b test   r14d,r14d
3c145e je     0x3c1465
3c1460 mov    BYTE PTR [rsp+0x6c],sil
3c1465 mov    r8d,0x1
3c146b mov    edx,edi
3c146d mov    ecx,0xa3b
3c1472 call   0x39bde4
3c1477 test   al,al
3c1479 je     0x3c1491
3c147b mov    eax,r14d
3c147e or     eax,ebx
3c1480 jne    0x3c1491
3c1482 mov    BYTE PTR [rsp+0x69],0x1
3c1487 mov    DWORD PTR [rsp+0x78],0x20000a
3c148e 
3c148f jmp    0x3c149e
3c1491 mov    BYTE PTR [rsp+0x69],sil
3c1496 mov    DWORD PTR [rsp+0x78],0x20000b
3c149d 
3c149e mov    r8d,0x1
3c14a4 mov    edx,edi
3c14a6 mov    ecx,0xa3a
3c14ab call   0x39bde4
3c14b0 test   al,al
3c14b2 jne    0x3c14cf
3c14b4 test   r12b,r12b
3c14b7 je     0x3c14d9
3c14b9 mov    r8d,0x1
3c14bf mov    edx,edi
3c14c1 mov    ecx,0x2a3b
3c14c6 call   0x39bde4
3c14cb test   al,al
3c14cd je     0x3c14d9
3c14cf mov    eax,r14d
3c14d2 mov    r14b,0x1
3c14d5 or     eax,ebx
3c14d7 je     0x3c14dc
3c14d9 mov    r14b,sil
3c14dc xor    r8d,r8d
3c14df mov    edx,edi
3c14e1 mov    ecx,0xa22
3c14e6 call   0x39bde4
3c14eb test   BYTE PTR [r15+0x8],0x2
3c14f0 mov    r12b,al
3c14f3 je     0x3c14fe
3c14f5 test   BYTE PTR [r15+0xc],0x1
3c14fa mov    bl,0x1
3c14fc jne    0x3c1501
3c14fe mov    bl,sil
3c1501 mov    dl,0x1
3c1503 mov    ecx,0x20d
3c1508 call   0x394300
3c150d test   al,al
3c150f jne    0x3c1521
3c1511 mov    dl,0x1
3c1513 mov    ecx,0x267
3c1518 call   0x394300
3c151d test   al,al
3c151f je     0x3c1524
3c1521 mov    sil,0x1
3c1524 xor    edi,edi
3c1526 test   bl,bl
3c1528 je     0x3c154d
3c152a xor    edx,edx
3c152c mov    ecx,0x26e
3c1531 call   0x394300
3c1536 test   al,al
3c1538 jne    0x3c154a
3c153a xor    edx,edx
3c153c mov    ecx,0x26d
3c1541 call   0x394300
3c1546 test   al,al
3c1548 je     0x3c154d
3c154a mov    dil,0x1
3c154d mov    edx,DWORD PTR [rsp+0x60]
3c1551 mov    r8d,0x1
3c1557 mov    ecx,0x20e
3c155c call   0x39bde4
3c1561 xor    ecx,ecx
3c1563 test   al,al
3c1565 jne    0x3c1587
3c1567 test   bl,bl
3c1569 je     0x3c1583
3c156b mov    edx,DWORD PTR [rsp+0x60]
3c156f lea    r8d,[rcx+0x1]
3c1573 mov    ecx,0x26c
3c1578 call   0x39bde4
3c157d xor    ecx,ecx
3c157f test   al,al
3c1581 jne    0x3c1587
3c1583 mov    bl,cl
3c1585 jmp    0x3c1589
3c1587 mov    bl,0x1
3c1589 mov    dl,0x1
3c158b mov    ecx,0x201
3c1590 call   0x394300
3c1595 xor    ecx,ecx
3c1597 test   al,al
3c1599 je     0x3c15c6
3c159b neg    BYTE PTR [rsp+0x53]
3c159f mov    eax,0x200004
3c15a4 sbb    edx,edx
3c15a6 and    edx,0xc
3c15a9 add    edx,0x200000
3c15af cmp    BYTE PTR [rsp+0x68],cl
3c15b3 cmovne edx,eax
3c15b6 or     edx,DWORD PTR [rbp-0x60]
3c15b9 mov    rcx,r13
3c15bc call   0x3c2e94
3c15c1 jmp    0x3c1b3c
3c15c6 mov    dl,0x1
3c15c8 mov    ecx,0x202
3c15cd call   0x394300
3c15d2 xor    ecx,ecx
3c15d4 test   al,al
3c15d6 je     0x3c15ee
3c15d8 neg    BYTE PTR [rsp+0x53]
3c15dc mov    eax,0x200005
3c15e1 sbb    edx,edx
3c15e3 and    edx,0xc
3c15e6 add    edx,0x200001
3c15ec jmp    0x3c15af
3c15ee mov    dl,0x1
3c15f0 mov    ecx,0x203
3c15f5 call   0x394300
3c15fa xor    ecx,ecx
3c15fc test   al,al
3c15fe je     0x3c1644
3c1600 cmp    DWORD PTR [rsp+0x5c],ecx
3c1604 je     0x3c1644
3c1606 cmp    BYTE PTR [r15+0xe24],cl
3c160d je     0x3c163c
3c160f mov    rsi,QWORD PTR [rbp-0x70]
3c1613 xorps  xmm1,xmm1
3c1616 movss  xmm0,DWORD PTR [rsi+0x88]
3c161d 
3c161e subss  xmm0,DWORD PTR [r15+0x3c30]
3c1625 
3c1627 call   0x38a3f4
3c162c mov    rcx,rsi
3c162f movaps xmm1,xmm0
3c1632 call   0x39b88c
3c1637 jmp    0x3c1b3c
3c163c mov    edx,DWORD PTR [rbp+0x40]
3c163f jmp    0x3c15b6
3c1644 mov    dl,0x1
3c1646 mov    ecx,0x204
3c164b call   0x394300
3c1650 xor    ecx,ecx
3c1652 test   al,al
3c1654 je     0x3c1697
3c1656 cmp    DWORD PTR [rsp+0x5c],ecx
3c165a je     0x3c1697
3c165c cmp    BYTE PTR [r15+0xe24],cl
3c1663 je     0x3c168f
3c1665 call   0x392bd4
3c166a movss  xmm2,DWORD PTR [r15+0x3c30]
3c1671 
3c1673 movaps xmm1,xmm0
3c1676 mov    rax,QWORD PTR [rbp-0x70]
3c167a addss  xmm2,DWORD PTR [rax+0x88]
3c1681 
3c1682 movaps xmm0,xmm2
3c1685 call   0x3762cc
3c168a mov    rcx,rax
3c168d jmp    0x3c162f
3c168f mov    edx,DWORD PTR [rbp-0x20]
3c1692 jmp    0x3c15b6
3c1697 mov    dl,0x1
3c1699 mov    ecx,0x205
3c169e call   0x394300
3c16a3 xor    ecx,ecx
3c16a5 test   al,al
3c16a7 je     0x3c16e6
3c16a9 cmp    DWORD PTR [rsp+0x5c],ecx
3c16ad je     0x3c16e6
3c16af mov    al,BYTE PTR [rsp+0x56]
3c16b3 mov    rcx,r13
3c16b6 neg    al
3c16b8 sbb    edx,edx
3c16ba and    edx,0x400000
3c16c0 add    edx,0x20000e
3c16c6 call   0x3c2e94
3c16cb movd   xmm0,DWORD PTR [rbp-0x50]
3c16d0 cvtdq2ps xmm0,xmm0
3c16d3 mulss  xmm0,DWORD PTR [r15+0x3c30]
3c16da 
3c16dc subss  xmm8,xmm0
3c16e1 jmp    0x3c1b3c
3c16e6 mov    dl,0x1
3c16e8 mov    ecx,0x206
3c16ed call   0x394300
3c16f2 xor    ecx,ecx
3c16f4 test   al,al
3c16f6 je     0x3c1735
3c16f8 cmp    DWORD PTR [rsp+0x5c],ecx
3c16fc je     0x3c1735
3c16fe mov    al,BYTE PTR [rsp+0x56]
3c1702 mov    rcx,r13
3c1705 neg    al
3c1707 sbb    edx,edx
3c1709 and    edx,0x400000
3c170f add    edx,0x20000f
3c1715 call   0x3c2e94
3c171a movd   xmm0,DWORD PTR [rbp-0x50]
3c171f cvtdq2ps xmm0,xmm0
3c1722 mulss  xmm0,DWORD PTR [r15+0x3c30]
3c1729 
3c172b addss  xmm8,xmm0
3c1730 jmp    0x3c1b3c
3c1735 mov    dl,0x1
3c1737 mov    ecx,0x207
3c173c call   0x394300
3c1741 test   al,al
3c1743 je     0x3c175e
3c1745 mov    al,BYTE PTR [r15+0xe24]
3c174c neg    al
3c174e sbb    edx,edx
3c1750 and    edx,0x2
3c1753 add    edx,0x200004
3c1759 jmp    0x3c15b6
3c175e mov    dl,0x1
3c1760 mov    ecx,0x208
3c1765 call   0x394300
3c176a test   al,al
3c176c je     0x3c1788
3c176e mov    al,BYTE PTR [r15+0xe24]
3c1775 neg    al
3c1777 mov    eax,0x200005
3c177c sbb    edx,edx
3c177e and    edx,0x2
3c1781 add    edx,eax
3c1783 jmp    0x3c15b6
3c1788 mov    dl,0x1
3c178a mov    ecx,0x20a
3c178f call   0x394300
3c1794 test   al,al
3c1796 je     0x3c17df
3c1798 movzx  ecx,BYTE PTR [rsp+0x57]
3c179d mov    eax,DWORD PTR [rsp+0x64]
3c17a1 or     eax,ecx
3c17a3 jne    0x3c17df
3c17a5 mov    rcx,r13
3c17a8 call   0x3c0020
3c17ad xor    ecx,ecx
3c17af test   al,al
3c17b1 jne    0x3c17c6
3c17b3 cmp    BYTE PTR [rsp+0x53],cl
3c17b7 je     0x3c17c6
3c17b9 mov    edx,0x60000d
3c17be mov    rcx,r13
3c17c1 call   0x3c2e94
3c17c6 mov    al,BYTE PTR [rsp+0x56]
3c17ca neg    al
3c17cc sbb    edx,edx
3c17ce and    edx,0x400000
3c17d4 add    edx,0x200008
3c17da jmp    0x3c15b9
3c17df mov    dl,0x1
3c17e1 mov    ecx,0x20b
3c17e6 call   0x394300
3c17eb mov    edx,DWORD PTR [rsp+0x64]
3c17ef xor    r8d,r8d
3c17f2 test   al,al
3c17f4 je     0x3c185c
3c17f6 test   edx,edx
3c17f8 jne    0x3c185c
3c17fa mov    rcx,r13
3c17fd call   0x3c0020
3c1802 xor    ecx,ecx
3c1804 test   al,al
3c1806 jne    0x3c1843
3c1808 cmp    BYTE PTR [rsp+0x53],cl
3c180c je     0x3c1815
3c180e mov    edx,0x60000c
3c1813 jmp    0x3c183b
3c1815 cmp    BYTE PTR [rsp+0x6a],cl
3c1819 je     0x3c1843
3c181b cmp    BYTE PTR [r15+0xe27],cl
3c1822 je     0x3c1843
3c1824 cmp    BYTE PTR [r15+0xe26],cl
3c182b jne    0x3c1843
3c182d cmp    BYTE PTR [r15+0xe24],cl
3c1834 jne    0x3c1843
3c1836 mov    edx,0x600004
3c183b mov    rcx,r13
3c183e call   0x3c2e94
3c1843 mov    al,BYTE PTR [rsp+0x56]
3c1847 neg    al
3c1849 sbb    edx,edx
3c184b and    edx,0x400000
3c1851 add    edx,0x200009
3c1857 jmp    0x3c15b9
3c185c or     sil,dil
3c185f jne    0x3c1ab7
3c1865 test   bl,bl
3c1867 je     0x3c18b3
3c1869 test   DWORD PTR [rbp+0x1f8],0x100000
3c1870 
3c1873 je     0x3c189b
3c1875 cmp    DWORD PTR [r13+0x10],r8d
3c1879 jle    0x3c1883
3c187b mov    r14b,0x1
3c187e jmp    0x3c1b41
3c1883 mov    BYTE PTR [rsp+0x54],0x1
3c1888 mov    dil,r8b
3c188b mov    BYTE PTR [rsp+0x51],r8b
3c1890 mov    bl,r8b
3c1893 mov    r14b,r8b
3c1896 jmp    0x3c1b4a
3c189b mov    BYTE PTR [rsp+0x54],0x1
3c18a0 mov    dil,r8b
3c18a3 mov    BYTE PTR [rsp+0x51],r8b
3c18a8 mov    bl,r8b
3c18ab mov    r14b,0x1
3c18ae jmp    0x3c1b4a
3c18b3 or     BYTE PTR [rsp+0x69],r14b
3c18b8 jne    0x3c1a9e
3c18be test   r12b,r12b
3c18c1 je     0x3c18d8
3c18c3 mov    rcx,r13
3c18c6 call   0x3c3890
3c18cb mov    BYTE PTR [r13+0xe84],0x1
3c18d2 
3c18d3 jmp    0x3c1b3c
3c18d8 mov    al,BYTE PTR [rsp+0x57]
3c18dc lea    r12,[r13+0x54]
3c18e0 or     al,BYTE PTR [rsp+0x6b]
3c18e4 jne    0x3c19c3
3c18ea cmp    BYTE PTR [rsp+0x6c],r8b
3c18ef je     0x3c1b3c
3c18f5 call   0x392208
3c18fa xor    r14d,r14d
3c18fd mov    rbx,rax
3c1900 test   rax,rax
3c1903 je     0x3c1b3c
3c1909 mov    rcx,rax
3c190c call   0x3ca904
3c1911 movsxd rcx,eax
3c1914 lea    rcx,[rcx*2+0x2]
3c191b 
3c191c call   0x395158
3c1921 mov    rsi,rax
3c1924 mov    edi,r14d
3c1927 cmp    BYTE PTR [rbx],r14b
3c192a je     0x3c1991
3c192c mov    r14,QWORD PTR [rbp+0x208]
3c1933 xor    r15d,r15d
3c1936 mov    r12d,DWORD PTR [rbp+0x1f8]
3c193d xor    r8d,r8d
3c1940 lea    rcx,[rbp-0x50]
3c1944 mov    rdx,rbx
3c1947 call   0x39357c
3c194c mov    r8,QWORD PTR [rbp+0x200]
3c1953 mov    r9,r14
3c1956 movsxd rcx,eax
3c1959 mov    edx,r12d
3c195c add    rbx,rcx
3c195f mov    DWORD PTR [rsp+0x20],0x4
3c1966 
3c1967 lea    rcx,[rbp-0x50]
3c196b call   0x3c2a80
3c1970 test   al,al
3c1972 je     0x3c1981
3c1974 movzx  eax,WORD PTR [rbp-0x50]
3c1978 movsxd rcx,edi
3c197b inc    edi
3c197d mov    WORD PTR [rsi+rcx*2],ax
3c1981 cmp    BYTE PTR [rbx],r15b
3c1984 jne    0x3c193d
3c1986 mov    r15,QWORD PTR [rbp-0x68]
3c198a lea    r12,[r13+0x54]
3c198e xor    r14d,r14d
3c1991 movsxd rcx,edi
3c1994 mov    WORD PTR [rsi+rcx*2],r14w
3c1999 test   edi,edi
3c199b jle    0x3c19b6
3c199d mov    r9d,edi
3c19a0 mov    r8,rsi
3c19a3 mov    rdx,r12
3c19a6 mov    rcx,r13
3c19a9 call   0x3c7aac
3c19ae mov    BYTE PTR [r13+0xe84],0x1
3c19b5 
3c19b6 mov    rcx,rsi
3c19b9 call   0x39517c
3c19be jmp    0x3c1b3c
3c19c3 cmp    QWORD PTR [r15+0xb8],r8
3c19ca je     0x3c1a67
3c19d0 mov    rcx,r13
3c19d3 call   0x3c0020
3c19d8 xor    r14d,r14d
3c19db test   al,al
3c19dd je     0x3c19f0
3c19df mov    edx,DWORD PTR [r13+0x5c]
3c19e3 mov    ecx,DWORD PTR [r13+0x58]
3c19e7 call   0x38019c
3c19ec mov    esi,eax
3c19ee jmp    0x3c19f3
3c19f0 mov    esi,r14d
3c19f3 mov    rcx,r13
3c19f6 mov    rdi,r13
3c19f9 mov    rbx,r13
3c19fc call   0x3c0020
3c1a01 test   al,al
3c1a03 je     0x3c1a15
3c1a05 mov    edx,DWORD PTR [rbx+0x5c]
3c1a08 mov    ecx,DWORD PTR [r13+0x58]
3c1a0c call   0x39f28c
3c1a11 mov    ecx,eax
3c1a13 jmp    0x3c1a19
3c1a15 mov    ecx,DWORD PTR [r13+0xc]
3c1a19 mov    rax,QWORD PTR [r13+0x20]
3c1a1d movsxd r14,ecx
3c1a20 movsxd rsi,esi
3c1a23 lea    rdx,[rax+r14*2]
3c1a27 lea    rcx,[rax+rsi*2]
3c1a2b call   0x393b5c
3c1a30 lea    ebx,[rax+0x1]
3c1a33 movsxd rcx,ebx
3c1a36 call   0x395158
3c1a3b mov    rcx,QWORD PTR [r13+0x20]
3c1a3f mov    edx,ebx
3c1a41 mov    rdi,rax
3c1a44 lea    r9,[rcx+r14*2]
3c1a48 lea    r8,[rcx+rsi*2]
3c1a4c mov    rcx,rax
3c1a4f call   0x393c38
3c1a54 mov    rcx,rdi
3c1a57 call   0x39b1f8
3c1a5c mov    rcx,rdi
3c1a5f call   0x39517c
3c1a64 xor    r8d,r8d
3c1a67 cmp    BYTE PTR [rsp+0x57],r8b
3c1a6c je     0x3c1b3c
3c1a72 mov    rcx,r13
3c1a75 call   0x3c0020
3c1a7a test   al,al
3c1a7c jne    0x3c1a86
3c1a7e mov    rcx,r13
3c1a81 call   0x3c3890
3c1a86 mov    rdx,r12
3c1a89 mov    BYTE PTR [r13+0xe84],0x1
3c1a90 
3c1a91 mov    rcx,r13
3c1a94 call   0x3c64f4
3c1a99 jmp    0x3c1b3c
3c1a9e mov    edx,DWORD PTR [rsp+0x78]
3c1aa2 mov    rcx,r13
3c1aa5 call   0x3c2e94
3c1aaa mov    rcx,r13
3c1aad call   0x3bde24
3c1ab2 jmp    0x3c1b3c
3c1ab7 mov    eax,DWORD PTR [rsp+0x5c]
3c1abb test   eax,eax
3c1abd je     0x3c1adf
3c1abf test   dil,dil
3c1ac2 jne    0x3c1adf
3c1ac4 mov    ecx,DWORD PTR [rbp+0x1f8]
3c1aca mov    al,BYTE PTR [r15+0xe24]
3c1ad1 bt     ecx,0xb
3c1ad5 jae    0x3c1af8
3c1ad7 test   al,al
3c1ad9 jne    0x3c1afc
3c1adb mov    eax,DWORD PTR [rsp+0x5c]
3c1adf mov    BYTE PTR [rsp+0x58],0x1
3c1ae4 cmp    BYTE PTR [r15+0x7c],r8b
3c1ae8 je     0x3c1b37
3c1aea test   eax,eax
3c1aec jne    0x3c1b37
3c1aee mov    rcx,r13
3c1af1 call   0x3c3890
3c1af6 jmp    0x3c1b3c
3c1af8 test   al,al
3c1afa jne    0x3c1adb
3c1afc test   edx,edx
3c1afe jne    0x3c1b3c
3c1b00 mov    r9,QWORD PTR [rbp+0x208]
3c1b07 mov    edx,ecx
3c1b09 mov    r8,QWORD PTR [rbp+0x200]
3c1b10 lea    rcx,[rsp+0x78]
3c1b15 mov    DWORD PTR [rsp+0x78],0xa
3c1b1c 
3c1b1d mov    DWORD PTR [rsp+0x20],0x2
3c1b24 
3c1b25 call   0x3c2a80
3c1b2a test   al,al
3c1b2c je     0x3c1b3c
3c1b2e mov    edx,DWORD PTR [rsp+0x78]
3c1b32 jmp    0x3c15b9
3c1b37 mov    BYTE PTR [rsp+0x54],0x1
3c1b3c mov    r14b,BYTE PTR [rsp+0x52]
3c1b41 mov    bl,BYTE PTR [rsp+0x50]
3c1b45 mov    dil,BYTE PTR [rsp+0x51]
3c1b4a mov    rcx,r13
3c1b4d call   0x3c0020
3c1b52 xor    r9d,r9d
3c1b55 test   al,al
3c1b57 je     0x3c1b60
3c1b59 mov    al,0x1
3c1b5b test   dil,dil
3c1b5e jne    0x3c1b63
3c1b60 mov    al,r9b
3c1b63 mov    edi,DWORD PTR [rsp+0x60]
3c1b67 or     bl,al
3c1b69 mov    BYTE PTR [rsp+0x50],bl
3c1b6d mov    esi,r9d
3c1b70 mov    QWORD PTR [rsp+0x78],r9
3c1b75 cmp    DWORD PTR [r15+0x3f68],edi
3c1b7c jne    0x3c205b
3c1b82 mov    r12d,DWORD PTR [rsp+0x64]
3c1b87 test   r14b,r14b
3c1b8a je     0x3c1dec
3c1b90 test   r12d,r12d
3c1b93 jne    0x3c1cac
3c1b99 test   DWORD PTR [rbp+0x1f8],0x100000
3c1ba0 
3c1ba3 je     0x3c1bca
3c1ba5 lea    rax,[rip+0xffffffffffecb77c]        # 0x28d328
3c1bac xor    r9d,r9d
3c1baf lea    rdx,[r13+0x54]
3c1bb3 mov    QWORD PTR [rsp+0x78],rax
3c1bb8 lea    r8,[rsp+0x6c]
3c1bbd mov    rcx,r13
3c1bc0 call   0x3c7b24
3c1bc5 jmp    0x3c1c74
3c1bca mov    rdi,QWORD PTR [r13+0x40]
3c1bce mov    rcx,QWORD PTR [rbp+0x1e0]
3c1bd5 mov    rdx,rdi
3c1bd8 call   0x3ca884
3c1bdd test   eax,eax
3c1bdf je     0x3c1c70
3c1be5 mov    esi,DWORD PTR [r13+0x38]
3c1be9 lea    rcx,[rbp-0x18]
3c1bed dec    esi
3c1bef mov    QWORD PTR [rsp+0x78],rdi
3c1bf4 mov    BYTE PTR [rsp+0x55],0x1
3c1bf9 call   0x2db3a0
3c1bfe xor    ecx,ecx
3c1c00 test   esi,esi
3c1c02 jle    0x3c1c45
3c1c04 movsxd rbx,esi
3c1c07 mov    rcx,rdi
3c1c0a add    rbx,rdi
3c1c0d mov    rdx,rbx
3c1c10 call   0x393ad0
3c1c15 lea    rcx,[rbp-0x18]
3c1c19 lea    edx,[rax+0x1]
3c1c1c call   0x37ad04
3c1c21 mov    r8,rdi
3c1c24 mov    QWORD PTR [rsp+0x20],0x0
3c1c2b 
3c1c2d mov    rdi,QWORD PTR [rbp-0x10]
3c1c31 mov    r9,rbx
3c1c34 mov    ebx,DWORD PTR [rbp-0x18]
3c1c37 mov    rcx,rdi
3c1c3a mov    edx,ebx
3c1c3c call   0x393ba4
3c1c41 xor    ecx,ecx
3c1c43 jmp    0x3c1c4c
3c1c45 mov    rdi,QWORD PTR [rbp-0x10]
3c1c49 mov    ebx,DWORD PTR [rbp-0x18]
3c1c4c mov    r9d,ecx
3c1c4f lea    eax,[rbx-0x1]
3c1c52 test   esi,esi
3c1c54 lea    rdx,[r13+0x54]
3c1c58 mov    r8,rdi
3c1c5b mov    rcx,r13
3c1c5e cmovg  r9d,eax
3c1c62 call   0x3c7b24
3c1c67 lea    rcx,[rbp-0x18]
3c1c6b call   0x336624
3c1c70 mov    edi,DWORD PTR [rsp+0x60]
3c1c74 mov    edx,DWORD PTR [r13+0x18]
3c1c78 lea    rcx,[r13+0x28]
3c1c7c shl    edx,0x2
3c1c7f or     edx,0x1
3c1c82 mov    BYTE PTR [r13+0x48],0x1
3c1c87 call   0x37acd4
3c1c8c mov    r8,QWORD PTR [r13+0x20]
3c1c90 xor    r9d,r9d
3c1c93 mov    edx,DWORD PTR [r13+0x28]
3c1c97 mov    rcx,QWORD PTR [r13+0x30]
3c1c9b call   0x393c38
3c1ca0 xor    r9d,r9d
3c1ca3 test   r14b,r14b
3c1ca6 je     0x3c1dff
3c1cac cmp    BYTE PTR [rsp+0x58],r9b
3c1cb1 je     0x3c1cc4
3c1cb3 mov    r14d,DWORD PTR [rbp+0x1f8]
3c1cba test   r14b,0x20
3c1cbe jne    0x3c1e06
3c1cc4 mov    rdi,QWORD PTR [rbp+0x1e0]
3c1ccb mov    rbx,QWORD PTR [rsp+0x78]
3c1cd0 mov    r12b,BYTE PTR [rsp+0x55]
3c1cd5 mov    r14d,DWORD PTR [rsp+0x60]
3c1cda cmp    DWORD PTR [r15+0x5aa8],r14d
3c1ce1 jne    0x3c1d31
3c1ce3 cmp    DWORD PTR [r15+0x3f68],r14d
3c1cea je     0x3c1d2a
3c1cec call   0x394050
3c1cf1 xor    r9d,r9d
3c1cf4 test   al,al
3c1cf6 je     0x3c1d2a
3c1cf8 cmp    DWORD PTR [rsp+0x64],r9d
3c1cfd jne    0x3c1d2a
3c1cff mov    rbx,QWORD PTR [r15+0x5ab8]
3c1d06 mov    rdx,rdi
3c1d09 mov    esi,DWORD PTR [r15+0x5ab0]
3c1d10 mov    rcx,rbx
3c1d13 dec    esi
3c1d15 call   0x3ca884
3c1d1a xor    r9d,r9d
3c1d1d test   eax,eax
3c1d1f setne  al
3c1d22 or     r12b,al
3c1d25 mov    BYTE PTR [rsp+0x55],r12b
3c1d2a mov    DWORD PTR [r15+0x5aa8],r9d
3c1d31 test   rbx,rbx
3c1d34 je     0x3c1dca
3c1d3a cmp    DWORD PTR [rbp-0x80],r9d
3c1d3e je     0x3c1dab
3c1d40 lea    rcx,[rbp+0x0]
3c1d44 call   0x3bc268
3c1d49 mov    eax,DWORD PTR [rbp+0x1f8]
3c1d4f lea    edx,[rsi+0x1]
3c1d52 mov    ecx,DWORD PTR [rbp+0x1e8]
3c1d58 mov    DWORD PTR [rbp+0xc],eax
3c1d5b mov    QWORD PTR [rbp+0x0],r15
3c1d5f mov    DWORD PTR [rbp+0x8],0x40000
3c1d66 mov    QWORD PTR [rbp+0x20],rdi
3c1d6a mov    DWORD PTR [rbp+0x28],esi
3c1d6d call   0x39f28c
3c1d72 mov    DWORD PTR [rbp+0x2c],eax
3c1d75 lea    rcx,[rbp+0x0]
3c1d79 mov    rax,QWORD PTR [rbp+0x208]
3c1d80 mov    QWORD PTR [rbp+0x10],rax
3c1d84 call   QWORD PTR [rbp+0x200]
3c1d8a mov    eax,DWORD PTR [rbp+0x2c]
3c1d8d mov    rdi,QWORD PTR [rbp+0x20]
3c1d91 mov    ecx,DWORD PTR [rbp+0x28]
3c1d94 mov    QWORD PTR [rbp+0x1e0],rdi
3c1d9b lea    edx,[rax-0x1]
3c1d9e mov    DWORD PTR [rbp+0x1e8],eax
3c1da4 call   0x38019c
3c1da9 mov    esi,eax
3c1dab mov    edx,DWORD PTR [rbp+0x1e8]
3c1db1 lea    ecx,[rsi+0x1]
3c1db4 call   0x38019c
3c1db9 movsxd r8,eax
3c1dbc mov    rdx,rbx
3c1dbf mov    rcx,rdi
3c1dc2 call   0x39354c
3c1dc7 xor    r9d,r9d
3c1dca cmp    DWORD PTR [r15+0x3f68],r14d
3c1dd1 jne    0x3c2075
3c1dd7 cmp    BYTE PTR [rsp+0x54],r9b
3c1ddc je     0x3c206a
3c1de2 call   0x390078
3c1de7 jmp    0x3c2075
3c1dec mov    BYTE PTR [rsp+0x55],r9b
3c1df1 mov    QWORD PTR [rsp+0x78],r9
3c1df6 test   r12d,r12d
3c1df9 je     0x3c1c74
3c1dff mov    r14d,DWORD PTR [rbp+0x1f8]
3c1e06 test   r14d,0x801c0
3c1e0d je     0x3c201d
3c1e13 mov    ebx,0x40
3c1e18 test   bl,r14b
3c1e1b je     0x3c1e35
3c1e1d mov    edx,edi
3c1e1f xor    r8d,r8d
3c1e22 mov    edi,0x200
3c1e27 mov    ecx,edi
3c1e29 call   0x39bde4
3c1e2e xor    r9d,r9d
3c1e31 test   al,al
3c1e33 jne    0x3c1e8c
3c1e35 test   r14b,r14b
3c1e38 jns    0x3c1e68
3c1e3a mov    edi,0x203
3c1e3f mov    dl,0x1
3c1e41 mov    ecx,edi
3c1e43 call   0x394300
3c1e48 test   al,al
3c1e4a je     0x3c1e53
3c1e4c mov    ebx,0x80
3c1e51 jmp    0x3c1e8c
3c1e53 mov    edi,0x204
3c1e58 mov    dl,0x1
3c1e5a mov    ecx,edi
3c1e5c call   0x394300
3c1e61 xor    r9d,r9d
3c1e64 test   al,al
3c1e66 jne    0x3c1e4c
3c1e68 mov    ebx,0x80000
3c1e6d mov    edi,r9d
3c1e70 test   ebx,r14d
3c1e73 je     0x3c1e7e
3c1e75 cmp    BYTE PTR [r13+0xe86],r9b
3c1e7c jne    0x3c1e8c
3c1e7e mov    ebx,0x100
3c1e83 test   ebx,r14d
3c1e86 je     0x3c201d
3c1e8c lea    rcx,[rbp+0x0]
3c1e90 call   0x3bc268
3c1e95 mov    rax,QWORD PTR [rbp+0x208]
3c1e9c xor    ecx,ecx
3c1e9e mov    QWORD PTR [rbp+0x10],rax
3c1ea2 mov    rax,QWORD PTR [rbp+0x1e0]
3c1ea9 mov    QWORD PTR [rbp+0x0],r15
3c1ead mov    DWORD PTR [rbp+0x8],ebx
3c1eb0 mov    DWORD PTR [rbp+0xc],r14d
3c1eb4 test   r12d,r12d
3c1eb7 jne    0x3c1ebd
3c1eb9 mov    rax,QWORD PTR [r13+0x30]
3c1ebd mov    rbx,QWORD PTR [r13+0x20]
3c1ec1 mov    QWORD PTR [rbp+0x20],rax
3c1ec5 mov    eax,DWORD PTR [r13+0x10]
3c1ec9 mov    DWORD PTR [rbp+0x28],eax
3c1ecc mov    eax,DWORD PTR [r13+0x4c]
3c1ed0 mov    DWORD PTR [rbp+0x2c],eax
3c1ed3 movsxd rax,DWORD PTR [r13+0x54]
3c1ed7 mov    BYTE PTR [rbp+0x30],cl
3c1eda mov    rcx,rbx
3c1edd mov    DWORD PTR [rbp+0x1c],edi
3c1ee0 lea    rdx,[rbx+rax*2]
3c1ee4 call   0x393b5c
3c1ee9 movsxd rdx,DWORD PTR [r13+0x58]
3c1eed mov    rcx,rbx
3c1ef0 mov    edi,eax
3c1ef2 mov    DWORD PTR [rbp+0x34],eax
3c1ef5 lea    rdx,[rbx+rdx*2]
3c1ef9 call   0x393b5c
3c1efe movsxd rdx,DWORD PTR [r13+0x5c]
3c1f02 mov    rcx,rbx
3c1f05 mov    r14d,eax
3c1f08 mov    DWORD PTR [rbp+0x38],eax
3c1f0b lea    rdx,[rbx+rdx*2]
3c1f0f call   0x393b5c
3c1f14 lea    rcx,[rbp+0x0]
3c1f18 mov    DWORD PTR [rbp+0x3c],eax
3c1f1b mov    r12d,eax
3c1f1e call   QWORD PTR [rbp+0x200]
3c1f24 movsxd rcx,DWORD PTR [rbp+0x34]
3c1f28 mov    bl,BYTE PTR [rbp+0x30]
3c1f2b cmp    ecx,edi
3c1f2d jne    0x3c1f36
3c1f2f xor    r9d,r9d
3c1f32 test   bl,bl
3c1f34 je     0x3c1f57
3c1f36 mov    rdx,rcx
3c1f39 mov    rcx,QWORD PTR [rbp+0x20]
3c1f3d add    rdx,rcx
3c1f40 call   0x393ad0
3c1f45 mov    ecx,DWORD PTR [rbp+0x34]
3c1f48 xor    r9d,r9d
3c1f4b mov    DWORD PTR [r13+0x54],eax
3c1f4f mov    BYTE PTR [r13+0xe84],0x1
3c1f56 
3c1f57 movsxd rax,DWORD PTR [rbp+0x38]
3c1f5b cmp    eax,r14d
3c1f5e jne    0x3c1f64
3c1f60 test   bl,bl
3c1f62 je     0x3c1f87
3c1f64 cmp    eax,ecx
3c1f66 jne    0x3c1f6e
3c1f68 mov    ecx,DWORD PTR [r13+0x54]
3c1f6c jmp    0x3c1f80
3c1f6e mov    rcx,QWORD PTR [rbp+0x20]
3c1f72 lea    rdx,[rcx+rax*1]
3c1f76 call   0x393ad0
3c1f7b mov    ecx,eax
3c1f7d mov    eax,DWORD PTR [rbp+0x38]
3c1f80 mov    DWORD PTR [r13+0x58],ecx
3c1f84 xor    r9d,r9d
3c1f87 movsxd rcx,DWORD PTR [rbp+0x3c]
3c1f8b cmp    ecx,r12d
3c1f8e jne    0x3c1f98
3c1f90 test   bl,bl
3c1f92 je     0x3c201d
3c1f98 cmp    ecx,eax
3c1f9a jne    0x3c1fa2
3c1f9c mov    eax,DWORD PTR [r13+0x58]
3c1fa0 jmp    0x3c1fb4
3c1fa2 mov    rdx,rcx
3c1fa5 mov    rcx,QWORD PTR [rbp+0x20]
3c1fa9 add    rdx,rcx
3c1fac call   0x393ad0
3c1fb1 xor    r9d,r9d
3c1fb4 mov    DWORD PTR [r13+0x5c],eax
3c1fb8 test   bl,bl
3c1fba je     0x3c201d
3c1fbc mov    r8d,DWORD PTR [rbp+0x28]
3c1fc0 mov    rcx,r13
3c1fc3 mov    rdx,QWORD PTR [rbp+0x20]
3c1fc7 call   0x3c2c44
3c1fcc mov    eax,DWORD PTR [rbp-0x78]
3c1fcf cmp    DWORD PTR [rbp+0x28],eax
3c1fd2 jle    0x3c1fea
3c1fd4 cmp    DWORD PTR [rbp-0x80],0x0
3c1fd8 je     0x3c1fea
3c1fda lea    rcx,[r13+0x18]
3c1fde mov    edx,DWORD PTR [rcx]
3c1fe0 sub    edx,eax
3c1fe2 add    edx,DWORD PTR [rbp+0x28]
3c1fe5 call   0x37ad04
3c1fea mov    r8,QWORD PTR [rbp+0x20]
3c1fee xor    r9d,r9d
3c1ff1 mov    edx,DWORD PTR [r13+0x18]
3c1ff5 mov    rcx,QWORD PTR [r13+0x20]
3c1ff9 mov    QWORD PTR [rsp+0x20],0x0
3c2000 
3c2002 call   0x393ba4
3c2007 mov    DWORD PTR [r13+0xc],eax
3c200b mov    rcx,r13
3c200e mov    eax,DWORD PTR [rbp+0x28]
3c2011 mov    DWORD PTR [r13+0x10],eax
3c2015 call   0x3bfd58
3c201a xor    r9d,r9d
3c201d mov    rdi,QWORD PTR [rbp+0x1e0]
3c2024 cmp    DWORD PTR [rsp+0x64],r9d
3c2029 jne    0x3c1ccb
3c202f mov    rcx,QWORD PTR [r13+0x30]
3c2033 mov    rdx,rdi
3c2036 call   0x3ca884
3c203b xor    r9d,r9d
3c203e test   eax,eax
3c2040 je     0x3c1ccb
3c2046 mov    rbx,QWORD PTR [r13+0x30]
3c204a mov    r12b,0x1
3c204d mov    esi,DWORD PTR [r13+0x10]
3c2051 mov    BYTE PTR [rsp+0x55],r12b
3c2056 jmp    0x3c1cd5
3c205b mov    rdi,QWORD PTR [rbp+0x1e0]
3c2062 mov    rbx,r9
3c2065 jmp    0x3c1cd0
3c206a mov    DWORD PTR [r15+0x5e4c],0x1
3c2071 
3c2075 mov    r12d,DWORD PTR [rsp+0x5c]
3c207a movss  xmm9,DWORD PTR [rip+0xffffffffffecb1d1]        # 0x28d254
3c2081 
3c2083 test   r12d,r12d
3c2086 jne    0x3c20c9
3c2088 lea    r8d,[r12+0x1]
3c208d mov    edx,r14d
3c2090 lea    rcx,[rbp-0x38]
3c2094 call   0x3997ac
3c2099 movss  xmm6,DWORD PTR [r15+0x3814]
3c20a0 
3c20a2 lea    ecx,[r12+0x8]
3c20a7 movaps xmm1,xmm9
3c20ab call   0x392298
3c20b0 mov    rdx,QWORD PTR [rbp-0x30]
3c20b4 mov    r9b,0x1
3c20b7 mov    rcx,QWORD PTR [rbp-0x38]
3c20bb mov    r8d,eax
3c20be movss  DWORD PTR [rsp+0x20],xmm6
3c20c4 call   0x3992a0
3c20c9 movss  xmm0,DWORD PTR [rbp-0x34]
3c20ce lea    rcx,[rbp+0x50]
3c20d2 movss  xmm3,DWORD PTR [rbp-0x38]
3c20d7 addss  xmm0,xmm13
3c20dc movss  xmm2,DWORD PTR [rbp-0x34]
3c20e1 addss  xmm3,xmm12
3c20e6 movss  xmm1,DWORD PTR [rbp-0x38]
3c20eb movss  DWORD PTR [rsp+0x20],xmm0
3c20f1 call   0x2cc350
3c20f6 test   r12d,r12d
3c20f9 je     0x3c2112
3c20fb mov    rax,QWORD PTR [rbp-0x70]
3c20ff movsd  xmm0,QWORD PTR [rax+0x100]
3c2106 
3c2107 lea    rax,[rbp-0x68]
3c210b movsd  QWORD PTR [rbp-0x68],xmm0
3c2110 jmp    0x3c2126
3c2112 lea    r8,[r15+0x380c]
3c2119 lea    rdx,[rbp-0x38]
3c211d lea    rcx,[rbp-0x68]
3c2121 call   0x2ef9d8
3c2126 movsd  xmm0,QWORD PTR [rax]
3c212a lea    rcx,[rbp-0x78]
3c212e xorps  xmm2,xmm2
3c2131 movsd  QWORD PTR [rbp-0x40],xmm0
3c2136 xorps  xmm1,xmm1
3c2139 call   0x2cc340
3c213e xor    edx,edx
3c2140 cmp    BYTE PTR [rsp+0x70],dl
3c2144 je     0x3c2151
3c2146 mov    rdi,QWORD PTR [r13+0x30]
3c214a mov    QWORD PTR [rbp+0x1e0],rdi
3c2151 mov    cl,BYTE PTR [rsp+0x59]
3c2155 mov    rsi,rdx
3c2158 mov    QWORD PTR [rbp-0x80],rdx
3c215c test   cl,cl
3c215e je     0x3c2185
3c2160 mov    rbx,QWORD PTR [rbp+0x1d8]
3c2167 mov    rcx,rbx
3c216a mov    QWORD PTR [rbp+0x1e0],rbx
3c2171 mov    rdi,rbx
3c2174 call   0x3ca904
3c2179 mov    cl,BYTE PTR [rsp+0x59]
3c217d lea    rsi,[rax+rbx*1]
3c2181 mov    QWORD PTR [rbp-0x80],rsi
3c2185 mov    bl,BYTE PTR [rsp+0x51]
3c2189 mov    al,bl
3c218b or     al,BYTE PTR [rsp+0x50]
3c218f jne    0x3c2262
3c2195 test   r12d,r12d
3c2198 je     0x3c21d2
3c219a lea    rdx,[rbp-0x80]
3c219e mov    rcx,rdi
3c21a1 call   0x3c0364
3c21a6 movaps xmm1,xmm12
3c21aa lea    rcx,[rbp-0x48]
3c21ae movd   xmm2,eax
3c21b2 cvtdq2ps xmm2,xmm2
3c21b5 mulss  xmm2,DWORD PTR [r15+0x3c30]
3c21bc 
3c21be call   0x2cc340
3c21c3 mov    rsi,QWORD PTR [rbp-0x80]
3c21c7 movsd  xmm0,QWORD PTR [rax]
3c21cb movsd  QWORD PTR [rbp-0x78],xmm0
3c21d0 jmp    0x3c2206
3c21d2 test   cl,cl
3c21d4 jne    0x3c21f4
3c21d6 cmp    DWORD PTR [r15+0x3f68],r14d
3c21dd jne    0x3c21e8
3c21df movsxd rsi,DWORD PTR [r13+0x10]
3c21e3 add    rsi,rdi
3c21e6 jmp    0x3c21f4
3c21e8 mov    rcx,rdi
3c21eb call   0x3ca904
3c21f0 lea    rsi,[rdi+rax*1]
3c21f4 mov    rax,rsi
3c21f7 sub    rax,rdi
3c21fa cmp    rax,0x200000
3c2200 jge    0x3c2929
3c2206 mov    ecx,DWORD PTR [rbp-0x28]
3c2209 movaps xmm1,xmm9
3c220d call   0x392298
3c2212 movss  xmm2,DWORD PTR [r15+0x3c30]
3c2219 
3c221b lea    r8,[rbp+0x50]
3c221f mov    rdx,QWORD PTR [r15+0x3c28]
3c2226 lea    r9,[rbp-0x40]
3c222a xor    ecx,ecx
3c222c test   r12d,r12d
3c222f cmovne r8,rcx
3c2233 mov    QWORD PTR [rsp+0x40],r8
3c2238 movss  DWORD PTR [rsp+0x38],xmm10
3c223f mov    QWORD PTR [rsp+0x30],rsi
3c2244 mov    QWORD PTR [rsp+0x28],rdi
3c2249 mov    DWORD PTR [rsp+0x20],eax
3c224d mov    rax,QWORD PTR [rbp-0x70]
3c2251 mov    rcx,QWORD PTR [rax+0x298]
3c2258 call   0x3a31f8
3c225d jmp    0x3c2929
3c2262 xor    r14d,r14d
3c2265 test   cl,cl
3c2267 jne    0x3c2270
3c2269 movsxd rsi,DWORD PTR [r13+0x10]
3c226d add    rsi,rdi
3c2270 mov    rdi,QWORD PTR [r13+0x20]
3c2274 lea    rcx,[rbp-0x20]
3c2278 call   0x2d4870
3c227d lea    rcx,[rbp-0x80]
3c2281 call   0x2d4870
3c2286 or     r11d,0xffffffff
3c228a mov    QWORD PTR [rsp+0x78],r14
3c228f mov    r10,r14
3c2292 mov    ecx,0xfffffc18
3c2297 test   bl,bl
3c2299 je     0x3c22ac
3c229b movsxd rax,DWORD PTR [r13+0x54]
3c229f lea    r8d,[r11+0x2]
3c22a3 mov    ebx,r11d
3c22a6 lea    r9,[rdi+rax*2]
3c22aa jmp    0x3c22b4
3c22ac mov    ebx,ecx
3c22ae mov    r8d,r14d
3c22b1 mov    r9,r14
3c22b4 mov    QWORD PTR [rbp-0x68],r9
3c22b8 cmp    BYTE PTR [rsp+0x50],r14b
3c22bd je     0x3c22de
3c22bf mov    edx,DWORD PTR [r13+0x5c]
3c22c3 mov    ecx,DWORD PTR [r13+0x58]
3c22c7 call   0x38019c
3c22cc movsxd rcx,eax
3c22cf inc    r8d
3c22d2 lea    r10,[rdi+rcx*2]
3c22d6 mov    ecx,r11d
3c22d9 mov    QWORD PTR [rsp+0x78],r10
3c22de mov    eax,r14d
3c22e1 test   r12d,r12d
3c22e4 mov    edx,r14d
3c22e7 setne  al
3c22ea add    r8d,eax
3c22ed mov    rax,rdi
3c22f0 cmp    WORD PTR [rdi],r14w
3c22f4 je     0x3c2336
3c22f6 mov    r12d,0xa
3c22fc cmp    WORD PTR [rax],r12w
3c2300 jne    0x3c232c
3c2302 inc    edx
3c2304 cmp    ebx,r11d
3c2307 jne    0x3c2318
3c2309 cmp    rax,r9
3c230c jb     0x3c2318
3c230e dec    r8d
3c2311 mov    ebx,edx
3c2313 test   r8d,r8d
3c2316 jle    0x3c2336
3c2318 cmp    ecx,r11d
3c231b jne    0x3c232c
3c231d cmp    rax,r10
3c2320 jb     0x3c232c
3c2322 dec    r8d
3c2325 mov    ecx,edx
3c2327 test   r8d,r8d
3c232a jle    0x3c2336
3c232c add    rax,0x2
3c2330 cmp    WORD PTR [rax],r14w
3c2334 jne    0x3c22fc
3c2336 lea    r12d,[rdx+0x1]
3c233a cmp    ecx,r11d
3c233d mov    r14d,r12d
3c2340 mov    rdx,rdi
3c2343 cmovne r14d,ecx
3c2347 mov    rcx,r9
3c234a call   0x393460
3c234f mov    r9,QWORD PTR [rbp-0x68]
3c2353 lea    rcx,[rbp-0x50]
3c2357 mov    r8,rax
3c235a mov    rdx,r15
3c235d xor    eax,eax
3c235f mov    BYTE PTR [rsp+0x30],al
3c2363 mov    QWORD PTR [rsp+0x28],rax
3c2368 mov    QWORD PTR [rsp+0x20],rax
3c236d call   0x3c03a8
3c2372 cmp    ebx,0xffffffff
3c2375 movss  xmm7,DWORD PTR [rax]
3c2379 mov    eax,r12d
3c237c cmovne eax,ebx
3c237f movss  DWORD PTR [rbp-0x20],xmm7
3c2384 xor    ebx,ebx
3c2386 movd   xmm6,eax
3c238a cvtdq2ps xmm6,xmm6
3c238d mulss  xmm6,DWORD PTR [r15+0x3c30]
3c2394 
3c2396 movss  DWORD PTR [rbp-0x1c],xmm6
3c239b test   r14d,r14d
3c239e js     0x3c23f3
3c23a0 mov    rbx,QWORD PTR [rsp+0x78]
3c23a5 mov    rdx,rdi
3c23a8 mov    rcx,rbx
3c23ab call   0x393460
3c23b0 mov    r8,rax
3c23b3 lea    rcx,[rbp-0x68]
3c23b7 xor    eax,eax
3c23b9 mov    r9,rbx
3c23bc mov    BYTE PTR [rsp+0x30],al
3c23c0 mov    rdx,r15
3c23c3 mov    QWORD PTR [rsp+0x28],rax
3c23c8 mov    QWORD PTR [rsp+0x20],rax
3c23cd call   0x3c03a8
3c23d2 movd   xmm1,r14d
3c23d7 xor    ebx,ebx
3c23d9 cvtdq2ps xmm1,xmm1
3c23dc movss  xmm0,DWORD PTR [rax]
3c23e0 mulss  xmm1,DWORD PTR [r15+0x3c30]
3c23e7 
3c23e9 movss  DWORD PTR [rbp-0x80],xmm0
3c23ee movss  DWORD PTR [rbp-0x7c],xmm1
3c23f3 cmp    DWORD PTR [rsp+0x5c],0x0
3c23f8 mov    rax,r15
3c23fb je     0x3c2423
3c23fd movd   xmm2,r12d
3c2402 lea    rcx,[rbp-0x68]
3c2406 cvtdq2ps xmm2,xmm2
3c2409 movaps xmm1,xmm12
3c240d mulss  xmm2,DWORD PTR [rax+0x3c30]
3c2414 
3c2415 call   0x2cc340
3c241a movsd  xmm0,QWORD PTR [rax]
3c241e movsd  QWORD PTR [rbp-0x78],xmm0
3c2423 mov    r14b,BYTE PTR [rsp+0x51]
3c2428 test   r14b,r14b
3c242b je     0x3c256b
3c2431 cmp    BYTE PTR [r13+0xe84],bl
3c2438 je     0x3c256b
3c243e test   DWORD PTR [rbp+0x1f8],0x1000
3c2445 
3c2448 jne    0x3c24ad
3c244a movss  xmm1,DWORD PTR [r13+0x50]
3c2450 movaps xmm0,xmm12
3c2454 comiss xmm1,xmm7
3c2457 mulss  xmm0,DWORD PTR [rip+0xffffffffffed0c4d]        # 0x2930ac
3c245e 
3c245f jbe    0x3c2483
3c2461 subss  xmm7,xmm0
3c2465 xorps  xmm0,xmm0
3c2468 movaps xmm1,xmm7
3c246b call   0x38a3f4
3c2470 cvttss2si eax,xmm0
3c2474 movd   xmm1,eax
3c2478 cvtdq2ps xmm1,xmm1
3c247b movss  DWORD PTR [r13+0x50],xmm1
3c2481 jmp    0x3c24b1
3c2483 subss  xmm12,DWORD PTR [r15+0x380c]
3c248a 
3c248c subss  xmm7,xmm12
3c2491 comiss xmm7,xmm1
3c2494 jb     0x3c24b1
3c2496 addss  xmm0,xmm7
3c249a cvttss2si eax,xmm0
3c249e movd   xmm0,eax
3c24a2 cvtdq2ps xmm0,xmm0
3c24a5 movss  DWORD PTR [r13+0x50],xmm0
3c24ab jmp    0x3c24b1
3c24ad mov    DWORD PTR [r13+0x50],ebx
3c24b1 mov    r12d,DWORD PTR [rsp+0x5c]
3c24b6 test   r12d,r12d
3c24b9 je     0x3c2562
3c24bf movaps xmm1,xmm6
3c24c2 subss  xmm1,DWORD PTR [r15+0x3c30]
3c24c9 
3c24cb comiss xmm8,xmm1
3c24cf jbe    0x3c24de
3c24d1 xorps  xmm0,xmm0
3c24d4 call   0x38a3f4
3c24d9 movaps xmm6,xmm0
3c24dc jmp    0x3c250f
3c24de movss  xmm2,DWORD PTR [r15+0x3810]
3c24e5 
3c24e7 movaps xmm1,xmm13
3c24eb addss  xmm2,xmm2
3c24ef movaps xmm0,xmm6
3c24f2 subss  xmm1,xmm2
3c24f6 subss  xmm0,xmm1
3c24fa comiss xmm0,xmm8
3c24fe jb     0x3c250b
3c2500 subss  xmm6,xmm13
3c2505 addss  xmm6,xmm2
3c2509 jmp    0x3c250f
3c250b movaps xmm6,xmm8
3c250f movss  xmm0,DWORD PTR [r15+0x3810]
3c2516 
3c2518 xorps  xmm1,xmm1
3c251b addss  xmm0,xmm0
3c251f addss  xmm0,DWORD PTR [rbp-0x74]
3c2524 subss  xmm0,xmm13
3c2529 call   0x38a3f4
3c252e movaps xmm2,xmm0
3c2531 xorps  xmm1,xmm1
3c2534 movaps xmm0,xmm6
3c2537 call   0x3762bc
3c253c movss  xmm1,DWORD PTR [rbp-0x3c]
3c2541 mov    rax,QWORD PTR [rbp-0x70]
3c2545 movss  xmm3,DWORD PTR [rax+0x88]
3c254c 
3c254d subss  xmm3,xmm0
3c2551 addss  xmm1,xmm3
3c2555 movss  DWORD PTR [rbp-0x3c],xmm1
3c255a movss  DWORD PTR [rax+0x88],xmm0
3c2561 
3c2562 mov    BYTE PTR [r13+0xe84],bl
3c2569 jmp    0x3c2570
3c256b mov    r12d,DWORD PTR [rsp+0x5c]
3c2570 movss  xmm1,DWORD PTR [r13+0x50]
3c2576 lea    rcx,[rbp-0x50]
3c257a xorps  xmm2,xmm2
3c257d call   0x2cc340
3c2582 cmp    BYTE PTR [rsp+0x50],bl
3c2586 je     0x3c27be
3c258c mov    edx,DWORD PTR [r13+0x5c]
3c2590 mov    ecx,DWORD PTR [r13+0x58]
3c2594 call   0x38019c
3c2599 mov    edx,DWORD PTR [r13+0x5c]
3c259d movsxd r8,eax
3c25a0 lea    rbx,[rdi+r8*2]
3c25a4 call   0x39f28c
3c25a9 movsxd rcx,eax
3c25ac lea    rdi,[rdi+rcx*2]
3c25b0 test   r14b,r14b
3c25b3 je     0x3c25bb
3c25b5 movaps xmm1,xmm9
3c25b9 jmp    0x3c25c3
3c25bb movss  xmm1,DWORD PTR [rip+0xffffffffffed1bed]        # 0x2941b0
3c25c2 
3c25c3 mov    ecx,0x30
3c25c8 call   0x392298
3c25cd mov    r14d,eax
3c25d0 test   r12d,r12d
3c25d3 je     0x3c25de
3c25d5 xorps  xmm14,xmm14
3c25d9 xorps  xmm7,xmm7
3c25dc jmp    0x3c25e6
3c25de movss  xmm7,DWORD PTR [rip+0xffffffffffed0b4e]        # 0x293134
3c25e5 
3c25e6 lea    r8,[rbp-0x80]
3c25ea lea    rdx,[rbp-0x40]
3c25ee lea    rcx,[rbp-0x68]
3c25f2 call   0x2ef9d8
3c25f7 mov    rdx,rax
3c25fa lea    r8,[rbp-0x50]
3c25fe lea    rcx,[rbp-0x80]
3c2602 call   0x3367e4
3c2607 mov    QWORD PTR [rsp+0x78],rbx
3c260c cmp    rbx,rdi
3c260f jae    0x3c27bc
3c2615 movss  xmm6,DWORD PTR [rbp-0x7c]
3c261a xor    r13d,r13d
3c261d mov    r12,QWORD PTR [rbp-0x70]
3c2621 movss  xmm0,DWORD PTR [rbp+0x5c]
3c2626 addss  xmm0,DWORD PTR [r15+0x3c30]
3c262d 
3c262f comiss xmm6,xmm0
3c2632 ja     0x3c27b3
3c2638 movss  xmm0,DWORD PTR [rbp+0x54]
3c263d comiss xmm0,xmm6
3c2640 jbe    0x3c266f
3c2642 cmp    rbx,rdi
3c2645 jae    0x3c278d
3c264b mov    ecx,0xa
3c2650 movzx  eax,WORD PTR [rbx]
3c2653 add    rbx,0x2
3c2657 mov    QWORD PTR [rsp+0x78],rbx
3c265c cmp    ax,cx
3c265f je     0x3c278d
3c2665 cmp    rbx,rdi
3c2668 jb     0x3c2650
3c266a jmp    0x3c278d
3c266f mov    BYTE PTR [rsp+0x30],0x1
3c2674 lea    rax,[rsp+0x78]
3c2679 mov    QWORD PTR [rsp+0x28],r13
3c267e lea    rcx,[rbp-0x68]
3c2682 mov    r9,rdi
3c2685 mov    QWORD PTR [rsp+0x20],rax
3c268a mov    r8,rbx
3c268d mov    rdx,r15
3c2690 call   0x3c03a8
3c2695 movss  xmm1,DWORD PTR [rbp-0x68]
3c269a comiss xmm10,xmm1
3c269e jb     0x3c26c6
3c26a0 mov    rcx,QWORD PTR [r15+0x3c28]
3c26a7 mov    edx,0x20
3c26ac call   0x3bfed4
3c26b1 mulss  xmm0,xmm11
3c26b6 cvttss2si eax,xmm0
3c26ba movd   xmm1,eax
3c26be cvtdq2ps xmm1,xmm1
3c26c1 movss  DWORD PTR [rbp-0x68],xmm1
3c26c6 movaps xmm2,xmm7
3c26c9 lea    rcx,[rbp+0x40]
3c26cd call   0x2cc340
3c26d2 mov    r8,rax
3c26d5 lea    rdx,[rbp-0x80]
3c26d9 lea    rcx,[rbp-0x60]
3c26dd call   0x2ef9d8
3c26e2 movaps xmm2,xmm14
3c26e6 lea    rcx,[rbp+0x80]
3c26ed subss  xmm2,DWORD PTR [r15+0x3c30]
3c26f4 
3c26f6 xorps  xmm1,xmm1
3c26f9 mov    rbx,rax
3c26fc call   0x2cc340
3c2701 mov    r8,rax
3c2704 lea    rdx,[rbp-0x80]
3c2708 lea    rcx,[rbp-0x18]
3c270c call   0x2ef9d8
3c2711 mov    rdx,rax
3c2714 lea    rcx,[rbp+0x60]
3c2718 mov    r8,rbx
3c271b call   0x2db388
3c2720 lea    rdx,[rbp+0x50]
3c2724 lea    rcx,[rbp+0x98]
3c272b call   0x38bab4
3c2730 lea    rdx,[rbp+0x98]
3c2737 lea    rcx,[rbp+0x60]
3c273b call   0x3901b8
3c2740 lea    rdx,[rbp+0x50]
3c2744 lea    rcx,[rbp+0x88]
3c274b call   0x38bab4
3c2750 lea    rdx,[rbp+0x88]
3c2757 lea    rcx,[rbp+0x60]
3c275b call   0x398728
3c2760 test   al,al
3c2762 je     0x3c2788
3c2764 mov    rcx,QWORD PTR [r12+0x298]
3c276b 
3c276c lea    r8,[rbp+0x68]
3c2770 mov    DWORD PTR [rsp+0x28],r13d
3c2775 lea    rdx,[rbp+0x60]
3c2779 mov    r9d,r14d
3c277c movss  DWORD PTR [rsp+0x20],xmm10
3c2783 call   0x3a1244
3c2788 mov    rbx,QWORD PTR [rsp+0x78]
3c278d movss  xmm0,DWORD PTR [rbp-0x40]
3c2792 subss  xmm0,DWORD PTR [rbp-0x50]
3c2797 addss  xmm6,DWORD PTR [r15+0x3c30]
3c279e 
3c27a0 movss  DWORD PTR [rbp-0x80],xmm0
3c27a5 movss  DWORD PTR [rbp-0x7c],xmm6
3c27aa cmp    rbx,rdi
3c27ad jb     0x3c2621
3c27b3 mov    r13,QWORD PTR [rbp-0x48]
3c27b7 mov    r12d,DWORD PTR [rsp+0x5c]
3c27bc xor    ebx,ebx
3c27be mov    r14,QWORD PTR [rbp+0x1e0]
3c27c5 test   r12d,r12d
3c27c8 jne    0x3c27d8
3c27ca mov    rax,rsi
3c27cd sub    rax,r14
3c27d0 cmp    rax,0x200000
3c27d6 jge    0x3c2846
3c27d8 mov    ecx,DWORD PTR [rbp-0x28]
3c27db movaps xmm1,xmm9
3c27df call   0x392298
3c27e4 mov    ebx,eax
3c27e6 lea    r8,[rbp-0x50]
3c27ea mov    rax,QWORD PTR [rbp-0x70]
3c27ee lea    rdx,[rbp-0x40]
3c27f2 lea    rcx,[rbp-0x18]
3c27f6 mov    rdi,QWORD PTR [rax+0x298]
3c27fd call   0x3367e4
3c2802 movss  xmm2,DWORD PTR [r15+0x3c30]
3c2809 
3c280b lea    r8,[rbp+0x50]
3c280f mov    rdx,QWORD PTR [r15+0x3c28]
3c2816 xor    ecx,ecx
3c2818 test   r12d,r12d
3c281b mov    r9,rax
3c281e cmovne r8,rcx
3c2822 mov    rcx,rdi
3c2825 mov    QWORD PTR [rsp+0x40],r8
3c282a movss  DWORD PTR [rsp+0x38],xmm10
3c2831 mov    QWORD PTR [rsp+0x30],rsi
3c2836 mov    QWORD PTR [rsp+0x28],r14
3c283b mov    DWORD PTR [rsp+0x20],ebx
3c283f call   0x3a31f8
3c2844 xor    ebx,ebx
3c2846 cmp    BYTE PTR [rsp+0x51],bl
3c284a je     0x3c2924
3c2850 movss  xmm0,DWORD PTR [r15+0x18]
3c2856 lea    r8,[rbp-0x20]
3c285a addss  xmm0,DWORD PTR [r13+0xe80]
3c2861 
3c2863 lea    rdx,[rbp-0x40]
3c2867 lea    rcx,[rbp-0x18]
3c286b movss  DWORD PTR [r13+0xe80],xmm0
3c2872 
3c2874 call   0x2ef9d8
3c2879 mov    rdx,rax
3c287c lea    r8,[rbp-0x50]
3c2880 lea    rcx,[rbp+0x80]
3c2887 call   0x3367e4
3c288c mov    rdx,rax
3c288f lea    rcx,[rbp-0x48]
3c2893 call   0x39307c
3c2898 movss  xmm7,DWORD PTR [rbp-0x44]
3c289d lea    rcx,[rbp+0x88]
3c28a4 movss  xmm8,DWORD PTR [rbp-0x48]
3c28aa movaps xmm2,xmm7
3c28ad subss  xmm2,DWORD PTR [r15+0x3c30]
3c28b4 
3c28b6 movaps xmm0,xmm7
3c28b9 movaps xmm3,xmm8
3c28bd subss  xmm0,DWORD PTR [rip+0xffffffffffecb237]        # 0x28dafc
3c28c4 
3c28c5 addss  xmm3,xmm9
3c28ca movaps xmm1,xmm8
3c28ce addss  xmm2,xmm11
3c28d3 movss  DWORD PTR [rsp+0x20],xmm0
3c28d9 call   0x38baf4
3c28de cmp    DWORD PTR [rsp+0x64],ebx
3c28e2 jne    0x3c2924
3c28e4 movss  xmm6,DWORD PTR [r15+0x3c30]
3c28eb 
3c28ed subss  xmm8,xmm9
3c28f2 subss  xmm7,xmm6
3c28f6 mov    BYTE PTR [r15+0x5bd8],0x1
3c28fd 
3c28fe lea    rcx,[rbp-0x18]
3c2902 movaps xmm1,xmm8
3c2906 movaps xmm2,xmm7
3c2909 call   0x2cc340
3c290e movsd  xmm0,QWORD PTR [rax]
3c2912 movsd  QWORD PTR [r15+0x5bdc],xmm0
3c2919 
3c291b movss  DWORD PTR [r15+0x5be4],xmm6
3c2922 
3c2924 mov    r14d,DWORD PTR [rsp+0x60]
3c2929 mov    ebx,DWORD PTR [rbp-0x58]
3c292c xor    edi,edi
3c292e mov    r13b,BYTE PTR [rsp+0x59]
3c2933 test   ebx,ebx
3c2935 je     0x3c2941
3c2937 test   r13b,r13b
3c293a jne    0x3c2941
3c293c call   0x39881c
3c2941 test   r12d,r12d
3c2944 je     0x3c29d2
3c294a movss  xmm2,DWORD PTR [rbp-0x74]
3c294f lea    rcx,[rbp-0x18]
3c2953 addss  xmm2,DWORD PTR [r15+0x3810]
3c295a 
3c295c movss  xmm1,DWORD PTR [rbp-0x78]
3c2961 call   0x2cc340
3c2966 mov    rcx,rax
3c2969 call   0x3bfe4c
3c296e mov    ebx,DWORD PTR [r15+0x4788]
3c2975 mov    eax,ebx
3c2977 or     eax,0x401
3c297c mov    DWORD PTR [r15+0x4788],eax
3c2983 call   0x390a88
3c2988 mov    eax,DWORD PTR [r15+0x47ac]
3c298f mov    edi,DWORD PTR [rbp+0xb0]
3c2995 and    eax,0x80
3c299a or     edi,eax
3c299c mov    DWORD PTR [r15+0x4788],ebx
3c29a3 call   0x390efc
3c29a8 cmp    DWORD PTR [r15+0x47a4],0x0
3c29af 
3c29b0 mov    ebx,DWORD PTR [rbp-0x58]
3c29b3 jne    0x3c29d0
3c29b5 mov    eax,DWORD PTR [rbp+0xac]
3c29bb mov    DWORD PTR [r15+0x47a8],eax
3c29c2 mov    DWORD PTR [r15+0x47a4],r14d
3c29c9 mov    DWORD PTR [r15+0x47ac],edi
3c29d0 xor    edi,edi
3c29d2 cmp    BYTE PTR [r15+0x5c90],dil
3c29d9 je     0x3c2a0a
3c29db test   ebx,ebx
3c29dd je     0x3c29e4
3c29df test   r13b,r13b
3c29e2 je     0x3c2a0a
3c29e4 lea    rdx,[rip+0xffffffffffeeaee1]        # 0x2ad8cc
3c29eb lea    rcx,[rip+0xffffffffffeeaede]        # 0x2ad8d0
3c29f2 call   0x395020
3c29f7 mov    rdx,QWORD PTR [rbp+0x1e0]
3c29fe lea    rcx,[rbp-0x40]
3c2a02 mov    r8,rsi
3c2a05 call   0x394e5c
3c2a0a movss  xmm0,DWORD PTR [rbp+0x48]
3c2a0f comiss xmm0,xmm10
3c2a13 jbe    0x3c2a4f
3c2a15 movss  xmm2,DWORD PTR [rbp-0x34]
3c2a1a lea    rcx,[rbp-0x18]
3c2a1e movss  xmm1,DWORD PTR [rbp-0x30]
3c2a23 addss  xmm2,DWORD PTR [r15+0x3810]
3c2a2a 
3c2a2c addss  xmm1,DWORD PTR [r15+0x3824]
3c2a33 
3c2a35 call   0x2cc340
3c2a3a mov    rdx,QWORD PTR [rbp+0x1d0]
3c2a41 mov    r9b,0x1
3c2a44 xor    r8d,r8d
3c2a47 mov    rcx,QWORD PTR [rax]
3c2a4a call   0x399994
3c2a4f movzx  esi,BYTE PTR [rsp+0x55]
3c2a54 mov    ebx,DWORD PTR [rbp+0x1f8]
3c2a5a test   sil,sil
3c2a5d je     0x3c2a6d
3c2a5f bt     ebx,0x1b
3c2a63 jb     0x3c2a6d
3c2a65 mov    ecx,r14d
3c2a68 call   0x395130
3c2a6d movzx  ecx,BYTE PTR [rsp+0x58]
3c2a72 test   bl,0x20
3c2a75 mov    eax,esi
3c2a77 cmovne eax,ecx
3c2a7a jmp    0x3c073d
