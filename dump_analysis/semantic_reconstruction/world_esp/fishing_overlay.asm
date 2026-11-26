30a5dd cmp    BYTE PTR [rip+0xdf694],r15b        # 0x3e9c78 ; CONFIG Bools.drawfishingstate value(+0x48)
30a5e4 je     0x30a7bf
30a5ea xorps  xmm2,xmm2
30a5ed lea    rcx,[rbp+0x15a8]
30a5f4 xorps  xmm1,xmm1
30a5f7 call   0x2cc340
30a5fc mov    rbx,rax
30a5ff call   0x2e09f0
30a604 movaps xmm1,xmm13
30a608 lea    rcx,[rbp+0x15b8]
30a60f movd   xmm2,eax
30a613 cvtdq2ps xmm2,xmm2
30a616 mulss  xmm2,DWORD PTR [rip+0xfffffffffff88a7a]        # 0x293098 ; f32=0.05
30a61e call   0x2cc340
30a623 mov    rcx,rax
30a626 lea    edx,[rsi-0x18]
30a629 mov    r8,rbx
30a62c call   0x39b734
30a631 cmp    BYTE PTR [rip+0xdb682],r15b        # 0x3e5cba
30a638 je     0x30a680
30a63a xorps  xmm2,xmm2
30a63d lea    rcx,[rbp+0x15a8]
30a644 xorps  xmm1,xmm1
30a647 call   0x2cc340
30a64c movss  xmm2,DWORD PTR [rip+0xe5668]        # 0x3efcbc
30a654 lea    rcx,[rbp+0x15b8]
30a65b movss  xmm1,DWORD PTR [rip+0xe5655]        # 0x3efcb8 ; CONFIG V2.FishingBarPosition value(+0x48)
30a663 mov    rbx,rax
30a666 call   0x2cc340
30a66b mov    rcx,rax
30a66e lea    edx,[rsi-0x19]
30a671 mov    r8,rbx
30a674 call   0x39b734
30a679 mov    BYTE PTR [rip+0xdb63a],r15b        # 0x3e5cba
30a680 xorps  xmm3,xmm3
30a683 movss  DWORD PTR [rsp+0x20],xmm11
30a68a xorps  xmm2,xmm2
30a68d lea    rcx,[rsp+0x70]
30a692 xorps  xmm1,xmm1
30a695 call   0x2cc350
30a69a call   0x392ca4
30a69f movups xmm0,XMMWORD PTR [rsp+0x70]
30a6a4 lea    rcx,[rbp+0x15a8]
30a6ab movss  xmm6,DWORD PTR [rip+0xfffffffffff88b25]        # 0x2931d8 ; f32=27
30a6b3 movss  xmm7,DWORD PTR [rip+0xfffffffffff88b91]        # 0x29324c ; f32=560
30a6bb movaps xmm2,xmm6
30a6be movaps xmm1,xmm7
30a6c1 movdqu XMMWORD PTR [rax+0x118],xmm0
30a6c9 call   0x2cc340
30a6ce mov    rcx,rax
30a6d1 xor    edx,edx
30a6d3 call   0x39b770
30a6d8 movzx  ebx,BYTE PTR [rip+0xfffffffffff0e139]        # 0x218818
30a6df lea    rdx,[rbp+0x388]
30a6e6 lea    rcx,[rbp+0x15a8]
30a6ed call   0x2f607c ; STRING getter=0x2f607c Fishing Bar Window
30a6f2 mov    rcx,rax
30a6f5 call   0x2cdd94
30a6fa neg    ebx
30a6fc mov    rcx,rax
30a6ff sbb    r8d,r8d
30a702 xor    edx,edx
30a704 and    r8d,0xfffffffc
30a708 add    r8d,0xaf
30a70f call   0x38cfa4
30a714 lea    rcx,[rbp+0x15b0]
30a71b call   0x39246c
30a720 call   0x390994
30a725 movss  xmm2,DWORD PTR [rbp+0x15b4]
30a72d lea    rcx,[rbp+0x15a8]
30a734 movss  xmm1,DWORD PTR [rbp+0x15b0]
30a73c call   0x2cc340
30a741 movss  xmm0,DWORD PTR [rbp+0x15a8]
30a749 lea    rcx,[rbp-0x70]
30a74d movss  xmm1,DWORD PTR [rbp+0x15ac]
30a755 mov    r9d,0x14
30a75b mov    r8d,esi
30a75e movss  DWORD PTR [rip+0xe5552],xmm0        # 0x3efcb8 ; CONFIG V2.FishingBarPosition value(+0x48)
30a766 mov    edx,esi
30a768 movss  DWORD PTR [rip+0xe554c],xmm1        # 0x3efcbc
30a770 mov    DWORD PTR [rsp+0x20],edi
30a774 call   0x2db318
30a779 movss  xmm3,DWORD PTR [rip+0xdb8ff]        # 0x3e6080
30a781 mov    rcx,r13
30a784 movss  xmm2,DWORD PTR [rbp+0x15b4]
30a78c movss  xmm1,DWORD PTR [rbp+0x15b0]
30a794 movups xmm0,XMMWORD PTR [rax]
30a797 lea    rax,[rsp+0x70]
30a79c mov    QWORD PTR [rsp+0x38],rax
30a7a1 movss  DWORD PTR [rsp+0x30],xmm6
30a7a7 movss  DWORD PTR [rsp+0x28],xmm7
30a7ad movss  DWORD PTR [rsp+0x20],xmm12
30a7b4 movdqu XMMWORD PTR [rsp+0x70],xmm0
30a7ba call   0x35b850
30a7bf lea    rcx,[rbp+0xc8]
30a7c6 call   0x2cb3a4
30a7cb xorps  xmm3,xmm3
