; game independent pdata/next-pdata extent 368a84..368b0f unwind3d2038
368a84 rex push rbx
368a86 sub    rsp,0x20
368a8a mov    rbx,rcx
368a8d call   0x2caf08
368a92 test   al,al
368a94 jne    0x368a9e
368a96 xor    eax,eax
368a98 add    rsp,0x20
368a9c pop    rbx
368a9d ret
368a9e mov    ecx,DWORD PTR [rip+0x960bc]        # 0x3feb60
368aa4 test   cl,0x1
368aa7 jne    0x368ac9
368aa9 mov    r8,QWORD PTR [rip+0x6e450]        # 0x3d6f00
368ab0 or     ecx,0x1
368ab3 add    r8,0x3f83e00
368aba mov    DWORD PTR [rip+0x960a0],ecx        # 0x3feb60
368ac0 mov    QWORD PTR [rip+0x96091],r8        # 0x3feb58
368ac7 jmp    0x368ad0
368ac9 mov    r8,QWORD PTR [rip+0x96088]        # 0x3feb58
368ad0 test   cl,0x2
368ad3 jne    0x368af4
368ad5 or     ecx,0x2
368ad8 lea    rdx,[rip+0x96091]        # 0x3feb70
368adf mov    DWORD PTR [rip+0x9607b],ecx        # 0x3feb60
368ae5 xor    r9d,r9d
368ae8 mov    rcx,QWORD PTR [rip+0x6d371]        # 0x3d5e60
368aef call   0x2cbd24
368af4 mov    rcx,QWORD PTR [rip+0x6d365]        # 0x3d5e60
368afb lea    rdx,[rip+0x9606e]        # 0x3feb70
368b02 mov    r8,rbx
368b05 add    rsp,0x20
368b09 pop    rbx
368b0a jmp    0x2cb9fc

; game independent pdata/next-pdata extent 37154c..3715d7 unwind3d2038
37154c rex push rbx
37154e sub    rsp,0x20
371552 mov    rbx,rcx
371555 call   0x2caf08
37155a test   al,al
37155c jne    0x371566
37155e xor    eax,eax
371560 add    rsp,0x20
371564 pop    rbx
371565 ret
371566 mov    ecx,DWORD PTR [rip+0x8f5e4]        # 0x400b50
37156c test   cl,0x1
37156f jne    0x371591
371571 mov    r8,QWORD PTR [rip+0x65988]        # 0x3d6f00
371578 or     ecx,0x1
37157b add    r8,0x44d6360
371582 mov    DWORD PTR [rip+0x8f5c8],ecx        # 0x400b50
371588 mov    QWORD PTR [rip+0x8f5b9],r8        # 0x400b48
37158f jmp    0x371598
371591 mov    r8,QWORD PTR [rip+0x8f5b0]        # 0x400b48
371598 test   cl,0x2
37159b jne    0x3715bc
37159d or     ecx,0x2
3715a0 lea    rdx,[rip+0x8f5b9]        # 0x400b60
3715a7 mov    DWORD PTR [rip+0x8f5a3],ecx        # 0x400b50
3715ad xor    r9d,r9d
3715b0 mov    rcx,QWORD PTR [rip+0x648a9]        # 0x3d5e60
3715b7 call   0x2cbd24
3715bc mov    rcx,QWORD PTR [rip+0x6489d]        # 0x3d5e60
3715c3 lea    rdx,[rip+0x8f596]        # 0x400b60
3715ca mov    r8,rbx
3715cd add    rsp,0x20
3715d1 pop    rbx
3715d2 jmp    0x2cb9fc

; game independent pdata/next-pdata extent 368b10..368b9b unwind3d2038
368b10 rex push rbx
368b12 sub    rsp,0x20
368b16 mov    rbx,rcx
368b19 call   0x2caf08
368b1e test   al,al
368b20 jne    0x368b2a
368b22 xor    eax,eax
368b24 add    rsp,0x20
368b28 pop    rbx
368b29 ret
368b2a mov    ecx,DWORD PTR [rip+0x95c70]        # 0x3fe7a0
368b30 test   cl,0x1
368b33 jne    0x368b55
368b35 mov    r8,QWORD PTR [rip+0x6e3c4]        # 0x3d6f00
368b3c or     ecx,0x1
368b3f add    r8,0x3f12dd0
368b46 mov    DWORD PTR [rip+0x95c54],ecx        # 0x3fe7a0
368b4c mov    QWORD PTR [rip+0x95c45],r8        # 0x3fe798
368b53 jmp    0x368b5c
368b55 mov    r8,QWORD PTR [rip+0x95c3c]        # 0x3fe798
368b5c test   cl,0x2
368b5f jne    0x368b80
368b61 or     ecx,0x2
368b64 lea    rdx,[rip+0x95c45]        # 0x3fe7b0
368b6b mov    DWORD PTR [rip+0x95c2f],ecx        # 0x3fe7a0
368b71 xor    r9d,r9d
368b74 mov    rcx,QWORD PTR [rip+0x6d2e5]        # 0x3d5e60
368b7b call   0x2cbd24
368b80 mov    rcx,QWORD PTR [rip+0x6d2d9]        # 0x3d5e60
368b87 lea    rdx,[rip+0x95c22]        # 0x3fe7b0
368b8e mov    r8,rbx
368b91 add    rsp,0x20
368b95 pop    rbx
368b96 jmp    0x2cb9fc

; game independent pdata/next-pdata extent 369298..369323 unwind3d2038
369298 rex push rbx
36929a sub    rsp,0x20
36929e mov    rbx,rcx
3692a1 call   0x2caf08
3692a6 test   al,al
3692a8 jne    0x3692b2
3692aa xor    eax,eax
3692ac add    rsp,0x20
3692b0 pop    rbx
3692b1 ret
3692b2 mov    ecx,DWORD PTR [rip+0x957b8]        # 0x3fea70
3692b8 test   cl,0x1
3692bb jne    0x3692dd
3692bd mov    r8,QWORD PTR [rip+0x6dc3c]        # 0x3d6f00
3692c4 or     ecx,0x1
3692c7 add    r8,0x3f1c760
3692ce mov    DWORD PTR [rip+0x9579c],ecx        # 0x3fea70
3692d4 mov    QWORD PTR [rip+0x9578d],r8        # 0x3fea68
3692db jmp    0x3692e4
3692dd mov    r8,QWORD PTR [rip+0x95784]        # 0x3fea68
3692e4 test   cl,0x2
3692e7 jne    0x369308
3692e9 or     ecx,0x2
3692ec lea    rdx,[rip+0x9578d]        # 0x3fea80
3692f3 mov    DWORD PTR [rip+0x95777],ecx        # 0x3fea70
3692f9 xor    r9d,r9d
3692fc mov    rcx,QWORD PTR [rip+0x6cb5d]        # 0x3d5e60
369303 call   0x2cbd24
369308 mov    rcx,QWORD PTR [rip+0x6cb51]        # 0x3d5e60
36930f lea    rdx,[rip+0x9576a]        # 0x3fea80
369316 mov    r8,rbx
369319 add    rsp,0x20
36931d pop    rbx
36931e jmp    0x2cb9fc

; game independent pdata/next-pdata extent 372754..3727df unwind3d2038
372754 rex push rbx
372756 sub    rsp,0x20
37275a mov    rbx,rcx
37275d call   0x2caf08
372762 test   al,al
372764 jne    0x37276e
372766 xor    eax,eax
372768 add    rsp,0x20
37276c pop    rbx
37276d ret
37276e mov    ecx,DWORD PTR [rip+0x8e5bc]        # 0x400d30
372774 test   cl,0x1
372777 jne    0x372799
372779 mov    r8,QWORD PTR [rip+0x64780]        # 0x3d6f00
372780 or     ecx,0x1
372783 add    r8,0x514a6b0
37278a mov    DWORD PTR [rip+0x8e5a0],ecx        # 0x400d30
372790 mov    QWORD PTR [rip+0x8e591],r8        # 0x400d28
372797 jmp    0x3727a0
372799 mov    r8,QWORD PTR [rip+0x8e588]        # 0x400d28
3727a0 test   cl,0x2
3727a3 jne    0x3727c4
3727a5 or     ecx,0x2
3727a8 lea    rdx,[rip+0x8e591]        # 0x400d40
3727af mov    DWORD PTR [rip+0x8e57b],ecx        # 0x400d30
3727b5 xor    r9d,r9d
3727b8 mov    rcx,QWORD PTR [rip+0x636a1]        # 0x3d5e60
3727bf call   0x2cbd24
3727c4 mov    rcx,QWORD PTR [rip+0x63695]        # 0x3d5e60
3727cb lea    rdx,[rip+0x8e56e]        # 0x400d40
3727d2 mov    r8,rbx
3727d5 add    rsp,0x20
3727d9 pop    rbx
3727da jmp    0x2cb9fc

; game independent pdata/next-pdata extent 369c1c..369cdc unwind3d2348
369c1c mov    QWORD PTR [rsp+0x8],rbx
369c21 push   rdi
369c22 sub    rsp,0x30
369c26 mov    rbx,rdx
369c29 mov    rdi,rcx
369c2c call   0x2caf08
369c31 test   al,al
369c33 jne    0x369c42
369c35 mov    rcx,rdx
369c38 call   0x3c7bbc
369c3d jmp    0x369cce
369c42 mov    ecx,DWORD PTR [rip+0x94c48]        # 0x3fe890
369c48 test   cl,0x1
369c4b jne    0x369c6d
369c4d mov    r8,QWORD PTR [rip+0x6d2ac]        # 0x3d6f00
369c54 or     ecx,0x1
369c57 add    r8,0x3935180
369c5e mov    DWORD PTR [rip+0x94c2c],ecx        # 0x3fe890
369c64 mov    QWORD PTR [rip+0x94c1d],r8        # 0x3fe888
369c6b jmp    0x369c74
369c6d mov    r8,QWORD PTR [rip+0x94c14]        # 0x3fe888
369c74 test   cl,0x2
369c77 jne    0x369c98
369c79 or     ecx,0x2
369c7c lea    rdx,[rip+0x94c1d]        # 0x3fe8a0
369c83 mov    DWORD PTR [rip+0x94c07],ecx        # 0x3fe890
369c89 xor    r9d,r9d
369c8c mov    rcx,QWORD PTR [rip+0x6c1cd]        # 0x3d5e60
369c93 call   0x2cbd24
369c98 lea    rcx,[rsp+0x20]
369c9d call   0x3c7bbc
369ca2 mov    rcx,QWORD PTR [rip+0x6c1b7]        # 0x3d5e60
369ca9 lea    r8,[rsp+0x20]
369cae mov    r9,rdi
369cb1 lea    rdx,[rip+0x94be8]        # 0x3fe8a0
369cb8 call   0x2d2094
369cbd movsd  xmm0,QWORD PTR [rsp+0x20]
369cc3 mov    eax,DWORD PTR [rsp+0x28]
369cc7 movsd  QWORD PTR [rbx],xmm0
369ccb mov    DWORD PTR [rbx+0x8],eax
369cce mov    rax,rbx
369cd1 mov    rbx,QWORD PTR [rsp+0x40]
369cd6 add    rsp,0x30
369cda pop    rdi
369cdb ret

; game independent pdata/next-pdata extent 3739c4..373a65 unwind3d2348
3739c4 mov    QWORD PTR [rsp+0x8],rbx
3739c9 push   rdi
3739ca sub    rsp,0x30
3739ce mov    rbx,rdx
3739d1 mov    rdi,rcx
3739d4 call   0x2caf08
3739d9 test   al,al
3739db je     0x373a57
3739dd mov    ecx,DWORD PTR [rip+0x8de8d]        # 0x401870
3739e3 test   cl,0x1
3739e6 jne    0x373a08
3739e8 mov    r8,QWORD PTR [rip+0x63511]        # 0x3d6f00
3739ef or     ecx,0x1
3739f2 add    r8,0x19edb50
3739f9 mov    DWORD PTR [rip+0x8de71],ecx        # 0x401870
3739ff mov    QWORD PTR [rip+0x8de62],r8        # 0x401868
373a06 jmp    0x373a0f
373a08 mov    r8,QWORD PTR [rip+0x8de59]        # 0x401868
373a0f test   cl,0x2
373a12 jne    0x373a33
373a14 or     ecx,0x2
373a17 lea    rdx,[rip+0x8de62]        # 0x401880
373a1e mov    DWORD PTR [rip+0x8de4c],ecx        # 0x401870
373a24 xor    r9d,r9d
373a27 mov    rcx,QWORD PTR [rip+0x62432]        # 0x3d5e60
373a2e call   0x2cbd24
373a33 mov    rcx,QWORD PTR [rip+0x62426]        # 0x3d5e60
373a3a lea    r8,[rsp+0x20]
373a3f mov    r9,rdi
373a42 lea    rdx,[rip+0x8de37]        # 0x401880
373a49 call   0x2d2094
373a4e movups xmm0,XMMWORD PTR [rsp+0x20]
373a53 movdqu XMMWORD PTR [rbx],xmm0
373a57 mov    rax,rbx
373a5a mov    rbx,QWORD PTR [rsp+0x40]
373a5f add    rsp,0x30
373a63 pop    rdi
373a64 ret

; game independent pdata/next-pdata extent 373a68..373b28 unwind3d2348
373a68 mov    QWORD PTR [rsp+0x8],rbx
373a6d push   rdi
373a6e sub    rsp,0x30
373a72 mov    rbx,rdx
373a75 mov    rdi,rcx
373a78 call   0x2caf08
373a7d test   al,al
373a7f jne    0x373a8e
373a81 mov    rcx,rdx
373a84 call   0x3c7bbc
373a89 jmp    0x373b1a
373a8e mov    ecx,DWORD PTR [rip+0x8dfbc]        # 0x401a50
373a94 test   cl,0x1
373a97 jne    0x373ab9
373a99 mov    r8,QWORD PTR [rip+0x63460]        # 0x3d6f00
373aa0 or     ecx,0x1
373aa3 add    r8,0x19f0a00
373aaa mov    DWORD PTR [rip+0x8dfa0],ecx        # 0x401a50
373ab0 mov    QWORD PTR [rip+0x8df91],r8        # 0x401a48
373ab7 jmp    0x373ac0
373ab9 mov    r8,QWORD PTR [rip+0x8df88]        # 0x401a48
373ac0 test   cl,0x2
373ac3 jne    0x373ae4
373ac5 or     ecx,0x2
373ac8 lea    rdx,[rip+0x8df91]        # 0x401a60
373acf mov    DWORD PTR [rip+0x8df7b],ecx        # 0x401a50
373ad5 xor    r9d,r9d
373ad8 mov    rcx,QWORD PTR [rip+0x62381]        # 0x3d5e60
373adf call   0x2cbd24
373ae4 lea    rcx,[rsp+0x20]
373ae9 call   0x3c7bbc
373aee mov    rcx,QWORD PTR [rip+0x6236b]        # 0x3d5e60
373af5 lea    r8,[rsp+0x20]
373afa mov    r9,rdi
373afd lea    rdx,[rip+0x8df5c]        # 0x401a60
373b04 call   0x2d2094
373b09 movsd  xmm0,QWORD PTR [rsp+0x20]
373b0f mov    eax,DWORD PTR [rsp+0x28]
373b13 movsd  QWORD PTR [rbx],xmm0
373b17 mov    DWORD PTR [rbx+0x8],eax
373b1a mov    rax,rbx
373b1d mov    rbx,QWORD PTR [rsp+0x40]
373b22 add    rsp,0x30
373b26 pop    rdi
373b27 ret

; game independent pdata/next-pdata extent 369324..3693af unwind3d2038
369324 rex push rbx
369326 sub    rsp,0x20
36932a mov    rbx,rcx
36932d call   0x2caf08
369332 test   al,al
369334 jne    0x36933e
369336 xor    eax,eax
369338 add    rsp,0x20
36933c pop    rbx
36933d ret
36933e mov    ecx,DWORD PTR [rip+0x9563c]        # 0x3fe980
369344 test   cl,0x1
369347 jne    0x369369
369349 mov    r8,QWORD PTR [rip+0x6dbb0]        # 0x3d6f00
369350 or     ecx,0x1
369353 add    r8,0x3ee0830
36935a mov    DWORD PTR [rip+0x95620],ecx        # 0x3fe980
369360 mov    QWORD PTR [rip+0x95611],r8        # 0x3fe978
369367 jmp    0x369370
369369 mov    r8,QWORD PTR [rip+0x95608]        # 0x3fe978
369370 test   cl,0x2
369373 jne    0x369394
369375 or     ecx,0x2
369378 lea    rdx,[rip+0x95611]        # 0x3fe990
36937f mov    DWORD PTR [rip+0x955fb],ecx        # 0x3fe980
369385 xor    r9d,r9d
369388 mov    rcx,QWORD PTR [rip+0x6cad1]        # 0x3d5e60
36938f call   0x2cbd24
369394 mov    rcx,QWORD PTR [rip+0x6cac5]        # 0x3d5e60
36939b lea    rdx,[rip+0x955ee]        # 0x3fe990
3693a2 mov    r8,rbx
3693a5 add    rsp,0x20
3693a9 pop    rbx
3693aa jmp    0x2cb9fc

; game independent pdata/next-pdata extent 32b308..32b3a6 unwind3d2040
32b308 mov    QWORD PTR [rsp+0x8],rbx
32b30d push   rdi
32b30e sub    rsp,0x20
32b312 mov    edi,ecx
32b314 call   0x32b2b4
32b319 mov    rcx,rax
32b31c mov    rbx,rax
32b31f call   0x2caf08
32b324 test   al,al
32b326 jne    0x32b32c
32b328 xor    eax,eax
32b32a jmp    0x32b39b
32b32c mov    ecx,DWORD PTR [rip+0xcc4e6]        # 0x3f7818
32b332 test   cl,0x1
32b335 jne    0x32b357
32b337 mov    r8,QWORD PTR [rip+0xabbc2]        # 0x3d6f00
32b33e or     ecx,0x1
32b341 add    r8,0x300df20
32b348 mov    DWORD PTR [rip+0xcc4ca],ecx        # 0x3f7818
32b34e mov    QWORD PTR [rip+0xcc4bb],r8        # 0x3f7810
32b355 jmp    0x32b35e
32b357 mov    r8,QWORD PTR [rip+0xcc4b2]        # 0x3f7810
32b35e test   cl,0x2
32b361 jne    0x32b382
32b363 or     ecx,0x2
32b366 lea    rdx,[rip+0xcc4b3]        # 0x3f7820
32b36d mov    DWORD PTR [rip+0xcc4a5],ecx        # 0x3f7818
32b373 xor    r9d,r9d
32b376 mov    rcx,QWORD PTR [rip+0xaaae3]        # 0x3d5e60
32b37d call   0x2cbd24
32b382 mov    rcx,QWORD PTR [rip+0xaaad7]        # 0x3d5e60
32b389 lea    rdx,[rip+0xcc490]        # 0x3f7820
32b390 mov    r9d,edi
32b393 mov    r8,rbx
32b396 call   0x32b1c8
32b39b mov    rbx,QWORD PTR [rsp+0x30]
32b3a0 add    rsp,0x20
32b3a4 pop    rdi
32b3a5 ret

; game independent pdata/next-pdata extent 371c38..371da3 unwind3d2568
371c38 mov    QWORD PTR [rsp+0x8],rbx
371c3d push   rbp
371c3e push   rsi
371c3f push   rdi
371c40 sub    rsp,0x50
371c44 mov    rdx,rcx
371c47 call   0x2caf08
371c4c test   al,al
371c4e je     0x371d94
371c54 mov    rcx,rdx
371c57 call   0x3715d8
371c5c mov    rcx,rax
371c5f mov    rdx,rax
371c62 call   0x2caf08
371c67 test   al,al
371c69 je     0x371d94
371c6f mov    rbp,QWORD PTR [rdx+0x50]
371c73 mov    rcx,rbp
371c76 call   0x2caf08
371c7b test   al,al
371c7d je     0x371d94
371c83 mov    eax,DWORD PTR [rip+0x8efb7]        # 0x400c40
371c89 test   al,0x1
371c8b jne    0x371d3f
371c91 or     eax,0x1
371c94 lea    rdx,[rsp+0x78]
371c99 lea    rcx,[rsp+0x78]
371c9e mov    DWORD PTR [rip+0x8ef9c],eax        # 0x400c40
371ca4 call   0x2cc730
371ca9 mov    rcx,rax
371cac call   0x2cdca4
371cb1 lea    rdx,[rsp+0x30]
371cb6 mov    rsi,rax
371cb9 lea    rcx,[rsp+0x80]
371cc0 
371cc1 call   0x371278
371cc6 mov    rcx,rax
371cc9 call   0x2cde34
371cce lea    rdx,[rsp+0x3c]
371cd3 mov    rdi,rax
371cd6 lea    rcx,[rsp+0x80]
371cdd 
371cde call   0x37125c
371ce3 mov    rcx,rax
371ce6 call   0x2cde34
371ceb lea    rdx,[rsp+0x88]
371cf2 
371cf3 mov    rbx,rax
371cf6 lea    rcx,[rsp+0x80]
371cfd 
371cfe call   0x37123c
371d03 mov    rcx,rax
371d06 call   0x2cdcf4
371d0b mov    rcx,rax
371d0e mov    rdx,rbx
371d11 call   0x334224
371d16 or     r8d,0xffffffff
371d1a mov    rcx,rax
371d1d mov    r9,rsi
371d20 mov    DWORD PTR [rsp+0x20],r8d
371d25 mov    rdx,rdi
371d28 call   0x3349ac
371d2d mov    r8,QWORD PTR [rax]
371d30 mov    eax,DWORD PTR [rip+0x8ef0a]        # 0x400c40
371d36 mov    QWORD PTR [rip+0x8eefb],r8        # 0x400c38
371d3d jmp    0x371d46
371d3f mov    r8,QWORD PTR [rip+0x8eef2]        # 0x400c38
371d46 test   al,0x2
371d48 jne    0x371d69
371d4a mov    rcx,QWORD PTR [rip+0x6410f]        # 0x3d5e60
371d51 lea    rdx,[rip+0x8eef8]        # 0x400c50
371d58 or     eax,0x2
371d5b xor    r9d,r9d
371d5e mov    DWORD PTR [rip+0x8eedc],eax        # 0x400c40
371d64 call   0x2cbd24
371d69 mov    rcx,QWORD PTR [rip+0x640f0]        # 0x3d5e60
371d70 lea    rdx,[rip+0x8eed9]        # 0x400c50
371d77 mov    r8,rbp
371d7a call   0x2cb9fc
371d7f mov    rcx,rax
371d82 mov    rdx,rax
371d85 call   0x2caf08
371d8a neg    al
371d8c sbb    rax,rax
371d8f and    rax,rdx
371d92 jmp    0x371d96
371d94 xor    eax,eax
371d96 mov    rbx,QWORD PTR [rsp+0x70]
371d9b add    rsp,0x50
371d9f pop    rdi
371da0 pop    rsi
371da1 pop    rbp
371da2 ret

; game independent pdata/next-pdata extent 370884..370966 unwind3d2354
370884 rex push rbx
370886 push   rsi
370887 push   rdi
370888 sub    rsp,0x40
37088c mov    eax,DWORD PTR [rip+0x8f86e]        # 0x400100
370892 mov    rsi,rcx
370895 test   al,0x1
370897 jne    0x37091f
37089d or     eax,0x1
3708a0 lea    rdx,[rsp+0x78]
3708a5 lea    rcx,[rsp+0x68]
3708aa mov    DWORD PTR [rip+0x8f850],eax        # 0x400100
3708b0 call   0x3703b0
3708b5 mov    rcx,rax
3708b8 call   0x2dd110
3708bd lea    rdx,[rsp+0x30]
3708c2 mov    rdi,rax
3708c5 lea    rcx,[rsp+0x68]
3708ca call   0x3702f4
3708cf mov    rcx,rax
3708d2 call   0x2dd138
3708d7 lea    rdx,[rsp+0x70]
3708dc mov    rbx,rax
3708df lea    rcx,[rsp+0x68]
3708e4 call   0x370240
3708e9 mov    rcx,rax
3708ec call   0x2e35ec
3708f1 mov    rcx,rax
3708f4 mov    DWORD PTR [rsp+0x20],0x0
3708fb 
3708fc mov    r9d,0x1
370902 mov    r8,rdi
370905 mov    rdx,rbx
370908 call   0x33416c
37090d mov    r8,QWORD PTR [rax]
370910 mov    eax,DWORD PTR [rip+0x8f7ea]        # 0x400100
370916 mov    QWORD PTR [rip+0x8f7db],r8        # 0x4000f8
37091d jmp    0x370926
37091f mov    r8,QWORD PTR [rip+0x8f7d2]        # 0x4000f8
370926 test   al,0x2
370928 jne    0x370949
37092a mov    rcx,QWORD PTR [rip+0x6552f]        # 0x3d5e60
370931 lea    rdx,[rip+0x8f7d8]        # 0x400110
370938 or     eax,0x2
37093b xor    r9d,r9d
37093e mov    DWORD PTR [rip+0x8f7bc],eax        # 0x400100
370944 call   0x2cbd24
370949 mov    rcx,QWORD PTR [rip+0x65510]        # 0x3d5e60
370950 lea    rdx,[rip+0x8f7b9]        # 0x400110
370957 mov    r8,rsi
37095a add    rsp,0x40
37095e pop    rdi
37095f pop    rsi
370960 pop    rbx
370961 jmp    0x2cb9fc

; game independent pdata/next-pdata extent 3703ec..370508 unwind3d2628
3703ec rex push rbx
3703ee push   rbp
3703ef push   rsi
3703f0 push   rdi
3703f1 sub    rsp,0x68
3703f5 mov    rbp,rcx
3703f8 mov    rcx,rdx
3703fb call   0x370aa4
370400 test   rax,rax
370403 je     0x3704fd
370409 mov    rcx,rax
37040c call   0x370884
370411 mov    rsi,rax
370414 test   rax,rax
370417 je     0x3704fd
37041d mov    ecx,DWORD PTR [rip+0x9009d]        # 0x4004c0
370423 test   cl,0x1
370426 jne    0x3704b7
37042c or     ecx,0x1
37042f lea    rdx,[rsp+0x3a]
370434 mov    DWORD PTR [rip+0x90086],ecx        # 0x4004c0
37043a lea    rcx,[rsp+0xa0]
370441 
370442 call   0x370324
370447 mov    rcx,rax
37044a call   0x2cde34
37044f lea    rdx,[rsp+0x46]
370454 mov    rdi,rax
370457 lea    rcx,[rsp+0xa0]
37045e 
37045f call   0x370274
370464 mov    rcx,rax
370467 call   0x2d85f4
37046c lea    rdx,[rsp+0x30]
370471 mov    rbx,rax
370474 lea    rcx,[rsp+0xa0]
37047b 
37047c call   0x3701d0
370481 mov    rcx,rax
370484 call   0x2cdd44
370489 mov    rcx,rax
37048c mov    DWORD PTR [rsp+0x20],0x0
370493 
370494 mov    r9d,0x1
37049a mov    r8,rdi
37049d mov    rdx,rbx
3704a0 call   0x33416c
3704a5 mov    ecx,DWORD PTR [rip+0x90015]        # 0x4004c0
3704ab mov    r8,QWORD PTR [rax]
3704ae mov    QWORD PTR [rip+0x90003],r8        # 0x4004b8
3704b5 jmp    0x3704be
3704b7 mov    r8,QWORD PTR [rip+0x8fffa]        # 0x4004b8
3704be test   cl,0x2
3704c1 jne    0x3704e2
3704c3 or     ecx,0x2
3704c6 lea    rdx,[rip+0x90003]        # 0x4004d0
3704cd mov    DWORD PTR [rip+0x8ffed],ecx        # 0x4004c0
3704d3 xor    r9d,r9d
3704d6 mov    rcx,QWORD PTR [rip+0x65983]        # 0x3d5e60
3704dd call   0x2cbd24
3704e2 mov    rcx,QWORD PTR [rip+0x65977]        # 0x3d5e60
3704e9 lea    rdx,[rip+0x8ffe0]        # 0x4004d0
3704f0 mov    r9,rsi
3704f3 mov    r8,rbp
3704f6 call   0x2d2094
3704fb jmp    0x3704ff
3704fd xor    eax,eax
3704ff add    rsp,0x68
370503 pop    rdi
370504 pop    rsi
370505 pop    rbp
370506 pop    rbx
370507 ret

; game independent pdata/next-pdata extent 370638..370754 unwind3d2628
370638 rex push rbx
37063a push   rbp
37063b push   rsi
37063c push   rdi
37063d sub    rsp,0x68
370641 mov    rbp,rcx
370644 mov    rcx,rdx
370647 call   0x370aa4
37064c test   rax,rax
37064f je     0x370749
370655 mov    rcx,rax
370658 call   0x370884
37065d mov    rsi,rax
370660 test   rax,rax
370663 je     0x370749
370669 mov    ecx,DWORD PTR [rip+0x8ff41]        # 0x4005b0
37066f test   cl,0x1
370672 jne    0x370703
370678 or     ecx,0x1
37067b lea    rdx,[rsp+0x3b]
370680 mov    DWORD PTR [rip+0x8ff2a],ecx        # 0x4005b0
370686 lea    rcx,[rsp+0xa0]
37068d 
37068e call   0x370370
370693 mov    rcx,rax
370696 call   0x2cde34
37069b lea    rdx,[rsp+0x47]
3706a0 mov    rdi,rax
3706a3 lea    rcx,[rsp+0xa0]
3706aa 
3706ab call   0x3702b4
3706b0 mov    rcx,rax
3706b3 call   0x2d85f4
3706b8 lea    rdx,[rsp+0x30]
3706bd mov    rbx,rax
3706c0 lea    rcx,[rsp+0xa0]
3706c7 
3706c8 call   0x370208
3706cd mov    rcx,rax
3706d0 call   0x2e9c54
3706d5 mov    rcx,rax
3706d8 mov    DWORD PTR [rsp+0x20],0x0
3706df 
3706e0 mov    r9d,0x1
3706e6 mov    r8,rdi
3706e9 mov    rdx,rbx
3706ec call   0x33416c
3706f1 mov    ecx,DWORD PTR [rip+0x8feb9]        # 0x4005b0
3706f7 mov    r8,QWORD PTR [rax]
3706fa mov    QWORD PTR [rip+0x8fea7],r8        # 0x4005a8
370701 jmp    0x37070a
370703 mov    r8,QWORD PTR [rip+0x8fe9e]        # 0x4005a8
37070a test   cl,0x2
37070d jne    0x37072e
37070f or     ecx,0x2
370712 lea    rdx,[rip+0x8fea7]        # 0x4005c0
370719 mov    DWORD PTR [rip+0x8fe91],ecx        # 0x4005b0
37071f xor    r9d,r9d
370722 mov    rcx,QWORD PTR [rip+0x65737]        # 0x3d5e60
370729 call   0x2cbd24
37072e mov    rcx,QWORD PTR [rip+0x6572b]        # 0x3d5e60
370735 lea    rdx,[rip+0x8fe84]        # 0x4005c0
37073c mov    r9,rsi
37073f mov    r8,rbp
370742 call   0x2d2094
370747 jmp    0x37074b
370749 xor    eax,eax
37074b add    rsp,0x68
37074f pop    rdi
370750 pop    rsi
370751 pop    rbp
370752 pop    rbx
370753 ret

; game independent pdata/next-pdata extent 370aa4..370b1c unwind3d2038
370aa4 rex push rbx
370aa6 sub    rsp,0x20
370aaa mov    eax,DWORD PTR [rip+0x8f560]        # 0x400010
370ab0 mov    rbx,rcx
370ab3 test   al,0x1
370ab5 jne    0x370ad7
370ab7 or     eax,0x1
370aba mov    DWORD PTR [rip+0x8f550],eax        # 0x400010
370ac0 call   0x2cc164
370ac5 mov    r8,rax
370ac8 mov    QWORD PTR [rip+0x8f539],rax        # 0x400008
370acf mov    eax,DWORD PTR [rip+0x8f53b]        # 0x400010
370ad5 jmp    0x370ade
370ad7 mov    r8,QWORD PTR [rip+0x8f52a]        # 0x400008
370ade test   al,0x2
370ae0 jne    0x370b01
370ae2 mov    rcx,QWORD PTR [rip+0x65377]        # 0x3d5e60
370ae9 lea    rdx,[rip+0x8f530]        # 0x400020
370af0 or     eax,0x2
370af3 xor    r9d,r9d
370af6 mov    DWORD PTR [rip+0x8f514],eax        # 0x400010
370afc call   0x2cbd24
370b01 mov    rcx,QWORD PTR [rip+0x65358]        # 0x3d5e60
370b08 lea    rdx,[rip+0x8f511]        # 0x400020
370b0f mov    r8,rbx
370b12 add    rsp,0x20
370b16 pop    rbx
370b17 jmp    0x2cb9fc

; game independent pdata/next-pdata extent 32b2b4..32b306 unwind3d2064
32b2b4 sub    rsp,0x28
32b2b8 mov    rax,QWORD PTR [rip+0xabc41]        # 0x3d6f00
32b2bf mov    rdx,QWORD PTR [rax+0xf0ee490]
32b2c6 mov    rcx,rdx
32b2c9 call   0x2caf08
32b2ce test   al,al
32b2d0 je     0x32b2ff
32b2d2 mov    r8,QWORD PTR [rdx+0xb8]
32b2d9 mov    rcx,r8
32b2dc call   0x2caf08
32b2e1 test   al,al
32b2e3 je     0x32b2ff
32b2e5 mov    rcx,QWORD PTR [r8+0x18]
32b2e9 call   0x2caf08
32b2ee test   al,al
32b2f0 je     0x32b2ff
32b2f2 mov    rcx,QWORD PTR [r8+0x18]
32b2f6 add    rsp,0x28
32b2fa jmp    0x2f9950
32b2ff xor    eax,eax
32b301 add    rsp,0x28
32b305 ret

; game independent pdata/next-pdata extent 368100..36817a unwind3d25f0
368100 mov    QWORD PTR [rsp+0x8],rbx
368105 push   rdi
368106 sub    rsp,0x50
36810a mov    rdi,rdx
36810d mov    r8,rcx
368110 call   0x2caf08
368115 test   al,al
368117 jne    0x368123
368119 mov    rcx,rdx
36811c call   0x3c7bbc
368121 jmp    0x36816c
368123 lea    rdx,[rsp+0x3c]
368128 mov    rcx,r8
36812b call   0x36920c
368130 movss  xmm3,DWORD PTR [rip+0xfffffffffff2511c]        # 0x28d254
368137 
368138 lea    rcx,[rsp+0x30]
36813d xorps  xmm2,xmm2
368140 xorps  xmm1,xmm1
368143 mov    rbx,rax
368146 call   0x3c7ba8
36814b lea    r8,[rsp+0x20]
368150 mov    rdx,rdi
368153 mov    ecx,DWORD PTR [rax+0x8]
368156 movsd  xmm0,QWORD PTR [rax]
36815a mov    DWORD PTR [rsp+0x28],ecx
36815e mov    rcx,rbx
368161 movsd  QWORD PTR [rsp+0x20],xmm0
368167 call   0x2ef834
36816c mov    rbx,QWORD PTR [rsp+0x60]
368171 mov    rax,rdi
368174 add    rsp,0x50
368178 pop    rdi
368179 ret

; game independent pdata/next-pdata extent 368b9c..368be6 unwind3d2038
368b9c rex push rbx
368b9e sub    rsp,0x20
368ba2 mov    rbx,rdx
368ba5 mov    rdx,rcx
368ba8 call   0x2caf08
368bad test   al,al
368baf je     0x368bd5
368bb1 mov    rdx,QWORD PTR [rdx+0x4e8]
368bb8 mov    rcx,rdx
368bbb call   0x2caf08
368bc0 test   al,al
368bc2 je     0x368bd5
368bc4 movsd  xmm0,QWORD PTR [rdx+0x30]
368bc9 movsd  QWORD PTR [rbx],xmm0
368bcd mov    eax,DWORD PTR [rdx+0x38]
368bd0 mov    DWORD PTR [rbx+0x8],eax
368bd3 jmp    0x368bdd
368bd5 mov    rcx,rbx
368bd8 call   0x3c7bbc
368bdd mov    rax,rbx
368be0 add    rsp,0x20
368be4 pop    rbx
368be5 ret

; game independent pdata/next-pdata extent 36924c..369296 unwind3d2038
36924c rex push rbx
36924e sub    rsp,0x20
369252 mov    rbx,rdx
369255 mov    rdx,rcx
369258 call   0x2caf08
36925d test   al,al
36925f je     0x369285
369261 mov    rdx,QWORD PTR [rdx+0x4e8]
369268 mov    rcx,rdx
36926b call   0x2caf08
369270 test   al,al
369272 je     0x369285
369274 movsd  xmm0,QWORD PTR [rdx+0x18]
369279 movsd  QWORD PTR [rbx],xmm0
36927d mov    eax,DWORD PTR [rdx+0x20]
369280 mov    DWORD PTR [rbx+0x8],eax
369283 jmp    0x36928d
369285 mov    rcx,rbx
369288 call   0x3c7bbc
36928d mov    rax,rbx
369290 add    rsp,0x20
369294 pop    rbx
369295 ret

; game independent pdata/next-pdata extent 369164..3691be unwind3d2038
369164 rex push rbx
369166 sub    rsp,0x20
36916a mov    rbx,rdx
36916d mov    r8,rcx
369170 call   0x2caf08
369175 test   al,al
369177 je     0x3691ad
369179 cmp    BYTE PTR [rip+0x8ecc8],0x0        # 0x3f7e48
369180 mov    rcx,r8
369183 je     0x36918c
369185 call   0x36924c
36918a jmp    0x3691b5
36918c call   0x369298
369191 mov    rcx,rax
369194 mov    r8,rax
369197 call   0x2caf08
36919c test   al,al
36919e je     0x3691ad
3691a0 mov    rdx,rbx
3691a3 mov    rcx,r8
3691a6 call   0x373a68
3691ab jmp    0x3691b5
3691ad mov    rcx,rbx
3691b0 call   0x3c7bbc
3691b5 mov    rax,rbx
3691b8 add    rsp,0x20
3691bc pop    rbx
3691bd ret

; game independent pdata/next-pdata extent 36b938..36b99d unwind3d2534
36b938 rex push rbx
36b93a sub    rsp,0x50
36b93e mov    rdx,rcx
36b941 call   0x2caf08
36b946 test   al,al
36b948 je     0x36b995
36b94a mov    rcx,rdx
36b94d call   0x36c3b4
36b952 mov    rcx,rax
36b955 mov    rdx,rax
36b958 call   0x2caf08
36b95d test   al,al
36b95f je     0x36b995
36b961 mov    rbx,QWORD PTR [rdx+0x20]
36b965 mov    rcx,rbx
36b968 call   0x2caf08
36b96d test   al,al
36b96f je     0x36b995
36b971 lea    rdx,[rsp+0x20]
36b976 lea    rcx,[rsp+0x68]
36b97b call   0x36b380
36b980 mov    rcx,rax
36b983 call   0x32210c
36b988 mov    rdx,rax
36b98b mov    rcx,rbx
36b98e call   0x3703ec
36b993 jmp    0x36b997
36b995 xor    eax,eax
36b997 add    rsp,0x50
36b99b pop    rbx
36b99c ret

; game independent pdata/next-pdata extent 371630..371685 unwind3d2534
371630 rex push rbx
371632 sub    rsp,0x50
371636 mov    rdx,rcx
371639 call   0x2caf08
37163e test   al,al
371640 je     0x37167d
371642 mov    rcx,rdx
371645 call   0x37154c
37164a mov    rcx,rax
37164d mov    rbx,rax
371650 call   0x2caf08
371655 test   al,al
371657 je     0x37167d
371659 lea    rdx,[rsp+0x20]
37165e lea    rcx,[rsp+0x68]
371663 call   0x371218
371668 mov    rcx,rax
37166b call   0x32210c
371670 mov    rdx,rax
371673 mov    rcx,rbx
371676 call   0x3703ec
37167b jmp    0x37167f
37167d xor    eax,eax
37167f add    rsp,0x50
371683 pop    rbx
371684 ret

; game independent pdata/next-pdata extent 372abc..372b2f unwind3d20e4
372abc rex push rbx
372abe sub    rsp,0x40
372ac2 mov    rdx,rcx
372ac5 call   0x2caf08
372aca test   al,al
372acc je     0x372b27
372ace mov    r8,QWORD PTR [rdx+0x20]
372ad2 mov    rcx,r8
372ad5 call   0x2caf08
372ada test   al,al
372adc je     0x372b27
372ade mov    rcx,QWORD PTR [r8+0x10]
372ae2 call   0x2caf08
372ae7 test   al,al
372ae9 je     0x372b27
372aeb mov    rcx,QWORD PTR [r8+0x10]
372aef call   0x372754
372af4 mov    rcx,rax
372af7 mov    rbx,rax
372afa call   0x2caf08
372aff test   al,al
372b01 je     0x372b27
372b03 lea    rdx,[rsp+0x20]
372b08 lea    rcx,[rsp+0x58]
372b0d call   0x372674
372b12 mov    rcx,rax
372b15 call   0x320584
372b1a mov    rdx,rax
372b1d mov    rcx,rbx
372b20 call   0x370638
372b25 jmp    0x372b29
372b27 xor    eax,eax
372b29 add    rsp,0x40
372b2d pop    rbx
372b2e ret

; game independent pdata/next-pdata extent 372b30..372ba3 unwind3d2534
372b30 rex push rbx
372b32 sub    rsp,0x50
372b36 mov    rdx,rcx
372b39 call   0x2caf08
372b3e test   al,al
372b40 je     0x372b9b
372b42 mov    r8,QWORD PTR [rdx+0x20]
372b46 mov    rcx,r8
372b49 call   0x2caf08
372b4e test   al,al
372b50 je     0x372b9b
372b52 mov    rcx,QWORD PTR [r8+0x10]
372b56 call   0x2caf08
372b5b test   al,al
372b5d je     0x372b9b
372b5f mov    rcx,QWORD PTR [r8+0x10]
372b63 call   0x372754
372b68 mov    rcx,rax
372b6b mov    rbx,rax
372b6e call   0x2caf08
372b73 test   al,al
372b75 je     0x372b9b
372b77 lea    rdx,[rsp+0x20]
372b7c lea    rcx,[rsp+0x68]
372b81 call   0x372690
372b86 mov    rcx,rax
372b89 call   0x332284
372b8e mov    rdx,rax
372b91 mov    rcx,rbx
372b94 call   0x370638
372b99 jmp    0x372b9d
372b9b xor    eax,eax
372b9d add    rsp,0x50
372ba1 pop    rbx
372ba2 ret

; game independent pdata/next-pdata extent 36942c..3696e1 unwind3d3e74
36942c mov    QWORD PTR [rsp+0x8],rbx
369431 mov    QWORD PTR [rsp+0x18],rdi
369436 push   rbp
369437 mov    rbp,rsp
36943a sub    rsp,0x40
36943e mov    rdx,rcx
369441 call   0x2caf08
369446 test   al,al
369448 je     0x3696ce
36944e mov    rcx,rdx
369451 call   0x368b10
369456 mov    rcx,rax
369459 mov    rdx,rax
36945c call   0x2caf08
369461 test   al,al
369463 je     0x3696ce
369469 mov    rcx,QWORD PTR [rdx+0x38]
36946d call   0x2caf08
369472 test   al,al
369474 je     0x3696ce
36947a mov    rcx,QWORD PTR [rdx+0x38]
36947e call   0x2e5a54
369483 mov    rcx,rax
369486 mov    rdx,rax
369489 call   0x2caf08
36948e test   al,al
369490 je     0x3696ce
369496 mov    rcx,rdx
369499 call   0x2d6354
36949e lea    rdx,[rbp-0x20]
3694a2 mov    rbx,rax
3694a5 lea    rcx,[rbp+0x18]
3694a9 call   0x367a3c
3694ae mov    rcx,rax
3694b1 call   0x2e9bb4
3694b6 movabs rdi,0xcbf29ce484222325
3694bd 
3694c0 mov    rcx,rax
3694c3 mov    rdx,rdi
3694c6 call   0x2e5b4c
3694cb cmp    rbx,rax
3694ce je     0x3696c4
3694d4 lea    rdx,[rbp-0x20]
3694d8 lea    rcx,[rbp+0x18]
3694dc call   0x367c20
3694e1 mov    rcx,rax
3694e4 call   0x2e9c54
3694e9 mov    rcx,rax
3694ec mov    rdx,rdi
3694ef call   0x2e5b4c
3694f4 cmp    rbx,rax
3694f7 je     0x3696c4
3694fd lea    rdx,[rbp-0x20]
369501 lea    rcx,[rbp+0x18]
369505 call   0x367d80
36950a mov    rcx,rax
36950d call   0x32050c
369512 mov    rcx,rax
369515 mov    rdx,rdi
369518 call   0x2e5b4c
36951d cmp    rbx,rax
369520 je     0x3696c4
369526 lea    rdx,[rbp-0x20]
36952a lea    rcx,[rbp+0x18]
36952e call   0x367e40
369533 mov    rcx,rax
369536 call   0x2d866c
36953b mov    rcx,rax
36953e mov    rdx,rdi
369541 call   0x2e5b4c
369546 cmp    rbx,rax
369549 je     0x3696c4
36954f lea    rdx,[rbp-0x20]
369553 lea    rcx,[rbp+0x18]
369557 call   0x367ebc
36955c mov    rcx,rax
36955f call   0x2e9b8c
369564 mov    rcx,rax
369567 mov    rdx,rdi
36956a call   0x2e5b4c
36956f cmp    rbx,rax
369572 je     0x3696c4
369578 lea    rdx,[rbp+0x18]
36957c lea    rcx,[rbp+0x18]
369580 call   0x367ef4
369585 mov    rcx,rax
369588 call   0x2cdccc
36958d mov    rcx,rax
369590 mov    rdx,rdi
369593 call   0x2e5b4c
369598 cmp    rbx,rax
36959b je     0x3696ba
3695a1 lea    rdx,[rbp-0x20]
3695a5 lea    rcx,[rbp+0x18]
3695a9 call   0x367f28
3695ae mov    rcx,rax
3695b1 call   0x2d85f4
3695b6 mov    rcx,rax
3695b9 mov    rdx,rdi
3695bc call   0x2e5b4c
3695c1 cmp    rbx,rax
3695c4 je     0x3696ba
3695ca lea    rdx,[rbp+0x18]
3695ce lea    rcx,[rbp+0x18]
3695d2 call   0x367f70
3695d7 mov    rcx,rax
3695da call   0x2d84dc
3695df mov    rcx,rax
3695e2 mov    rdx,rdi
3695e5 call   0x2e5b4c
3695ea cmp    rbx,rax
3695ed je     0x3696ba
3695f3 lea    rdx,[rbp+0x18]
3695f7 lea    rcx,[rbp+0x18]
3695fb call   0x367fac
369600 mov    rcx,rax
369603 call   0x2cdccc
369608 mov    rcx,rax
36960b mov    rdx,rdi
36960e call   0x2e5b4c
369613 cmp    rbx,rax
369616 je     0x3696ba
36961c lea    rdx,[rbp-0x20]
369620 lea    rcx,[rbp+0x18]
369624 call   0x3678c8
369629 mov    rcx,rax
36962c call   0x3204bc
369631 mov    rcx,rax
369634 mov    rdx,rdi
369637 call   0x2e5b4c
36963c cmp    rbx,rax
36963f je     0x3696ba
369641 lea    rdx,[rbp-0x20]
369645 lea    rcx,[rbp+0x18]
369649 call   0x367900
36964e mov    rcx,rax
369651 call   0x320494
369656 mov    rcx,rax
369659 mov    rdx,rdi
36965c call   0x2e5b4c
369661 cmp    rbx,rax
369664 je     0x3696ba
369666 lea    rdx,[rbp-0x20]
36966a lea    rcx,[rbp+0x18]
36966e call   0x367934
369673 mov    rcx,rax
369676 call   0x2e9c54
36967b mov    rcx,rax
36967e mov    rdx,rdi
369681 call   0x2e5b4c
369686 cmp    rbx,rax
369689 je     0x3696ba
36968b lea    rdx,[rbp-0x20]
36968f lea    rcx,[rbp+0x18]
369693 call   0x36796c
369698 mov    rcx,rax
36969b call   0x2d85f4
3696a0 mov    rcx,rax
3696a3 mov    rdx,rdi
3696a6 call   0x2e5b4c
3696ab cmp    rbx,rax
3696ae jne    0x3696ce
3696b0 movss  xmm0,DWORD PTR [rip+0xfffffffffff24b28]        # 0x28e1e0
3696b7 
3696b8 jmp    0x3696d1
3696ba movss  xmm0,DWORD PTR [rip+0xfffffffffff29b12]        # 0x2931d4
3696c1 
3696c2 jmp    0x3696d1
3696c4 movss  xmm0,DWORD PTR [rip+0xfffffffffff24460]        # 0x28db2c
3696cb 
3696cc jmp    0x3696d1
3696ce xorps  xmm0,xmm0
3696d1 mov    rbx,QWORD PTR [rsp+0x50]
3696d6 mov    rdi,QWORD PTR [rsp+0x60]
3696db add    rsp,0x40
3696df pop    rbp
3696e0 ret

; game independent pdata/next-pdata extent 36b244..36b288 unwind3d2038
36b244 rex push rbx
36b246 sub    rsp,0x20
36b24a mov    rbx,rcx
36b24d call   0x2caf08
36b252 test   al,al
36b254 je     0x36b280
36b256 lea    rcx,[rip+0x7ae53]        # 0x3e60b0
36b25d call   0x320714
36b262 test   al,al
36b264 jne    0x36b280
36b266 lea    rdx,[rsp+0x38]
36b26b mov    QWORD PTR [rsp+0x38],rbx
36b270 lea    rcx,[rip+0x7ae39]        # 0x3e60b0
36b277 call   0x367898
36b27c mov    al,BYTE PTR [rax]
36b27e jmp    0x36b282
36b280 xor    al,al
36b282 add    rsp,0x20
36b286 pop    rbx
36b287 ret

; game independent pdata/next-pdata extent 37224c..372278 unwind3d2064
37224c sub    rsp,0x28
372250 mov    rdx,rcx
372253 call   0x2caf08
372258 test   al,al
37225a je     0x372271
37225c mov    rdx,QWORD PTR [rdx+0x20]
372260 mov    rcx,rdx
372263 call   0x2caf08
372268 test   al,al
37226a je     0x372271
37226c mov    eax,DWORD PTR [rdx+0x18]
37226f jmp    0x372273
372271 xor    eax,eax
372273 add    rsp,0x28
372277 ret

; game independent pdata/next-pdata extent 3722f0..372339 unwind3d2064
3722f0 sub    rsp,0x28
3722f4 mov    r8d,edx
3722f7 mov    rdx,rcx
3722fa call   0x2caf08
3722ff test   al,al
372301 je     0x372332
372303 mov    rdx,QWORD PTR [rdx+0x20]
372307 mov    rcx,rdx
37230a call   0x2caf08
37230f test   al,al
372311 je     0x372332
372313 mov    rdx,QWORD PTR [rdx+0x10]
372317 mov    rcx,rdx
37231a call   0x2caf08
37231f test   al,al
372321 je     0x372332
372323 lea    ecx,[r8*8+0x0]
37232a 
37232b mov    rax,QWORD PTR [rcx+rdx*1+0x20]
372330 jmp    0x372334
372332 xor    eax,eax
372334 add    rsp,0x28
372338 ret

; game independent pdata/next-pdata extent 2ef834..2ef9d7 unwind3d2d68
2ef834 mov    rax,rsp
2ef837 mov    QWORD PTR [rax+0x8],rbx
2ef83b push   rdi
2ef83c sub    rsp,0xb0
2ef843 movss  xmm0,DWORD PTR [rcx+0x4]
2ef848 mov    rbx,r8
2ef84b movaps XMMWORD PTR [rax-0x18],xmm6
2ef84f mov    rdi,rdx
2ef852 movaps XMMWORD PTR [rax-0x28],xmm7
2ef856 movaps XMMWORD PTR [rax-0x38],xmm8
2ef85b movaps XMMWORD PTR [rax-0x48],xmm9
2ef860 movss  xmm9,DWORD PTR [rcx+0x8]
2ef866 movaps XMMWORD PTR [rax-0x58],xmm10
2ef86b addss  xmm9,xmm9
2ef870 movaps XMMWORD PTR [rax-0x68],xmm11
2ef875 movaps XMMWORD PTR [rax-0x78],xmm12
2ef87a movaps XMMWORD PTR [rsp+0x30],xmm13
2ef880 movaps xmm13,xmm0
2ef884 movaps XMMWORD PTR [rsp+0x20],xmm14
2ef88a addss  xmm13,xmm0
2ef88f movss  xmm14,DWORD PTR [rcx]
2ef894 movaps xmm6,xmm9
2ef898 mulss  xmm6,DWORD PTR [rcx+0x8]
2ef89d addss  xmm14,xmm14
2ef8a2 movaps xmm10,xmm9
2ef8a6 movaps xmm8,xmm9
2ef8aa mulss  xmm10,DWORD PTR [rcx]
2ef8af movaps xmm7,xmm13
2ef8b3 mulss  xmm7,DWORD PTR [rcx]
2ef8b7 movaps xmm11,xmm13
2ef8bb mulss  xmm13,DWORD PTR [rcx+0xc]
2ef8c1 movaps xmm12,xmm14
2ef8c5 mulss  xmm12,DWORD PTR [rcx]
2ef8ca mulss  xmm14,DWORD PTR [rcx+0xc]
2ef8d0 mulss  xmm9,DWORD PTR [rcx+0xc]
2ef8d6 mov    rcx,rdx
2ef8d9 mulss  xmm11,xmm0
2ef8de mulss  xmm8,xmm0
2ef8e3 call   0x3c7bbc
2ef8e8 movss  xmm3,DWORD PTR [rip+0xfffffffffff9d964]        # 0x28d254
2ef8ef 
2ef8f0 lea    r11,[rsp+0xb0]
2ef8f7 
2ef8f8 movaps xmm0,xmm6
2ef8fb movaps xmm2,xmm3
2ef8fe addss  xmm0,xmm11
2ef903 movaps xmm1,xmm13
2ef907 addss  xmm1,xmm10
2ef90c mov    rax,rdi
2ef90f addss  xmm6,xmm12
2ef914 subss  xmm10,xmm13
2ef919 addss  xmm11,xmm12
2ef91e subss  xmm2,xmm0
2ef922 movaps xmm0,xmm7
2ef925 mulss  xmm1,DWORD PTR [rbx+0x8]
2ef92a subss  xmm0,xmm9
2ef92f mulss  xmm10,DWORD PTR [rbx]
2ef934 addss  xmm9,xmm7
2ef939 movaps xmm7,XMMWORD PTR [r11-0x20]
2ef93e mulss  xmm0,DWORD PTR [rbx+0x4]
2ef943 mulss  xmm2,DWORD PTR [rbx]
2ef947 mulss  xmm9,DWORD PTR [rbx]
2ef94c addss  xmm2,xmm0
2ef950 movaps xmm0,xmm8
2ef954 subss  xmm0,xmm14
2ef959 addss  xmm14,xmm8
2ef95e movaps xmm8,XMMWORD PTR [r11-0x30]
2ef963 addss  xmm2,xmm1
2ef967 movaps xmm1,xmm3
2ef96a mulss  xmm0,DWORD PTR [rbx+0x8]
2ef96f subss  xmm1,xmm6
2ef973 mulss  xmm14,DWORD PTR [rbx+0x4]
2ef979 subss  xmm3,xmm11
2ef97e movaps xmm6,XMMWORD PTR [r11-0x10]
2ef983 mulss  xmm1,DWORD PTR [rbx+0x4]
2ef988 movaps xmm11,XMMWORD PTR [r11-0x60]
2ef98d addss  xmm14,xmm10
2ef992 mulss  xmm3,DWORD PTR [rbx+0x8]
2ef997 mov    rbx,QWORD PTR [r11+0x10]
2ef99b movaps xmm10,XMMWORD PTR [r11-0x50]
2ef9a0 addss  xmm1,xmm9
2ef9a5 movaps xmm9,XMMWORD PTR [r11-0x40]
2ef9aa addss  xmm14,xmm3
2ef9af movss  DWORD PTR [rdi],xmm2
2ef9b3 addss  xmm1,xmm0
2ef9b7 movss  DWORD PTR [rdi+0x8],xmm14
2ef9bd movss  DWORD PTR [rdi+0x4],xmm1
2ef9c2 movaps xmm12,XMMWORD PTR [r11-0x70]
2ef9c7 movaps xmm13,XMMWORD PTR [r11-0x80]
2ef9cc movaps xmm14,XMMWORD PTR [rsp+0x20]
2ef9d2 mov    rsp,r11
2ef9d5 pop    rdi
2ef9d6 ret

; game independent pdata/next-pdata extent 36920c..36924c unwind3d2038
36920c rex push rbx
36920e sub    rsp,0x20
369212 mov    rbx,rdx
369215 mov    rdx,rcx
369218 call   0x2caf08
36921d test   al,al
36921f je     0x369243
369221 mov    rcx,rdx
369224 call   0x369298
369229 mov    rcx,rax
36922c mov    r8,rax
36922f call   0x2caf08
369234 test   al,al
369236 je     0x369243
369238 mov    rdx,rbx
36923b mov    rcx,r8
36923e call   0x3739c4
369243 mov    rax,rbx
369246 add    rsp,0x20
36924a pop    rbx
36924b ret
