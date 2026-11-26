31236d movsd  xmm0,QWORD PTR [rbp-0x60]
312372 lea    r9,[rip+0xc4f2f]        # 0x3d72a8
312379 mov    eax,DWORD PTR [rbp-0x58]
31237c lea    r8,[rbp+0x78]
312380 lea    rdx,[rbp+0x9a0]
312387 movsd  QWORD PTR [rbp+0x9a0],xmm0
31238f mov    rcx,r12
312392 mov    DWORD PTR [rbp+0x9a8],eax
312398 call   0x36cd20
31239d test   al,al
31239f je     0x314167
3123a5 mov    rcx,QWORD PTR [rbp+0x78]
3123a9 call   0x317130
3123ae test   al,al
3123b0 je     0x314167
3123b6 mov    rbx,QWORD PTR [rbp+0x5c0]
3123bd mov    rcx,rbx
3123c0 call   0x2caf08
3123c5 test   al,al
3123c7 je     0x312513
3123cd cmp    BYTE PTR [rbp+0x15a8],sil
3123d4 jne    0x312513
3123da mov    rcx,rbx
3123dd call   0x2e0e9c
3123e2 test   al,al
3123e4 je     0x312513
3123ea mov    rcx,QWORD PTR [rsp+0x58]
3123ef cmp    rcx,rbx
3123f2 jne    0x312513
3123f8 test   r15b,r15b
3123fb jne    0x312513
312401 xor    r8d,r8d
312404 lea    rdx,[rbp+0xa0]
31240b call   0x369e70
312410 mov    ecx,DWORD PTR [rip+0xdd482]        # 0x3ef898 ; CONFIG K.addfriendvirtualkey value(+0x48)
312416 mov    dl,0x1
312418 call   0x2e8910
31241d lea    rbx,[rip+0xc4e3c]        # 0x3d7260
312424 test   al,al
312426 je     0x31248f
312428 cmp    BYTE PTR [rip+0xd7759],sil        # 0x3e9b88 ; CONFIG Bools.drawteam value(+0x48)
31242f je     0x31248f
312431 lea    rdx,[rbp+0xa0]
312438 mov    rcx,rbx
31243b call   0x2ef794
312440 lea    rdx,[rbp+0xa0]
312447 mov    rcx,rbx
31244a cmp    DWORD PTR [rax+0x24],0x1
31244e jne    0x31245a
312450 call   0x2ef794
312455 mov    DWORD PTR [rax+0x24],esi
312458 jmp    0x31248f
31245a call   0x2ef794
31245f cmp    DWORD PTR [rax+0x24],0x2
312463 je     0x31248f
312465 lea    rdx,[rbp+0xa0]
31246c mov    rcx,rbx
31246f call   0x2ef794
312474 cmp    DWORD PTR [rax+0x24],esi
312477 jne    0x31248f
312479 lea    rdx,[rbp+0xa0]
312480 mov    rcx,rbx
312483 call   0x2ef794
312488 mov    DWORD PTR [rax+0x24],0x1
31248f mov    ecx,DWORD PTR [rip+0xdd283]        # 0x3ef718 ; CONFIG K.addenemyvirtualkey value(+0x48)
312495 mov    dl,0x1
312497 call   0x2e8910
31249c test   al,al
31249e je     0x312507
3124a0 cmp    BYTE PTR [rip+0xd7cd1],sil        # 0x3ea178 ; CONFIG Bools.draweenemy value(+0x48)
3124a7 je     0x312507
3124a9 lea    rdx,[rbp+0xa0]
3124b0 mov    rcx,rbx
3124b3 call   0x2ef794
3124b8 lea    rdx,[rbp+0xa0]
3124bf mov    rcx,rbx
3124c2 cmp    DWORD PTR [rax+0x24],0x2
3124c6 jne    0x3124d2
3124c8 call   0x2ef794
3124cd mov    DWORD PTR [rax+0x24],esi
3124d0 jmp    0x312507
3124d2 call   0x2ef794
3124d7 cmp    DWORD PTR [rax+0x24],0x1
3124db je     0x312507
3124dd lea    rdx,[rbp+0xa0]
3124e4 mov    rcx,rbx
3124e7 call   0x2ef794
3124ec cmp    DWORD PTR [rax+0x24],esi
3124ef jne    0x312507
3124f1 lea    rdx,[rbp+0xa0]
3124f8 mov    rcx,rbx
3124fb call   0x2ef794
312500 mov    DWORD PTR [rax+0x24],0x2
312507 lea    rcx,[rbp+0xa0]
31250e call   0x2cc4f4
312513 movss  xmm0,DWORD PTR [rbp+0x4cc]
31251b lea    r9,[rip+0xfffffffffffb8e82]        # 0x2cb3a4
312522 mov    ebx,DWORD PTR [rbp+0x370]
312528 lea    rcx,[rbp+0x80]
31252f movsd  xmm7,QWORD PTR [rbp+0x4a8]
312537 mov    edx,0x8
31253c mov    edi,DWORD PTR [rbp+0x4b0]
312542 movsd  xmm8,QWORD PTR [rbp+0x4b8]
31254b mov    esi,DWORD PTR [rbp+0x4c0]
312551 mov    r15d,DWORD PTR [rbp+0x360]
