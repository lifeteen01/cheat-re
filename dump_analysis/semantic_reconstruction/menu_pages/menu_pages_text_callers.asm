; caller 0x359f1b
359ed2 lea    r8d,[rdx-0x1b]
359ed6 call   0x2dbac8
359edb mov    eax,DWORD PTR [rip+0xa3207]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
359ee1 cmp    eax,edi
359ee3 jne    0x359eee
359ee5 lea    rcx,[rip+0xfffffffffff3ca74]        # 0x296960
359eec jmp    0x359ef9
359eee cmp    eax,esi
359ef0 jne    0x359f00
359ef2 lea    rcx,[rip+0xfffffffffff3ca87]        # 0x296980
359ef9 call   0x365004
359efe jmp    0x359f18
359f00 lea    rdx,[rbp-0x6a]
359f04 lea    rcx,[rbp+0xf8]
359f0b call   0x35577c ; STRING getter=0x35577c Secondary Aim Key
359f10 mov    rcx,rax
359f13 call   0x2e9bdc
359f18 mov    rcx,rax
359f1b call   0x3c4e90
359f20 movss  xmm1,DWORD PTR [rip+0xfffffffffff39338]        # 0x293260 ; f32=-1
359f28 xorps  xmm0,xmm0
