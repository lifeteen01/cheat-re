; closure independent pdata/next-pdata extent 3bfef4..3bff14 unwind0
3bfef4 test   ecx,ecx
3bfef6 je     0x3bff0e
3bfef8 mov    rax,QWORD PTR [rip+0x45c29]        # 0x405b28
3bfeff cmp    DWORD PTR [rax+0x4c20],ecx
3bff05 jne    0x3bff0e
3bff07 add    rax,0x4c18
3bff0d ret
3bff0e xor    eax,eax
3bff10 ret
3bff11 int3
3bff12 int3
3bff13 int3

; closure independent pdata/next-pdata extent 3bfd58..3bfd64 unwind0
3bfd58 mov    DWORD PTR [rcx+0xe80],0xbe99999a
3bfd5f 
3bfd62 ret
3bfd63 int3

; closure independent pdata/next-pdata extent 3bfd64..3bfda1 unwind3d2064
3bfd64 sub    rsp,0x28
3bfd68 mov    edx,DWORD PTR [rcx+0xc]
3bfd6b mov    r8,rcx
3bfd6e mov    ecx,DWORD PTR [rcx+0x54]
3bfd71 call   0x38019c
3bfd76 mov    edx,DWORD PTR [r8+0xc]
3bfd7a mov    ecx,DWORD PTR [r8+0x58]
3bfd7e mov    DWORD PTR [r8+0x54],eax
3bfd82 call   0x38019c
3bfd87 mov    edx,DWORD PTR [r8+0xc]
3bfd8b mov    ecx,DWORD PTR [r8+0x5c]
3bfd8f mov    DWORD PTR [r8+0x58],eax
3bfd93 call   0x38019c
3bfd98 mov    DWORD PTR [r8+0x5c],eax
3bfd9c add    rsp,0x28
3bfda0 ret

; closure independent pdata/next-pdata extent 3c0020..3c00d4 unwind0
3c0020 mov    eax,DWORD PTR [rcx+0x5c]
3c0023 cmp    DWORD PTR [rcx+0x58],eax
3c0026 setne  al
3c0029 ret
3c002a int3
3c002b int3
3c002c andps  xmm0,XMMWORD PTR [rip+0xffffffffffeed99d]        # 0x2ad9d0
3c0033 ret
3c0034 jmp    0x3c8c68
3c0039 int3
3c003a int3
3c003b int3
3c003c jmp    0x3c8c50
3c0041 int3
3c0042 int3
3c0043 int3
3c0044 mov    r8b,0x25
3c0047 mov    rdx,rcx
3c004a cmp    BYTE PTR [rcx],r8b
3c004d je     0x3c0053
3c004f mov    rax,rcx
3c0052 ret
3c0053 lea    eax,[r8-0x41]
3c0057 cmp    al,0x19
3c0059 ja     0x3c0070
3c005b movsx  ecx,r8b
3c005f mov    eax,0x1
3c0064 sub    ecx,0x41
3c0067 shl    eax,cl
3c0069 test   eax,0x900
3c006e je     0x3c009c
3c0070 lea    eax,[r8-0x61]
3c0074 cmp    al,0x19
3c0076 ja     0x3c008d
3c0078 movsx  ecx,r8b
3c007c mov    eax,0x1
3c0081 sub    ecx,0x61
3c0084 shl    eax,cl
3c0086 test   eax,0x2480a80
3c008b je     0x3c009c
3c008d inc    rdx
3c0090 mov    r8b,BYTE PTR [rdx]
3c0093 test   r8b,r8b
3c0096 jne    0x3c0053
3c0098 mov    rax,rdx
3c009b ret
3c009c lea    rax,[rdx+0x1]
3c00a0 ret
3c00a1 int3
3c00a2 int3
3c00a3 int3
3c00a4 mov    dl,BYTE PTR [rcx]
3c00a6 test   dl,dl
3c00a8 je     0x3c00cd
3c00aa mov    r8b,0x25
3c00ad cmp    dl,r8b
3c00b0 jne    0x3c00b8
3c00b2 cmp    BYTE PTR [rcx+0x1],r8b
3c00b6 jne    0x3c00cd
3c00b8 cmp    dl,r8b
3c00bb lea    rax,[rcx+0x1]
3c00bf cmovne rax,rcx
3c00c3 lea    rcx,[rax+0x1]
3c00c7 mov    dl,BYTE PTR [rcx]
3c00c9 test   dl,dl
3c00cb jne    0x3c00ad
3c00cd mov    rax,rcx
3c00d0 ret
3c00d1 int3
3c00d2 int3
3c00d3 int3

; closure independent pdata/next-pdata extent 3bff14..3bff58 unwind3d20e4
3bff14 rex push rbx
3bff16 sub    rsp,0x40
3bff1a mov    rbx,rcx
3bff1d lea    rcx,[rsp+0x58]
3bff22 test   edx,edx
3bff24 jne    0x3bff32
3bff26 lea    rdx,[rsp+0x20]
3bff2b call   0x3bc2f8
3bff30 jmp    0x3bff3c
3bff32 lea    rdx,[rsp+0x29]
3bff37 call   0x3bc37c
3bff3c mov    rcx,rax
3bff3f call   0x39e924
3bff44 mov    rdx,rax
3bff47 xor    r8d,r8d
3bff4a mov    rcx,rbx
3bff4d call   0x392614
3bff52 add    rsp,0x40
3bff56 pop    rbx
3bff57 ret

; closure independent pdata/next-pdata extent 3c6904..3c690c unwind0
3c6904 jmp    0x3c6454
3c6909 int3
3c690a int3
3c690b int3

; closure independent pdata/next-pdata extent 3c3890..3c38a8 unwind0
3c3890 mov    eax,DWORD PTR [rcx+0xc]
3c3893 mov    DWORD PTR [rcx+0x5c],eax
3c3896 mov    DWORD PTR [rcx+0x54],eax
3c3899 mov    DWORD PTR [rcx+0x58],0x0
3c38a0 mov    BYTE PTR [rcx+0x6a],0x0
3c38a4 ret
3c38a5 int3
3c38a6 int3
3c38a7 int3

; closure independent pdata/next-pdata extent 3c6494..3c64f2 unwind3d5a1c
3c6494 mov    QWORD PTR [rsp+0x8],rbx
3c6499 push   rdi
3c649a sub    rsp,0x50
3c649e cmp    BYTE PTR [rdx+0x17],0x0
3c64a2 mov    rbx,rdx
3c64a5 movaps XMMWORD PTR [rsp+0x40],xmm6
3c64aa mov    rdi,rcx
3c64ad movaps xmm6,xmm2
3c64b0 je     0x3c64c8
3c64b2 mov    rdx,rcx
3c64b5 xor    r8d,r8d
3c64b8 lea    rcx,[rsp+0x20]
3c64bd call   0x3c30b8
3c64c2 movss  xmm3,DWORD PTR [rsp+0x2c]
3c64c8 movaps xmm2,xmm3
3c64cb movaps xmm1,xmm6
3c64ce mov    rcx,rdi
3c64d1 call   0x3c5fb4
3c64d6 movaps xmm6,XMMWORD PTR [rsp+0x40]
3c64db mov    DWORD PTR [rbx],eax
3c64dd mov    DWORD PTR [rbx+0x4],eax
3c64e0 mov    DWORD PTR [rbx+0x8],eax
3c64e3 mov    BYTE PTR [rbx+0x16],0x0
3c64e7 mov    rbx,QWORD PTR [rsp+0x60]
3c64ec add    rsp,0x50
3c64f0 pop    rdi
3c64f1 ret

; closure independent pdata/next-pdata extent 3c31a0..3c31e5 unwind3d2054
3c31a0 mov    QWORD PTR [rsp+0x8],rbx
3c31a5 mov    QWORD PTR [rsp+0x10],rsi
3c31aa push   rdi
3c31ab sub    rsp,0x20
3c31af mov    edi,DWORD PTR [rcx+0xc]
3c31b2 lea    ebx,[rdx+0x1]
3c31b5 mov    rsi,rcx
3c31b8 jmp    0x3c31ca
3c31ba mov    edx,ebx
3c31bc mov    rcx,rsi
3c31bf call   0x3c5d14
3c31c4 test   eax,eax
3c31c6 jne    0x3c31ce
3c31c8 inc    ebx
3c31ca cmp    ebx,edi
3c31cc jl     0x3c31ba
3c31ce mov    rsi,QWORD PTR [rsp+0x38]
3c31d3 cmp    ebx,edi
3c31d5 cmovg  ebx,edi
3c31d8 mov    eax,ebx
3c31da mov    rbx,QWORD PTR [rsp+0x30]
3c31df add    rsp,0x20
3c31e3 pop    rdi
3c31e4 ret

; closure independent pdata/next-pdata extent 3c6418..3c6453 unwind3d2064
3c6418 sub    rsp,0x28
3c641c call   0x3c3230
3c6421 mov    r8d,DWORD PTR [rdx+0x8]
3c6425 mov    ecx,DWORD PTR [rdx+0x4]
3c6428 cmp    ecx,r8d
3c642b je     0x3c6448
3c642d cmp    ecx,eax
3c642f jle    0x3c6436
3c6431 mov    DWORD PTR [rdx+0x4],eax
3c6434 mov    ecx,eax
3c6436 cmp    r8d,eax
3c6439 jle    0x3c6441
3c643b mov    DWORD PTR [rdx+0x8],eax
3c643e mov    r8d,eax
3c6441 cmp    ecx,r8d
3c6444 jne    0x3c6448
3c6446 mov    DWORD PTR [rdx],ecx
3c6448 cmp    DWORD PTR [rdx],eax
3c644a jle    0x3c644e
3c644c mov    DWORD PTR [rdx],eax
3c644e add    rsp,0x28
3c6452 ret

; closure independent pdata/next-pdata extent 3c64f4..3c651d unwind3d2038
3c64f4 rex push rbx
3c64f6 sub    rsp,0x20
3c64fa mov    eax,DWORD PTR [rdx+0x8]
3c64fd mov    rbx,rdx
3c6500 cmp    DWORD PTR [rdx+0x4],eax
3c6503 je     0x3c6515
3c6505 call   0x3c6554
3c650a mov    eax,0x1
3c650f mov    BYTE PTR [rbx+0x16],0x0
3c6513 jmp    0x3c6517
3c6515 xor    eax,eax
3c6517 add    rsp,0x20
3c651b pop    rbx
3c651c ret

; closure independent pdata/next-pdata extent 3c2e94..3c2ebd unwind3d2038
3c2e94 rex push rbx
3c2e96 sub    rsp,0x20
3c2e9a mov    r8d,edx
3c2e9d mov    rbx,rcx
3c2ea0 lea    rdx,[rcx+0x54]
3c2ea4 call   0x3c690c
3c2ea9 mov    rcx,rbx
3c2eac mov    BYTE PTR [rbx+0xe84],0x1
3c2eb3 add    rsp,0x20
3c2eb7 pop    rbx
3c2eb8 jmp    0x3bfd58

; closure independent pdata/next-pdata extent 3c2f30..3c2f45 unwind3d2064
3c2f30 sub    rsp,0x28
3c2f34 add    rcx,0x18
3c2f38 call   0x39f604
3c2f3d movzx  eax,WORD PTR [rax]
3c2f40 add    rsp,0x28
3c2f44 ret

; closure independent pdata/next-pdata extent 3c6730..3c6794 unwind3d5a1c
3c6730 mov    QWORD PTR [rsp+0x8],rbx
3c6735 push   rdi
3c6736 sub    rsp,0x50
3c673a cmp    BYTE PTR [rdx+0x17],0x0
3c673e mov    rbx,rdx
3c6741 movaps XMMWORD PTR [rsp+0x40],xmm6
3c6746 mov    rdi,rcx
3c6749 movaps xmm6,xmm2
3c674c je     0x3c6764
3c674e mov    rdx,rcx
3c6751 xor    r8d,r8d
3c6754 lea    rcx,[rsp+0x20]
3c6759 call   0x3c30b8
3c675e movss  xmm3,DWORD PTR [rsp+0x2c]
3c6764 mov    eax,DWORD PTR [rbx+0x8]
3c6767 cmp    DWORD PTR [rbx+0x4],eax
3c676a jne    0x3c6771
3c676c mov    eax,DWORD PTR [rbx]
3c676e mov    DWORD PTR [rbx+0x4],eax
3c6771 movaps xmm2,xmm3
3c6774 movaps xmm1,xmm6
3c6777 mov    rcx,rdi
3c677a call   0x3c5fb4
3c677f movaps xmm6,XMMWORD PTR [rsp+0x40]
3c6784 mov    DWORD PTR [rbx+0x8],eax
3c6787 mov    DWORD PTR [rbx],eax
3c6789 mov    rbx,QWORD PTR [rsp+0x60]
3c678e add    rsp,0x50
3c6792 pop    rdi
3c6793 ret

; closure independent pdata/next-pdata extent 3c0364..3c03a8 unwind0
3c0364 mov    r10b,BYTE PTR [rcx]
3c0367 lea    r9,[rcx+0x1]
3c036b xor    r8d,r8d
3c036e jmp    0x3c0385
3c0370 cmp    r10b,0xa
3c0374 lea    eax,[r8+0x1]
3c0378 mov    r10b,BYTE PTR [r9]
3c037b cmovne eax,r8d
3c037f inc    r9
3c0382 mov    r8d,eax
3c0385 test   r10b,r10b
3c0388 jne    0x3c0370
3c038a lea    rcx,[r9-0x1]
3c038e cmp    BYTE PTR [rcx],0xa
3c0391 je     0x3c03a0
3c0393 cmp    BYTE PTR [rcx],0xd
3c0396 lea    eax,[r8+0x1]
3c039a cmove  eax,r8d
3c039e jmp    0x3c03a3
3c03a0 mov    eax,r8d
3c03a3 mov    QWORD PTR [rdx],rcx
3c03a6 ret
3c03a7 int3

; closure independent pdata/next-pdata extent 3c03a8..3c04d0 unwind3d58dc
3c03a8 rex push rbx
3c03aa push   rbp
3c03ab push   rsi
3c03ac push   rdi
3c03ad sub    rsp,0x58
3c03b1 mov    rbp,QWORD PTR [rdx+0x3c28]
3c03b8 xorps  xmm2,xmm2
3c03bb movaps XMMWORD PTR [rsp+0x40],xmm6
3c03c0 xorps  xmm1,xmm1
3c03c3 movaps XMMWORD PTR [rsp+0x30],xmm7
3c03c8 mov    rsi,r9
3c03cb movss  xmm7,DWORD PTR [rdx+0x3c30]
3c03d2 
3c03d3 mov    rdi,r8
3c03d6 movaps XMMWORD PTR [rsp+0x20],xmm9
3c03dc mov    rbx,rcx
3c03df movaps xmm9,xmm7
3c03e3 divss  xmm9,DWORD PTR [rbp+0x14]
3c03e9 call   0x2cc340
3c03ee xorps  xmm6,xmm6
3c03f1 jmp    0x3c0446
3c03f3 movzx  edx,WORD PTR [rdi]
3c03f6 add    rdi,0x2
3c03fa cmp    dx,0xa
3c03fe jne    0x3c042c
3c0400 movss  xmm0,DWORD PTR [rbx]
3c0404 movaps xmm1,xmm6
3c0407 call   0x38a3f4
3c040c cmp    BYTE PTR [rsp+0xb0],0x0
3c0413 
3c0414 movaps xmm1,xmm7
3c0417 addss  xmm1,DWORD PTR [rbx+0x4]
3c041c movss  DWORD PTR [rbx],xmm0
3c0420 xorps  xmm6,xmm6
3c0423 movss  DWORD PTR [rbx+0x4],xmm1
3c0428 jne    0x3c044b
3c042a jmp    0x3c0446
3c042c cmp    dx,0xd
3c0430 je     0x3c0446
3c0432 mov    rcx,rbp
3c0435 call   0x3bfed4
3c043a mulss  xmm0,xmm9
3c043f addss  xmm0,xmm6
3c0443 movaps xmm6,xmm0
3c0446 cmp    rdi,rsi
3c0449 jb     0x3c03f3
3c044b comiss xmm6,DWORD PTR [rbx]
3c044e jbe    0x3c0454
3c0450 movss  DWORD PTR [rbx],xmm6
3c0454 mov    rsi,QWORD PTR [rsp+0xa8]
3c045b 
3c045c test   rsi,rsi
3c045f je     0x3c0481
3c0461 movaps xmm2,xmm7
3c0464 lea    rcx,[rsp+0xa8]
3c046b 
3c046c addss  xmm2,DWORD PTR [rbx+0x4]
3c0471 movaps xmm1,xmm6
3c0474 call   0x2cc340
3c0479 movsd  xmm0,QWORD PTR [rax]
3c047d movsd  QWORD PTR [rsi],xmm0
3c0481 comiss xmm6,DWORD PTR [rip+0xffffffffffeccdc4]        # 0x28d24c
3c0488 ja     0x3c049a
3c048a movss  xmm0,DWORD PTR [rbx+0x4]
3c048f ucomiss xmm0,DWORD PTR [rip+0xffffffffffeccdb6]        # 0x28d24c
3c0496 jp     0x3c04a4
3c0498 jne    0x3c04a4
3c049a addss  xmm7,DWORD PTR [rbx+0x4]
3c049f movss  DWORD PTR [rbx+0x4],xmm7
3c04a4 mov    rax,QWORD PTR [rsp+0xa0]
3c04ab 
3c04ac test   rax,rax
3c04af je     0x3c04b4
3c04b1 mov    QWORD PTR [rax],rdi
3c04b4 movaps xmm6,XMMWORD PTR [rsp+0x40]
3c04b9 mov    rax,rbx
3c04bc movaps xmm7,XMMWORD PTR [rsp+0x30]
3c04c1 movaps xmm9,XMMWORD PTR [rsp+0x20]
3c04c7 add    rsp,0x58
3c04cb pop    rdi
3c04cc pop    rsi
3c04cd pop    rbp
3c04ce pop    rbx
3c04cf ret

; closure independent pdata/next-pdata extent 3bfe4c..3bfebb unwind3d2348
3bfe4c mov    QWORD PTR [rsp+0x8],rbx
3bfe51 push   rdi
3bfe52 sub    rsp,0x30
3bfe56 mov    rdi,rcx
3bfe59 call   0x35d200
3bfe5e cmp    BYTE PTR [rax+0xbb],0x0
3bfe65 jne    0x3bfeb0
3bfe67 lea    rbx,[rax+0x100]
3bfe6e mov    r8,rdi
3bfe71 mov    rdx,rbx
3bfe74 lea    rcx,[rsp+0x48]
3bfe79 call   0x2ef9d8
3bfe7e mov    r8,rax
3bfe81 lea    rcx,[rsp+0x20]
3bfe86 mov    rdx,rbx
3bfe89 call   0x2db388
3bfe8e movss  xmm1,DWORD PTR [rip+0xffffffffffed33ca]        # 0x293260
3bfe95 
3bfe96 mov    rcx,rdi
3bfe99 call   0x394b40
3bfe9e xor    r9d,r9d
3bfea1 lea    rcx,[rsp+0x20]
3bfea6 xor    r8d,r8d
3bfea9 xor    edx,edx
3bfeab call   0x3948dc
3bfeb0 mov    rbx,QWORD PTR [rsp+0x40]
3bfeb5 add    rsp,0x30
3bfeb9 pop    rdi
3bfeba ret

; closure independent pdata/next-pdata extent 3bfed4..3bfef3 unwind3d2064
3bfed4 sub    rsp,0x28
3bfed8 movzx  edx,dx
3bfedb cmp    edx,DWORD PTR [rcx]
3bfedd jge    0x3bfee6
3bfedf call   0x38bb78
3bfee4 jmp    0x3bfeea
3bfee6 lea    rax,[rcx+0x10]
3bfeea movss  xmm0,DWORD PTR [rax]
3bfeee add    rsp,0x28
3bfef2 ret

; closure independent pdata/next-pdata extent 3c2a80..3c2c44 unwind3d2588
3c2a80 rex push rbx
3c2a82 push   rbp
3c2a83 push   rsi
3c2a84 push   rdi
3c2a85 push   r14
3c2a87 push   r15
3c2a89 sub    rsp,0x68
3c2a8d mov    ebx,DWORD PTR [rcx]
3c2a8f xor    r15d,r15d
3c2a92 mov    edi,edx
3c2a94 mov    rbp,r9
3c2a97 mov    r14,r8
3c2a9a mov    rsi,rcx
3c2a9d mov    dl,0x1
3c2a9f cmp    ebx,0x20
3c2aa2 jae    0x3c2acc
3c2aa4 cmp    ebx,0xa
3c2aa7 jne    0x3c2ab3
3c2aa9 bt     edi,0x1a
3c2aad jae    0x3c2ab3
3c2aaf mov    al,dl
3c2ab1 jmp    0x3c2ac1
3c2ab3 mov    al,r15b
3c2ab6 cmp    ebx,0x9
3c2ab9 jne    0x3c2ac1
3c2abb bt     edi,0xa
3c2abf jb     0x3c2ac9
3c2ac1 test   al,al
3c2ac3 je     0x3c2c35
3c2ac9 mov    dl,r15b
3c2acc cmp    DWORD PTR [rsp+0xc0],0x4
3c2ad3 
3c2ad4 je     0x3c2af0
3c2ad6 cmp    ebx,0x7f
3c2ad9 je     0x3c2c35
3c2adf lea    eax,[rbx-0xe000]
3c2ae5 cmp    eax,0x18ff
3c2aea jbe    0x3c2c35
3c2af0 cmp    ebx,0xffff
3c2af6 ja     0x3c2c35
3c2afc test   dl,dl
3c2afe je     0x3c2be4
3c2b04 test   edi,0x2000f
3c2b0a je     0x3c2be4
3c2b10 mov    rax,QWORD PTR [rip+0x43011]        # 0x405b28
3c2b17 movsx  edx,BYTE PTR [rax+0x5bf8]
3c2b1e test   edi,0x20003
3c2b24 je     0x3c2b3a
3c2b26 lea    eax,[rbx-0xff01]
3c2b2c mov    ecx,ebx
3c2b2e add    ebx,0xffff0120
3c2b34 cmp    eax,0x5d
3c2b37 cmova  ebx,ecx
3c2b3a test   dil,0x1
3c2b3e je     0x3c2b69
3c2b40 lea    eax,[rbx-0x30]
3c2b43 cmp    eax,0x9
3c2b46 jbe    0x3c2b69
3c2b48 cmp    ebx,edx
3c2b4a je     0x3c2b69
3c2b4c cmp    ebx,0x2f
3c2b4f ja     0x3c2c35
3c2b55 movabs rcx,0xac0000000000
3c2b5c 
3c2b5f bt     rcx,rbx
3c2b63 jae    0x3c2c35
3c2b69 bt     edi,0x11
3c2b6d jae    0x3c2b9b
3c2b6f lea    eax,[rbx-0x30]
3c2b72 cmp    eax,0x9
3c2b75 jbe    0x3c2b9b
3c2b77 cmp    ebx,edx
3c2b79 je     0x3c2b9b
3c2b7b lea    eax,[rbx-0x2a]
3c2b7e cmp    eax,0x3b
3c2b81 ja     0x3c2c35
3c2b87 movabs rcx,0x80000000800002b
3c2b8e 
3c2b91 bt     rcx,rax
3c2b95 jae    0x3c2c35
3c2b9b test   dil,0x2
3c2b9f je     0x3c2bbd
3c2ba1 lea    eax,[rbx-0x30]
3c2ba4 cmp    eax,0x36
3c2ba7 ja     0x3c2c35
3c2bad movabs rcx,0x7e0000007e03ff
3c2bb4 
3c2bb7 bt     rcx,rax
3c2bbb jae    0x3c2c35
3c2bbd test   dil,0x4
3c2bc1 je     0x3c2bd1
3c2bc3 lea    eax,[rbx-0x61]
3c2bc6 mov    ecx,ebx
3c2bc8 add    ebx,0xffffffe0
3c2bcb cmp    eax,0x19
3c2bce cmova  ebx,ecx
3c2bd1 test   dil,0x8
3c2bd5 je     0x3c2be2
3c2bd7 mov    ecx,ebx
3c2bd9 call   0x3a4b10
3c2bde test   al,al
3c2be0 jne    0x3c2c35
3c2be2 mov    DWORD PTR [rsi],ebx
3c2be4 bt     edi,0x9
3c2be8 jae    0x3c2c31
3c2bea lea    rcx,[rsp+0x20]
3c2bef call   0x3bc268
3c2bf4 mov    rax,QWORD PTR [rip+0x42f2d]        # 0x405b28
3c2bfb lea    rcx,[rsp+0x20]
3c2c00 mov    QWORD PTR [rsp+0x20],rax
3c2c05 mov    DWORD PTR [rsp+0x28],0x200
3c2c0c 
3c2c0d mov    WORD PTR [rsp+0x38],bx
3c2c12 mov    DWORD PTR [rsp+0x2c],edi
3c2c16 mov    QWORD PTR [rsp+0x30],rbp
3c2c1b call   r14
3c2c1e test   eax,eax
3c2c20 jne    0x3c2c35
3c2c22 movzx  ecx,WORD PTR [rsp+0x38]
3c2c27 test   cx,cx
3c2c2a mov    DWORD PTR [rsi],ecx
3c2c2c setne  al
3c2c2f jmp    0x3c2c37
3c2c31 mov    al,0x1
3c2c33 jmp    0x3c2c37
3c2c35 xor    al,al
3c2c37 add    rsp,0x68
3c2c3b pop    r15
3c2c3d pop    r14
3c2c3f pop    rdi
3c2c40 pop    rsi
3c2c41 pop    rbp
3c2c42 pop    rbx
3c2c43 ret

; closure independent pdata/next-pdata extent 3bde24..3bde30 unwind0
3bde24 mov    eax,DWORD PTR [rcx+0x54]
3bde27 mov    DWORD PTR [rcx+0x5c],eax
3bde2a mov    DWORD PTR [rcx+0x58],eax
3bde2d ret
3bde2e int3
3bde2f int3

; closure independent pdata/next-pdata extent 393ba4..393c35 unwind3d4744
393ba4 mov    QWORD PTR [rsp+0x8],rbx
393ba9 mov    QWORD PTR [rsp+0x18],rbp
393bae push   rsi
393baf push   rdi
393bb0 push   r14
393bb2 sub    rsp,0x20
393bb6 movsxd rax,edx
393bb9 lea    r14,[rcx-0x2]
393bbd mov    rsi,r9
393bc0 mov    rdi,r8
393bc3 mov    rbp,rcx
393bc6 mov    rbx,rcx
393bc9 lea    r14,[r14+rax*2]
393bcd cmp    rcx,r14
393bd0 jae    0x393c08
393bd2 test   rsi,rsi
393bd5 je     0x393bdc
393bd7 cmp    rdi,rsi
393bda jae    0x393c08
393bdc cmp    BYTE PTR [rdi],0x0
393bdf je     0x393c08
393be1 mov    r8,rsi
393be4 lea    rcx,[rsp+0x48]
393be9 mov    rdx,rdi
393bec call   0x39357c
393bf1 movsxd rcx,eax
393bf4 movzx  eax,WORD PTR [rsp+0x48]
393bf9 add    rdi,rcx
393bfc mov    WORD PTR [rbx],ax
393bff add    rbx,0x2
393c03 cmp    rbx,r14
393c06 jb     0x393bd2
393c08 mov    rax,QWORD PTR [rsp+0x60]
393c0d xor    ecx,ecx
393c0f mov    WORD PTR [rbx],cx
393c12 test   rax,rax
393c15 je     0x393c1a
393c17 mov    QWORD PTR [rax],rdi
393c1a sub    rbx,rbp
393c1d mov    rbp,QWORD PTR [rsp+0x50]
393c22 sar    rbx,1
393c25 mov    eax,ebx
393c27 mov    rbx,QWORD PTR [rsp+0x40]
393c2c add    rsp,0x20
393c30 pop    r14
393c32 pop    rdi
393c33 pop    rsi
393c34 ret

; closure independent pdata/next-pdata extent 393c38..393cba unwind3d2308
393c38 rex push rbx
393c3a push   rbp
393c3b push   rsi
393c3c push   rdi
393c3d push   r14
393c3f sub    rsp,0x20
393c43 movsxd rdi,edx
393c46 xor    r14d,r14d
393c49 add    rdi,rcx
393c4c mov    rsi,r9
393c4f mov    r11,r8
393c52 mov    rbx,rcx
393c55 mov    r10,rcx
393c58 lea    rbp,[rdi-0x1]
393c5c cmp    rcx,rbp
393c5f jae    0x393ca6
393c61 test   rsi,rsi
393c64 je     0x393c6b
393c66 cmp    r11,rsi
393c69 jae    0x393ca6
393c6b movzx  eax,WORD PTR [r11]
393c6f test   ax,ax
393c72 je     0x393ca6
393c74 add    r11,0x2
393c78 mov    ecx,0x80
393c7d cmp    ax,cx
393c80 jae    0x393c8a
393c82 mov    BYTE PTR [r10],al
393c85 lea    eax,[rcx-0x7f]
393c88 jmp    0x393c9e
393c8a mov    edx,edi
393c8c mov    r8d,eax
393c8f sub    edx,r10d
393c92 mov    rcx,r10
393c95 dec    edx
393c97 call   0x393a04
393c9c cdqe
393c9e add    r10,rax
393ca1 cmp    r10,rbp
393ca4 jb     0x393c61
393ca6 mov    BYTE PTR [r10],r14b
393ca9 sub    r10d,ebx
393cac mov    eax,r10d
393caf add    rsp,0x20
393cb3 pop    r14
393cb5 pop    rdi
393cb6 pop    rsi
393cb7 pop    rbp
393cb8 pop    rbx
393cb9 ret

; closure independent pdata/next-pdata extent 393b5c..393ba3 unwind3d2064
393b5c sub    rsp,0x28
393b60 xor    r10d,r10d
393b63 mov    r8,rcx
393b66 mov    r9d,r10d
393b69 test   rdx,rdx
393b6c je     0x393b73
393b6e cmp    r8,rdx
393b71 jae    0x393b9b
393b73 movzx  eax,WORD PTR [r8]
393b77 test   ax,ax
393b7a je     0x393b9b
393b7c add    r8,0x2
393b80 mov    ecx,0x80
393b85 cmp    ax,cx
393b88 jae    0x393b8f
393b8a lea    eax,[rcx-0x7f]
393b8d jmp    0x393b96
393b8f mov    ecx,eax
393b91 call   0x393b24
393b96 add    r9d,eax
393b99 jmp    0x393b69
393b9b mov    eax,r9d
393b9e add    rsp,0x28
393ba2 ret

; closure independent pdata/next-pdata extent 3c6454..3c6494 unwind0
3c6454 xor    r8d,r8d
3c6457 mov    DWORD PTR [rcx+0xe1e],0x630000
3c645e 
3c6461 mov    DWORD PTR [rcx+0xe24],r8d
3c6468 mov    QWORD PTR [rcx+0x4],r8
3c646c mov    DWORD PTR [rcx],r8d
3c646f mov    DWORD PTR [rcx+0x1c],r8d
3c6473 mov    BYTE PTR [rcx+0x14],r8b
3c6477 mov    BYTE PTR [rcx+0xc],r8b
3c647b mov    DWORD PTR [rcx+0x10],r8d
3c647f mov    DWORD PTR [rcx+0xe28],0x3e7
3c6486 
3c6489 mov    WORD PTR [rcx+0x15],0x1
3c648f mov    BYTE PTR [rcx+0x17],dl
3c6492 ret
3c6493 int3

; closure independent pdata/next-pdata extent 3c690c..3c7a48 unwind3d5a48
3c690c mov    DWORD PTR [rsp+0x18],r8d
3c6911 mov    QWORD PTR [rsp+0x10],rdx
3c6916 mov    QWORD PTR [rsp+0x8],rcx
3c691b sub    rsp,0x108
3c6922 cmp    DWORD PTR [rsp+0x120],0x2d
3c6929 
3c692a jne    0x3c695c
3c692c mov    rax,QWORD PTR [rsp+0x118]
3c6933 
3c6934 movzx  eax,BYTE PTR [rax+0xc]
3c6938 test   eax,eax
3c693a jne    0x3c6943
3c693c mov    BYTE PTR [rsp+0x20],0x1
3c6941 jmp    0x3c6948
3c6943 mov    BYTE PTR [rsp+0x20],0x0
3c6948 mov    rax,QWORD PTR [rsp+0x118]
3c694f 
3c6950 mov    cl,BYTE PTR [rsp+0x20]
3c6954 mov    BYTE PTR [rax+0xc],cl
3c6957 jmp    0x3c7a40
3c695c cmp    DWORD PTR [rsp+0x120],0x20000a
3c6963 
3c6967 jne    0x3c698f
3c6969 mov    rdx,QWORD PTR [rsp+0x118]
3c6970 
3c6971 mov    rcx,QWORD PTR [rsp+0x110]
3c6978 
3c6979 call   0x3c62c4
3c697e mov    rax,QWORD PTR [rsp+0x118]
3c6985 
3c6986 mov    BYTE PTR [rax+0x16],0x0
3c698a jmp    0x3c7a40
3c698f cmp    DWORD PTR [rsp+0x120],0x20000b
3c6996 
3c699a jne    0x3c69c2
3c699c mov    rdx,QWORD PTR [rsp+0x118]
3c69a3 
3c69a4 mov    rcx,QWORD PTR [rsp+0x110]
3c69ab 
3c69ac call   0x3c619c
3c69b1 mov    rax,QWORD PTR [rsp+0x118]
3c69b8 
3c69b9 mov    BYTE PTR [rax+0x16],0x0
3c69bd jmp    0x3c7a40
3c69c2 cmp    DWORD PTR [rsp+0x120],0x200000
3c69c9 
3c69cd jne    0x3c6a2b
3c69cf mov    rax,QWORD PTR [rsp+0x118]
3c69d6 
3c69d7 mov    rcx,QWORD PTR [rsp+0x118]
3c69de 
3c69df mov    ecx,DWORD PTR [rcx+0x8]
3c69e2 cmp    DWORD PTR [rax+0x4],ecx
3c69e5 je     0x3c69f7
3c69e7 mov    rcx,QWORD PTR [rsp+0x118]
3c69ee 
3c69ef call   0x3c7a48
3c69f4 nop
3c69f5 jmp    0x3c6a1a
3c69f7 mov    rax,QWORD PTR [rsp+0x118]
3c69fe 
3c69ff cmp    DWORD PTR [rax],0x0
3c6a02 jle    0x3c6a1a
3c6a04 mov    rax,QWORD PTR [rsp+0x118]
3c6a0b 
3c6a0c mov    eax,DWORD PTR [rax]
3c6a0e dec    eax
3c6a10 mov    rcx,QWORD PTR [rsp+0x118]
3c6a17 
3c6a18 mov    DWORD PTR [rcx],eax
3c6a1a mov    rax,QWORD PTR [rsp+0x118]
3c6a21 
3c6a22 mov    BYTE PTR [rax+0x16],0x0
3c6a26 jmp    0x3c7a40
3c6a2b cmp    DWORD PTR [rsp+0x120],0x200001
3c6a32 
3c6a36 jne    0x3c6aa4
3c6a38 mov    rax,QWORD PTR [rsp+0x118]
3c6a3f 
3c6a40 mov    rcx,QWORD PTR [rsp+0x118]
3c6a47 
3c6a48 mov    ecx,DWORD PTR [rcx+0x8]
3c6a4b cmp    DWORD PTR [rax+0x4],ecx
3c6a4e je     0x3c6a68
3c6a50 mov    rdx,QWORD PTR [rsp+0x118]
3c6a57 
3c6a58 mov    rcx,QWORD PTR [rsp+0x110]
3c6a5f 
3c6a60 call   0x3c7a70
3c6a65 nop
3c6a66 jmp    0x3c6a7e
3c6a68 mov    rax,QWORD PTR [rsp+0x118]
3c6a6f 
3c6a70 mov    eax,DWORD PTR [rax]
3c6a72 inc    eax
3c6a74 mov    rcx,QWORD PTR [rsp+0x118]
3c6a7b 
3c6a7c mov    DWORD PTR [rcx],eax
3c6a7e mov    rdx,QWORD PTR [rsp+0x118]
3c6a85 
3c6a86 mov    rcx,QWORD PTR [rsp+0x110]
3c6a8d 
3c6a8e call   0x3c6418
3c6a93 mov    rax,QWORD PTR [rsp+0x118]
3c6a9a 
3c6a9b mov    BYTE PTR [rax+0x16],0x0
3c6a9f jmp    0x3c7a40
3c6aa4 cmp    DWORD PTR [rsp+0x120],0x600000
3c6aab 
3c6aaf jne    0x3c6b20
3c6ab1 mov    rdx,QWORD PTR [rsp+0x118]
3c6ab8 
3c6ab9 mov    rcx,QWORD PTR [rsp+0x110]
3c6ac0 
3c6ac1 call   0x3c6418
3c6ac6 mov    rcx,QWORD PTR [rsp+0x118]
3c6acd 
3c6ace call   0x3c7b10
3c6ad3 nop
3c6ad4 mov    rax,QWORD PTR [rsp+0x118]
3c6adb 
3c6adc cmp    DWORD PTR [rax+0x8],0x0
3c6ae0 jle    0x3c6afa
3c6ae2 mov    rax,QWORD PTR [rsp+0x118]
3c6ae9 
3c6aea mov    eax,DWORD PTR [rax+0x8]
3c6aed dec    eax
3c6aef mov    rcx,QWORD PTR [rsp+0x118]
3c6af6 
3c6af7 mov    DWORD PTR [rcx+0x8],eax
3c6afa mov    rax,QWORD PTR [rsp+0x118]
3c6b01 
3c6b02 mov    rcx,QWORD PTR [rsp+0x118]
3c6b09 
3c6b0a mov    ecx,DWORD PTR [rcx+0x8]
3c6b0d mov    DWORD PTR [rax],ecx
3c6b0f mov    rax,QWORD PTR [rsp+0x118]
3c6b16 
3c6b17 mov    BYTE PTR [rax+0x16],0x0
3c6b1b jmp    0x3c7a40
3c6b20 cmp    DWORD PTR [rsp+0x120],0x20000c
3c6b27 
3c6b2b jne    0x3c6b91
3c6b2d mov    rax,QWORD PTR [rsp+0x118]
3c6b34 
3c6b35 mov    rcx,QWORD PTR [rsp+0x118]
3c6b3c 
3c6b3d mov    ecx,DWORD PTR [rcx+0x8]
3c6b40 cmp    DWORD PTR [rax+0x4],ecx
3c6b43 je     0x3c6b55
3c6b45 mov    rcx,QWORD PTR [rsp+0x118]
3c6b4c 
3c6b4d call   0x3c7a48
3c6b52 nop
3c6b53 jmp    0x3c6b8c
3c6b55 mov    rax,QWORD PTR [rsp+0x118]
3c6b5c 
3c6b5d mov    edx,DWORD PTR [rax]
3c6b5f mov    rcx,QWORD PTR [rsp+0x110]
3c6b66 
3c6b67 call   0x3c3154
3c6b6c mov    rcx,QWORD PTR [rsp+0x118]
3c6b73 
3c6b74 mov    DWORD PTR [rcx],eax
3c6b76 mov    rdx,QWORD PTR [rsp+0x118]
3c6b7d 
3c6b7e mov    rcx,QWORD PTR [rsp+0x110]
3c6b85 
3c6b86 call   0x3c6418
3c6b8b nop
3c6b8c jmp    0x3c7a40
3c6b91 cmp    DWORD PTR [rsp+0x120],0x60000c
3c6b98 
3c6b9c jne    0x3c6c15
3c6b9e mov    rax,QWORD PTR [rsp+0x118]
3c6ba5 
3c6ba6 mov    rcx,QWORD PTR [rsp+0x118]
3c6bad 
3c6bae mov    ecx,DWORD PTR [rcx+0x8]
3c6bb1 cmp    DWORD PTR [rax+0x4],ecx
3c6bb4 jne    0x3c6bc4
3c6bb6 mov    rcx,QWORD PTR [rsp+0x118]
3c6bbd 
3c6bbe call   0x3c7b10
3c6bc3 nop
3c6bc4 mov    rax,QWORD PTR [rsp+0x118]
3c6bcb 
3c6bcc mov    edx,DWORD PTR [rax]
3c6bce mov    rcx,QWORD PTR [rsp+0x110]
3c6bd5 
3c6bd6 call   0x3c3154
3c6bdb mov    rcx,QWORD PTR [rsp+0x118]
3c6be2 
3c6be3 mov    DWORD PTR [rcx],eax
3c6be5 mov    rax,QWORD PTR [rsp+0x118]
3c6bec 
3c6bed mov    rcx,QWORD PTR [rsp+0x118]
3c6bf4 
3c6bf5 mov    ecx,DWORD PTR [rcx]
3c6bf7 mov    DWORD PTR [rax+0x8],ecx
3c6bfa mov    rdx,QWORD PTR [rsp+0x118]
3c6c01 
3c6c02 mov    rcx,QWORD PTR [rsp+0x110]
3c6c09 
3c6c0a call   0x3c6418
3c6c0f nop
3c6c10 jmp    0x3c7a40
3c6c15 cmp    DWORD PTR [rsp+0x120],0x20000d
3c6c1c 
3c6c20 jne    0x3c6c8e
3c6c22 mov    rax,QWORD PTR [rsp+0x118]
3c6c29 
3c6c2a mov    rcx,QWORD PTR [rsp+0x118]
3c6c31 
3c6c32 mov    ecx,DWORD PTR [rcx+0x8]
3c6c35 cmp    DWORD PTR [rax+0x4],ecx
3c6c38 je     0x3c6c52
3c6c3a mov    rdx,QWORD PTR [rsp+0x118]
3c6c41 
3c6c42 mov    rcx,QWORD PTR [rsp+0x110]
3c6c49 
3c6c4a call   0x3c7a70
3c6c4f nop
3c6c50 jmp    0x3c6c89
3c6c52 mov    rax,QWORD PTR [rsp+0x118]
3c6c59 
3c6c5a mov    edx,DWORD PTR [rax]
3c6c5c mov    rcx,QWORD PTR [rsp+0x110]
3c6c63 
3c6c64 call   0x3c318c
3c6c69 mov    rcx,QWORD PTR [rsp+0x118]
3c6c70 
3c6c71 mov    DWORD PTR [rcx],eax
3c6c73 mov    rdx,QWORD PTR [rsp+0x118]
3c6c7a 
3c6c7b mov    rcx,QWORD PTR [rsp+0x110]
3c6c82 
3c6c83 call   0x3c6418
3c6c88 nop
3c6c89 jmp    0x3c7a40
3c6c8e cmp    DWORD PTR [rsp+0x120],0x60000d
3c6c95 
3c6c99 jne    0x3c6d12
3c6c9b mov    rax,QWORD PTR [rsp+0x118]
3c6ca2 
3c6ca3 mov    rcx,QWORD PTR [rsp+0x118]
3c6caa 
3c6cab mov    ecx,DWORD PTR [rcx+0x8]
3c6cae cmp    DWORD PTR [rax+0x4],ecx
3c6cb1 jne    0x3c6cc1
3c6cb3 mov    rcx,QWORD PTR [rsp+0x118]
3c6cba 
3c6cbb call   0x3c7b10
3c6cc0 nop
3c6cc1 mov    rax,QWORD PTR [rsp+0x118]
3c6cc8 
3c6cc9 mov    edx,DWORD PTR [rax]
3c6ccb mov    rcx,QWORD PTR [rsp+0x110]
3c6cd2 
3c6cd3 call   0x3c318c
3c6cd8 mov    rcx,QWORD PTR [rsp+0x118]
3c6cdf 
3c6ce0 mov    DWORD PTR [rcx],eax
3c6ce2 mov    rax,QWORD PTR [rsp+0x118]
3c6ce9 
3c6cea mov    rcx,QWORD PTR [rsp+0x118]
3c6cf1 
3c6cf2 mov    ecx,DWORD PTR [rcx]
3c6cf4 mov    DWORD PTR [rax+0x8],ecx
3c6cf7 mov    rdx,QWORD PTR [rsp+0x118]
3c6cfe 
3c6cff mov    rcx,QWORD PTR [rsp+0x110]
3c6d06 
3c6d07 call   0x3c6418
3c6d0c nop
3c6d0d jmp    0x3c7a40
3c6d12 cmp    DWORD PTR [rsp+0x120],0x600001
3c6d19 
3c6d1d jne    0x3c6d7f
3c6d1f mov    rcx,QWORD PTR [rsp+0x118]
3c6d26 
3c6d27 call   0x3c7b10
3c6d2c mov    rax,QWORD PTR [rsp+0x118]
3c6d33 
3c6d34 mov    eax,DWORD PTR [rax+0x8]
3c6d37 inc    eax
3c6d39 mov    rcx,QWORD PTR [rsp+0x118]
3c6d40 
3c6d41 mov    DWORD PTR [rcx+0x8],eax
3c6d44 mov    rdx,QWORD PTR [rsp+0x118]
3c6d4b 
3c6d4c mov    rcx,QWORD PTR [rsp+0x110]
3c6d53 
3c6d54 call   0x3c6418
3c6d59 mov    rax,QWORD PTR [rsp+0x118]
3c6d60 
3c6d61 mov    rcx,QWORD PTR [rsp+0x118]
3c6d68 
3c6d69 mov    ecx,DWORD PTR [rcx+0x8]
3c6d6c mov    DWORD PTR [rax],ecx
3c6d6e mov    rax,QWORD PTR [rsp+0x118]
3c6d75 
3c6d76 mov    BYTE PTR [rax+0x16],0x0
3c6d7a jmp    0x3c7a40
3c6d7f cmp    DWORD PTR [rsp+0x120],0x200003
3c6d86 
3c6d8a je     0x3c6db7
3c6d8c cmp    DWORD PTR [rsp+0x120],0x600003
3c6d93 
3c6d97 je     0x3c6db7
3c6d99 cmp    DWORD PTR [rsp+0x120],0x20000f
3c6da0 
3c6da4 je     0x3c6db7
3c6da6 cmp    DWORD PTR [rsp+0x120],0x60000f
3c6dad 
3c6db1 jne    0x3c70ee
3c6db7 mov    eax,DWORD PTR [rsp+0x120]
3c6dbe and    eax,0x400000
3c6dc3 test   eax,eax
3c6dc5 je     0x3c6dd1
3c6dc7 mov    DWORD PTR [rsp+0x40],0x1
3c6dce 
3c6dcf jmp    0x3c6dd9
3c6dd1 mov    DWORD PTR [rsp+0x40],0x0
3c6dd8 
3c6dd9 mov    eax,DWORD PTR [rsp+0x40]
3c6ddd mov    DWORD PTR [rsp+0x5c],eax
3c6de1 mov    eax,DWORD PTR [rsp+0x120]
3c6de8 btr    eax,0x16
3c6dec cmp    eax,0x20000f
3c6df1 jne    0x3c6dfd
3c6df3 mov    DWORD PTR [rsp+0x44],0x1
3c6dfa 
3c6dfb jmp    0x3c6e05
3c6dfd mov    DWORD PTR [rsp+0x44],0x0
3c6e04 
3c6e05 mov    eax,DWORD PTR [rsp+0x44]
3c6e09 mov    DWORD PTR [rsp+0x4c],eax
3c6e0d cmp    DWORD PTR [rsp+0x4c],0x0
3c6e12 je     0x3c6e25
3c6e14 mov    rax,QWORD PTR [rsp+0x118]
3c6e1b 
3c6e1c mov    eax,DWORD PTR [rax+0x10]
3c6e1f mov    DWORD PTR [rsp+0x48],eax
3c6e23 jmp    0x3c6e2d
3c6e25 mov    DWORD PTR [rsp+0x48],0x1
3c6e2c 
3c6e2d mov    eax,DWORD PTR [rsp+0x48]
3c6e31 mov    DWORD PTR [rsp+0x8c],eax
3c6e38 cmp    DWORD PTR [rsp+0x4c],0x0
3c6e3d jne    0x3c6e6c
3c6e3f mov    rax,QWORD PTR [rsp+0x118]
3c6e46 
3c6e47 movzx  eax,BYTE PTR [rax+0x17]
3c6e4b test   eax,eax
3c6e4d je     0x3c6e6c
3c6e4f mov    eax,DWORD PTR [rsp+0x120]
3c6e56 and    eax,0x400000
3c6e5b or     eax,0x200001
3c6e60 mov    DWORD PTR [rsp+0x120],eax
3c6e67 jmp    0x3c6922
3c6e6c cmp    DWORD PTR [rsp+0x5c],0x0
3c6e71 je     0x3c6e83
3c6e73 mov    rcx,QWORD PTR [rsp+0x118]
3c6e7a 
3c6e7b call   0x3c7b10
3c6e80 nop
3c6e81 jmp    0x3c6eb1
3c6e83 mov    rax,QWORD PTR [rsp+0x118]
3c6e8a 
3c6e8b mov    rcx,QWORD PTR [rsp+0x118]
3c6e92 
3c6e93 mov    ecx,DWORD PTR [rcx+0x8]
3c6e96 cmp    DWORD PTR [rax+0x4],ecx
3c6e99 je     0x3c6eb1
3c6e9b mov    rdx,QWORD PTR [rsp+0x118]
3c6ea2 
3c6ea3 mov    rcx,QWORD PTR [rsp+0x110]
3c6eaa 
3c6eab call   0x3c7a70
3c6eb0 nop
3c6eb1 mov    rdx,QWORD PTR [rsp+0x118]
3c6eb8 
3c6eb9 mov    rcx,QWORD PTR [rsp+0x110]
3c6ec0 
3c6ec1 call   0x3c6418
3c6ec6 mov    rax,QWORD PTR [rsp+0x118]
3c6ecd 
3c6ece movzx  eax,BYTE PTR [rax+0x17]
3c6ed2 mov    r9d,eax
3c6ed5 mov    rax,QWORD PTR [rsp+0x118]
3c6edc 
3c6edd mov    r8d,DWORD PTR [rax]
3c6ee0 mov    rdx,QWORD PTR [rsp+0x110]
3c6ee7 
3c6ee8 lea    rcx,[rsp+0xa0]
3c6eef 
3c6ef0 call   0x3c6794
3c6ef5 nop
3c6ef6 mov    DWORD PTR [rsp+0x30],0x0
3c6efd 
3c6efe jmp    0x3c6f0a
3c6f00 mov    eax,DWORD PTR [rsp+0x30]
3c6f04 inc    eax
3c6f06 mov    DWORD PTR [rsp+0x30],eax
3c6f0a mov    eax,DWORD PTR [rsp+0x8c]
3c6f11 cmp    DWORD PTR [rsp+0x30],eax
3c6f15 jge    0x3c70e9
3c6f1b mov    rax,QWORD PTR [rsp+0x118]
3c6f22 
3c6f23 movzx  eax,BYTE PTR [rax+0x16]
3c6f27 test   eax,eax
3c6f29 je     0x3c6f40
3c6f2b mov    rax,QWORD PTR [rsp+0x118]
3c6f32 
3c6f33 movss  xmm0,DWORD PTR [rax+0x1c]
3c6f38 movss  DWORD PTR [rsp+0x50],xmm0
3c6f3e jmp    0x3c6f4f
3c6f40 movss  xmm0,DWORD PTR [rsp+0xa0]
3c6f47 
3c6f49 movss  DWORD PTR [rsp+0x50],xmm0
3c6f4f movss  xmm0,DWORD PTR [rsp+0x50]
3c6f55 movss  DWORD PTR [rsp+0x58],xmm0
3c6f5b mov    eax,DWORD PTR [rsp+0xb0]
3c6f62 mov    ecx,DWORD PTR [rsp+0xac]
3c6f69 add    ecx,eax
3c6f6b mov    eax,ecx
3c6f6d mov    DWORD PTR [rsp+0x54],eax
3c6f71 cmp    DWORD PTR [rsp+0xb0],0x0
3c6f78 
3c6f79 jne    0x3c6f80
3c6f7b jmp    0x3c70e9
3c6f80 mov    eax,DWORD PTR [rsp+0xac]
3c6f87 mov    ecx,DWORD PTR [rsp+0xb0]
3c6f8e lea    eax,[rax+rcx*1-0x1]
3c6f92 mov    edx,eax
3c6f94 mov    rcx,QWORD PTR [rsp+0x110]
3c6f9b 
3c6f9c call   0x3c2f30
3c6fa1 movzx  eax,ax
3c6fa4 movzx  ecx,WORD PTR [rip+0xffffffffffeb8bf5]        # 0x27fba0
3c6fab cmp    eax,ecx
3c6fad je     0x3c6fb4
3c6faf jmp    0x3c70e9
3c6fb4 mov    rax,QWORD PTR [rsp+0x118]
3c6fbb 
3c6fbc mov    ecx,DWORD PTR [rsp+0x54]
3c6fc0 mov    DWORD PTR [rax],ecx
3c6fc2 mov    rax,QWORD PTR [rsp+0x118]
3c6fc9 
3c6fca mov    r8d,DWORD PTR [rax]
3c6fcd mov    rdx,QWORD PTR [rsp+0x110]
3c6fd4 
3c6fd5 lea    rcx,[rsp+0xd0]
3c6fdc 
3c6fdd call   0x3c30b8
3c6fe2 movss  xmm0,DWORD PTR [rsp+0xd0]
3c6fe9 
3c6feb movss  DWORD PTR [rsp+0x34],xmm0
3c6ff1 mov    DWORD PTR [rsp+0x28],0x0
3c6ff8 
3c6ff9 jmp    0x3c7005
3c6ffb mov    eax,DWORD PTR [rsp+0x28]
3c6fff inc    eax
3c7001 mov    DWORD PTR [rsp+0x28],eax
3c7005 mov    eax,DWORD PTR [rsp+0xe4]
3c700c cmp    DWORD PTR [rsp+0x28],eax
3c7010 jge    0x3c706d
3c7012 mov    r8d,DWORD PTR [rsp+0x28]
3c7017 mov    edx,DWORD PTR [rsp+0x54]
3c701b mov    rcx,QWORD PTR [rsp+0x110]
3c7022 
3c7023 call   0x3c2f48
3c7028 movss  DWORD PTR [rsp+0x90],xmm0
3c702f 
3c7031 movss  xmm0,DWORD PTR [rsp+0x34]
3c7037 addss  xmm0,DWORD PTR [rsp+0x90]
3c703e 
3c7040 movss  DWORD PTR [rsp+0x34],xmm0
3c7046 movss  xmm0,DWORD PTR [rsp+0x34]
3c704c comiss xmm0,DWORD PTR [rsp+0x58]
3c7051 jbe    0x3c7055
3c7053 jmp    0x3c706d
3c7055 mov    rax,QWORD PTR [rsp+0x118]
3c705c 
3c705d mov    eax,DWORD PTR [rax]
3c705f inc    eax
3c7061 mov    rcx,QWORD PTR [rsp+0x118]
3c7068 
3c7069 mov    DWORD PTR [rcx],eax
3c706b jmp    0x3c6ffb
3c706d mov    rdx,QWORD PTR [rsp+0x118]
3c7074 
3c7075 mov    rcx,QWORD PTR [rsp+0x110]
3c707c 
3c707d call   0x3c6418
3c7082 mov    rax,QWORD PTR [rsp+0x118]
3c7089 
3c708a mov    BYTE PTR [rax+0x16],0x1
3c708e mov    rax,QWORD PTR [rsp+0x118]
3c7095 
3c7096 movss  xmm0,DWORD PTR [rsp+0x58]
3c709c movss  DWORD PTR [rax+0x1c],xmm0
3c70a1 cmp    DWORD PTR [rsp+0x5c],0x0
3c70a6 je     0x3c70bd
3c70a8 mov    rax,QWORD PTR [rsp+0x118]
3c70af 
3c70b0 mov    rcx,QWORD PTR [rsp+0x118]
3c70b7 
3c70b8 mov    ecx,DWORD PTR [rcx]
3c70ba mov    DWORD PTR [rax+0x8],ecx
3c70bd mov    eax,DWORD PTR [rsp+0xb0]
3c70c4 mov    ecx,DWORD PTR [rsp+0xac]
3c70cb add    ecx,eax
3c70cd mov    eax,ecx
3c70cf mov    DWORD PTR [rsp+0xac],eax
3c70d6 mov    eax,DWORD PTR [rsp+0xe4]
3c70dd mov    DWORD PTR [rsp+0xb0],eax
3c70e4 jmp    0x3c6f00
3c70e9 jmp    0x3c7a40
3c70ee cmp    DWORD PTR [rsp+0x120],0x200002
3c70f5 
3c70f9 je     0x3c7126
3c70fb cmp    DWORD PTR [rsp+0x120],0x600002
3c7102 
3c7106 je     0x3c7126
3c7108 cmp    DWORD PTR [rsp+0x120],0x20000e
3c710f 
3c7113 je     0x3c7126
3c7115 cmp    DWORD PTR [rsp+0x120],0x60000e
3c711c 
3c7120 jne    0x3c7467
3c7126 mov    eax,DWORD PTR [rsp+0x120]
3c712d and    eax,0x400000
3c7132 test   eax,eax
3c7134 je     0x3c7140
3c7136 mov    DWORD PTR [rsp+0x60],0x1
3c713d 
3c713e jmp    0x3c7148
3c7140 mov    DWORD PTR [rsp+0x60],0x0
3c7147 
3c7148 mov    eax,DWORD PTR [rsp+0x60]
3c714c mov    DWORD PTR [rsp+0x78],eax
3c7150 mov    eax,DWORD PTR [rsp+0x120]
3c7157 btr    eax,0x16
3c715b cmp    eax,0x20000e
3c7160 jne    0x3c716c
3c7162 mov    DWORD PTR [rsp+0x64],0x1
3c7169 
3c716a jmp    0x3c7174
3c716c mov    DWORD PTR [rsp+0x64],0x0
3c7173 
3c7174 mov    eax,DWORD PTR [rsp+0x64]
3c7178 mov    DWORD PTR [rsp+0x6c],eax
3c717c cmp    DWORD PTR [rsp+0x6c],0x0
3c7181 je     0x3c7194
3c7183 mov    rax,QWORD PTR [rsp+0x118]
3c718a 
3c718b mov    eax,DWORD PTR [rax+0x10]
3c718e mov    DWORD PTR [rsp+0x68],eax
3c7192 jmp    0x3c719c
3c7194 mov    DWORD PTR [rsp+0x68],0x1
3c719b 
3c719c mov    eax,DWORD PTR [rsp+0x68]
3c71a0 mov    DWORD PTR [rsp+0x94],eax
3c71a7 cmp    DWORD PTR [rsp+0x6c],0x0
3c71ac jne    0x3c71da
3c71ae mov    rax,QWORD PTR [rsp+0x118]
3c71b5 
3c71b6 movzx  eax,BYTE PTR [rax+0x17]
3c71ba test   eax,eax
3c71bc je     0x3c71da
3c71be mov    eax,DWORD PTR [rsp+0x120]
3c71c5 and    eax,0x400000
3c71ca bts    eax,0x15
3c71ce mov    DWORD PTR [rsp+0x120],eax
3c71d5 jmp    0x3c6922
3c71da cmp    DWORD PTR [rsp+0x78],0x0
3c71df je     0x3c71f1
3c71e1 mov    rcx,QWORD PTR [rsp+0x118]
3c71e8 
3c71e9 call   0x3c7b10
3c71ee nop
3c71ef jmp    0x3c7217
3c71f1 mov    rax,QWORD PTR [rsp+0x118]
3c71f8 
3c71f9 mov    rcx,QWORD PTR [rsp+0x118]
3c7200 
3c7201 mov    ecx,DWORD PTR [rcx+0x8]
3c7204 cmp    DWORD PTR [rax+0x4],ecx
3c7207 je     0x3c7217
3c7209 mov    rcx,QWORD PTR [rsp+0x118]
3c7210 
3c7211 call   0x3c7a48
3c7216 nop
3c7217 mov    rdx,QWORD PTR [rsp+0x118]
3c721e 
3c721f mov    rcx,QWORD PTR [rsp+0x110]
3c7226 
3c7227 call   0x3c6418
3c722c mov    rax,QWORD PTR [rsp+0x118]
3c7233 
3c7234 movzx  eax,BYTE PTR [rax+0x17]
3c7238 mov    r9d,eax
3c723b mov    rax,QWORD PTR [rsp+0x118]
3c7242 
3c7243 mov    r8d,DWORD PTR [rax]
3c7246 mov    rdx,QWORD PTR [rsp+0x110]
3c724d 
3c724e lea    rcx,[rsp+0xb8]
3c7255 
3c7256 call   0x3c6794
3c725b nop
3c725c mov    DWORD PTR [rsp+0x38],0x0
3c7263 
3c7264 jmp    0x3c7270
3c7266 mov    eax,DWORD PTR [rsp+0x38]
3c726a inc    eax
3c726c mov    DWORD PTR [rsp+0x38],eax
3c7270 mov    eax,DWORD PTR [rsp+0x94]
3c7277 cmp    DWORD PTR [rsp+0x38],eax
3c727b jge    0x3c7462
3c7281 mov    rax,QWORD PTR [rsp+0x118]
3c7288 
3c7289 movzx  eax,BYTE PTR [rax+0x16]
3c728d test   eax,eax
3c728f je     0x3c72a6
3c7291 mov    rax,QWORD PTR [rsp+0x118]
3c7298 
3c7299 movss  xmm0,DWORD PTR [rax+0x1c]
3c729e movss  DWORD PTR [rsp+0x70],xmm0
3c72a4 jmp    0x3c72b5
3c72a6 movss  xmm0,DWORD PTR [rsp+0xb8]
3c72ad 
3c72af movss  DWORD PTR [rsp+0x70],xmm0
3c72b5 movss  xmm0,DWORD PTR [rsp+0x70]
3c72bb movss  DWORD PTR [rsp+0x74],xmm0
3c72c1 mov    eax,DWORD PTR [rsp+0xc4]
3c72c8 cmp    DWORD PTR [rsp+0xcc],eax
3c72cf jne    0x3c72d6
3c72d1 jmp    0x3c7462
3c72d6 mov    rax,QWORD PTR [rsp+0x118]
3c72dd 
3c72de mov    ecx,DWORD PTR [rsp+0xcc]
3c72e5 mov    DWORD PTR [rax],ecx
3c72e7 mov    rax,QWORD PTR [rsp+0x118]
3c72ee 
3c72ef mov    r8d,DWORD PTR [rax]
3c72f2 mov    rdx,QWORD PTR [rsp+0x110]
3c72f9 
3c72fa lea    rcx,[rsp+0xe8]
3c7301 
3c7302 call   0x3c30b8
3c7307 movss  xmm0,DWORD PTR [rsp+0xe8]
3c730e 
3c7310 movss  DWORD PTR [rsp+0x3c],xmm0
3c7316 mov    DWORD PTR [rsp+0x2c],0x0
3c731d 
3c731e jmp    0x3c732a
3c7320 mov    eax,DWORD PTR [rsp+0x2c]
3c7324 inc    eax
3c7326 mov    DWORD PTR [rsp+0x2c],eax
3c732a mov    eax,DWORD PTR [rsp+0xfc]
3c7331 cmp    DWORD PTR [rsp+0x2c],eax
3c7335 jge    0x3c7395
3c7337 mov    r8d,DWORD PTR [rsp+0x2c]
3c733c mov    edx,DWORD PTR [rsp+0xcc]
3c7343 mov    rcx,QWORD PTR [rsp+0x110]
3c734a 
3c734b call   0x3c2f48
3c7350 movss  DWORD PTR [rsp+0x98],xmm0
3c7357 
3c7359 movss  xmm0,DWORD PTR [rsp+0x3c]
3c735f addss  xmm0,DWORD PTR [rsp+0x98]
3c7366 
3c7368 movss  DWORD PTR [rsp+0x3c],xmm0
3c736e movss  xmm0,DWORD PTR [rsp+0x3c]
3c7374 comiss xmm0,DWORD PTR [rsp+0x74]
3c7379 jbe    0x3c737d
3c737b jmp    0x3c7395
3c737d mov    rax,QWORD PTR [rsp+0x118]
3c7384 
3c7385 mov    eax,DWORD PTR [rax]
3c7387 inc    eax
3c7389 mov    rcx,QWORD PTR [rsp+0x118]
3c7390 
3c7391 mov    DWORD PTR [rcx],eax
3c7393 jmp    0x3c7320
3c7395 mov    rdx,QWORD PTR [rsp+0x118]
3c739c 
3c739d mov    rcx,QWORD PTR [rsp+0x110]
3c73a4 
3c73a5 call   0x3c6418
3c73aa mov    rax,QWORD PTR [rsp+0x118]
3c73b1 
3c73b2 mov    BYTE PTR [rax+0x16],0x1
3c73b6 mov    rax,QWORD PTR [rsp+0x118]
3c73bd 
3c73be movss  xmm0,DWORD PTR [rsp+0x74]
3c73c4 movss  DWORD PTR [rax+0x1c],xmm0
3c73c9 cmp    DWORD PTR [rsp+0x78],0x0
3c73ce je     0x3c73e5
3c73d0 mov    rax,QWORD PTR [rsp+0x118]
3c73d7 
3c73d8 mov    rcx,QWORD PTR [rsp+0x118]
3c73df 
3c73e0 mov    ecx,DWORD PTR [rcx]
3c73e2 mov    DWORD PTR [rax+0x8],ecx
3c73e5 cmp    DWORD PTR [rsp+0xcc],0x0
3c73ec 
3c73ed jle    0x3c73fe
3c73ef mov    eax,DWORD PTR [rsp+0xcc]
3c73f6 dec    eax
3c73f8 mov    DWORD PTR [rsp+0x7c],eax
3c73fc jmp    0x3c7406
3c73fe mov    DWORD PTR [rsp+0x7c],0x0
3c7405 
3c7406 mov    eax,DWORD PTR [rsp+0x7c]
3c740a mov    DWORD PTR [rsp+0x24],eax
3c740e cmp    DWORD PTR [rsp+0x24],0x0
3c7413 jle    0x3c7444
3c7415 mov    eax,DWORD PTR [rsp+0x24]
3c7419 dec    eax
3c741b mov    edx,eax
3c741d mov    rcx,QWORD PTR [rsp+0x110]
3c7424 
3c7425 call   0x3c2f30
3c742a movzx  eax,ax
3c742d movzx  ecx,WORD PTR [rip+0xffffffffffeb876c]        # 0x27fba0
3c7434 cmp    eax,ecx
3c7436 je     0x3c7444
3c7438 mov    eax,DWORD PTR [rsp+0x24]
3c743c dec    eax
3c743e mov    DWORD PTR [rsp+0x24],eax
3c7442 jmp    0x3c740e
3c7444 mov    eax,DWORD PTR [rsp+0xcc]
3c744b mov    DWORD PTR [rsp+0xc4],eax
3c7452 mov    eax,DWORD PTR [rsp+0x24]
3c7456 mov    DWORD PTR [rsp+0xcc],eax
3c745d jmp    0x3c7266
3c7462 jmp    0x3c7a40
3c7467 cmp    DWORD PTR [rsp+0x120],0x200008
3c746e 
3c7472 je     0x3c7485
3c7474 cmp    DWORD PTR [rsp+0x120],0x600008
3c747b 
3c747f jne    0x3c7514
3c7485 mov    rax,QWORD PTR [rsp+0x118]
3c748c 
3c748d mov    rcx,QWORD PTR [rsp+0x118]
3c7494 
3c7495 mov    ecx,DWORD PTR [rcx+0x8]
3c7498 cmp    DWORD PTR [rax+0x4],ecx
3c749b je     0x3c74b5
3c749d mov    rdx,QWORD PTR [rsp+0x118]
3c74a4 
3c74a5 mov    rcx,QWORD PTR [rsp+0x110]
3c74ac 
3c74ad call   0x3c6554
3c74b2 nop
3c74b3 jmp    0x3c7503
3c74b5 mov    rcx,QWORD PTR [rsp+0x110]
3c74bc 
3c74bd call   0x3c3230
3c74c2 mov    DWORD PTR [rsp+0x9c],eax
3c74c9 mov    rax,QWORD PTR [rsp+0x118]
3c74d0 
3c74d1 mov    ecx,DWORD PTR [rsp+0x9c]
3c74d8 cmp    DWORD PTR [rax],ecx
3c74da jge    0x3c7503
3c74dc mov    r9d,0x1
3c74e2 mov    rax,QWORD PTR [rsp+0x118]
3c74e9 
3c74ea mov    r8d,DWORD PTR [rax]
3c74ed mov    rdx,QWORD PTR [rsp+0x118]
3c74f4 
3c74f5 mov    rcx,QWORD PTR [rsp+0x110]
3c74fc 
3c74fd call   0x3c6520
3c7502 nop
3c7503 mov    rax,QWORD PTR [rsp+0x118]
3c750a 
3c750b mov    BYTE PTR [rax+0x16],0x0
3c750f jmp    0x3c7a40
3c7514 cmp    DWORD PTR [rsp+0x120],0x200009
3c751b 
3c751f je     0x3c7532
3c7521 cmp    DWORD PTR [rsp+0x120],0x600009
3c7528 
3c752c jne    0x3c75d6
3c7532 mov    rax,QWORD PTR [rsp+0x118]
3c7539 
3c753a mov    rcx,QWORD PTR [rsp+0x118]
3c7541 
3c7542 mov    ecx,DWORD PTR [rcx+0x8]
3c7545 cmp    DWORD PTR [rax+0x4],ecx
3c7548 je     0x3c7562
3c754a mov    rdx,QWORD PTR [rsp+0x118]
3c7551 
3c7552 mov    rcx,QWORD PTR [rsp+0x110]
3c7559 
3c755a call   0x3c6554
3c755f nop
3c7560 jmp    0x3c75c5
3c7562 mov    rdx,QWORD PTR [rsp+0x118]
3c7569 
3c756a mov    rcx,QWORD PTR [rsp+0x110]
3c7571 
3c7572 call   0x3c6418
3c7577 nop
3c7578 mov    rax,QWORD PTR [rsp+0x118]
3c757f 
3c7580 cmp    DWORD PTR [rax],0x0
3c7583 jle    0x3c75c5
3c7585 mov    rax,QWORD PTR [rsp+0x118]
3c758c 
3c758d mov    eax,DWORD PTR [rax]
3c758f dec    eax
3c7591 mov    r9d,0x1
3c7597 mov    r8d,eax
3c759a mov    rdx,QWORD PTR [rsp+0x118]
3c75a1 
3c75a2 mov    rcx,QWORD PTR [rsp+0x110]
3c75a9 
3c75aa call   0x3c6520
3c75af mov    rax,QWORD PTR [rsp+0x118]
3c75b6 
3c75b7 mov    eax,DWORD PTR [rax]
3c75b9 dec    eax
3c75bb mov    rcx,QWORD PTR [rsp+0x118]
3c75c2 
3c75c3 mov    DWORD PTR [rcx],eax
3c75c5 mov    rax,QWORD PTR [rsp+0x118]
3c75cc 
3c75cd mov    BYTE PTR [rax+0x16],0x0
3c75d1 jmp    0x3c7a40
3c75d6 cmp    DWORD PTR [rsp+0x120],0x200006
3c75dd 
3c75e1 jne    0x3c7620
3c75e3 mov    rax,QWORD PTR [rsp+0x118]
3c75ea 
3c75eb mov    DWORD PTR [rax+0x8],0x0
3c75f2 mov    rax,QWORD PTR [rsp+0x118]
3c75f9 
3c75fa mov    DWORD PTR [rax+0x4],0x0
3c7601 mov    rax,QWORD PTR [rsp+0x118]
3c7608 
3c7609 mov    DWORD PTR [rax],0x0
3c760f mov    rax,QWORD PTR [rsp+0x118]
3c7616 
3c7617 mov    BYTE PTR [rax+0x16],0x0
3c761b jmp    0x3c7a40
3c7620 cmp    DWORD PTR [rsp+0x120],0x200007
3c7627 
3c762b jne    0x3c7673
3c762d mov    rcx,QWORD PTR [rsp+0x110]
3c7634 
3c7635 call   0x3c3230
3c763a mov    rcx,QWORD PTR [rsp+0x118]
3c7641 
3c7642 mov    DWORD PTR [rcx],eax
3c7644 mov    rax,QWORD PTR [rsp+0x118]
3c764b 
3c764c mov    DWORD PTR [rax+0x8],0x0
3c7653 mov    rax,QWORD PTR [rsp+0x118]
3c765a 
3c765b mov    DWORD PTR [rax+0x4],0x0
3c7662 mov    rax,QWORD PTR [rsp+0x118]
3c7669 
3c766a mov    BYTE PTR [rax+0x16],0x0
3c766e jmp    0x3c7a40
3c7673 cmp    DWORD PTR [rsp+0x120],0x600006
3c767a 
3c767e jne    0x3c76bb
3c7680 mov    rcx,QWORD PTR [rsp+0x118]
3c7687 
3c7688 call   0x3c7b10
3c768d mov    rax,QWORD PTR [rsp+0x118]
3c7694 
3c7695 mov    DWORD PTR [rax+0x8],0x0
3c769c mov    rax,QWORD PTR [rsp+0x118]
3c76a3 
3c76a4 mov    DWORD PTR [rax],0x0
3c76aa mov    rax,QWORD PTR [rsp+0x118]
3c76b1 
3c76b2 mov    BYTE PTR [rax+0x16],0x0
3c76b6 jmp    0x3c7a40
3c76bb cmp    DWORD PTR [rsp+0x120],0x600007
3c76c2 
3c76c6 jne    0x3c771d
3c76c8 mov    rcx,QWORD PTR [rsp+0x118]
3c76cf 
3c76d0 call   0x3c7b10
3c76d5 mov    rcx,QWORD PTR [rsp+0x110]
3c76dc 
3c76dd call   0x3c3230
3c76e2 mov    DWORD PTR [rsp+0x80],eax
3c76e9 mov    rax,QWORD PTR [rsp+0x118]
3c76f0 
3c76f1 mov    ecx,DWORD PTR [rsp+0x80]
3c76f8 mov    DWORD PTR [rax+0x8],ecx
3c76fb mov    rax,QWORD PTR [rsp+0x118]
3c7702 
3c7703 mov    ecx,DWORD PTR [rsp+0x80]
3c770a mov    DWORD PTR [rax],ecx
3c770c mov    rax,QWORD PTR [rsp+0x118]
3c7713 
3c7714 mov    BYTE PTR [rax+0x16],0x0
3c7718 jmp    0x3c7a40
3c771d cmp    DWORD PTR [rsp+0x120],0x200004
3c7724 
3c7728 jne    0x3c77d0
3c772e mov    rdx,QWORD PTR [rsp+0x118]
3c7735 
3c7736 mov    rcx,QWORD PTR [rsp+0x110]
3c773d 
3c773e call   0x3c6418
3c7743 mov    rcx,QWORD PTR [rsp+0x118]
3c774a 
3c774b call   0x3c7a48
3c7750 nop
3c7751 mov    rax,QWORD PTR [rsp+0x118]
3c7758 
3c7759 movzx  eax,BYTE PTR [rax+0x17]
3c775d test   eax,eax
3c775f je     0x3c7771
3c7761 mov    rax,QWORD PTR [rsp+0x118]
3c7768 
3c7769 mov    DWORD PTR [rax],0x0
3c776f jmp    0x3c77bf
3c7771 mov    rax,QWORD PTR [rsp+0x118]
3c7778 
3c7779 cmp    DWORD PTR [rax],0x0
3c777c jle    0x3c77bf
3c777e mov    rax,QWORD PTR [rsp+0x118]
3c7785 
3c7786 mov    eax,DWORD PTR [rax]
3c7788 dec    eax
3c778a mov    edx,eax
3c778c mov    rcx,QWORD PTR [rsp+0x110]
3c7793 
3c7794 call   0x3c2f30
3c7799 movzx  eax,ax
3c779c movzx  ecx,WORD PTR [rip+0xffffffffffeb83fd]        # 0x27fba0
3c77a3 cmp    eax,ecx
3c77a5 je     0x3c77bf
3c77a7 mov    rax,QWORD PTR [rsp+0x118]
3c77ae 
3c77af mov    eax,DWORD PTR [rax]
3c77b1 dec    eax
3c77b3 mov    rcx,QWORD PTR [rsp+0x118]
3c77ba 
3c77bb mov    DWORD PTR [rcx],eax
3c77bd jmp    0x3c7771
3c77bf mov    rax,QWORD PTR [rsp+0x118]
3c77c6 
3c77c7 mov    BYTE PTR [rax+0x16],0x0
3c77cb jmp    0x3c7a40
3c77d0 cmp    DWORD PTR [rsp+0x120],0x200005
3c77d7 
3c77db jne    0x3c789c
3c77e1 mov    rcx,QWORD PTR [rsp+0x110]
3c77e8 
3c77e9 call   0x3c3230
3c77ee mov    DWORD PTR [rsp+0x84],eax
3c77f5 mov    rdx,QWORD PTR [rsp+0x118]
3c77fc 
3c77fd mov    rcx,QWORD PTR [rsp+0x110]
3c7804 
3c7805 call   0x3c6418
3c780a mov    rcx,QWORD PTR [rsp+0x118]
3c7811 
3c7812 call   0x3c7a48
3c7817 nop
3c7818 mov    rax,QWORD PTR [rsp+0x118]
3c781f 
3c7820 movzx  eax,BYTE PTR [rax+0x17]
3c7824 test   eax,eax
3c7826 je     0x3c783b
3c7828 mov    rax,QWORD PTR [rsp+0x118]
3c782f 
3c7830 mov    ecx,DWORD PTR [rsp+0x84]
3c7837 mov    DWORD PTR [rax],ecx
3c7839 jmp    0x3c788b
3c783b mov    rax,QWORD PTR [rsp+0x118]
3c7842 
3c7843 mov    ecx,DWORD PTR [rsp+0x84]
3c784a cmp    DWORD PTR [rax],ecx
3c784c jge    0x3c788b
3c784e mov    rax,QWORD PTR [rsp+0x118]
3c7855 
3c7856 mov    edx,DWORD PTR [rax]
3c7858 mov    rcx,QWORD PTR [rsp+0x110]
3c785f 
3c7860 call   0x3c2f30
3c7865 movzx  eax,ax
3c7868 movzx  ecx,WORD PTR [rip+0xffffffffffeb8331]        # 0x27fba0
3c786f cmp    eax,ecx
3c7871 je     0x3c788b
3c7873 mov    rax,QWORD PTR [rsp+0x118]
3c787a 
3c787b mov    eax,DWORD PTR [rax]
3c787d inc    eax
3c787f mov    rcx,QWORD PTR [rsp+0x118]
3c7886 
3c7887 mov    DWORD PTR [rcx],eax
3c7889 jmp    0x3c783b
3c788b mov    rax,QWORD PTR [rsp+0x118]
3c7892 
3c7893 mov    BYTE PTR [rax+0x16],0x0
3c7897 jmp    0x3c7a40
3c789c cmp    DWORD PTR [rsp+0x120],0x600004
3c78a3 
3c78a7 jne    0x3c7964
3c78ad mov    rdx,QWORD PTR [rsp+0x118]
3c78b4 
3c78b5 mov    rcx,QWORD PTR [rsp+0x110]
3c78bc 
3c78bd call   0x3c6418
3c78c2 mov    rcx,QWORD PTR [rsp+0x118]
3c78c9 
3c78ca call   0x3c7b10
3c78cf nop
3c78d0 mov    rax,QWORD PTR [rsp+0x118]
3c78d7 
3c78d8 movzx  eax,BYTE PTR [rax+0x17]
3c78dc test   eax,eax
3c78de je     0x3c78f0
3c78e0 mov    rax,QWORD PTR [rsp+0x118]
3c78e7 
3c78e8 mov    DWORD PTR [rax],0x0
3c78ee jmp    0x3c793e
3c78f0 mov    rax,QWORD PTR [rsp+0x118]
3c78f7 
3c78f8 cmp    DWORD PTR [rax],0x0
3c78fb jle    0x3c793e
3c78fd mov    rax,QWORD PTR [rsp+0x118]
3c7904 
3c7905 mov    eax,DWORD PTR [rax]
3c7907 dec    eax
3c7909 mov    edx,eax
3c790b mov    rcx,QWORD PTR [rsp+0x110]
3c7912 
3c7913 call   0x3c2f30
3c7918 movzx  eax,ax
3c791b movzx  ecx,WORD PTR [rip+0xffffffffffeb827e]        # 0x27fba0
3c7922 cmp    eax,ecx
3c7924 je     0x3c793e
3c7926 mov    rax,QWORD PTR [rsp+0x118]
3c792d 
3c792e mov    eax,DWORD PTR [rax]
3c7930 dec    eax
3c7932 mov    rcx,QWORD PTR [rsp+0x118]
3c7939 
3c793a mov    DWORD PTR [rcx],eax
3c793c jmp    0x3c78f0
3c793e mov    rax,QWORD PTR [rsp+0x118]
3c7945 
3c7946 mov    rcx,QWORD PTR [rsp+0x118]
3c794d 
3c794e mov    ecx,DWORD PTR [rcx]
3c7950 mov    DWORD PTR [rax+0x8],ecx
3c7953 mov    rax,QWORD PTR [rsp+0x118]
3c795a 
3c795b mov    BYTE PTR [rax+0x16],0x0
3c795f jmp    0x3c7a40
3c7964 cmp    DWORD PTR [rsp+0x120],0x600005
3c796b 
3c796f jne    0x3c7a40
3c7975 mov    rcx,QWORD PTR [rsp+0x110]
3c797c 
3c797d call   0x3c3230
3c7982 mov    DWORD PTR [rsp+0x88],eax
3c7989 mov    rdx,QWORD PTR [rsp+0x118]
3c7990 
3c7991 mov    rcx,QWORD PTR [rsp+0x110]
3c7998 
3c7999 call   0x3c6418
3c799e mov    rcx,QWORD PTR [rsp+0x118]
3c79a5 
3c79a6 call   0x3c7b10
3c79ab nop
3c79ac mov    rax,QWORD PTR [rsp+0x118]
3c79b3 
3c79b4 movzx  eax,BYTE PTR [rax+0x17]
3c79b8 test   eax,eax
3c79ba je     0x3c79cf
3c79bc mov    rax,QWORD PTR [rsp+0x118]
3c79c3 
3c79c4 mov    ecx,DWORD PTR [rsp+0x88]
3c79cb mov    DWORD PTR [rax],ecx
3c79cd jmp    0x3c7a1f
3c79cf mov    rax,QWORD PTR [rsp+0x118]
3c79d6 
3c79d7 mov    ecx,DWORD PTR [rsp+0x88]
3c79de cmp    DWORD PTR [rax],ecx
3c79e0 jge    0x3c7a1f
3c79e2 mov    rax,QWORD PTR [rsp+0x118]
3c79e9 
3c79ea mov    edx,DWORD PTR [rax]
3c79ec mov    rcx,QWORD PTR [rsp+0x110]
3c79f3 
3c79f4 call   0x3c2f30
3c79f9 movzx  eax,ax
3c79fc movzx  ecx,WORD PTR [rip+0xffffffffffeb819d]        # 0x27fba0
3c7a03 cmp    eax,ecx
3c7a05 je     0x3c7a1f
3c7a07 mov    rax,QWORD PTR [rsp+0x118]
3c7a0e 
3c7a0f mov    eax,DWORD PTR [rax]
3c7a11 inc    eax
3c7a13 mov    rcx,QWORD PTR [rsp+0x118]
3c7a1a 
3c7a1b mov    DWORD PTR [rcx],eax
3c7a1d jmp    0x3c79cf
3c7a1f mov    rax,QWORD PTR [rsp+0x118]
3c7a26 
3c7a27 mov    rcx,QWORD PTR [rsp+0x118]
3c7a2e 
3c7a2f mov    ecx,DWORD PTR [rcx]
3c7a31 mov    DWORD PTR [rax+0x8],ecx
3c7a34 mov    rax,QWORD PTR [rsp+0x118]
3c7a3b 
3c7a3c mov    BYTE PTR [rax+0x16],0x0
3c7a40 add    rsp,0x108
3c7a47 ret

; closure independent pdata/next-pdata extent 3c6554..3c65b6 unwind3d2038
3c6554 rex push rbx
3c6556 sub    rsp,0x20
3c655a mov    rbx,rdx
3c655d mov    r10,rcx
3c6560 call   0x3c6418
3c6565 mov    r8d,DWORD PTR [rdx+0x8]
3c6569 mov    eax,DWORD PTR [rdx+0x4]
3c656c cmp    eax,r8d
3c656f je     0x3c65b0
3c6571 mov    rcx,r10
3c6574 jge    0x3c6591
3c6576 sub    r8d,eax
3c6579 mov    r9d,r8d
3c657c mov    r8d,eax
3c657f call   0x3c6520
3c6584 mov    eax,DWORD PTR [rbx+0x4]
3c6587 mov    DWORD PTR [rbx+0x8],eax
3c658a mov    eax,0x4
3c658f jmp    0x3c65a7
3c6591 sub    eax,r8d
3c6594 mov    r9d,eax
3c6597 call   0x3c6520
3c659c mov    eax,DWORD PTR [rbx+0x8]
3c659f mov    DWORD PTR [rbx+0x4],eax
3c65a2 mov    eax,0x8
3c65a7 mov    eax,DWORD PTR [rax+rbx*1]
3c65aa mov    DWORD PTR [rbx],eax
3c65ac mov    BYTE PTR [rbx+0x16],0x0
3c65b0 add    rsp,0x20
3c65b4 pop    rbx
3c65b5 ret

; closure independent pdata/next-pdata extent 3c5fb4..3c60dd unwind3d5a00
3c5fb4 rex push rbp
3c5fb6 push   rbx
3c5fb7 push   rsi
3c5fb8 push   rdi
3c5fb9 push   r14
3c5fbb mov    rbp,rsp
3c5fbe sub    rsp,0x70
3c5fc2 movaps XMMWORD PTR [rsp+0x60],xmm6
3c5fc7 mov    r14,rcx
3c5fca movaps XMMWORD PTR [rsp+0x50],xmm7
3c5fcf movaps xmm7,xmm1
3c5fd2 movaps XMMWORD PTR [rsp+0x40],xmm8
3c5fd8 movaps xmm8,xmm2
3c5fdc call   0x3c3230
3c5fe1 xor    ebx,ebx
3c5fe3 mov    edi,eax
3c5fe5 mov    QWORD PTR [rbp-0x50],rbx
3c5fe9 xorps  xmm6,xmm6
3c5fec mov    QWORD PTR [rbp-0x44],rbx
3c5ff0 mov    DWORD PTR [rbp-0x3c],ebx
3c5ff3 test   eax,eax
3c5ff5 jle    0x3c60a6
3c5ffb mov    r8d,ebx
3c5ffe lea    rcx,[rbp-0x50]
3c6002 mov    rdx,r14
3c6005 call   0x3c30b8
3c600a mov    esi,DWORD PTR [rbp-0x3c]
3c600d test   esi,esi
3c600f jle    0x3c60a6
3c6015 test   ebx,ebx
3c6017 jne    0x3c6028
3c6019 movss  xmm0,DWORD PTR [rbp-0x44]
3c601e addss  xmm0,xmm6
3c6022 comiss xmm0,xmm8
3c6026 ja     0x3c6044
3c6028 movss  xmm0,DWORD PTR [rbp-0x40]
3c602d addss  xmm0,xmm6
3c6031 comiss xmm0,xmm8
3c6035 ja     0x3c6048
3c6037 addss  xmm6,DWORD PTR [rbp-0x48]
3c603c add    ebx,esi
3c603e cmp    ebx,edi
3c6040 jl     0x3c5ffb
3c6042 jmp    0x3c60a6
3c6044 xor    eax,eax
3c6046 jmp    0x3c60a8
3c6048 cmp    ebx,edi
3c604a jge    0x3c60a6
3c604c movss  xmm6,DWORD PTR [rbp-0x50]
3c6051 comiss xmm6,xmm7
3c6054 jbe    0x3c605a
3c6056 mov    eax,ebx
3c6058 jmp    0x3c60a8
3c605a movss  xmm0,DWORD PTR [rbp-0x4c]
3c605f comiss xmm0,xmm7
3c6062 jbe    0x3c608c
3c6064 xor    edi,edi
3c6066 test   esi,esi
3c6068 jle    0x3c608c
3c606a mov    r8d,edi
3c606d mov    edx,ebx
3c606f mov    rcx,r14
3c6072 call   0x3c2f48
3c6077 movaps xmm1,xmm0
3c607a addss  xmm1,xmm6
3c607e comiss xmm1,xmm7
3c6081 ja     0x3c60c3
3c6083 inc    edi
3c6085 movaps xmm6,xmm1
3c6088 cmp    edi,esi
3c608a jl     0x3c606a
3c608c lea    edi,[rsi+rbx*1]
3c608f mov    rcx,r14
3c6092 lea    ebx,[rdi-0x1]
3c6095 mov    edx,ebx
3c6097 call   0x3c2f30
3c609c cmp    ax,WORD PTR [rip+0xffffffffffeb9afd]        # 0x27fba0
3c60a3 cmove  edi,ebx
3c60a6 mov    eax,edi
3c60a8 movaps xmm6,XMMWORD PTR [rsp+0x60]
3c60ad movaps xmm7,XMMWORD PTR [rsp+0x50]
3c60b2 movaps xmm8,XMMWORD PTR [rsp+0x40]
3c60b8 add    rsp,0x70
3c60bc pop    r14
3c60be pop    rdi
3c60bf pop    rsi
3c60c0 pop    rbx
3c60c1 pop    rbp
3c60c2 ret
3c60c3 mulss  xmm0,DWORD PTR [rip+0xffffffffffec7185]        # 0x28d250
3c60ca 
3c60cb lea    ecx,[rdi+rbx*1]
3c60ce lea    eax,[rcx+0x1]
3c60d1 addss  xmm0,xmm6
3c60d5 comiss xmm0,xmm7
3c60d8 cmova  eax,ecx
3c60db jmp    0x3c60a8

; closure independent pdata/next-pdata extent 393a04..393ad0 unwind0
393a04 mov    r9,rcx
393a07 cmp    r8d,0x80
393a0e jae    0x393a19
393a10 mov    BYTE PTR [rcx],r8b
393a13 mov    eax,0x1
393a18 ret
393a19 cmp    r8d,0x800
393a20 jae    0x393a48
393a22 mov    eax,0x2
393a27 cmp    edx,eax
393a29 jl     0x393acc
393a2f mov    ecx,r8d
393a32 and    r8b,0x3f
393a36 shr    ecx,0x6
393a39 add    cl,0xc0
393a3c or     r8b,0x80
393a40 mov    BYTE PTR [r9],cl
393a43 mov    BYTE PTR [r9+0x1],r8b
393a47 ret
393a48 cmp    r8d,0x10000
393a4f jae    0x393a82
393a51 cmp    edx,0x3
393a54 jl     0x393acc
393a56 mov    eax,r8d
393a59 shr    eax,0xc
393a5c add    al,0xe0
393a5e mov    BYTE PTR [rcx],al
393a60 mov    ecx,r8d
393a63 shr    ecx,0x6
393a66 and    r8b,0x3f
393a6a and    cl,0x3f
393a6d mov    eax,0x3
393a72 or     cl,0x80
393a75 or     r8b,0x80
393a79 mov    BYTE PTR [r9+0x1],cl
393a7d mov    BYTE PTR [r9+0x2],r8b
393a81 ret
393a82 cmp    r8d,0x10ffff
393a89 ja     0x393acc
393a8b cmp    edx,0x4
393a8e jl     0x393acc
393a90 mov    eax,r8d
393a93 shr    eax,0x12
393a96 add    al,0xf0
393a98 mov    BYTE PTR [rcx],al
393a9a mov    ecx,r8d
393a9d shr    ecx,0xc
393aa0 mov    eax,0x4
393aa5 and    cl,0x3f
393aa8 or     cl,0x80
393aab mov    BYTE PTR [r9+0x1],cl
393aaf mov    ecx,r8d
393ab2 shr    ecx,0x6
393ab5 and    r8b,0x3f
393ab9 and    cl,0x3f
393abc or     cl,0x80
393abf or     r8b,0x80
393ac3 mov    BYTE PTR [r9+0x2],cl
393ac7 mov    BYTE PTR [r9+0x3],r8b
393acb ret
393acc xor    eax,eax
393ace ret
393acf int3

; closure independent pdata/next-pdata extent 393b24..393b5c unwind0
393b24 cmp    ecx,0x80
393b2a jae    0x393b32
393b2c mov    eax,0x1
393b31 ret
393b32 cmp    ecx,0x800
393b38 jae    0x393b40
393b3a mov    eax,0x2
393b3f ret
393b40 cmp    ecx,0x10000
393b46 jb     0x393b55
393b48 mov    eax,0x10ffff
393b4d cmp    eax,ecx
393b4f sbb    eax,eax
393b51 add    eax,0x4
393b54 ret
393b55 mov    eax,0x3
393b5a ret
393b5b int3

; closure independent pdata/next-pdata extent 3c5d14..3c5dae unwind3d2308
3c5d14 rex push rbx
3c5d16 push   rbp
3c5d17 push   rsi
3c5d18 push   rdi
3c5d19 push   r14
3c5d1b sub    rsp,0x20
3c5d1f test   DWORD PTR [rcx+0xe88],0x8000
3c5d26 
3c5d29 mov    ebx,edx
3c5d2b jne    0x3c5da1
3c5d2d test   edx,edx
3c5d2f jle    0x3c5da1
3c5d31 lea    rsi,[rcx+0x18]
3c5d35 mov    rcx,rsi
3c5d38 call   0x39f604
3c5d3d movzx  ecx,WORD PTR [rax]
3c5d40 call   0x3c5ce0
3c5d45 lea    edx,[rbx-0x1]
3c5d48 mov    rcx,rsi
3c5d4b mov    bpl,al
3c5d4e call   0x39f604
3c5d53 movzx  ecx,WORD PTR [rax]
3c5d56 call   0x3c5ce0
3c5d5b mov    edx,ebx
3c5d5d mov    rcx,rsi
3c5d60 mov    dil,al
3c5d63 call   0x39f604
3c5d68 movzx  ecx,WORD PTR [rax]
3c5d6b call   0x3a4b10
3c5d70 test   al,al
3c5d72 je     0x3c5d90
3c5d74 test   dil,dil
3c5d77 jne    0x3c5d95
3c5d79 lea    edx,[rbx-0x1]
3c5d7c mov    rcx,rsi
3c5d7f call   0x39f604
3c5d84 movzx  ecx,WORD PTR [rax]
3c5d87 call   0x3a4b10
3c5d8c test   al,al
3c5d8e je     0x3c5d9a
3c5d90 test   dil,dil
3c5d93 je     0x3c5da1
3c5d95 test   bpl,bpl
3c5d98 jne    0x3c5da1
3c5d9a mov    eax,0x1
3c5d9f jmp    0x3c5da3
3c5da1 xor    eax,eax
3c5da3 add    rsp,0x20
3c5da7 pop    r14
3c5da9 pop    rdi
3c5daa pop    rsi
3c5dab pop    rbp
3c5dac pop    rbx
3c5dad ret

; closure independent pdata/next-pdata extent 3c3154..3c318c unwind3d2040
3c3154 mov    QWORD PTR [rsp+0x8],rbx
3c3159 push   rdi
3c315a sub    rsp,0x20
3c315e mov    ebx,edx
3c3160 mov    rdi,rcx
3c3163 jmp    0x3c3173
3c3165 mov    edx,ebx
3c3167 mov    rcx,rdi
3c316a call   0x3c5db0
3c316f test   eax,eax
3c3171 jne    0x3c3178
3c3173 sub    ebx,0x1
3c3176 jns    0x3c3165
3c3178 xor    eax,eax
3c317a test   ebx,ebx
3c317c cmovs  ebx,eax
3c317f mov    eax,ebx
3c3181 mov    rbx,QWORD PTR [rsp+0x30]
3c3186 add    rsp,0x20
3c318a pop    rdi
3c318b ret

; closure independent pdata/next-pdata extent 3c2f48..3c2fa2 unwind3d2040
3c2f48 mov    QWORD PTR [rsp+0x8],rbx
3c2f4d push   rdi
3c2f4e sub    rsp,0x20
3c2f52 mov    rbx,rcx
3c2f55 add    edx,r8d
3c2f58 add    rcx,0x18
3c2f5c call   0x39f604
3c2f61 cmp    WORD PTR [rax],0xa
3c2f65 jne    0x3c2f71
3c2f67 movss  xmm0,DWORD PTR [rip+0xffffffffffed02f1]        # 0x293260
3c2f6e 
3c2f6f jmp    0x3c2f97
3c2f71 mov    rbx,QWORD PTR [rbx]
3c2f74 movzx  edx,WORD PTR [rax]
3c2f77 mov    rdi,QWORD PTR [rbx+0x3c28]
3c2f7e mov    rcx,rdi
3c2f81 call   0x3bfed4
3c2f86 movss  xmm1,DWORD PTR [rbx+0x3c30]
3c2f8d 
3c2f8e divss  xmm1,DWORD PTR [rdi+0x14]
3c2f93 mulss  xmm0,xmm1
3c2f97 mov    rbx,QWORD PTR [rsp+0x30]
3c2f9c add    rsp,0x20
3c2fa0 pop    rdi
3c2fa1 ret

; closure independent pdata/next-pdata extent 3c7aac..3c7ab4 unwind0
3c7aac jmp    0x3c7ab4
3c7ab1 int3
3c7ab2 int3
3c7ab3 int3

; closure independent pdata/next-pdata extent 3c7b24..3c7b93 unwind3d2120
3c7b24 rex push rbx
3c7b26 push   rbp
3c7b27 push   rsi
3c7b28 push   rdi
3c7b29 sub    rsp,0x38
3c7b2d mov    edi,r9d
3c7b30 mov    DWORD PTR [rsp+0x20],r9d
3c7b35 mov    r9d,DWORD PTR [rcx+0xc]
3c7b39 mov    rbp,r8
3c7b3c xor    r8d,r8d
3c7b3f mov    rbx,rdx
3c7b42 mov    rsi,rcx
3c7b45 call   0x3c6144
3c7b4a mov    r8d,DWORD PTR [rsi+0xc]
3c7b4e xor    edx,edx
3c7b50 mov    rcx,rsi
3c7b53 call   0x3c2ec0
3c7b58 mov    QWORD PTR [rbx+0x4],0x0
3c7b5f 
3c7b60 mov    DWORD PTR [rbx],0x0
3c7b66 test   edi,edi
3c7b68 jle    0x3c7b8a
3c7b6a mov    r9d,edi
3c7b6d mov    r8,rbp
3c7b70 xor    edx,edx
3c7b72 mov    rcx,rsi
3c7b75 call   0x3c2fa4
3c7b7a test   al,al
3c7b7c je     0x3c7b8a
3c7b7e mov    DWORD PTR [rbx+0x8],edi
3c7b81 mov    DWORD PTR [rbx+0x4],edi
3c7b84 mov    DWORD PTR [rbx],edi
3c7b86 mov    BYTE PTR [rbx+0x16],0x0
3c7b8a add    rsp,0x38
3c7b8e pop    rdi
3c7b8f pop    rsi
3c7b90 pop    rbp
3c7b91 pop    rbx
3c7b92 ret

; closure independent pdata/next-pdata extent 3c5ce0..3c5d14 unwind0
3c5ce0 cmp    ecx,0x3b
3c5ce3 ja     0x3c5cf5
3c5ce5 movabs rdx,0x800530200002400
3c5cec 
3c5cef bt     rdx,rcx
3c5cf3 jb     0x3c5d0d
3c5cf5 add    ecx,0xffffffa5
3c5cf8 cmp    ecx,0x22
3c5cfb ja     0x3c5d10
3c5cfd movabs rax,0x700000005
3c5d04 
3c5d07 bt     rax,rcx
3c5d0b jae    0x3c5d10
3c5d0d mov    al,0x1
3c5d0f ret
3c5d10 xor    al,al
3c5d12 ret
3c5d13 int3

; closure independent pdata/next-pdata extent 3c5db0..3c5e5a unwind3d2308
3c5db0 rex push rbx
3c5db2 push   rbp
3c5db3 push   rsi
3c5db4 push   rdi
3c5db5 push   r14
3c5db7 sub    rsp,0x20
3c5dbb test   DWORD PTR [rcx+0xe88],0x8000
3c5dc2 
3c5dc5 mov    esi,edx
3c5dc7 jne    0x3c5e4d
3c5dcd test   edx,edx
3c5dcf jle    0x3c5e4d
3c5dd1 lea    ebx,[rdx-0x1]
3c5dd4 lea    rdi,[rcx+0x18]
3c5dd8 mov    edx,ebx
3c5dda mov    rcx,rdi
3c5ddd call   0x39f604
3c5de2 movzx  ecx,WORD PTR [rax]
3c5de5 call   0x3c5ce0
3c5dea mov    edx,esi
3c5dec mov    rcx,rdi
3c5def mov    bpl,al
3c5df2 call   0x39f604
3c5df7 movzx  ecx,WORD PTR [rax]
3c5dfa call   0x3a4b10
3c5dff mov    edx,esi
3c5e01 mov    rcx,rdi
3c5e04 mov    r14b,al
3c5e07 call   0x39f604
3c5e0c movzx  ecx,WORD PTR [rax]
3c5e0f call   0x3c5ce0
3c5e14 mov    edx,ebx
3c5e16 mov    rcx,rdi
3c5e19 mov    sil,al
3c5e1c call   0x39f604
3c5e21 movzx  ecx,WORD PTR [rax]
3c5e24 call   0x3a4b10
3c5e29 test   al,al
3c5e2b jne    0x3c5e32
3c5e2d test   bpl,bpl
3c5e30 je     0x3c5e3c
3c5e32 test   sil,sil
3c5e35 jne    0x3c5e41
3c5e37 test   r14b,r14b
3c5e3a je     0x3c5e46
3c5e3c test   sil,sil
3c5e3f je     0x3c5e4d
3c5e41 test   bpl,bpl
3c5e44 jne    0x3c5e4d
3c5e46 mov    eax,0x1
3c5e4b jmp    0x3c5e4f
3c5e4d xor    eax,eax
3c5e4f add    rsp,0x20
3c5e53 pop    r14
3c5e55 pop    rdi
3c5e56 pop    rsi
3c5e57 pop    rbp
3c5e58 pop    rbx
3c5e59 ret

; closure independent pdata/next-pdata extent 3c7ab4..3c7b0f unwind3d2130
3c7ab4 rex push rbx
3c7ab6 push   rbp
3c7ab7 push   rsi
3c7ab8 push   rdi
3c7ab9 sub    rsp,0x28
3c7abd mov    ebp,r9d
3c7ac0 mov    rbx,r8
3c7ac3 mov    rsi,rdx
3c7ac6 mov    rdi,rcx
3c7ac9 call   0x3c6418
3c7ace mov    rcx,rdi
3c7ad1 call   0x3c6554
3c7ad6 mov    edx,DWORD PTR [rsi]
3c7ad8 mov    r9d,ebp
3c7adb mov    r8,rbx
3c7ade mov    rcx,rdi
3c7ae1 call   0x3c2fa4
3c7ae6 test   al,al
3c7ae8 je     0x3c7b04
3c7aea mov    edx,DWORD PTR [rsi]
3c7aec mov    r8d,ebp
3c7aef mov    rcx,rsi
3c7af2 call   0x3c6134
3c7af7 add    DWORD PTR [rsi],ebp
3c7af9 mov    eax,0x1
3c7afe mov    BYTE PTR [rsi+0x16],0x0
3c7b02 jmp    0x3c7b06
3c7b04 xor    eax,eax
3c7b06 add    rsp,0x28
3c7b0a pop    rdi
3c7b0b pop    rsi
3c7b0c pop    rbp
3c7b0d pop    rbx
3c7b0e ret

; closure independent pdata/next-pdata extent 39357c..393a04 unwind3d473c
39357c mov    QWORD PTR [rsp+0x18],r8
393581 mov    QWORD PTR [rsp+0x10],rdx
393586 mov    QWORD PTR [rsp+0x8],rcx
39358b sub    rsp,0x78
39358f mov    rax,QWORD PTR [rsp+0x88]
393596 
393597 movzx  eax,BYTE PTR [rax]
39359a sar    eax,0x3
39359d cdqe
39359f lea    rcx,[rip+0xfffffffffff16a0a]        # 0x2a9fb0
3935a6 movsx  eax,BYTE PTR [rcx+rax*1]
3935aa mov    DWORD PTR [rsp+0x28],eax
3935ae cmp    DWORD PTR [rsp+0x28],0x0
3935b3 je     0x3935bf
3935b5 mov    DWORD PTR [rsp+0x30],0x0
3935bc 
3935bd jmp    0x3935c7
3935bf mov    DWORD PTR [rsp+0x30],0x1
3935c6 
3935c7 mov    eax,DWORD PTR [rsp+0x30]
3935cb mov    ecx,DWORD PTR [rsp+0x28]
3935cf add    ecx,eax
3935d1 mov    eax,ecx
3935d3 mov    DWORD PTR [rsp+0x2c],eax
3935d7 cmp    QWORD PTR [rsp+0x90],0x0
3935de 
3935e0 jne    0x3935fd
3935e2 movsxd rax,DWORD PTR [rsp+0x2c]
3935e7 mov    rcx,QWORD PTR [rsp+0x88]
3935ee 
3935ef add    rcx,rax
3935f2 mov    rax,rcx
3935f5 mov    QWORD PTR [rsp+0x90],rax
3935fc 
3935fd mov    rax,QWORD PTR [rsp+0x90]
393604 
393605 cmp    QWORD PTR [rsp+0x88],rax
39360c 
39360d jae    0x39362a
39360f mov    eax,0x1
393614 imul   rax,rax,0x0
393618 mov    rcx,QWORD PTR [rsp+0x88]
39361f 
393620 movsx  eax,BYTE PTR [rcx+rax*1]
393624 mov    DWORD PTR [rsp+0x34],eax
393628 jmp    0x393632
39362a mov    DWORD PTR [rsp+0x34],0x0
393631 
393632 mov    eax,0x1
393637 imul   rax,rax,0x0
39363b mov    cl,BYTE PTR [rsp+0x34]
39363f mov    BYTE PTR [rsp+rax*1+0x24],cl
393643 mov    rax,QWORD PTR [rsp+0x88]
39364a 
39364b inc    rax
39364e cmp    rax,QWORD PTR [rsp+0x90]
393655 
393656 jae    0x393673
393658 mov    eax,0x1
39365d imul   rax,rax,0x1
393661 mov    rcx,QWORD PTR [rsp+0x88]
393668 
393669 movsx  eax,BYTE PTR [rcx+rax*1]
39366d mov    DWORD PTR [rsp+0x38],eax
393671 jmp    0x39367b
393673 mov    DWORD PTR [rsp+0x38],0x0
39367a 
39367b mov    eax,0x1
393680 imul   rax,rax,0x1
393684 mov    cl,BYTE PTR [rsp+0x38]
393688 mov    BYTE PTR [rsp+rax*1+0x24],cl
39368c mov    rax,QWORD PTR [rsp+0x88]
393693 
393694 add    rax,0x2
393698 cmp    rax,QWORD PTR [rsp+0x90]
39369f 
3936a0 jae    0x3936bd
3936a2 mov    eax,0x1
3936a7 imul   rax,rax,0x2
3936ab mov    rcx,QWORD PTR [rsp+0x88]
3936b2 
3936b3 movsx  eax,BYTE PTR [rcx+rax*1]
3936b7 mov    DWORD PTR [rsp+0x3c],eax
3936bb jmp    0x3936c5
3936bd mov    DWORD PTR [rsp+0x3c],0x0
3936c4 
3936c5 mov    eax,0x1
3936ca imul   rax,rax,0x2
3936ce mov    cl,BYTE PTR [rsp+0x3c]
3936d2 mov    BYTE PTR [rsp+rax*1+0x24],cl
3936d6 mov    rax,QWORD PTR [rsp+0x88]
3936dd 
3936de add    rax,0x3
3936e2 cmp    rax,QWORD PTR [rsp+0x90]
3936e9 
3936ea jae    0x393707
3936ec mov    eax,0x1
3936f1 imul   rax,rax,0x3
3936f5 mov    rcx,QWORD PTR [rsp+0x88]
3936fc 
3936fd movsx  eax,BYTE PTR [rcx+rax*1]
393701 mov    DWORD PTR [rsp+0x40],eax
393705 jmp    0x39370f
393707 mov    DWORD PTR [rsp+0x40],0x0
39370e 
39370f mov    eax,0x1
393714 imul   rax,rax,0x3
393718 mov    cl,BYTE PTR [rsp+0x40]
39371c mov    BYTE PTR [rsp+rax*1+0x24],cl
393720 mov    eax,0x1
393725 imul   rax,rax,0x0
393729 movzx  eax,BYTE PTR [rsp+rax*1+0x24]
39372e movsxd rcx,DWORD PTR [rsp+0x28]
393733 lea    rdx,[rip+0xfffffffffff16896]        # 0x2a9fd0
39373a and    eax,DWORD PTR [rdx+rcx*4]
39373d shl    eax,0x12
393740 mov    rcx,QWORD PTR [rsp+0x80]
393747 
393748 mov    DWORD PTR [rcx],eax
39374a mov    eax,0x1
39374f imul   rax,rax,0x1
393753 movzx  eax,BYTE PTR [rsp+rax*1+0x24]
393758 and    eax,0x3f
39375b shl    eax,0xc
39375e mov    rcx,QWORD PTR [rsp+0x80]
393765 
393766 mov    ecx,DWORD PTR [rcx]
393768 or     ecx,eax
39376a mov    eax,ecx
39376c mov    rcx,QWORD PTR [rsp+0x80]
393773 
393774 mov    DWORD PTR [rcx],eax
393776 mov    eax,0x1
39377b imul   rax,rax,0x2
39377f movzx  eax,BYTE PTR [rsp+rax*1+0x24]
393784 and    eax,0x3f
393787 shl    eax,0x6
39378a mov    rcx,QWORD PTR [rsp+0x80]
393791 
393792 mov    ecx,DWORD PTR [rcx]
393794 or     ecx,eax
393796 mov    eax,ecx
393798 mov    rcx,QWORD PTR [rsp+0x80]
39379f 
3937a0 mov    DWORD PTR [rcx],eax
3937a2 mov    eax,0x1
3937a7 imul   rax,rax,0x3
3937ab movzx  eax,BYTE PTR [rsp+rax*1+0x24]
3937b0 and    eax,0x3f
3937b3 mov    rcx,QWORD PTR [rsp+0x80]
3937ba 
3937bb mov    ecx,DWORD PTR [rcx]
3937bd or     ecx,eax
3937bf mov    eax,ecx
3937c1 mov    rcx,QWORD PTR [rsp+0x80]
3937c8 
3937c9 mov    DWORD PTR [rcx],eax
3937cb movsxd rax,DWORD PTR [rsp+0x28]
3937d0 lea    rcx,[rip+0xfffffffffff16829]        # 0x2aa000
3937d7 mov    eax,DWORD PTR [rcx+rax*4]
3937da mov    rcx,QWORD PTR [rsp+0x80]
3937e1 
3937e2 mov    QWORD PTR [rsp+0x60],rcx
3937e7 mov    cl,al
3937e9 mov    rax,QWORD PTR [rsp+0x60]
3937ee mov    eax,DWORD PTR [rax]
3937f0 shr    eax,cl
3937f2 mov    rcx,QWORD PTR [rsp+0x80]
3937f9 
3937fa mov    DWORD PTR [rcx],eax
3937fc mov    DWORD PTR [rsp+0x20],0x0
393803 
393804 movsxd rax,DWORD PTR [rsp+0x28]
393809 lea    rcx,[rip+0xfffffffffff167d8]        # 0x2a9fe8
393810 mov    rdx,QWORD PTR [rsp+0x80]
393817 
393818 mov    eax,DWORD PTR [rcx+rax*4]
39381b cmp    DWORD PTR [rdx],eax
39381d jae    0x393829
39381f mov    DWORD PTR [rsp+0x44],0x1
393826 
393827 jmp    0x393831
393829 mov    DWORD PTR [rsp+0x44],0x0
393830 
393831 mov    eax,DWORD PTR [rsp+0x44]
393835 shl    eax,0x6
393838 mov    DWORD PTR [rsp+0x20],eax
39383c mov    rax,QWORD PTR [rsp+0x80]
393843 
393844 mov    eax,DWORD PTR [rax]
393846 shr    eax,0xb
393849 cmp    eax,0x1b
39384c jne    0x393858
39384e mov    DWORD PTR [rsp+0x48],0x1
393855 
393856 jmp    0x393860
393858 mov    DWORD PTR [rsp+0x48],0x0
39385f 
393860 mov    eax,DWORD PTR [rsp+0x48]
393864 shl    eax,0x7
393867 mov    ecx,DWORD PTR [rsp+0x20]
39386b or     ecx,eax
39386d mov    eax,ecx
39386f mov    DWORD PTR [rsp+0x20],eax
393873 mov    rax,QWORD PTR [rsp+0x80]
39387a 
39387b cmp    DWORD PTR [rax],0xffff
393881 jbe    0x39388d
393883 mov    DWORD PTR [rsp+0x4c],0x1
39388a 
39388b jmp    0x393895
39388d mov    DWORD PTR [rsp+0x4c],0x0
393894 
393895 mov    eax,DWORD PTR [rsp+0x4c]
393899 shl    eax,0x8
39389c mov    ecx,DWORD PTR [rsp+0x20]
3938a0 or     ecx,eax
3938a2 mov    eax,ecx
3938a4 mov    DWORD PTR [rsp+0x20],eax
3938a8 mov    eax,0x1
3938ad imul   rax,rax,0x1
3938b1 movzx  eax,BYTE PTR [rsp+rax*1+0x24]
3938b6 and    eax,0xc0
3938bb sar    eax,0x2
3938be mov    ecx,DWORD PTR [rsp+0x20]
3938c2 or     ecx,eax
3938c4 mov    eax,ecx
3938c6 mov    DWORD PTR [rsp+0x20],eax
3938ca mov    eax,0x1
3938cf imul   rax,rax,0x2
3938d3 movzx  eax,BYTE PTR [rsp+rax*1+0x24]
3938d8 and    eax,0xc0
3938dd sar    eax,0x4
3938e0 mov    ecx,DWORD PTR [rsp+0x20]
3938e4 or     ecx,eax
3938e6 mov    eax,ecx
3938e8 mov    DWORD PTR [rsp+0x20],eax
3938ec mov    eax,0x1
3938f1 imul   rax,rax,0x3
3938f5 movzx  eax,BYTE PTR [rsp+rax*1+0x24]
3938fa sar    eax,0x6
3938fd mov    ecx,DWORD PTR [rsp+0x20]
393901 or     ecx,eax
393903 mov    eax,ecx
393905 mov    DWORD PTR [rsp+0x20],eax
393909 mov    eax,DWORD PTR [rsp+0x20]
39390d xor    eax,0x2a
393910 mov    DWORD PTR [rsp+0x20],eax
393914 movsxd rax,DWORD PTR [rsp+0x28]
393919 lea    rcx,[rip+0xfffffffffff166f8]        # 0x2aa018
393920 mov    eax,DWORD PTR [rcx+rax*4]
393923 mov    cl,al
393925 mov    eax,DWORD PTR [rsp+0x20]
393929 sar    eax,cl
39392b mov    DWORD PTR [rsp+0x20],eax
39392f cmp    DWORD PTR [rsp+0x20],0x0
393934 je     0x3939fb
39393a mov    eax,0x1
39393f imul   rax,rax,0x0
393943 movzx  eax,BYTE PTR [rsp+rax*1+0x24]
393948 test   eax,eax
39394a je     0x393956
39394c mov    DWORD PTR [rsp+0x54],0x1
393953 
393954 jmp    0x39395e
393956 mov    DWORD PTR [rsp+0x54],0x0
39395d 
39395e mov    eax,0x1
393963 imul   rax,rax,0x1
393967 movzx  eax,BYTE PTR [rsp+rax*1+0x24]
39396c test   eax,eax
39396e je     0x39397a
393970 mov    DWORD PTR [rsp+0x50],0x1
393977 
393978 jmp    0x393982
39397a mov    DWORD PTR [rsp+0x50],0x0
393981 
393982 mov    eax,0x1
393987 imul   rax,rax,0x2
39398b movzx  eax,BYTE PTR [rsp+rax*1+0x24]
393990 test   eax,eax
393992 je     0x39399e
393994 mov    DWORD PTR [rsp+0x58],0x1
39399b 
39399c jmp    0x3939a6
39399e mov    DWORD PTR [rsp+0x58],0x0
3939a5 
3939a6 mov    eax,0x1
3939ab imul   rax,rax,0x3
3939af movzx  eax,BYTE PTR [rsp+rax*1+0x24]
3939b4 test   eax,eax
3939b6 je     0x3939c2
3939b8 mov    DWORD PTR [rsp+0x5c],0x1
3939bf 
3939c0 jmp    0x3939ca
3939c2 mov    DWORD PTR [rsp+0x5c],0x0
3939c9 
3939ca mov    eax,DWORD PTR [rsp+0x50]
3939ce mov    ecx,DWORD PTR [rsp+0x54]
3939d2 add    ecx,eax
3939d4 mov    eax,ecx
3939d6 add    eax,DWORD PTR [rsp+0x58]
3939da add    eax,DWORD PTR [rsp+0x5c]
3939de mov    edx,eax
3939e0 mov    ecx,DWORD PTR [rsp+0x2c]
3939e4 call   0x38019c
3939e9 mov    DWORD PTR [rsp+0x2c],eax
3939ed mov    rax,QWORD PTR [rsp+0x80]
3939f4 
3939f5 mov    DWORD PTR [rax],0xfffd
3939fb mov    eax,DWORD PTR [rsp+0x2c]
3939ff add    rsp,0x78
393a03 ret

; closure independent pdata/next-pdata extent 3c318c..3c31a0 unwind0
3c318c mov    rax,QWORD PTR [rcx]
3c318f cmp    BYTE PTR [rax+0x79],0x0
3c3193 jne    0x3c31a0
3c3199 jmp    0x3c31e8
3c319e int3
3c319f int3

; closure independent pdata/next-pdata extent 3c31e8..3c322d unwind3d2054
3c31e8 mov    QWORD PTR [rsp+0x8],rbx
3c31ed mov    QWORD PTR [rsp+0x10],rsi
3c31f2 push   rdi
3c31f3 sub    rsp,0x20
3c31f7 mov    edi,DWORD PTR [rcx+0xc]
3c31fa lea    ebx,[rdx+0x1]
3c31fd mov    rsi,rcx
3c3200 jmp    0x3c3212
3c3202 mov    edx,ebx
3c3204 mov    rcx,rsi
3c3207 call   0x3c5db0
3c320c test   eax,eax
3c320e jne    0x3c3216
3c3210 inc    ebx
3c3212 cmp    ebx,edi
3c3214 jl     0x3c3202
3c3216 mov    rsi,QWORD PTR [rsp+0x38]
3c321b cmp    ebx,edi
3c321d cmovg  ebx,edi
3c3220 mov    eax,ebx
3c3222 mov    rbx,QWORD PTR [rsp+0x30]
3c3227 add    rsp,0x20
3c322b pop    rdi
3c322c ret

; closure independent pdata/next-pdata extent 39bde4..39be68 unwind3d2130
39bde4 rex push rbx
39bde6 push   rbp
39bde7 push   rsi
39bde8 push   rdi
39bde9 sub    rsp,0x28
39bded mov    rsi,QWORD PTR [rip+0x69d34]        # 0x405b28
39bdf4 mov    edi,r8d
39bdf7 bts    edi,0x8
39bdfb mov    ebp,edx
39bdfd test   r8d,0xf00
39be04 mov    ebx,ecx
39be06 cmovne edi,r8d
39be0a mov    r8d,edi
39be0d call   0x39b8ac
39be12 test   al,al
39be14 je     0x39be5d
39be16 bt     ebx,0xb
39be1a jae    0x39be25
39be1c mov    ecx,ebx
39be1e call   0x3907f0
39be23 mov    ebx,eax
39be25 mov    edx,ebx
39be27 and    edx,0xf800
39be2d cmp    DWORD PTR [rsi+0xe28],edx
39be33 jne    0x39be5d
39be35 and    ebx,0xffff07ff
39be3b jne    0x39be47
39be3d mov    rcx,rsi
39be40 call   0x390810
39be45 mov    ebx,eax
39be47 and    edi,0xf
39be4a mov    edx,ebp
39be4c mov    r8d,edi
39be4f mov    ecx,ebx
39be51 call   0x394268
39be56 test   al,al
39be58 setne  al
39be5b jmp    0x39be5f
39be5d xor    al,al
39be5f add    rsp,0x28
39be63 pop    rdi
39be64 pop    rsi
39be65 pop    rbp
39be66 pop    rbx
39be67 ret

; closure independent pdata/next-pdata extent 39b8ac..39b93e unwind3d2040
39b8ac mov    QWORD PTR [rsp+0x8],rbx
39b8b1 push   rdi
39b8b2 sub    rsp,0x20
39b8b6 mov    r9d,r8d
39b8b9 mov    r10d,ecx
39b8bc mov    rcx,QWORD PTR [rip+0x6a265]        # 0x405b28
39b8c3 bts    r9d,0xb
39b8c8 test   r8d,0xf00
39b8cf mov    edi,edx
39b8d1 cmovne r9d,r8d
39b8d5 bt     r9d,0xd
39b8da jae    0x39b8e6
39b8dc cmp    QWORD PTR [rcx+0x48e8],0x0
39b8e3 
39b8e4 je     0x39b909
39b8e6 bt     r9d,0xc
39b8eb jae    0x39b8f1
39b8ed mov    al,0x1
39b8ef jmp    0x39b933
39b8f1 mov    rcx,QWORD PTR [rcx+0x3f08]
39b8f8 mov    r8d,r9d
39b8fb call   0x38f6bc
39b900 mov    ebx,eax
39b902 cmp    eax,0xff
39b907 jne    0x39b90d
39b909 xor    al,al
39b90b jmp    0x39b933
39b90d mov    ecx,r10d
39b910 call   0x392bec
39b915 mov    ecx,edi
39b917 mov    rdx,rax
39b91a call   0x392bbc
39b91f movzx  ecx,BYTE PTR [rdx+0x4]
39b923 cmp    ebx,ecx
39b925 jge    0x39b92d
39b927 mov    DWORD PTR [rdx+0xc],eax
39b92a mov    BYTE PTR [rdx+0x4],bl
39b92d cmp    DWORD PTR [rdx+0x8],eax
39b930 sete   al
39b933 mov    rbx,QWORD PTR [rsp+0x30]
39b938 add    rsp,0x20
39b93c pop    rdi
39b93d ret

; closure independent pdata/next-pdata extent 394300..394314 unwind0
394300 movzx  r8d,dl
394304 xor    edx,edx
394306 jmp    0x394268
39430b int3
39430c xor    edx,edx
39430e jmp    0x394314
394313 int3

; closure independent pdata/next-pdata extent 394a14..394b3e unwind3d2d38
394a14 rex push rbx
394a16 push   rbp
394a17 push   rsi
394a18 push   rdi
394a19 push   r14
394a1b push   r15
394a1d sub    rsp,0x48
394a21 mov    rbx,QWORD PTR [rip+0x71100]        # 0x405b28
394a28 mov    edi,edx
394a2a mov    r14,rcx
394a2d mov    eax,DWORD PTR [rbx+0x3f54]
394a33 test   eax,eax
394a35 je     0x394a48
394a37 cmp    eax,edx
394a39 je     0x394a48
394a3b cmp    BYTE PTR [rbx+0x3f5c],0x0
394a42 je     0x394acc
394a48 mov    rsi,QWORD PTR [rbx+0x3f08]
394a4f cmp    QWORD PTR [rbx+0x3f10],rsi
394a56 jne    0x394acc
394a58 mov    eax,DWORD PTR [rbx+0x3f68]
394a5e test   eax,eax
394a60 je     0x394a6f
394a62 cmp    eax,edi
394a64 je     0x394a6f
394a66 cmp    BYTE PTR [rbx+0x3f75],0x0
394a6d je     0x394acc
394a6f mov    r8b,0x1
394a72 lea    rdx,[rcx+0x8]
394a76 call   0x3944ac
394a7b test   al,al
394a7d je     0x394acc
394a7f cmp    DWORD PTR [rbx+0x47a4],edi
394a85 mov    eax,0x47a8
394a8a lea    ecx,[rax-0x20]
394a8d cmovne eax,ecx
394a90 mov    ebp,DWORD PTR [rax+rbx*1]
394a93 bt     ebp,0x8
394a97 jb     0x394aa7
394a99 xor    edx,edx
394a9b mov    rcx,rsi
394a9e call   0x394784
394aa3 test   al,al
394aa5 je     0x394ac5
394aa7 test   edi,edi
394aa9 je     0x394ab2
394aab mov    ecx,edi
394aad call   0x39b52c
394ab2 test   bpl,0x4
394ab6 je     0x394adb
394ab8 cmp    DWORD PTR [rbx+0x3f68],edi
394abe jne    0x394ac5
394ac0 call   0x390078
394ac5 mov    BYTE PTR [rbx+0x3f5d],0x1
394acc xor    al,al
394ace add    rsp,0x48
394ad2 pop    r15
394ad4 pop    r14
394ad6 pop    rdi
394ad7 pop    rsi
394ad8 pop    rbp
394ad9 pop    rbx
394ada ret
394adb test   edi,edi
394add je     0x394b32
394adf cmp    BYTE PTR [rbx+0x5d03],0x0
394ae6 je     0x394b29
394ae8 cmp    DWORD PTR [rbx+0x3f58],edi
394aee jne    0x394b29
394af0 call   0x3925a4
394af5 movss  xmm0,DWORD PTR [rip+0xffffffffffef8757]        # 0x28d254
394afc 
394afd lea    r8,[r14+0x8]
394b01 movss  DWORD PTR [rsp+0x30],xmm0
394b07 xorps  xmm1,xmm1
394b0a mov    DWORD PTR [rsp+0x28],0x0
394b11 
394b12 mov    rcx,rax
394b15 mov    r9d,0xff00ffff
394b1b movss  DWORD PTR [rsp+0x20],xmm1
394b21 mov    rdx,r14
394b24 call   0x3a1148
394b29 cmp    DWORD PTR [rbx+0x5d08],edi
394b2f jne    0x394b32
394b31 int3
394b32 cmp    BYTE PTR [rbx+0x4927],0x0
394b39 sete   al
394b3c jmp    0x394ace

; closure independent pdata/next-pdata extent 38f6bc..38f744 unwind0
38f6bc mov    r9,rcx
38f6bf bt     r8d,0x8
38f6c4 jae    0x38f722
38f6c6 mov    rcx,QWORD PTR [rip+0x7645b]        # 0x405b28
38f6cd test   edx,edx
38f6cf je     0x38f6df
38f6d1 cmp    DWORD PTR [rcx+0x3f68],edx
38f6d7 jne    0x38f6df
38f6d9 mov    eax,0x1
38f6de ret
38f6df mov    rcx,QWORD PTR [rcx+0x48e8]
38f6e6 test   rcx,rcx
38f6e9 je     0x38f71c
38f6eb mov    rax,QWORD PTR [r9+0x378]
38f6f2 cmp    QWORD PTR [rcx+0x378],rax
38f6f9 jne    0x38f71c
38f6fb mov    eax,0x3
38f700 cmp    rcx,r9
38f703 je     0x38f740
38f705 cmp    QWORD PTR [rcx+0x378],rcx
38f70c je     0x38f71c
38f70e mov    rcx,QWORD PTR [rcx+0x368]
38f715 inc    eax
38f717 test   rcx,rcx
38f71a jne    0x38f700
38f71c mov    eax,0xff
38f721 ret
38f722 bt     r8d,0xa
38f727 jae    0x38f72f
38f729 mov    eax,0x2
38f72e ret
38f72f and    r8d,0x200
38f736 neg    r8d
38f739 sbb    eax,eax
38f73b and    eax,0xfe
38f740 ret
38f741 int3
38f742 int3
38f743 int3

; closure independent pdata/next-pdata extent 392bbc..392bec unwind0
392bbc lea    eax,[rcx-0x1]
392bbf cmp    eax,0xfffffffd
392bc2 jbe    0x392bd1
392bc4 mov    rax,QWORD PTR [rip+0x72f5d]        # 0x405b28
392bcb mov    ecx,DWORD PTR [rax+0x4784]
392bd1 mov    eax,ecx
392bd3 ret
392bd4 mov    rax,QWORD PTR [rip+0x72f4d]        # 0x405b28
392bdb mov    rcx,QWORD PTR [rax+0x3f08]
392be2 movss  xmm0,DWORD PTR [rcx+0x90]
392be9 
392bea ret
392beb int3

; closure independent pdata/next-pdata extent 392bec..392ca1 unwind3d2690
392bec rex push rbx
392bee push   rbp
392bef push   rsi
392bf0 push   rdi
392bf1 push   r14
392bf3 sub    rsp,0x30
392bf7 mov    rbp,QWORD PTR [rip+0x72f2a]        # 0x405b28
392bfe mov    esi,ecx
392c00 bt     ecx,0xb
392c04 jae    0x392c0d
392c06 call   0x3907f0
392c0b mov    esi,eax
392c0d mov    eax,esi
392c0f and    esi,0xf800
392c15 and    eax,0xffff07ff
392c1a jne    0x392c26
392c1c mov    edx,esi
392c1e mov    rcx,rbp
392c21 call   0x390810
392c26 movsxd r14,eax
392c29 movzx  eax,WORD PTR [rbp+r14*2+0x4240]
392c30 
392c32 jmp    0x392c4e
392c34 movsx  edx,ax
392c37 lea    rcx,[rbp+0x4758]
392c3e call   0x3786bc
392c43 movzx  ecx,WORD PTR [rax+0x2]
392c47 cmp    ecx,esi
392c49 je     0x392c96
392c4b movzx  eax,WORD PTR [rax]
392c4e cmp    ax,0xffff
392c52 jne    0x392c34
392c54 lea    rbx,[rbp+0x4758]
392c5b movsx  edi,WORD PTR [rbx]
392c5e lea    rcx,[rsp+0x20]
392c63 call   0x38b00c
392c68 mov    rdx,rax
392c6b mov    rcx,rbx
392c6e call   0x39f030
392c73 mov    edx,edi
392c75 mov    rcx,rbx
392c78 call   0x3786bc
392c7d mov    WORD PTR [rax+0x2],si
392c81 movzx  ecx,WORD PTR [rbp+r14*2+0x4240]
392c88 
392c8a mov    WORD PTR [rax],cx
392c8d mov    WORD PTR [rbp+r14*2+0x4240],di
392c94 
392c96 add    rsp,0x30
392c9a pop    r14
392c9c pop    rdi
392c9d pop    rsi
392c9e pop    rbp
392c9f pop    rbx
392ca0 ret

; closure independent pdata/next-pdata extent 394268..3942fd unwind3d46b0
394268 mov    QWORD PTR [rsp+0x8],rbx
39426d mov    QWORD PTR [rsp+0x10],rsi
394272 push   rdi
394273 sub    rsp,0x40
394277 movaps XMMWORD PTR [rsp+0x30],xmm6
39427c mov    edi,r8d
39427f mov    esi,edx
394281 mov    ebx,ecx
394283 call   0x392714
394288 cmp    BYTE PTR [rax],0x0
39428b je     0x3942e6
39428d movss  xmm6,DWORD PTR [rax+0x4]
394292 xorps  xmm0,xmm0
394295 comiss xmm0,xmm6
394298 ja     0x3942e6
39429a ucomiss xmm6,xmm0
39429d jp     0x3942a1
39429f je     0x3942d6
3942a1 test   dil,0x1
3942a5 je     0x3942e6
3942a7 lea    r8,[rsp+0x20]
3942ac mov    ecx,edi
3942ae lea    rdx,[rsp+0x68]
3942b3 call   0x392d54
3942b8 comiss xmm6,DWORD PTR [rsp+0x68]
3942bd jbe    0x3942e6
3942bf movss  xmm2,DWORD PTR [rsp+0x20]
3942c5 mov    ecx,ebx
3942c7 movss  xmm1,DWORD PTR [rsp+0x68]
3942cd call   0x3927d0
3942d2 test   eax,eax
3942d4 jle    0x3942e6
3942d6 mov    edx,esi
3942d8 mov    ecx,ebx
3942da call   0x39bf0c
3942df test   al,al
3942e1 setne  al
3942e4 jmp    0x3942e8
3942e6 xor    al,al
3942e8 mov    rbx,QWORD PTR [rsp+0x50]
3942ed mov    rsi,QWORD PTR [rsp+0x58]
3942f2 movaps xmm6,XMMWORD PTR [rsp+0x30]
3942f7 add    rsp,0x40
3942fb pop    rdi
3942fc ret

; closure independent pdata/next-pdata extent 3907f0..390864 unwind0
3907f0 mov    rax,QWORD PTR [rip+0x75331]        # 0x405b28
3907f7 mov    dl,BYTE PTR [rax+0x79]
3907fa neg    dl
3907fc sbb    eax,eax
3907fe btr    ecx,0xb
390802 and    eax,0x7000
390807 add    eax,0x1000
39080c or     eax,ecx
39080e ret
39080f int3
390810 cmp    edx,0x1000
390816 jne    0x39081e
390818 mov    eax,0x288
39081d ret
39081e cmp    edx,0x2000
390824 jne    0x39082c
390826 mov    eax,0x289
39082b ret
39082c cmp    edx,0x4000
390832 jne    0x39083a
390834 mov    eax,0x28a
390839 ret
39083a cmp    edx,0x8000
390840 jne    0x390848
390842 mov    eax,0x28b
390847 ret
390848 cmp    edx,0x800
39084e jne    0x390860
390850 mov    al,BYTE PTR [rcx+0x79]
390853 neg    al
390855 sbb    eax,eax
390857 and    eax,0x3
39085a add    eax,0x288
39085f ret
390860 mov    eax,edx
390862 ret
390863 int3

; closure independent pdata/next-pdata extent 390810..390864 unwind0
390810 cmp    edx,0x1000
390816 jne    0x39081e
390818 mov    eax,0x288
39081d ret
39081e cmp    edx,0x2000
390824 jne    0x39082c
390826 mov    eax,0x289
39082b ret
39082c cmp    edx,0x4000
390832 jne    0x39083a
390834 mov    eax,0x28a
390839 ret
39083a cmp    edx,0x8000
390840 jne    0x390848
390842 mov    eax,0x28b
390847 ret
390848 cmp    edx,0x800
39084e jne    0x390860
390850 mov    al,BYTE PTR [rcx+0x79]
390853 neg    al
390855 sbb    eax,eax
390857 and    eax,0x3
39085a add    eax,0x288
39085f ret
390860 mov    eax,edx
390862 ret
390863 int3

; closure independent pdata/next-pdata extent 392208..392230 unwind0
392208 mov    rcx,QWORD PTR [rip+0x73919]        # 0x405b28
39220f mov    rax,QWORD PTR [rcx+0xb0]
392216 test   rax,rax
392219 je     0x392225
39221b mov    rcx,QWORD PTR [rcx+0xc0]
392222 rex.W jmp rax
392225 lea    rax,[rip+0xffffffffffefb0fc]        # 0x28d328
39222c ret
39222d int3
39222e int3
39222f int3

; closure independent pdata/next-pdata extent 39b1f8..39b220 unwind3d2064
39b1f8 sub    rsp,0x28
39b1fc mov    rdx,rcx
39b1ff mov    rcx,QWORD PTR [rip+0x6a922]        # 0x405b28
39b206 mov    rax,QWORD PTR [rcx+0xb8]
39b20d test   rax,rax
39b210 je     0x39b21b
39b212 mov    rcx,QWORD PTR [rcx+0xc0]
39b219 call   rax
39b21b add    rsp,0x28
39b21f ret

; closure independent pdata/next-pdata extent 39b88c..39b8ac unwind0
39b88c movss  DWORD PTR [rcx+0x98],xmm1
39b893 
39b894 mov    DWORD PTR [rcx+0xa0],0x0
39b89b 
39b89e mov    DWORD PTR [rcx+0xa8],0x0
39b8a5 
39b8a8 ret
39b8a9 int3
39b8aa int3
39b8ab int3

; closure independent pdata/next-pdata extent 39354c..39357c unwind3d2040
39354c mov    QWORD PTR [rsp+0x8],rbx
393551 push   rdi
393552 sub    rsp,0x20
393556 mov    rbx,r8
393559 mov    rdi,rcx
39355c cmp    r8,0x1
393560 jb     0x393571
393562 jbe    0x39356c
393564 dec    r8d
393567 call   0x3ca940
39356c mov    BYTE PTR [rdi+rbx*1-0x1],0x0
393571 mov    rbx,QWORD PTR [rsp+0x30]
393576 add    rsp,0x20
39357a pop    rdi
39357b ret

; closure independent pdata/next-pdata extent 394050..394089 unwind3d2064
394050 sub    rsp,0x28
394054 call   0x394014
394059 xor    ecx,ecx
39405b test   al,al
39405d je     0x394082
39405f mov    rax,QWORD PTR [rip+0x71ac2]        # 0x405b28
394066 cmp    BYTE PTR [rax+0x3f9d],cl
39406c jne    0x39407e
39406e cmp    DWORD PTR [rax+0x3f68],ecx
394074 jne    0x394082
394076 cmp    BYTE PTR [rax+0x3f78],cl
39407c je     0x394082
39407e mov    al,0x1
394080 jmp    0x394084
394082 mov    al,cl
394084 add    rsp,0x28
394088 ret

; closure independent pdata/next-pdata extent 395130..3951a4 unwind0
395130 mov    rax,QWORD PTR [rip+0x709f1]        # 0x405b28
395137 mov    edx,DWORD PTR [rax+0x3f68]
39513d cmp    edx,ecx
39513f je     0x395145
395141 test   edx,edx
395143 jne    0x39514e
395145 mov    WORD PTR [rax+0x3f78],0x101
39514c 
39514e or     DWORD PTR [rax+0x47ac],0x4
395155 ret
395156 int3
395157 int3
395158 mov    rax,QWORD PTR [rip+0x709c9]        # 0x405b28
39515f test   rax,rax
395162 je     0x39516a
395164 inc    DWORD PTR [rax+0xf4]
39516a mov    rax,QWORD PTR [rip+0xffffffffffeea8a7]        # 0x27fa18
395171 mov    rdx,QWORD PTR [rip+0x709f0]        # 0x405b68
395178 rex.W jmp rax
39517b int3
39517c test   rcx,rcx
39517f je     0x395193
395181 mov    rax,QWORD PTR [rip+0x709a0]        # 0x405b28
395188 test   rax,rax
39518b je     0x395193
39518d dec    DWORD PTR [rax+0xf4]
395193 mov    rdx,QWORD PTR [rip+0x709ce]        # 0x405b68
39519a rex.W jmp QWORD PTR [rip+0xffffffffffeea87f]        # 0x27fa20
3951a1 int3
3951a2 int3
3951a3 int3
