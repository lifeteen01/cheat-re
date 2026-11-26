; pdata function 0x34c4b0..0x34d62c unwind=0x3d3cf4
34c4b0 mov    rax,rsp
34c4b3 push   rbp
34c4b4 push   rbx
34c4b5 push   rsi
34c4b6 push   rdi
34c4b7 push   r13
34c4b9 push   r14
34c4bb push   r15
34c4bd lea    rbp,[rax-0x58]
34c4c1 sub    rsp,0x120
34c4c8 movaps XMMWORD PTR [rax-0x48],xmm6
34c4cc movaps XMMWORD PTR [rax-0x58],xmm7
34c4d0 call   0x38ec90
34c4d5 movss  xmm1,DWORD PTR [rip+0xfffffffffff40d77]        # 0x28d254 ; f32=1
34c4dd mov    ecx,0x4
34c4e2 call   0x392298
34c4e7 mov    edx,eax
34c4e9 mov    ecx,0x8
34c4ee call   0x398bec
34c4f3 lea    rdx,[rip+0xb0e3e]        # 0x3fd338 ; CONFIG S.ConfigInputTest value(+0x48)
34c4fa lea    rcx,[rbp-0x20]
34c4fe call   0x2d4194
34c503 lea    rcx,[rbp+0x78]
34c507 call   0x39233c
34c50c movss  xmm7,DWORD PTR [rip+0xfffffffffff41610]        # 0x28db24 ; f32=30
34c514 movss  xmm6,DWORD PTR [rax]
34c518 mulss  xmm6,DWORD PTR [rip+0xfffffffffff40d30]        # 0x28d250 ; f32=0.5
34c520 subss  xmm6,xmm7
34c524 call   0x3925cc
34c529 movaps xmm2,xmm0
34c52c lea    rcx,[rbp+0x70]
34c530 movaps xmm1,xmm6
34c533 call   0x2cc340
34c538 lea    rcx,[rbp-0x20]
34c53c call   0x2d8ad8
34c541 lea    rcx,[rbp-0x20]
34c545 mov    rdi,rax
34c548 call   0x2cd7ec
34c54d mov    ecx,DWORD PTR [rip+0xb0b95]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34c553 mov    r15d,0x2
34c559 mov    rsi,rax
34c55c lea    r14d,[r15-0x1]
34c560 cmp    ecx,r14d
34c563 jne    0x34c573
34c565 lea    rcx,[rip+0xfffffffffff5b124]        # 0x2a7690
34c56c call   0x365004
34c571 jmp    0x34c596
34c573 cmp    ecx,r15d
34c576 jne    0x34c581
34c578 lea    rcx,[rip+0xfffffffffff5b139]        # 0x2a76b8
34c57f jmp    0x34c56c
34c581 lea    rdx,[rbp-0x60]
34c585 lea    rcx,[rbp+0x68]
34c589 call   0x3538d0 ; STRING getter=0x3538d0 New Config Name..
34c58e mov    rcx,rax
34c591 call   0x2e9bdc
34c596 lea    rdx,[rsp+0x40]
34c59b mov    rbx,rax
34c59e lea    rcx,[rbp+0x68]
34c5a2 call   0x352208 ; STRING getter=0x352208 ##Config
34c5a7 mov    rcx,rax
34c5aa call   0x2e9b8c
34c5af mov    QWORD PTR [rsp+0x38],0x0
34c5b8 mov    rcx,rax
34c5bb lea    rax,[rbp+0x70]
34c5bf mov    QWORD PTR [rsp+0x30],0x0
34c5c8 mov    DWORD PTR [rsp+0x28],0x5000
34c5d0 mov    r9d,edi
34c5d3 mov    r8,rsi
34c5d6 mov    QWORD PTR [rsp+0x20],rax
34c5db mov    rdx,rbx
34c5de call   0x3c0538
34c5e3 call   0x39408c
34c5e8 mov    ecx,r14d
34c5eb mov    BYTE PTR [rip+0xb0f03],al        # 0x3fd4f4
34c5f1 call   0x39890c
34c5f6 mov    eax,DWORD PTR [rip+0xb11c8]        # 0x3fd7c4
34c5fc test   r14b,al
34c5ff jne    0x34c616
34c601 or     eax,r14d
34c604 lea    rcx,[rip+0x8458d]        # 0x3d0b98
34c60b mov    DWORD PTR [rip+0xb11b3],eax        # 0x3fd7c4
34c611 call   0x2cd32c
34c616 movss  xmm1,DWORD PTR [rip+0xfffffffffff46b9e]        # 0x2931bc ; f32=16
34c61e lea    rcx,[rbp+0x68]
34c622 movaps xmm2,xmm1
34c625 call   0x2cc340
34c62a lea    rdx,[rbp+0x68]
34c62e mov    ecx,r15d
34c631 call   0x398c60
34c636 lea    rcx,[rsp+0x40]
34c63b call   0x39233c
34c640 lea    rcx,[rbp+0x78]
34c644 movss  xmm1,DWORD PTR [rax]
34c648 mulss  xmm1,DWORD PTR [rip+0xfffffffffff40c00]        # 0x28d250 ; f32=0.5
34c650 subss  xmm1,xmm7
34c654 movss  xmm7,DWORD PTR [rip+0xfffffffffff46c04]        # 0x293260 ; f32=-1
34c65c movaps xmm2,xmm7
34c65f call   0x2cc340
34c664 lea    rdx,[rbp+0x70]
34c668 lea    rcx,[rbp+0x68]
34c66c call   0x354d0c ; STRING getter=0x354d0c list
34c671 mov    rcx,rax
34c674 call   0x2cdccc
34c679 mov    rcx,rax
34c67c lea    rdx,[rbp+0x78]
34c680 mov    r9d,0x10000
34c686 xor    r8d,r8d
34c689 call   0x38e97c
34c68e lea    rcx,[rbp+0x68]
34c692 call   0x39233c
34c697 xorps  xmm2,xmm2
34c69a lea    rcx,[rbp+0x68]
34c69e movss  xmm1,DWORD PTR [rax]
34c6a2 call   0x2cc340
34c6a7 lea    rcx,[rbp-0x40]
34c6ab call   0x2d4758
34c6b0 lea    rcx,[rbp-0x60]
34c6b4 call   0x2d4758
34c6b9 lea    rsi,[rip+0xffffffffffecc090]        # 0x218750
34c6c0 mov    rcx,rsi
34c6c3 call   0x2d79c0
34c6c8 mov    rcx,rsi
34c6cb mov    rdi,rax
34c6ce call   0x2d1978
34c6d3 mov    rbx,rax
34c6d6 cmp    rax,rdi
34c6d9 je     0x34c6fc
34c6db mov    rdx,rbx
34c6de lea    rcx,[rbp-0x40]
34c6e2 call   0x2d901c
34c6e7 mov    rdx,rbx
34c6ea lea    rcx,[rbp-0x60]
34c6ee call   0x2d901c
34c6f3 add    rbx,0x20
34c6f7 cmp    rbx,rdi
34c6fa jne    0x34c6db
34c6fc lea    rdx,[rbp-0x60]
34c700 lea    rcx,[rsp+0x78]
34c705 call   0x2db2bc
34c70a lea    rdx,[rbp-0x40]
34c70e mov    rbx,rax
34c711 lea    rcx,[rsp+0x58]
34c716 call   0x2db2bc
34c71b mov    ecx,DWORD PTR [rip+0xb09c7]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34c721 mov    rdi,rax
34c724 movsd  xmm6,QWORD PTR [rbp+0x68]
34c729 cmp    ecx,r14d
34c72c jne    0x34c737
34c72e lea    rcx,[rip+0xfffffffffff5af93]        # 0x2a76c8
34c735 jmp    0x34c743
34c737 cmp    ecx,r15d
34c73a jne    0x34c74a
34c73c lea    rcx,[rip+0xfffffffffff5afa5]        # 0x2a76e8
34c743 call   0x365004
34c748 jmp    0x34c760
34c74a lea    rdx,[rsp+0x40]
34c74f lea    rcx,[rbp+0x68]
34c753 call   0x356544 ; STRING getter=0x356544 Current CFGS
34c758 mov    rcx,rax
34c75b call   0x2d85f4
34c760 mov    BYTE PTR [rsp+0x28],0x0
34c765 lea    r8,[rip+0xfffffffffff33234]        # 0x27f9a0
34c76c mov    r9,rdi
34c76f mov    QWORD PTR [rsp+0x20],rbx
34c774 movq   rdx,xmm6
34c779 mov    rcx,rax
34c77c call   0x387a4c
34c781 lea    rcx,[rbp-0x60]
34c785 call   0x2d4a80
34c78a lea    rcx,[rbp-0x40]
34c78e call   0x2d4a80
34c793 call   0x390a88
34c798 mov    ecx,r14d
34c79b call   0x39896c
34c7a0 call   0x390efc
34c7a5 movaps xmm1,xmm7
34c7a8 xorps  xmm0,xmm0
34c7ab call   0x39ac04
34c7b0 movaps xmm2,xmm7
34c7b3 lea    rcx,[rbp+0x70]
34c7b7 xorps  xmm1,xmm1
34c7ba call   0x2cc340
34c7bf movsd  xmm6,QWORD PTR [rax]
34c7c3 mov    eax,DWORD PTR [rip+0xb091f]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34c7c9 cmp    eax,r14d
34c7cc jne    0x34c7dc
34c7ce lea    rcx,[rip+0xfffffffffff5af23]        # 0x2a76f8
34c7d5 call   0x365004
34c7da jmp    0x34c800
34c7dc cmp    eax,r15d
34c7df jne    0x34c7ea
34c7e1 lea    rcx,[rip+0xfffffffffff5af30]        # 0x2a7718
34c7e8 jmp    0x34c7d5
34c7ea lea    rdx,[rsp+0x40]
34c7ef lea    rcx,[rbp+0x68]
34c7f3 call   0x3574d8 ; STRING getter=0x3574d8 All Options
34c7f8 mov    rcx,rax
34c7fb call   0x2cde34
34c800 lea    rdx,[rip+0xfffffffffff5af1d]        # 0x2a7724
34c807 mov    rbx,rax
34c80a lea    rcx,[rsp+0x58]
34c80f call   0x2cc2cc
34c814 mov    rcx,rax
34c817 mov    r9b,r14b
34c81a movq   r8,xmm6
34c81f mov    rdx,rbx
34c822 call   0x384df0
34c827 mov    eax,DWORD PTR [rip+0xb0f97]        # 0x3fd7c4
34c82d lea    rdi,[rip+0xb0f94]        # 0x3fd7c8
34c834 test   r15b,al
34c837 jne    0x34c86e
34c839 or     eax,r15d
34c83c lea    rdx,[rbp+0x68]
34c840 lea    rcx,[rbp+0x68]
34c844 mov    DWORD PTR [rip+0xb0f7a],eax        # 0x3fd7c4
34c84a call   0x3581fc ; STRING getter=0x3581fc None
34c84f mov    rcx,rax
34c852 call   0x2cdccc
34c857 mov    rdx,rax
34c85a mov    rcx,rdi
34c85d call   0x2cc2cc
34c862 lea    rcx,[rip+0x8436b]        # 0x3d0bd4
34c869 call   0x2cd32c
34c86e mov    rcx,rdi
34c871 call   0x2cd7ec
34c876 mov    ecx,DWORD PTR [rip+0xb086c]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34c87c mov    rbx,rax
34c87f cmp    ecx,r14d
34c882 jne    0x34c88d
34c884 lea    rcx,[rip+0xfffffffffff5ae9d]        # 0x2a7728
34c88b jmp    0x34c899
34c88d cmp    ecx,r15d
34c890 jne    0x34c8a0
34c892 lea    rcx,[rip+0xfffffffffff5aeb7]        # 0x2a7750
34c899 call   0x365004
34c89e jmp    0x34c8b6
34c8a0 lea    rdx,[rsp+0x40]
34c8a5 lea    rcx,[rbp+0x68]
34c8a9 call   0x358808 ; STRING getter=0x358808 Loaded Config %s
34c8ae mov    rcx,rax
34c8b1 call   0x2e9bb4
34c8b6 mov    rdx,rbx
34c8b9 mov    rcx,rax
34c8bc call   0x3c4e90
34c8c1 xorps  xmm2,xmm2
34c8c4 lea    rcx,[rbp+0x70]
34c8c8 xorps  xmm1,xmm1
34c8cb call   0x2cc340
34c8d0 mov    ecx,DWORD PTR [rip+0xb0812]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34c8d6 mov    rbx,rax
34c8d9 cmp    ecx,r14d
34c8dc jne    0x34c8e7
34c8de lea    rcx,[rip+0xfffffffffff5ae83]        # 0x2a7768
34c8e5 jmp    0x34c8f3
34c8e7 cmp    ecx,r15d
34c8ea jne    0x34c8fa
34c8ec lea    rcx,[rip+0xfffffffffff5aead]        # 0x2a77a0
34c8f3 call   0x365004
34c8f8 jmp    0x34c90f
34c8fa lea    rdx,[rbp-0x60]
34c8fe lea    rcx,[rbp+0x68]
34c902 call   0x358cb4 ; STRING getter=0x358cb4 Refresh Config List
34c907 mov    rcx,rax
34c90a call   0x320494
34c90f mov    rdx,rbx
34c912 mov    rcx,rax
34c915 call   0x3bc7d8
34c91a test   al,al
34c91c je     0x34c97a
34c91e call   0x2d91c4
34c923 mov    eax,DWORD PTR [rip+0xb07bf]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34c929 cmp    eax,r14d
34c92c jne    0x34c937
34c92e lea    rcx,[rip+0xfffffffffff5ae7b]        # 0x2a77b0
34c935 jmp    0x34c943
34c937 cmp    eax,r15d
34c93a jne    0x34c94a
34c93c lea    rcx,[rip+0xfffffffffff5aeb5]        # 0x2a77f8
34c943 call   0x365004
34c948 jmp    0x34c960
34c94a lea    rdx,[rsp+0x78]
34c94f lea    rcx,[rbp+0x68]
34c953 call   0x35a6d4 ; STRING getter=0x35a6d4 Successfully refreshed config list
34c958 mov    rcx,rax
34c95b call   0x32210c
34c960 mov    rdx,rax
34c963 lea    rcx,[rsp+0x58]
34c968 call   0x2cc2cc
34c96d mov    rcx,rax
34c970 xor    r8d,r8d
34c973 xor    edx,edx
34c975 call   0x37f918
34c97a movaps xmm1,xmm7
34c97d xorps  xmm0,xmm0
34c980 call   0x39ac04
34c985 xorps  xmm2,xmm2
34c988 lea    rcx,[rbp+0x70]
34c98c xorps  xmm1,xmm1
34c98f call   0x2cc340
34c994 mov    ecx,DWORD PTR [rip+0xb074e]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34c99a mov    rbx,rax
34c99d cmp    ecx,r14d
34c9a0 jne    0x34c9ab
34c9a2 lea    rcx,[rip+0xfffffffffff5ae67]        # 0x2a7810
34c9a9 jmp    0x34c9b7
34c9ab cmp    ecx,r15d
34c9ae jne    0x34c9be
34c9b0 lea    rcx,[rip+0xfffffffffff5ae91]        # 0x2a7848
34c9b7 call   0x365004
34c9bc jmp    0x34c9d3
34c9be lea    rdx,[rbp-0x60]
34c9c2 lea    rcx,[rbp+0x68]
34c9c6 call   0x345508 ; STRING getter=0x345508 Load SamSites/Stashes
34c9cb mov    rcx,rax
34c9ce call   0x2d85a4
34c9d3 mov    rdx,rbx
34c9d6 mov    rcx,rax
34c9d9 call   0x3bc7d8
34c9de test   al,al
34c9e0 je     0x34cb8b
34c9e6 lea    rcx,[rbp-0x40]
34c9ea call   0x2dbb70
34c9ef lea    rcx,[rsp+0x78]
34c9f4 call   0x2dbb00
34c9f9 lea    rcx,[rsp+0x78]
34c9fe call   0x2cd7ec
34ca03 mov    rcx,rax
34ca06 call   0x2d5be4
34ca0b test   al,al
34ca0d je     0x34ca62
34ca0f call   0x2dbbe0
34ca14 mov    eax,DWORD PTR [rip+0xb06ce]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34ca1a cmp    eax,r14d
34ca1d jne    0x34ca28
34ca1f lea    rcx,[rip+0xfffffffffff5ae3a]        # 0x2a7860
34ca26 jmp    0x34ca34
34ca28 cmp    eax,r15d
34ca2b jne    0x34ca3b
34ca2d lea    rcx,[rip+0xfffffffffff5ae54]        # 0x2a7888
34ca34 call   0x365004
34ca39 jmp    0x34ca51
34ca3b lea    rdx,[rsp+0x40]
34ca40 lea    rcx,[rbp+0x68]
34ca44 call   0x35068c ; STRING getter=0x35068c Loaded Samsites
34ca49 mov    rcx,rax
34ca4c call   0x2dd160
34ca51 mov    rdx,rax
34ca54 lea    rcx,[rsp+0x58]
34ca59 call   0x2cc2cc
34ca5e xor    edx,edx
34ca60 jmp    0x34caae
34ca62 mov    eax,DWORD PTR [rip+0xb0680]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34ca68 cmp    eax,r14d
34ca6b jne    0x34ca76
34ca6d lea    rcx,[rip+0xfffffffffff5ae2c]        # 0x2a78a0
34ca74 jmp    0x34ca82
34ca76 cmp    eax,r15d
34ca79 jne    0x34ca89
34ca7b lea    rcx,[rip+0xfffffffffff5ae66]        # 0x2a78e8
34ca82 call   0x365004
34ca87 jmp    0x34ca9f
34ca89 lea    rdx,[rsp+0x58]
34ca8e lea    rcx,[rbp+0x68]
34ca92 call   0x350e18 ; STRING getter=0x350e18 Failed to find samsite config
34ca97 mov    rcx,rax
34ca9a call   0x3205fc
34ca9f mov    rdx,rax
34caa2 lea    rcx,[rbp-0x60]
34caa6 call   0x2cc2cc
34caab mov    edx,r14d
34caae xor    r8d,r8d
34cab1 mov    rcx,rax
34cab4 call   0x37f918
34cab9 lea    rcx,[rbp-0x40]
34cabd call   0x2cd7ec
34cac2 mov    rcx,rax
34cac5 call   0x2d5be4
34caca test   al,al
34cacc je     0x34cb21
34cace call   0x2dbec0
34cad3 mov    eax,DWORD PTR [rip+0xb060f]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34cad9 cmp    eax,r14d
34cadc jne    0x34cae7
34cade lea    rcx,[rip+0xfffffffffff5ae1b]        # 0x2a7900
34cae5 jmp    0x34caf3
34cae7 cmp    eax,r15d
34caea jne    0x34cafa
34caec lea    rcx,[rip+0xfffffffffff5ae35]        # 0x2a7928
34caf3 call   0x365004
34caf8 jmp    0x34cb10
34cafa lea    rdx,[rsp+0x40]
34caff lea    rcx,[rbp+0x68]
34cb03 call   0x3512b8 ; STRING getter=0x3512b8 Loaded Stashes
34cb08 mov    rcx,rax
34cb0b call   0x2d866c
34cb10 mov    rdx,rax
34cb13 lea    rcx,[rsp+0x58]
34cb18 call   0x2cc2cc
34cb1d xor    edx,edx
34cb1f jmp    0x34cb6d
34cb21 mov    eax,DWORD PTR [rip+0xb05c1]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34cb27 cmp    eax,r14d
34cb2a jne    0x34cb35
34cb2c lea    rcx,[rip+0xfffffffffff5ae0d]        # 0x2a7940
34cb33 jmp    0x34cb41
34cb35 cmp    eax,r15d
34cb38 jne    0x34cb48
34cb3a lea    rcx,[rip+0xfffffffffff5ae47]        # 0x2a7988
34cb41 call   0x365004
34cb46 jmp    0x34cb5e
34cb48 lea    rdx,[rsp+0x58]
34cb4d lea    rcx,[rbp+0x68]
34cb51 call   0x351520 ; STRING getter=0x351520 Failed to find stash config
34cb56 mov    rcx,rax
34cb59 call   0x320584
34cb5e mov    rdx,rax
34cb61 lea    rcx,[rbp-0x60]
34cb65 call   0x2cc2cc
34cb6a mov    edx,r14d
34cb6d xor    r8d,r8d
34cb70 mov    rcx,rax
34cb73 call   0x37f918
34cb78 lea    rcx,[rsp+0x78]
34cb7d call   0x2cc4f4
34cb82 lea    rcx,[rbp-0x40]
34cb86 call   0x2cc4f4
34cb8b xorps  xmm2,xmm2
34cb8e lea    rcx,[rbp+0x70]
34cb92 xorps  xmm1,xmm1
34cb95 call   0x2cc340
34cb9a mov    ecx,DWORD PTR [rip+0xb0548]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34cba0 mov    rbx,rax
34cba3 cmp    ecx,r14d
34cba6 jne    0x34cbb1
34cba8 lea    rcx,[rip+0xfffffffffff5adf1]        # 0x2a79a0
34cbaf jmp    0x34cbbd
34cbb1 cmp    ecx,r15d
34cbb4 jne    0x34cbc4
34cbb6 lea    rcx,[rip+0xfffffffffff5ae03]        # 0x2a79c0
34cbbd call   0x365004
34cbc2 jmp    0x34cbda
34cbc4 lea    rdx,[rsp+0x40]
34cbc9 lea    rcx,[rbp+0x68]
34cbcd call   0x351810 ; STRING getter=0x351810 Create Config
34cbd2 mov    rcx,rax
34cbd5 call   0x2dd188
34cbda mov    rdx,rbx
34cbdd mov    rcx,rax
34cbe0 call   0x3bc7d8
34cbe5 lea    r13,[rip+0xffffffffffecbdbc]        # 0x2189a8
34cbec test   al,al
34cbee je     0x34cce9
34cbf4 lea    rcx,[rbp-0x20]
34cbf8 call   0x2cd7ec
34cbfd mov    rcx,rax
34cc00 call   0x3ca904
34cc05 test   rax,rax
34cc08 je     0x34cce9
34cc0e lea    rdx,[rbp-0x20]
34cc12 lea    rcx,[rsp+0x58]
34cc17 call   0x2d6384
34cc1c lea    rcx,[rsp+0x58]
34cc21 call   0x2d8694
34cc26 test   al,al
34cc28 jne    0x34cc49
34cc2a lea    rcx,[rsp+0x58]
34cc2f call   0x2d64c4
34cc34 lea    rcx,[rsp+0x58]
34cc39 call   0x2cd7ec
34cc3e mov    rdx,rax
34cc41 mov    rcx,r13
34cc44 call   0x2d631c
34cc49 mov    eax,DWORD PTR [rip+0xb0499]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34cc4f cmp    eax,r14d
34cc52 jne    0x34cc5d
34cc54 lea    rcx,[rip+0xfffffffffff5ad75]        # 0x2a79d0
34cc5b jmp    0x34cc69
34cc5d cmp    eax,r15d
34cc60 jne    0x34cc70
34cc62 lea    rcx,[rip+0xfffffffffff5ad8f]        # 0x2a79f8
34cc69 call   0x365004
34cc6e jmp    0x34cc85
34cc70 lea    rdx,[rbp-0x60]
34cc74 lea    rcx,[rbp+0x68]
34cc78 call   0x351a58 ; STRING getter=0x351a58 Created Config : 
34cc7d mov    rcx,rax
34cc80 call   0x2e9bdc
34cc85 lea    r8,[rbp-0x20]
34cc89 mov    rdx,rax
34cc8c lea    rcx,[rsp+0x78]
34cc91 call   0x2ea714
34cc96 lea    rdx,[rsp+0x78]
34cc9b lea    rcx,[rbp-0x40]
34cc9f call   0x2d4194
34cca4 mov    rcx,rax
34cca7 xor    r8d,r8d
34ccaa xor    edx,edx
34ccac call   0x37f918
34ccb1 lea    rdx,[rbp+0x68]
34ccb5 lea    rcx,[rbp+0x68]
34ccb9 call   0x2cc730
34ccbe mov    rcx,rax
34ccc1 call   0x2cdca4
34ccc6 mov    rdx,rax
34ccc9 lea    rcx,[rip+0xb0668]        # 0x3fd338 ; CONFIG S.ConfigInputTest value(+0x48)
34ccd0 call   0x2d4c68
34ccd5 lea    rcx,[rsp+0x78]
34ccda call   0x2cc4f4
34ccdf lea    rcx,[rsp+0x58]
34cce4 call   0x2cc4f4
34cce9 cmp    DWORD PTR [rip+0xfffffffffff32cb0],0x0        # 0x27f9a0
34ccf0 jl     0x34d14d
34ccf6 movaps xmm1,xmm7
34ccf9 xorps  xmm0,xmm0
34ccfc call   0x39ac04
34cd01 xorps  xmm2,xmm2
34cd04 lea    rcx,[rbp+0x70]
34cd08 xorps  xmm1,xmm1
34cd0b call   0x2cc340
34cd10 mov    ecx,DWORD PTR [rip+0xb03d2]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34cd16 mov    rbx,rax
34cd19 cmp    ecx,r14d
34cd1c jne    0x34cd27
34cd1e lea    rcx,[rip+0xfffffffffff5ace3]        # 0x2a7a08
34cd25 jmp    0x34cd33
34cd27 cmp    ecx,r15d
34cd2a jne    0x34cd3a
34cd2c lea    rcx,[rip+0xfffffffffff5acf5]        # 0x2a7a28
34cd33 call   0x365004
34cd38 jmp    0x34cd50
34cd3a lea    rdx,[rsp+0x40]
34cd3f lea    rcx,[rbp+0x68]
34cd43 call   0x351e90 ; STRING getter=0x351e90 Remove Config
34cd48 mov    rcx,rax
34cd4b call   0x2dd188
34cd50 mov    rdx,rbx
34cd53 mov    rcx,rax
34cd56 call   0x3bc7d8
34cd5b test   al,al
34cd5d je     0x34ce32
34cd63 movsxd rdx,DWORD PTR [rip+0xfffffffffff32c36]        # 0x27f9a0
34cd6a mov    rcx,rsi
34cd6d call   0x2d4d20
34cd72 mov    rcx,rax
34cd75 call   0x2cd7ec
34cd7a mov    ecx,DWORD PTR [rip+0xb0368]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34cd80 mov    rbx,rax
34cd83 cmp    ecx,r14d
34cd86 jne    0x34cd91
34cd88 lea    rcx,[rip+0xfffffffffff5aca9]        # 0x2a7a38
34cd8f jmp    0x34cd9d
34cd91 cmp    ecx,r15d
34cd94 jne    0x34cda4
34cd96 lea    rcx,[rip+0xfffffffffff5acc3]        # 0x2a7a60
34cd9d call   0x365004
34cda2 jmp    0x34cdb9
34cda4 lea    rdx,[rbp-0x60]
34cda8 lea    rcx,[rbp+0x68]
34cdac call   0x35218c ; STRING getter=0x35218c Deleted Config : 
34cdb1 mov    rcx,rax
34cdb4 call   0x2e9bdc
34cdb9 mov    rdx,rax
34cdbc lea    rcx,[rsp+0x78]
34cdc1 call   0x2cc2cc
34cdc6 mov    rdx,rax
34cdc9 lea    rcx,[rsp+0x58]
34cdce mov    r8,rbx
34cdd1 call   0x2cad38
34cdd6 lea    rcx,[rsp+0x78]
34cddb call   0x2cc4f4
34cde0 lea    rdx,[rsp+0x58]
34cde5 lea    rcx,[rsp+0x78]
34cdea call   0x2d4194
34cdef mov    rcx,rax
34cdf2 xor    r8d,r8d
34cdf5 xor    edx,edx
34cdf7 call   0x37f918
34cdfc movsxd rdx,DWORD PTR [rip+0xfffffffffff32b9d]        # 0x27f9a0
34ce03 mov    rcx,rsi
34ce06 call   0x2d4d20
34ce0b mov    rcx,rax
34ce0e call   0x2cd7ec
34ce13 mov    rdx,rax
34ce16 mov    rcx,r13
34ce19 call   0x2d62b0
34ce1e lea    rcx,[rsp+0x58]
34ce23 mov    DWORD PTR [rip+0xfffffffffff32b73],0xffffffff        # 0x27f9a0
34ce2d call   0x2cc4f4
34ce32 xorps  xmm2,xmm2
34ce35 lea    rcx,[rbp+0x70]
34ce39 xorps  xmm1,xmm1
34ce3c call   0x2cc340
34ce41 mov    ecx,DWORD PTR [rip+0xb02a1]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34ce47 mov    rbx,rax
34ce4a cmp    ecx,r14d
34ce4d jne    0x34ce58
34ce4f lea    rcx,[rip+0xfffffffffff5ac1a]        # 0x2a7a70
34ce56 jmp    0x34ce64
34ce58 cmp    ecx,r15d
34ce5b jne    0x34ce6b
34ce5d lea    rcx,[rip+0xfffffffffff5ac34]        # 0x2a7a98
34ce64 call   0x365004
34ce69 jmp    0x34ce81
34ce6b lea    rdx,[rsp+0x40]
34ce70 lea    rcx,[rbp+0x68]
34ce74 call   0x3524d8 ; STRING getter=0x3524d8 Save Config
34ce79 mov    rcx,rax
34ce7c call   0x2cde34
34ce81 mov    rdx,rbx
34ce84 mov    rcx,rax
34ce87 call   0x3bc7d8
34ce8c test   al,al
34ce8e je     0x34cfa9
34ce94 movsxd rdx,DWORD PTR [rip+0xfffffffffff32b05]        # 0x27f9a0
34ce9b mov    rcx,rsi
34ce9e call   0x2d4d20
34cea3 mov    rcx,rax
34cea6 call   0x2cd7ec
34ceab mov    rdx,rax
34ceae lea    rcx,[rsp+0x78]
34ceb3 call   0x2cc2cc
34ceb8 lea    rdx,[rsp+0x78]
34cebd lea    rcx,[rsp+0x58]
34cec2 call   0x2d6384
34cec7 lea    rcx,[rsp+0x78]
34cecc call   0x2cc4f4
34ced1 lea    rcx,[rsp+0x58]
34ced6 call   0x2d8694
34cedb test   al,al
34cedd jne    0x34cefe
34cedf lea    rcx,[rsp+0x58]
34cee4 call   0x2d64c4
34cee9 lea    rcx,[rsp+0x58]
34ceee call   0x2cd7ec
34cef3 mov    rdx,rax
34cef6 mov    rcx,r13
34cef9 call   0x2d631c
34cefe movsxd rdx,DWORD PTR [rip+0xfffffffffff32a9b]        # 0x27f9a0
34cf05 mov    rcx,rsi
34cf08 call   0x2d4d20
34cf0d mov    rcx,rax
34cf10 call   0x2cd7ec
34cf15 mov    ecx,DWORD PTR [rip+0xb01cd]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34cf1b mov    rbx,rax
34cf1e cmp    ecx,r14d
34cf21 jne    0x34cf2c
34cf23 lea    rcx,[rip+0xfffffffffff5ab7e]        # 0x2a7aa8
34cf2a jmp    0x34cf38
34cf2c cmp    ecx,r15d
34cf2f jne    0x34cf3f
34cf31 lea    rcx,[rip+0xfffffffffff5ab98]        # 0x2a7ad0
34cf38 call   0x365004
34cf3d jmp    0x34cf55
34cf3f lea    rdx,[rsp+0x40]
34cf44 lea    rcx,[rbp+0x68]
34cf48 call   0x352758 ; STRING getter=0x352758 Saved Config : 
34cf4d mov    rcx,rax
34cf50 call   0x2dd160
34cf55 mov    rdx,rax
34cf58 lea    rcx,[rsp+0x78]
34cf5d call   0x2cc2cc
34cf62 mov    rdx,rax
34cf65 lea    rcx,[rbp-0x40]
34cf69 mov    r8,rbx
34cf6c call   0x2cad38
34cf71 lea    rcx,[rsp+0x78]
34cf76 call   0x2cc4f4
34cf7b lea    rdx,[rbp-0x40]
34cf7f lea    rcx,[rsp+0x78]
34cf84 call   0x2d4194
34cf89 mov    rcx,rax
34cf8c xor    r8d,r8d
34cf8f xor    edx,edx
34cf91 call   0x37f918
34cf96 lea    rcx,[rbp-0x40]
34cf9a call   0x2cc4f4
34cf9f lea    rcx,[rsp+0x58]
34cfa4 call   0x2cc4f4
34cfa9 movaps xmm1,xmm7
34cfac xorps  xmm0,xmm0
34cfaf call   0x39ac04
34cfb4 xorps  xmm2,xmm2
34cfb7 lea    rcx,[rbp+0x70]
34cfbb xorps  xmm1,xmm1
34cfbe call   0x2cc340
34cfc3 mov    ecx,DWORD PTR [rip+0xb011f]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34cfc9 mov    rbx,rax
34cfcc cmp    ecx,r14d
34cfcf jne    0x34cfda
34cfd1 lea    rcx,[rip+0xfffffffffff5ab08]        # 0x2a7ae0
34cfd8 jmp    0x34cfe6
34cfda cmp    ecx,r15d
34cfdd jne    0x34cfed
34cfdf lea    rcx,[rip+0xfffffffffff5ab22]        # 0x2a7b08
34cfe6 call   0x365004
34cfeb jmp    0x34d003
34cfed lea    rdx,[rsp+0x40]
34cff2 lea    rcx,[rbp+0x68]
34cff6 call   0x352960 ; STRING getter=0x352960 Load Config
34cffb mov    rcx,rax
34cffe call   0x2cde34
34d003 mov    rdx,rbx
34d006 mov    rcx,rax
34d009 call   0x3bc7d8
34d00e test   al,al
34d010 je     0x34d14d
34d016 movsxd rdx,DWORD PTR [rip+0xfffffffffff32983]        # 0x27f9a0
34d01d mov    rcx,rsi
34d020 mov    BYTE PTR [rip+0x98c98],r14b        # 0x3e5cbf
34d027 mov    BYTE PTR [rip+0x98c8b],r14b        # 0x3e5cb9
34d02e mov    BYTE PTR [rip+0x98c86],r14b        # 0x3e5cbb
34d035 mov    BYTE PTR [rip+0x98c80],r14b        # 0x3e5cbc
34d03c mov    BYTE PTR [rip+0x98c7a],r14b        # 0x3e5cbd
34d043 mov    BYTE PTR [rip+0x98c70],r14b        # 0x3e5cba
34d04a mov    BYTE PTR [rip+0xad773],r14b        # 0x3fa7c4
34d051 mov    BYTE PTR [rip+0x98c66],r14b        # 0x3e5cbe
34d058 call   0x2d4d20
34d05d mov    rcx,rax
34d060 call   0x2cd7ec
34d065 mov    rdx,rax
34d068 mov    rcx,rdi
34d06b call   0x2d4c68
34d070 movsxd rdx,DWORD PTR [rip+0xfffffffffff32929]        # 0x27f9a0
34d077 mov    rcx,rsi
34d07a call   0x2d4d20
34d07f mov    rcx,rax
34d082 call   0x2d64c4
34d087 movsxd rdx,DWORD PTR [rip+0xfffffffffff32912]        # 0x27f9a0
34d08e mov    rcx,rsi
34d091 call   0x2d4d20
34d096 mov    rcx,rax
34d099 call   0x2cd7ec
34d09e mov    rdx,rax
34d0a1 mov    rcx,r13
34d0a4 call   0x2d62e8
34d0a9 movsxd rdx,DWORD PTR [rip+0xfffffffffff328f0]        # 0x27f9a0
34d0b0 mov    rcx,rsi
34d0b3 call   0x2d4d20
34d0b8 mov    rcx,rax
34d0bb call   0x2cd7ec
34d0c0 mov    ecx,DWORD PTR [rip+0xb0022]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34d0c6 mov    rbx,rax
34d0c9 cmp    ecx,r14d
34d0cc jne    0x34d0d7
34d0ce lea    rcx,[rip+0xfffffffffff5aa43]        # 0x2a7b18
34d0d5 jmp    0x34d0e3
34d0d7 cmp    ecx,r15d
34d0da jne    0x34d0ea
34d0dc lea    rcx,[rip+0xfffffffffff5aa5d]        # 0x2a7b40
34d0e3 call   0x365004
34d0e8 jmp    0x34d100
34d0ea lea    rdx,[rsp+0x40]
34d0ef lea    rcx,[rbp+0x68]
34d0f3 call   0x352b70 ; STRING getter=0x352b70 Loaded Config : 
34d0f8 mov    rcx,rax
34d0fb call   0x2e9bb4
34d100 mov    rdx,rax
34d103 lea    rcx,[rsp+0x78]
34d108 call   0x2cc2cc
34d10d mov    rdx,rax
34d110 lea    rcx,[rsp+0x58]
34d115 mov    r8,rbx
34d118 call   0x2cad38
34d11d lea    rcx,[rsp+0x78]
34d122 call   0x2cc4f4
34d127 lea    rdx,[rsp+0x58]
34d12c lea    rcx,[rsp+0x78]
34d131 call   0x2d4194
34d136 mov    rcx,rax
34d139 xor    r8d,r8d
34d13c xor    edx,edx
34d13e call   0x37f918
34d143 lea    rcx,[rsp+0x58]
34d148 call   0x2cc4f4
34d14d lea    rsi,[rip+0xffffffffffecb614]        # 0x218768
34d154 mov    rcx,rsi
34d157 call   0x2d86a0
34d15c movss  xmm6,DWORD PTR [rip+0xfffffffffff409c8]        # 0x28db2c ; f32=50
34d164 test   al,al
34d166 jne    0x34d396
34d16c lea    rdx,[rsp+0x40]
34d171 lea    rcx,[rbp+0x68]
34d175 call   0x352f28 ; STRING getter=0x352f28  Stashes
34d17a mov    rcx,rax
34d17d call   0x2e9b8c
34d182 mov    rcx,rsi
34d185 mov    rdi,rax
34d188 call   0x2d93dc
34d18d mov    rdx,rax
34d190 lea    rcx,[rbp-0x40]
34d194 call   0x2dd9b4
34d199 lea    rdx,[rbp+0x70]
34d19d mov    rbx,rax
34d1a0 lea    rcx,[rbp+0x68]
34d1a4 call   0x352d64
34d1a9 mov    rcx,rax
34d1ac call   0x2e3614
34d1b1 mov    rdx,rax
34d1b4 lea    rcx,[rsp+0x78]
34d1b9 mov    r8,rbx
34d1bc call   0x2ea6dc
34d1c1 mov    rdx,rax
34d1c4 lea    rcx,[rsp+0x58]
34d1c9 mov    r8,rdi
34d1cc call   0x2cad38
34d1d1 lea    rcx,[rsp+0x78]
34d1d6 call   0x2cc4f4
34d1db lea    rcx,[rbp-0x40]
34d1df call   0x2cc4f4
34d1e4 xorps  xmm2,xmm2
34d1e7 lea    rcx,[rbp+0x68]
34d1eb xorps  xmm1,xmm1
34d1ee call   0x2cc340
34d1f3 lea    rcx,[rsp+0x58]
34d1f8 mov    rbx,rax
34d1fb call   0x2cd7ec
34d200 mov    rcx,rax
34d203 mov    rdx,rbx
34d206 call   0x3bc7d8
34d20b test   al,al
34d20d je     0x34d22e
34d20f lea    rdx,[rbp-0x60]
34d213 lea    rcx,[rbp+0x68]
34d217 call   0x353100 ; STRING getter=0x353100 DeleteStashesPopup
34d21c mov    rcx,rax
34d21f call   0x2cdd94
34d224 mov    rcx,rax
34d227 xor    edx,edx
34d229 call   0x3985c8
34d22e lea    rdx,[rbp-0x60]
34d232 lea    rcx,[rbp+0x68]
34d236 call   0x3532a4 ; STRING getter=0x3532a4 DeleteStashesPopup
34d23b mov    rcx,rax
34d23e call   0x2cdd94
34d243 mov    rcx,rax
34d246 xor    edx,edx
34d248 call   0x38edbc
34d24d test   al,al
34d24f je     0x34d38c
34d255 lea    rdx,[rbp-0x60]
34d259 lea    rcx,[rbp+0x68]
34d25d call   0x353468 ; STRING getter=0x353468 Delete stashes???
34d262 mov    rcx,rax
34d265 call   0x2e9bdc
34d26a xor    r9d,r9d
34d26d movss  DWORD PTR [rsp+0x20],xmm7
34d273 xor    r8d,r8d
34d276 lea    rcx,[rbp+0x68]
34d27a mov    rdx,rax
34d27d mov    rdi,rax
34d280 call   0x38f79c
34d285 lea    rcx,[rbp+0x70]
34d289 mov    rbx,rax
34d28c call   0x39233c
34d291 movss  xmm0,DWORD PTR [rax]
34d295 subss  xmm0,DWORD PTR [rbx]
34d299 mulss  xmm0,DWORD PTR [rip+0xfffffffffff3ffaf]        # 0x28d250 ; f32=0.5
34d2a1 call   0x39b410
34d2a6 mov    rcx,rdi
34d2a9 call   0x3c4e90
34d2ae xorps  xmm2,xmm2
34d2b1 lea    rcx,[rbp+0x70]
34d2b5 movaps xmm1,xmm6
34d2b8 call   0x2cc340
34d2bd lea    rdx,[rbp+0x68]
34d2c1 mov    rbx,rax
34d2c4 lea    rcx,[rbp+0x68]
34d2c8 call   0x3536b0 ; STRING getter=0x3536b0 Yes
34d2cd mov    rcx,rax
34d2d0 call   0x32041c
34d2d5 mov    rcx,rax
34d2d8 mov    rdx,rbx
34d2db call   0x3bc7d8
34d2e0 test   al,al
34d2e2 je     0x34d341
34d2e4 lea    rdx,[rbp-0x60]
34d2e8 lea    rcx,[rbp+0x68]
34d2ec call   0x353b0c ; STRING getter=0x353b0c DELETED all stashes
34d2f1 mov    rcx,rax
34d2f4 call   0x320494
34d2f9 mov    rdx,rax
34d2fc lea    rcx,[rsp+0x78]
34d301 call   0x2cc2cc
34d306 mov    rcx,rax
34d309 xor    r8d,r8d
34d30c xor    edx,edx
34d30e call   0x37f918
34d313 mov    rcx,rsi
34d316 call   0x363030
34d31b lea    rdx,[rsp+0x40]
34d320 lea    rcx,[rbp+0x68]
34d324 call   0x353ca4 ; STRING getter=0x353ca4 StashList.bin
34d329 mov    rcx,rax
34d32c call   0x2dd188
34d331 mov    rdx,rax
34d334 mov    rcx,r13
34d337 call   0x2d62b0
34d33c call   0x390260
34d341 movaps xmm1,xmm7
34d344 xorps  xmm0,xmm0
34d347 call   0x39ac04
34d34c xorps  xmm2,xmm2
34d34f lea    rcx,[rbp+0x70]
34d353 movaps xmm1,xmm6
34d356 call   0x2cc340
34d35b lea    rdx,[rbp+0x68]
34d35f mov    rbx,rax
34d362 lea    rcx,[rbp+0x68]
34d366 call   0x353e9c ; STRING getter=0x353e9c No
34d36b mov    rcx,rax
34d36e call   0x3203f4
34d373 mov    rcx,rax
34d376 mov    rdx,rbx
34d379 call   0x3bc7d8
34d37e test   al,al
34d380 je     0x34d387
34d382 call   0x390260
34d387 call   0x3910e8
34d38c lea    rcx,[rsp+0x58]
34d391 call   0x2cc4f4
34d396 mov    rcx,rsi
34d399 call   0x2d86a0
34d39e lea    rsi,[rip+0xffffffffffecb3db]        # 0x218780
34d3a5 test   al,al
34d3a7 jne    0x34d3c0
34d3a9 mov    rcx,rsi
34d3ac call   0x2d86a0
34d3b1 test   al,al
34d3b3 jne    0x34d3c0
34d3b5 movaps xmm1,xmm7
34d3b8 xorps  xmm0,xmm0
34d3bb call   0x39ac04
34d3c0 mov    rcx,rsi
34d3c3 call   0x2d86a0
34d3c8 test   al,al
34d3ca jne    0x34d5fe
34d3d0 lea    rdx,[rsp+0x40]
34d3d5 lea    rcx,[rbp+0x68]
34d3d9 call   0x35423c ; STRING getter=0x35423c  Samsites
34d3de mov    rcx,rax
34d3e1 call   0x2cdd44
34d3e6 mov    rcx,rsi
34d3e9 mov    rdi,rax
34d3ec call   0x2d93dc
34d3f1 mov    rdx,rax
34d3f4 lea    rcx,[rbp-0x40]
34d3f8 call   0x2dd9b4
34d3fd lea    rdx,[rbp+0x70]
34d401 mov    rbx,rax
34d404 lea    rcx,[rbp+0x68]
34d408 call   0x352d64
34d40d mov    rcx,rax
34d410 call   0x2e3614
34d415 mov    rdx,rax
34d418 lea    rcx,[rsp+0x78]
34d41d mov    r8,rbx
34d420 call   0x2ea6dc
34d425 mov    rdx,rax
34d428 lea    rcx,[rsp+0x58]
34d42d mov    r8,rdi
34d430 call   0x2cad38
34d435 lea    rcx,[rsp+0x78]
34d43a call   0x2cc4f4
34d43f lea    rcx,[rbp-0x40]
34d443 call   0x2cc4f4
34d448 xorps  xmm2,xmm2
34d44b lea    rcx,[rbp+0x68]
34d44f xorps  xmm1,xmm1
34d452 call   0x2cc340
34d457 lea    rcx,[rsp+0x58]
34d45c mov    rbx,rax
34d45f call   0x2cd7ec
34d464 mov    rcx,rax
34d467 mov    rdx,rbx
34d46a call   0x3bc7d8
34d46f test   al,al
34d471 je     0x34d493
34d473 lea    rdx,[rsp+0x40]
34d478 lea    rcx,[rbp+0x68]
34d47c call   0x3544c0 ; STRING getter=0x3544c0 DeleteSamsPopup
34d481 mov    rcx,rax
34d484 call   0x2dd160
34d489 mov    rcx,rax
34d48c xor    edx,edx
34d48e call   0x3985c8
34d493 lea    rdx,[rsp+0x40]
34d498 lea    rcx,[rbp+0x68]
34d49c call   0x35465c ; STRING getter=0x35465c DeleteSamsPopup
34d4a1 mov    rcx,rax
34d4a4 call   0x2dd160
34d4a9 mov    rcx,rax
34d4ac xor    edx,edx
34d4ae call   0x38edbc
34d4b3 test   al,al
34d4b5 je     0x34d5f4
34d4bb lea    rdx,[rsp+0x40]
34d4c0 lea    rcx,[rbp+0x68]
34d4c4 call   0x354868 ; STRING getter=0x354868 Delete sams???
34d4c9 mov    rcx,rax
34d4cc call   0x2d866c
34d4d1 xor    r9d,r9d
34d4d4 movss  DWORD PTR [rsp+0x20],xmm7
34d4da xor    r8d,r8d
34d4dd lea    rcx,[rbp+0x68]
34d4e1 mov    rdx,rax
34d4e4 mov    rdi,rax
34d4e7 call   0x38f79c
34d4ec lea    rcx,[rbp+0x70]
34d4f0 mov    rbx,rax
34d4f3 call   0x39233c
34d4f8 movss  xmm0,DWORD PTR [rax]
34d4fc subss  xmm0,DWORD PTR [rbx]
34d500 mulss  xmm0,DWORD PTR [rip+0xfffffffffff3fd48]        # 0x28d250 ; f32=0.5
34d508 call   0x39b410
34d50d mov    rcx,rdi
34d510 call   0x3c4e90
34d515 xorps  xmm2,xmm2
34d518 lea    rcx,[rbp+0x70]
34d51c movaps xmm1,xmm6
34d51f call   0x2cc340
34d524 lea    rdx,[rbp+0x68]
34d528 mov    rbx,rax
34d52b lea    rcx,[rbp+0x68]
34d52f call   0x3536b0 ; STRING getter=0x3536b0 Yes
34d534 mov    rcx,rax
34d537 call   0x32041c
34d53c mov    rcx,rax
34d53f mov    rdx,rbx
34d542 call   0x3bc7d8
34d547 test   al,al
34d549 je     0x34d5a9
34d54b lea    rdx,[rsp+0x40]
34d550 lea    rcx,[rbp+0x68]
34d554 call   0x354c8c ; STRING getter=0x354c8c DELETED all sams
34d559 mov    rcx,rax
34d55c call   0x2e9bb4
34d561 mov    rdx,rax
34d564 lea    rcx,[rsp+0x78]
34d569 call   0x2cc2cc
34d56e mov    rcx,rax
34d571 xor    r8d,r8d
34d574 xor    edx,edx
34d576 call   0x37f918
34d57b mov    rcx,rsi
34d57e call   0x363030
34d583 lea    rdx,[rsp+0x40]
34d588 lea    rcx,[rbp+0x68]
34d58c call   0x355190 ; STRING getter=0x355190 SamSitelist.bin
34d591 mov    rcx,rax
34d594 call   0x2dd160
34d599 mov    rdx,rax
34d59c mov    rcx,r13
34d59f call   0x2d62b0
34d5a4 call   0x390260
34d5a9 movaps xmm1,xmm7
34d5ac xorps  xmm0,xmm0
34d5af call   0x39ac04
34d5b4 xorps  xmm2,xmm2
34d5b7 lea    rcx,[rbp+0x70]
34d5bb movaps xmm1,xmm6
34d5be call   0x2cc340
34d5c3 lea    rdx,[rbp+0x68]
34d5c7 mov    rbx,rax
34d5ca lea    rcx,[rbp+0x68]
34d5ce call   0x355374 ; STRING getter=0x355374 No
34d5d3 mov    rcx,rax
34d5d6 call   0x3203f4
34d5db mov    rcx,rax
34d5de mov    rdx,rbx
34d5e1 call   0x3bc7d8
34d5e6 test   al,al
34d5e8 je     0x34d5ef
34d5ea call   0x390260
34d5ef call   0x3910e8
34d5f4 lea    rcx,[rsp+0x58]
34d5f9 call   0x2cc4f4
34d5fe call   0x38724c
34d603 lea    rcx,[rbp-0x20]
34d607 call   0x2cc4f4
34d60c lea    r11,[rsp+0x120]
34d614 movaps xmm6,XMMWORD PTR [r11-0x10]
34d619 movaps xmm7,XMMWORD PTR [r11-0x20]
34d61e mov    rsp,r11
34d621 pop    r15
34d623 pop    r14
34d625 pop    r13
34d627 pop    rdi
34d628 pop    rsi
34d629 pop    rbx
34d62a pop    rbp
34d62b ret
