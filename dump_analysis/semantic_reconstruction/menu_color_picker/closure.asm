; closure independent pdata/next-pdata extent 3795d4..37967e unwind3d4128
3795d4 rex push rbx
3795d6 push   rbp
3795d7 push   rsi
3795d8 push   rdi
3795d9 push   r14
3795db sub    rsp,0x50
3795df movss  xmm3,DWORD PTR [rcx+0x8]
3795e4 mov    rbp,r9
3795e7 movss  xmm2,DWORD PTR [rcx+0x4]
3795ec mov    rsi,r8
3795ef movss  xmm1,DWORD PTR [rcx]
3795f3 mov    r14,rdx
3795f6 mov    rdi,QWORD PTR [rip+0x8c52b]        # 0x405b28
3795fd lea    rcx,[rsp+0x30]
379602 movaps XMMWORD PTR [rsp+0x40],xmm6
379607 xorps  xmm6,xmm6
37960a movss  DWORD PTR [rsp+0x20],xmm6
379610 mov    ebx,DWORD PTR [rdi+0x5b50]
379616 call   0x2cc350
37961b mov    rcx,rax
37961e call   0x39045c
379623 cmp    ebx,eax
379625 jne    0x37966e
379627 movss  xmm0,DWORD PTR [rsi]
37962b ucomiss xmm0,xmm6
37962e jp     0x379632
379630 je     0x379651
379632 movss  xmm0,DWORD PTR [r14]
379637 ucomiss xmm0,xmm6
37963a jp     0x37965a
37963c jne    0x37965a
37963e movss  xmm0,DWORD PTR [rdi+0x5b48]
379645 
379646 ucomiss xmm0,DWORD PTR [rip+0xfffffffffff13c07]        # 0x28d254
37964d jp     0x37965a
37964f jne    0x37965a
379651 mov    eax,DWORD PTR [rdi+0x5b48]
379657 mov    DWORD PTR [r14],eax
37965a movss  xmm0,DWORD PTR [rbp+0x0]
37965f ucomiss xmm0,xmm6
379662 jp     0x37966e
379664 jne    0x37966e
379666 mov    eax,DWORD PTR [rdi+0x5b4c]
37966c mov    DWORD PTR [rsi],eax
37966e movaps xmm6,XMMWORD PTR [rsp+0x40]
379673 add    rsp,0x50
379677 pop    r14
379679 pop    rdi
37967a pop    rsi
37967b pop    rbp
37967c pop    rbx
37967d ret

; closure independent pdata/next-pdata extent 39062c..39071d unwind3d46e4
39062c mov    rax,rsp
39062f movss  DWORD PTR [rax+0x18],xmm2
390634 movss  DWORD PTR [rax+0x10],xmm1
390639 movss  DWORD PTR [rax+0x8],xmm0
39063e push   rbx
39063f sub    rsp,0x40
390643 comiss xmm2,xmm1
390646 mov    rbx,r9
390649 movaps XMMWORD PTR [rax-0x18],xmm7
39064d movaps XMMWORD PTR [rax-0x28],xmm8
390652 movaps xmm8,xmm0
390656 jbe    0x39067b
390658 lea    rdx,[rax+0x18]
39065c lea    rcx,[rax+0x10]
390660 call   0x38a3fc
390665 movss  xmm3,DWORD PTR [rip+0xfffffffffff02bf3]        # 0x293260
39066c 
39066d movss  xmm2,DWORD PTR [rsp+0x60]
390673 movss  xmm1,DWORD PTR [rsp+0x58]
390679 jmp    0x39067e
39067b xorps  xmm3,xmm3
39067e comiss xmm1,xmm8
390682 jbe    0x3906af
390684 lea    rdx,[rsp+0x58]
390689 lea    rcx,[rsp+0x50]
39068e call   0x38a3fc
390693 movss  xmm1,DWORD PTR [rip+0xfffffffffff19abd]        # 0x2aa158
39069a 
39069b movss  xmm8,DWORD PTR [rsp+0x50]
3906a2 subss  xmm1,xmm3
3906a6 movaps xmm3,xmm1
3906a9 movss  xmm1,DWORD PTR [rsp+0x58]
3906af movaps xmm0,xmm1
3906b2 movaps xmm7,xmm8
3906b6 minss  xmm0,xmm2
3906ba subss  xmm1,xmm2
3906be subss  xmm7,xmm0
3906c2 movaps xmm0,xmm7
3906c5 mulss  xmm0,DWORD PTR [rip+0xfffffffffff02abb]        # 0x293188
3906cc 
3906cd addss  xmm0,DWORD PTR [rip+0xfffffffffff19a63]        # 0x2aa138
3906d4 
3906d5 divss  xmm1,xmm0
3906d9 addss  xmm1,xmm3
3906dd movaps xmm0,xmm1
3906e0 call   0x2e3ef0
3906e5 mov    rax,QWORD PTR [rsp+0x70]
3906ea movaps xmm1,xmm8
3906ee addss  xmm1,DWORD PTR [rip+0xfffffffffff19a42]        # 0x2aa138
3906f5 
3906f6 movss  DWORD PTR [rbx],xmm0
3906fa divss  xmm7,xmm1
3906fe movss  DWORD PTR [rax],xmm7
390702 mov    rax,QWORD PTR [rsp+0x78]
390707 movaps xmm7,XMMWORD PTR [rsp+0x30]
39070c movss  DWORD PTR [rax],xmm8
390711 movaps xmm8,XMMWORD PTR [rsp+0x20]
390717 add    rsp,0x40
39071b pop    rbx
39071c ret

; closure independent pdata/next-pdata extent 3904e0..39062b unwind3d3d84
3904e0 rex push rbx
3904e2 sub    rsp,0x50
3904e6 movaps XMMWORD PTR [rsp+0x40],xmm6
3904eb mov    rbx,r9
3904ee movaps XMMWORD PTR [rsp+0x30],xmm7
3904f3 movaps xmm6,xmm2
3904f6 movaps XMMWORD PTR [rsp+0x20],xmm8
3904fc movaps xmm8,xmm1
390500 ucomiss xmm8,DWORD PTR [rip+0xffffffffffefcd44]        # 0x28d24c
390507 
390508 jp     0x39052e
39050a jne    0x39052e
39050c mov    rax,QWORD PTR [rsp+0x88]
390513 
390514 movss  DWORD PTR [rax],xmm6
390518 mov    rax,QWORD PTR [rsp+0x80]
39051f 
390520 movss  DWORD PTR [rax],xmm6
390524 movss  DWORD PTR [r9],xmm6
390529 jmp    0x390615
39052e movss  xmm7,DWORD PTR [rip+0xffffffffffefcd1e]        # 0x28d254
390535 
390536 movaps xmm1,xmm7
390539 call   0x3c8a6c
39053e mov    rax,QWORD PTR [rsp+0x80]
390545 
390546 movaps xmm2,xmm0
390549 divss  xmm2,DWORD PTR [rip+0xfffffffffff19bef]        # 0x2aa140
390550 
390551 xorps  xmm1,xmm1
390554 movaps xmm0,xmm7
390557 cvttss2si ecx,xmm2
39055b movaps xmm3,xmm7
39055e movaps xmm4,xmm7
390561 subss  xmm3,xmm8
390566 cvtsi2ss xmm1,ecx
39056a mulss  xmm3,xmm6
39056e subss  xmm2,xmm1
390572 subss  xmm0,xmm2
390576 movaps xmm1,xmm2
390579 mulss  xmm1,xmm8
39057e mulss  xmm0,xmm8
390583 subss  xmm4,xmm1
390587 subss  xmm7,xmm0
39058b mulss  xmm4,xmm6
39058f mulss  xmm7,xmm6
390593 test   ecx,ecx
390595 je     0x390601
390597 sub    ecx,0x1
39059a je     0x3905f7
39059c sub    ecx,0x1
39059f je     0x3905e1
3905a1 sub    ecx,0x1
3905a4 je     0x3905cb
3905a6 cmp    ecx,0x1
3905a9 je     0x3905c1
3905ab movss  DWORD PTR [rbx],xmm6
3905af movss  DWORD PTR [rax],xmm3
3905b3 mov    rax,QWORD PTR [rsp+0x88]
3905ba 
3905bb movss  DWORD PTR [rax],xmm4
3905bf jmp    0x390615
3905c1 movss  DWORD PTR [rbx],xmm7
3905c5 movss  DWORD PTR [rax],xmm3
3905c9 jmp    0x3905d3
3905cb movss  DWORD PTR [rbx],xmm3
3905cf movss  DWORD PTR [rax],xmm4
3905d3 mov    rax,QWORD PTR [rsp+0x88]
3905da 
3905db movss  DWORD PTR [rax],xmm6
3905df jmp    0x390615
3905e1 movss  DWORD PTR [rbx],xmm3
3905e5 movss  DWORD PTR [rax],xmm6
3905e9 mov    rax,QWORD PTR [rsp+0x88]
3905f0 
3905f1 movss  DWORD PTR [rax],xmm7
3905f5 jmp    0x390615
3905f7 movss  DWORD PTR [rbx],xmm4
3905fb movss  DWORD PTR [rax],xmm6
3905ff jmp    0x390609
390601 movss  DWORD PTR [rbx],xmm6
390605 movss  DWORD PTR [rax],xmm7
390609 mov    rax,QWORD PTR [rsp+0x88]
390610 
390611 movss  DWORD PTR [rax],xmm3
390615 movaps xmm6,XMMWORD PTR [rsp+0x40]
39061a movaps xmm7,XMMWORD PTR [rsp+0x30]
39061f movaps xmm8,XMMWORD PTR [rsp+0x20]
390625 add    rsp,0x50
390629 pop    rbx
39062a ret

; closure independent pdata/next-pdata extent 3762ac..3762d4 unwind0
3762ac cmp    ecx,r8d
3762af mov    eax,ecx
3762b1 cmovg  eax,r8d
3762b5 cmp    ecx,edx
3762b7 cmovl  eax,edx
3762ba ret
3762bb int3
3762bc comiss xmm1,xmm0
3762bf ja     0x3762c8
3762c1 minss  xmm2,xmm0
3762c5 movaps xmm1,xmm2
3762c8 movaps xmm0,xmm1
3762cb ret
3762cc minss  xmm0,xmm1
3762d0 ret
3762d1 int3
3762d2 int3
3762d3 int3

; closure independent pdata/next-pdata extent 37afd4..37b5bf unwind3d41b0
37afd4 mov    QWORD PTR [rsp+0x10],rbx
37afd9 mov    QWORD PTR [rsp+0x8],rcx
37afde push   rbp
37afdf push   rsi
37afe0 push   rdi
37afe1 push   r12
37afe3 push   r13
37afe5 push   r14
37afe7 push   r15
37afe9 lea    rbp,[rsp-0x9ad0]
37aff0 
37aff1 mov    eax,0x9bd0
37aff6 call   0x2cd050
37affb sub    rsp,rax
37affe movaps XMMWORD PTR [rsp+0x9bc0],xmm6
37b005 
37b006 mov    r12,r9
37b009 movaps XMMWORD PTR [rsp+0x9bb0],xmm7
37b010 
37b011 mov    r13,r8
37b014 movaps XMMWORD PTR [rsp+0x9ba0],xmm8
37b01b 
37b01d movaps xmm6,xmm1
37b020 movaps XMMWORD PTR [rsp+0x9b90],xmm10
37b027 
37b029 movaps XMMWORD PTR [rsp+0x9b80],xmm12
37b030 
37b032 movaps XMMWORD PTR [rsp+0x9b70],xmm13
37b039 
37b03b movaps XMMWORD PTR [rsp+0x9b60],xmm14
37b042 
37b044 call   0x392ca4
37b049 mov    ecx,0x80
37b04e lea    rdx,[rbp-0x30]
37b052 lea    r10d,[rcx-0x78]
37b056 movups xmm0,XMMWORD PTR [rax]
37b059 movups xmm1,XMMWORD PTR [rax+0x10]
37b05d movups XMMWORD PTR [rdx],xmm0
37b060 movups xmm0,XMMWORD PTR [rax+0x20]
37b064 movups XMMWORD PTR [rdx+0x10],xmm1
37b068 movups xmm1,XMMWORD PTR [rax+0x30]
37b06c movups XMMWORD PTR [rdx+0x20],xmm0
37b070 movups xmm0,XMMWORD PTR [rax+0x40]
37b074 movups XMMWORD PTR [rdx+0x30],xmm1
37b078 movups xmm1,XMMWORD PTR [rax+0x50]
37b07c movups XMMWORD PTR [rdx+0x40],xmm0
37b080 movups xmm0,XMMWORD PTR [rax+0x60]
37b084 movups XMMWORD PTR [rdx+0x50],xmm1
37b088 movups xmm1,XMMWORD PTR [rax+0x70]
37b08c add    rax,rcx
37b08f movups XMMWORD PTR [rdx+0x60],xmm0
37b093 movups XMMWORD PTR [rdx+0x70],xmm1
37b097 add    rdx,rcx
37b09a sub    r10,0x1
37b09e jne    0x37b056
37b0a0 movups xmm0,XMMWORD PTR [rax]
37b0a3 movups xmm1,XMMWORD PTR [rax+0x10]
37b0a7 movups XMMWORD PTR [rdx],xmm0
37b0aa movups xmm0,XMMWORD PTR [rax+0x20]
37b0ae movups XMMWORD PTR [rdx+0x10],xmm1
37b0b2 movups xmm1,XMMWORD PTR [rax+0x30]
37b0b6 movups XMMWORD PTR [rdx+0x20],xmm0
37b0ba movups xmm0,XMMWORD PTR [rax+0x40]
37b0be mov    rax,QWORD PTR [rax+0x50]
37b0c2 movups XMMWORD PTR [rdx+0x30],xmm1
37b0c6 movups XMMWORD PTR [rdx+0x40],xmm0
37b0ca mov    QWORD PTR [rdx+0x50],rax
37b0ce call   0x35d200
37b0d3 mov    r15,rax
37b0d6 call   0x3926ac
37b0db mov    rdx,rax
37b0de lea    rcx,[rbp+0x430]
37b0e5 call   0x377714
37b0ea mov    rdx,QWORD PTR [rip+0x8aa37]        # 0x405b28
37b0f1 lea    rcx,[rbp+0x3c00]
37b0f8 call   0x376760
37b0fd movss  xmm3,DWORD PTR [rbp-0x28]
37b102 lea    rcx,[rbp-0x78]
37b106 movss  xmm2,DWORD PTR [r15+0x28]
37b10c movss  xmm1,DWORD PTR [rip+0xffffffffffecddd4]        # 0x248ee8
37b113 
37b114 mulss  xmm1,DWORD PTR [rip+0xfffffffffff1811c]        # 0x293238
37b11b 
37b11c movsd  xmm0,QWORD PTR [r15+0x100]
37b123 
37b125 movss  xmm10,DWORD PTR [rip+0xfffffffffff18006]        # 0x293134
37b12c 
37b12e mulss  xmm3,xmm10
37b133 movsd  QWORD PTR [rbp+0x9b28],xmm0
37b13a 
37b13b subss  xmm2,xmm3
37b13f subss  xmm1,xmm3
37b143 mulss  xmm2,DWORD PTR [rip+0xfffffffffff12105]        # 0x28d250
37b14a 
37b14b call   0x2cc340
37b150 mov    r8,rax
37b153 lea    rdx,[rbp+0x9b28]
37b15a lea    rcx,[rsp+0x78]
37b15f call   0x2ef9d8
37b164 mov    r8,rax
37b167 lea    rdx,[rbp+0x9b28]
37b16e lea    rcx,[rsp+0x50]
37b173 call   0x2db388
37b178 movss  xmm13,DWORD PTR [rip+0xfffffffffff120d3]        # 0x28d254
37b17f 
37b181 lea    rcx,[rsp+0x68]
37b186 movss  xmm12,DWORD PTR [rbp-0x30]
37b18c movaps xmm3,xmm13
37b190 movaps xmm2,xmm13
37b194 movss  DWORD PTR [rsp+0x20],xmm12
37b19b movaps xmm1,xmm13
37b19f call   0x2cc350
37b1a4 lea    rax,[rsp+0x70]
37b1a9 movaps xmm2,xmm13
37b1ad mov    QWORD PTR [rsp+0x28],rax
37b1b2 lea    r9,[rsp+0x68]
37b1b7 lea    rax,[rsp+0x6c]
37b1bc movaps xmm1,xmm13
37b1c0 movaps xmm0,xmm6
37b1c3 mov    QWORD PTR [rsp+0x20],rax
37b1c8 call   0x3904e0
37b1cd lea    rcx,[rsp+0x68]
37b1d2 call   0x39045c
37b1d7 movaps xmm0,xmm12
37b1db call   0x3789fc
37b1e0 mulss  xmm0,DWORD PTR [rip+0xfffffffffff124fc]        # 0x28d6e4
37b1e7 
37b1e8 lea    r8,[rsp+0x58]
37b1ed mov    rcx,QWORD PTR [r15+0x298]
37b1f4 lea    rdx,[rsp+0x50]
37b1f9 addss  xmm0,DWORD PTR [rip+0xfffffffffff1204f]        # 0x28d250
37b200 
37b201 cvttss2si ebx,xmm0
37b205 shl    ebx,0x18
37b208 mov    r9d,ebx
37b20b or     r9d,0xffffff
37b212 mov    DWORD PTR [rsp+0x30],r9d
37b217 mov    DWORD PTR [rsp+0x28],eax
37b21b mov    DWORD PTR [rsp+0x20],eax
37b21f call   0x3a12d8
37b224 mov    DWORD PTR [rsp+0x30],ebx
37b228 lea    r8,[rsp+0x58]
37b22d mov    DWORD PTR [rsp+0x28],ebx
37b231 xor    r9d,r9d
37b234 mov    DWORD PTR [rsp+0x20],0x0
37b23b 
37b23c mov    rcx,QWORD PTR [r15+0x298]
37b243 lea    rdx,[rsp+0x50]
37b248 call   0x3a12d8
37b24d xorps  xmm14,xmm14
37b251 lea    rcx,[rsp+0x78]
37b256 xorps  xmm3,xmm3
37b259 movss  DWORD PTR [rsp+0x20],xmm14
37b260 xorps  xmm2,xmm2
37b263 xorps  xmm1,xmm1
37b266 call   0x2d484c
37b26b mov    rcx,rax
37b26e call   0x2ef80c
37b273 xorps  xmm3,xmm3
37b276 movss  DWORD PTR [rsp+0x20],xmm14
37b27d xorps  xmm2,xmm2
37b280 lea    rcx,[rbp-0x78]
37b284 xorps  xmm1,xmm1
37b287 mov    r14d,eax
37b28a call   0x2d484c
37b28f mov    rcx,rax
37b292 call   0x2ef80c
37b297 xorps  xmm3,xmm3
37b29a movss  DWORD PTR [rsp+0x20],xmm14
37b2a1 xorps  xmm2,xmm2
37b2a4 lea    rcx,[rbp-0x48]
37b2a8 xorps  xmm1,xmm1
37b2ab mov    esi,eax
37b2ad call   0x2d484c
37b2b2 mov    rcx,rax
37b2b5 call   0x2ef80c
37b2ba xorps  xmm3,xmm3
37b2bd movss  DWORD PTR [rsp+0x20],xmm14
37b2c4 xorps  xmm2,xmm2
37b2c7 lea    rcx,[rbp-0x58]
37b2cb xorps  xmm1,xmm1
37b2ce mov    edi,eax
37b2d0 call   0x2d484c
37b2d5 mov    rcx,rax
37b2d8 call   0x2ef80c
37b2dd movaps xmm1,xmm13
37b2e1 mov    ecx,0x5
37b2e6 mov    ebx,eax
37b2e8 call   0x392298
37b2ed movss  xmm0,DWORD PTR [rbp+0x14]
37b2f2 lea    rdx,[rsp+0x58]
37b2f7 mov    DWORD PTR [rsp+0x40],0xf0
37b2fe 
37b2ff lea    rcx,[rsp+0x50]
37b304 movss  DWORD PTR [rsp+0x38],xmm0
37b30a mov    r8d,eax
37b30d mov    DWORD PTR [rsp+0x30],r14d
37b312 mov    r9d,ebx
37b315 mov    DWORD PTR [rsp+0x28],esi
37b319 mov    DWORD PTR [rsp+0x20],edi
37b31d call   0x378a88
37b322 lea    rcx,[rsp+0x60]
37b327 call   0x2d4870
37b32c movss  xmm7,DWORD PTR [rsp+0x58]
37b332 lea    rcx,[rsp+0x50]
37b337 movss  xmm6,DWORD PTR [rsp+0x50]
37b33d subss  xmm7,xmm10
37b342 addss  xmm6,xmm10
37b347 call   0x378970
37b34c movaps xmm3,xmm0
37b34f movss  xmm0,DWORD PTR [r13+0x0]
37b355 call   0x3789fc
37b35a mulss  xmm3,xmm0
37b35e movaps xmm2,xmm7
37b361 movaps xmm1,xmm6
37b364 addss  xmm3,DWORD PTR [rsp+0x50]
37b36a addss  xmm3,DWORD PTR [rip+0xfffffffffff11ede]        # 0x28d250
37b371 
37b372 cvttss2si eax,xmm3
37b376 movd   xmm0,eax
37b37a cvtdq2ps xmm0,xmm0
37b37d call   0x3762bc
37b382 movss  xmm8,DWORD PTR [rsp+0x5c]
37b389 movss  xmm7,DWORD PTR [rsp+0x54]
37b38f subss  xmm8,xmm10
37b394 movss  DWORD PTR [rsp+0x60],xmm0
37b39a addss  xmm7,xmm10
37b39f movaps xmm0,xmm13
37b3a3 subss  xmm0,DWORD PTR [r12]
37b3a9 call   0x3789fc
37b3ae lea    rcx,[rsp+0x50]
37b3b3 movaps xmm6,xmm0
37b3b6 call   0x378934
37b3bb mulss  xmm6,xmm0
37b3bf movaps xmm2,xmm8
37b3c3 movaps xmm1,xmm7
37b3c6 addss  xmm6,DWORD PTR [rsp+0x54]
37b3cc addss  xmm6,DWORD PTR [rip+0xfffffffffff11e7c]        # 0x28d250
37b3d3 
37b3d4 cvttss2si eax,xmm6
37b3d8 movd   xmm0,eax
37b3dc cvtdq2ps xmm0,xmm0
37b3df call   0x3762bc
37b3e4 mov    rax,QWORD PTR [rbp+0x9b10]
37b3eb lea    rcx,[rbp-0x68]
37b3ef movss  DWORD PTR [rsp+0x64],xmm0
37b3f5 movss  DWORD PTR [rsp+0x20],xmm12
37b3fc movss  xmm3,DWORD PTR [rax+0x8]
37b401 movss  xmm2,DWORD PTR [rax+0x4]
37b406 movss  xmm1,DWORD PTR [rax]
37b40a call   0x2d484c
37b40f mov    rbx,QWORD PTR [r15+0x298]
37b416 lea    rcx,[rbp-0x68]
37b41a call   0x2ef80c
37b41f movss  xmm6,DWORD PTR [rip+0xfffffffffff17d59]        # 0x293180
37b426 
37b427 lea    rdx,[rsp+0x60]
37b42c movaps xmm2,xmm6
37b42f mov    DWORD PTR [rsp+0x20],0x0
37b436 
37b437 mov    r9d,eax
37b43a mov    rcx,rbx
37b43d call   0x39f874
37b442 mulss  xmm12,DWORD PTR [rip+0xfffffffffff12299]        # 0x28d6e4
37b449 
37b44b lea    rcx,[rbp-0x58]
37b44f mov    rbx,QWORD PTR [r15+0x298]
37b456 mov    edx,0xff
37b45b mov    r9d,edx
37b45e mov    r8d,edx
37b461 cvttss2si eax,xmm12
37b466 mov    DWORD PTR [rsp+0x20],eax
37b46a call   0x2db318
37b46f mov    rcx,rax
37b472 call   0x2ef80c
37b477 movss  DWORD PTR [rsp+0x28],xmm13
37b47e lea    rdx,[rsp+0x60]
37b483 mov    r9d,eax
37b486 mov    DWORD PTR [rsp+0x20],0x0
37b48d 
37b48e movaps xmm2,xmm6
37b491 mov    rcx,rbx
37b494 call   0x39f7ac
37b499 lea    rdx,[rsp+0x78]
37b49e lea    rcx,[rsp+0x50]
37b4a3 call   0x378940
37b4a8 lea    rdx,[rbp+0x9b28]
37b4af mov    rbx,rax
37b4b2 lea    rcx,[rbp+0x9b10]
37b4b9 call   0x378724
37b4be mov    rcx,rax
37b4c1 call   0x379ff0
37b4c6 mov    rcx,rax
37b4c9 xor    r8d,r8d
37b4cc mov    rdx,rbx
37b4cf call   0x3c2dc8
37b4d4 call   0x393ff4
37b4d9 test   al,al
37b4db je     0x37b569
37b4e1 movss  xmm6,DWORD PTR [rbp+0x1230]
37b4e8 
37b4e9 lea    rcx,[rsp+0x50]
37b4ee subss  xmm6,DWORD PTR [rsp+0x50]
37b4f4 call   0x378970
37b4f9 subss  xmm0,xmm13
37b4fe divss  xmm6,xmm0
37b502 movaps xmm0,xmm6
37b505 call   0x3789fc
37b50a comiss xmm14,xmm0
37b50e movss  xmm7,DWORD PTR [rip+0xfffffffffff17b76]        # 0x29308c
37b515 
37b516 jb     0x37b51b
37b518 movaps xmm0,xmm7
37b51b movss  xmm6,DWORD PTR [rbp+0x1234]
37b522 
37b523 lea    rcx,[rsp+0x50]
37b528 subss  xmm6,DWORD PTR [rsp+0x54]
37b52e movss  DWORD PTR [r13+0x0],xmm0
37b534 call   0x378934
37b539 subss  xmm0,xmm13
37b53e divss  xmm6,xmm0
37b542 movaps xmm0,xmm6
37b545 call   0x3789fc
37b54a subss  xmm13,xmm0
37b54f comiss xmm14,xmm13
37b553 jae    0x37b559
37b555 movaps xmm7,xmm13
37b559 mov    rax,QWORD PTR [rbp+0x9b30]
37b560 movss  DWORD PTR [r12],xmm7
37b566 mov    BYTE PTR [rax],0x1
37b569 lea    rcx,[rbp+0x3c00]
37b570 call   0x377ef4
37b575 lea    rcx,[rbp+0x430]
37b57c call   0x378104
37b581 lea    r11,[rsp+0x9bd0]
37b588 
37b589 mov    rbx,QWORD PTR [r11+0x48]
37b58d movaps xmm6,XMMWORD PTR [r11-0x10]
37b592 movaps xmm7,XMMWORD PTR [r11-0x20]
37b597 movaps xmm8,XMMWORD PTR [r11-0x30]
37b59c movaps xmm10,XMMWORD PTR [r11-0x40]
37b5a1 movaps xmm12,XMMWORD PTR [r11-0x50]
37b5a6 movaps xmm13,XMMWORD PTR [r11-0x60]
37b5ab movaps xmm14,XMMWORD PTR [r11-0x70]
37b5b0 mov    rsp,r11
37b5b3 pop    r15
37b5b5 pop    r14
37b5b7 pop    r13
37b5b9 pop    r12
37b5bb pop    rdi
37b5bc pop    rsi
37b5bd pop    rbp
37b5be ret

; closure independent pdata/next-pdata extent 37a0b8..37a657 unwind3d413c
37a0b8 mov    QWORD PTR [rsp+0x8],rbx
37a0bd push   rbp
37a0be push   rsi
37a0bf push   rdi
37a0c0 push   r12
37a0c2 push   r13
37a0c4 push   r14
37a0c6 push   r15
37a0c8 lea    rbp,[rsp-0x3c70]
37a0cf 
37a0d0 mov    eax,0x3d70
37a0d5 call   0x2cd050
37a0da sub    rsp,rax
37a0dd movaps XMMWORD PTR [rsp+0x3d60],xmm6
37a0e4 
37a0e5 mov    r12,r8
37a0e8 movaps XMMWORD PTR [rsp+0x3d50],xmm8
37a0ef 
37a0f1 movaps XMMWORD PTR [rsp+0x3d40],xmm9
37a0f8 
37a0fa movaps XMMWORD PTR [rsp+0x3d30],xmm10
37a101 
37a103 movaps XMMWORD PTR [rsp+0x3d20],xmm11
37a10a 
37a10c movaps xmm11,xmm1
37a110 movaps XMMWORD PTR [rsp+0x3d10],xmm13
37a117 
37a119 movaps XMMWORD PTR [rsp+0x3d00],xmm14
37a120 
37a122 movaps XMMWORD PTR [rsp+0x3cf0],xmm15
37a129 
37a12b call   0x392ca4
37a130 mov    edx,0x8
37a135 lea    rcx,[rbp-0x40]
37a139 lea    r8d,[rdx+0x78]
37a13d movups xmm0,XMMWORD PTR [rax]
37a140 movups xmm1,XMMWORD PTR [rax+0x10]
37a144 movups XMMWORD PTR [rcx],xmm0
37a147 movups xmm0,XMMWORD PTR [rax+0x20]
37a14b movups XMMWORD PTR [rcx+0x10],xmm1
37a14f movups xmm1,XMMWORD PTR [rax+0x30]
37a153 movups XMMWORD PTR [rcx+0x20],xmm0
37a157 movups xmm0,XMMWORD PTR [rax+0x40]
37a15b movups XMMWORD PTR [rcx+0x30],xmm1
37a15f movups xmm1,XMMWORD PTR [rax+0x50]
37a163 movups XMMWORD PTR [rcx+0x40],xmm0
37a167 movups xmm0,XMMWORD PTR [rax+0x60]
37a16b movups XMMWORD PTR [rcx+0x50],xmm1
37a16f movups xmm1,XMMWORD PTR [rax+0x70]
37a173 add    rax,r8
37a176 movups XMMWORD PTR [rcx+0x60],xmm0
37a17a movups XMMWORD PTR [rcx+0x70],xmm1
37a17e add    rcx,r8
37a181 sub    rdx,0x1
37a185 jne    0x37a13d
37a187 movups xmm0,XMMWORD PTR [rax]
37a18a movups xmm1,XMMWORD PTR [rax+0x10]
37a18e movups XMMWORD PTR [rcx],xmm0
37a191 movups xmm0,XMMWORD PTR [rax+0x20]
37a195 movups XMMWORD PTR [rcx+0x10],xmm1
37a199 movups xmm1,XMMWORD PTR [rax+0x30]
37a19d movups XMMWORD PTR [rcx+0x20],xmm0
37a1a1 movups xmm0,XMMWORD PTR [rax+0x40]
37a1a5 mov    rax,QWORD PTR [rax+0x50]
37a1a9 movups XMMWORD PTR [rcx+0x30],xmm1
37a1ad movups XMMWORD PTR [rcx+0x40],xmm0
37a1b1 mov    QWORD PTR [rcx+0x50],rax
37a1b5 call   0x35d200
37a1ba mov    r13,rax
37a1bd call   0x3926ac
37a1c2 mov    rdx,rax
37a1c5 lea    rcx,[rbp+0x420]
37a1cc call   0x377714
37a1d1 movss  xmm0,DWORD PTR [r13+0x100]
37a1d8 
37a1da lea    rcx,[rbp-0x60]
37a1de subss  xmm0,DWORD PTR [r13+0x20]
37a1e4 movss  xmm10,DWORD PTR [r13+0x28]
37a1ea movss  xmm2,DWORD PTR [rip+0xffffffffffececf6]        # 0x248ee8
37a1f1 
37a1f2 mulss  xmm2,DWORD PTR [rip+0xfffffffffff13fe6]        # 0x28e1e0
37a1f9 
37a1fa movsd  xmm13,QWORD PTR [r13+0x100]
37a201 
37a203 subss  xmm10,xmm0
37a208 movsd  QWORD PTR [rbp+0x3cc8],xmm13
37a20f 
37a211 subss  xmm10,DWORD PTR [rbp-0x38]
37a217 movaps xmm1,xmm10
37a21b call   0x2cc340
37a220 mov    r8,rax
37a223 lea    rdx,[rbp+0x3cc8]
37a22a lea    rcx,[rbp-0x80]
37a22e call   0x2ef9d8
37a233 mov    r8,rax
37a236 lea    rdx,[rbp+0x3cc8]
37a23d lea    rcx,[rsp+0x50]
37a242 call   0x2db388
37a247 movss  xmm14,DWORD PTR [rbp-0x40]
37a24d movaps xmm0,xmm14
37a251 call   0x3789fc
37a256 mulss  xmm0,DWORD PTR [rip+0xfffffffffff13486]        # 0x28d6e4
37a25d 
37a25e movaps xmm6,xmm10
37a262 divss  xmm6,DWORD PTR [rip+0xfffffffffff18f1e]        # 0x293188
37a269 
37a26a addss  xmm0,DWORD PTR [rip+0xfffffffffff12fde]        # 0x28d250
37a271 
37a272 cvttss2si edx,xmm0
37a276 shl    edx,0x18
37a279 mov    eax,edx
37a27b mov    ecx,edx
37a27d or     eax,0xffff
37a282 or     ecx,0xff
37a288 mov    DWORD PTR [rsp+0x64],eax
37a28c mov    eax,edx
37a28e or     eax,0xff00
37a293 mov    DWORD PTR [rsp+0x60],ecx
37a297 mov    DWORD PTR [rsp+0x68],eax
37a29b mov    eax,edx
37a29d or     eax,0xffff00
37a2a2 mov    DWORD PTR [rsp+0x78],ecx
37a2a6 mov    DWORD PTR [rsp+0x6c],eax
37a2aa mov    eax,edx
37a2ac or     eax,0xff0000
37a2b1 or     edx,0xff00ff
37a2b7 mov    DWORD PTR [rsp+0x70],eax
37a2bb xor    r15d,r15d
37a2be mov    DWORD PTR [rsp+0x74],edx
37a2c2 movss  xmm2,DWORD PTR [rsp+0x5c]
37a2c8 lea    r14d,[r15+0x1]
37a2cc mov    eax,r15d
37a2cf lea    rcx,[rbp+0x3cc8]
37a2d6 movd   xmm1,r14d
37a2db cvtdq2ps xmm1,xmm1
37a2de mov    esi,DWORD PTR [rsp+rax*4+0x60]
37a2e2 mov    edi,DWORD PTR [rsp+rax*4+0x64]
37a2e6 mulss  xmm1,xmm6
37a2ea addss  xmm1,DWORD PTR [rsp+0x50]
37a2f0 call   0x2cc340
37a2f5 movss  xmm2,DWORD PTR [rsp+0x54]
37a2fb lea    rcx,[rbp-0x80]
37a2ff movd   xmm1,r15d
37a304 mov    rbx,rax
37a307 cvtdq2ps xmm1,xmm1
37a30a mulss  xmm1,xmm6
37a30e addss  xmm1,DWORD PTR [rsp+0x50]
37a314 call   0x2cc340
37a319 mov    rcx,QWORD PTR [r13+0x298]
37a320 mov    rdx,rax
37a323 mov    DWORD PTR [rsp+0x30],esi
37a327 mov    r9d,esi
37a32a mov    DWORD PTR [rsp+0x28],edi
37a32e mov    r8,rbx
37a331 mov    DWORD PTR [rsp+0x20],edi
37a335 call   0x3a12d8
37a33a mov    r15d,r14d
37a33d cmp    r14d,0x6
37a341 jl     0x37a2c2
37a347 xorps  xmm6,xmm6
37a34a lea    rcx,[rbp-0x80]
37a34e xorps  xmm3,xmm3
37a351 movss  DWORD PTR [rsp+0x20],xmm6
37a357 xorps  xmm2,xmm2
37a35a xorps  xmm1,xmm1
37a35d call   0x2d484c
37a362 mov    rcx,rax
37a365 call   0x2ef80c
37a36a xorps  xmm3,xmm3
37a36d movss  DWORD PTR [rsp+0x20],xmm6
37a373 xorps  xmm2,xmm2
37a376 lea    rcx,[rbp-0x60]
37a37a xorps  xmm1,xmm1
37a37d mov    r14d,eax
37a380 call   0x2d484c
37a385 mov    rcx,rax
37a388 call   0x2ef80c
37a38d xorps  xmm3,xmm3
37a390 movss  DWORD PTR [rsp+0x20],xmm6
37a396 xorps  xmm2,xmm2
37a399 lea    rcx,[rbp-0x50]
37a39d xorps  xmm1,xmm1
37a3a0 mov    esi,eax
37a3a2 call   0x2d484c
37a3a7 mov    rcx,rax
37a3aa call   0x2ef80c
37a3af xorps  xmm3,xmm3
37a3b2 movss  DWORD PTR [rsp+0x20],xmm6
37a3b8 xorps  xmm2,xmm2
37a3bb lea    rcx,[rsp+0x60]
37a3c0 xorps  xmm1,xmm1
37a3c3 mov    edi,eax
37a3c5 call   0x2d484c
37a3ca mov    rcx,rax
37a3cd call   0x2ef80c
37a3d2 lea    rcx,[rsp+0x50]
37a3d7 mov    ebx,eax
37a3d9 call   0x378934
37a3de movss  xmm15,DWORD PTR [rip+0xfffffffffff12e6d]        # 0x28d254
37a3e5 
37a3e7 movaps xmm9,xmm0
37a3eb mulss  xmm9,DWORD PTR [rip+0xfffffffffff12e5c]        # 0x28d250
37a3f2 
37a3f4 movaps xmm1,xmm15
37a3f8 mov    ecx,0x5
37a3fd movaps xmm8,xmm0
37a401 call   0x392298
37a406 mov    DWORD PTR [rsp+0x40],0xf0
37a40d 
37a40e lea    rdx,[rsp+0x58]
37a413 movss  DWORD PTR [rsp+0x38],xmm9
37a41a lea    rcx,[rsp+0x50]
37a41f mov    DWORD PTR [rsp+0x30],r14d
37a424 mov    r8d,eax
37a427 mov    DWORD PTR [rsp+0x28],esi
37a42b mov    r9d,ebx
37a42e mov    DWORD PTR [rsp+0x20],edi
37a432 call   0x378a88
37a437 movaps xmm3,xmm15
37a43b movss  DWORD PTR [rsp+0x20],xmm14
37a442 movaps xmm2,xmm15
37a446 lea    rcx,[rbp-0x70]
37a44a movaps xmm1,xmm15
37a44e call   0x2cc350
37a453 lea    rax,[rbp-0x68]
37a457 movaps xmm2,xmm15
37a45b mov    QWORD PTR [rsp+0x28],rax
37a460 lea    r9,[rbp-0x70]
37a464 lea    rax,[rbp-0x6c]
37a468 movaps xmm1,xmm15
37a46c movaps xmm0,xmm11
37a470 mov    QWORD PTR [rsp+0x20],rax
37a475 call   0x3904e0
37a47a lea    rcx,[rbp-0x70]
37a47e call   0x39045c
37a483 movss  xmm6,DWORD PTR [rip+0xffffffffffecea5d]        # 0x248ee8
37a48a 
37a48b subss  xmm10,xmm8
37a490 mulss  xmm6,DWORD PTR [rip+0xfffffffffff18cc0]        # 0x293158
37a497 
37a498 mov    ebx,eax
37a49a mov    rdi,QWORD PTR [r13+0x298]
37a4a1 movaps xmm0,xmm9
37a4a5 addss  xmm6,xmm9
37a4aa mulss  xmm10,xmm11
37a4af addss  xmm0,DWORD PTR [rsp+0x50]
37a4b5 lea    rdx,[rbp-0x80]
37a4b9 lea    rcx,[rsp+0x50]
37a4be addss  xmm10,xmm0
37a4c3 call   0x3788f4
37a4c8 movaps xmm1,xmm10
37a4cc lea    rcx,[rbp+0x3cc8]
37a4d3 movss  xmm2,DWORD PTR [rax+0x4]
37a4d8 call   0x2cc340
37a4dd mov    r9d,ebx
37a4e0 mov    DWORD PTR [rsp+0x20],0x0
37a4e7 
37a4e8 movaps xmm2,xmm6
37a4eb lea    rdx,[rbp+0x3cc8]
37a4f2 mov    rcx,rdi
37a4f5 call   0x39f874
37a4fa mulss  xmm14,DWORD PTR [rip+0xfffffffffff131e1]        # 0x28d6e4
37a501 
37a503 lea    rcx,[rsp+0x60]
37a508 mov    rdi,QWORD PTR [r13+0x298]
37a50f cvttss2si eax,xmm14
37a514 mov    DWORD PTR [rsp+0x20],eax
37a518 mov    eax,0xff
37a51d mov    r9d,eax
37a520 mov    r8d,eax
37a523 mov    edx,eax
37a525 call   0x2db318
37a52a mov    rcx,rax
37a52d call   0x2ef80c
37a532 movss  xmm6,DWORD PTR [rip+0xffffffffffece9ae]        # 0x248ee8
37a539 
37a53a lea    rdx,[rbp-0x80]
37a53e mulss  xmm6,DWORD PTR [rip+0xfffffffffff18c12]        # 0x293158
37a545 
37a546 lea    rcx,[rsp+0x50]
37a54b mov    ebx,eax
37a54d addss  xmm6,xmm9
37a552 call   0x3788f4
37a557 movaps xmm1,xmm10
37a55b lea    rcx,[rbp+0x3cc8]
37a562 movss  xmm2,DWORD PTR [rax+0x4]
37a567 call   0x2cc340
37a56c movss  DWORD PTR [rsp+0x28],xmm15
37a573 lea    rdx,[rbp+0x3cc8]
37a57a mov    r9d,ebx
37a57d mov    DWORD PTR [rsp+0x20],0x0
37a584 
37a585 movaps xmm2,xmm6
37a588 mov    rcx,rdi
37a58b call   0x39f7ac
37a590 lea    rdx,[rbp-0x80]
37a594 lea    rcx,[rsp+0x50]
37a599 call   0x378940
37a59e lea    rdx,[rbp+0x3cc8]
37a5a5 mov    rbx,rax
37a5a8 lea    rcx,[rbp+0x3cb8]
37a5af call   0x378718
37a5b4 mov    rcx,rax
37a5b7 call   0x37a018
37a5bc mov    rcx,rax
37a5bf xor    r8d,r8d
37a5c2 mov    rdx,rbx
37a5c5 call   0x3c2dc8
37a5ca call   0x393ff4
37a5cf test   al,al
37a5d1 je     0x37a604
37a5d3 movss  xmm6,DWORD PTR [rbp+0x1220]
37a5da 
37a5db lea    rcx,[rsp+0x50]
37a5e0 subss  xmm6,xmm13
37a5e5 call   0x378970
37a5ea addss  xmm0,xmm15
37a5ef divss  xmm6,xmm0
37a5f3 movaps xmm0,xmm6
37a5f6 call   0x3789fc
37a5fb movaps xmm11,xmm0
37a5ff mov    BYTE PTR [r12],0x1
37a604 lea    rcx,[rbp+0x420]
37a60b call   0x378104
37a610 lea    r11,[rsp+0x3d70]
37a617 
37a618 movaps xmm0,xmm11
37a61c mov    rbx,QWORD PTR [r11+0x40]
37a620 movaps xmm6,XMMWORD PTR [r11-0x10]
37a625 movaps xmm8,XMMWORD PTR [r11-0x20]
37a62a movaps xmm9,XMMWORD PTR [r11-0x30]
37a62f movaps xmm10,XMMWORD PTR [r11-0x40]
37a634 movaps xmm11,XMMWORD PTR [r11-0x50]
37a639 movaps xmm13,XMMWORD PTR [r11-0x60]
37a63e movaps xmm14,XMMWORD PTR [r11-0x70]
37a643 movaps xmm15,XMMWORD PTR [r11-0x80]
37a648 mov    rsp,r11
37a64b pop    r15
37a64d pop    r14
37a64f pop    r13
37a651 pop    r12
37a653 pop    rdi
37a654 pop    rsi
37a655 pop    rbp
37a656 ret

; closure independent pdata/next-pdata extent 378f1c..379577 unwind3d4178
378f1c mov    QWORD PTR [rsp+0x18],rbx
378f21 mov    QWORD PTR [rsp+0x8],rcx
378f26 push   rbp
378f27 push   rsi
378f28 push   rdi
378f29 push   r12
378f2b push   r13
378f2d push   r14
378f2f push   r15
378f31 lea    rbp,[rsp-0x3c50]
378f38 
378f39 mov    eax,0x3d50
378f3e call   0x2cd050
378f43 sub    rsp,rax
378f46 movaps XMMWORD PTR [rsp+0x3d40],xmm6
378f4d 
378f4e mov    r13,r8
378f51 movaps XMMWORD PTR [rsp+0x3d30],xmm7
378f58 
378f59 mov    r12,rdx
378f5c movaps XMMWORD PTR [rsp+0x3d20],xmm8
378f63 
378f65 mov    rbx,rcx
378f68 movaps XMMWORD PTR [rsp+0x3d10],xmm10
378f6f 
378f71 movaps XMMWORD PTR [rsp+0x3d00],xmm12
378f78 
378f7a movaps XMMWORD PTR [rsp+0x3cf0],xmm13
378f81 
378f83 movaps XMMWORD PTR [rsp+0x3ce0],xmm14
378f8a 
378f8c call   0x392ca4
378f91 mov    ecx,0x80
378f96 lea    r9,[rbp-0x50]
378f9a lea    r10d,[rcx-0x78]
378f9e movups xmm0,XMMWORD PTR [rax]
378fa1 movups xmm1,XMMWORD PTR [rax+0x10]
378fa5 movups XMMWORD PTR [r9],xmm0
378fa9 movups xmm0,XMMWORD PTR [rax+0x20]
378fad movups XMMWORD PTR [r9+0x10],xmm1
378fb2 movups xmm1,XMMWORD PTR [rax+0x30]
378fb6 movups XMMWORD PTR [r9+0x20],xmm0
378fbb movups xmm0,XMMWORD PTR [rax+0x40]
378fbf movups XMMWORD PTR [r9+0x30],xmm1
378fc4 movups xmm1,XMMWORD PTR [rax+0x50]
378fc8 movups XMMWORD PTR [r9+0x40],xmm0
378fcd movups xmm0,XMMWORD PTR [rax+0x60]
378fd1 movups XMMWORD PTR [r9+0x50],xmm1
378fd6 movups xmm1,XMMWORD PTR [rax+0x70]
378fda add    rax,rcx
378fdd movups XMMWORD PTR [r9+0x60],xmm0
378fe2 movups XMMWORD PTR [r9+0x70],xmm1
378fe7 add    r9,rcx
378fea sub    r10,0x1
378fee jne    0x378f9e
378ff0 movups xmm0,XMMWORD PTR [rax]
378ff3 movups xmm1,XMMWORD PTR [rax+0x10]
378ff7 movups XMMWORD PTR [r9],xmm0
378ffb movups xmm0,XMMWORD PTR [rax+0x20]
378fff movups XMMWORD PTR [r9+0x10],xmm1
379004 movups xmm1,XMMWORD PTR [rax+0x30]
379008 movups XMMWORD PTR [r9+0x20],xmm0
37900d movups xmm0,XMMWORD PTR [rax+0x40]
379011 mov    rax,QWORD PTR [rax+0x50]
379015 movups XMMWORD PTR [r9+0x30],xmm1
37901a movups XMMWORD PTR [r9+0x40],xmm0
37901f mov    QWORD PTR [r9+0x50],rax
379023 call   0x35d200
379028 mov    r15,rax
37902b call   0x3926ac
379030 mov    rdx,rax
379033 lea    rcx,[rbp+0x410]
37903a call   0x377714
37903f movss  xmm2,DWORD PTR [rip+0xffffffffffecfea1]        # 0x248ee8
379046 
379047 lea    rcx,[rbp+0x3ca8]
37904e movss  xmm0,DWORD PTR [rbp-0x48]
379053 movaps xmm12,xmm2
379057 mulss  xmm12,DWORD PTR [rip+0xfffffffffff1a1d8]        # 0x293238
37905e 
379060 mulss  xmm0,DWORD PTR [rip+0xfffffffffff1a0cc]        # 0x293134
379067 
379068 mulss  xmm2,DWORD PTR [rip+0xfffffffffff15170]        # 0x28e1e0
37906f 
379070 movsd  xmm14,QWORD PTR [r15+0x100]
379077 
379079 subss  xmm12,xmm0
37907e movsd  QWORD PTR [rbp+0x3c98],xmm14
379085 
379087 movaps xmm1,xmm12
37908b call   0x2cc340
379090 mov    r8,rax
379093 lea    rdx,[rbp+0x3c98]
37909a lea    rcx,[rsp+0x60]
37909f call   0x2ef9d8
3790a4 mov    r8,rax
3790a7 lea    rdx,[rbp+0x3c98]
3790ae lea    rcx,[rsp+0x50]
3790b3 call   0x2db388
3790b8 xorps  xmm2,xmm2
3790bb lea    rcx,[rbp+0x3c98]
3790c2 xorps  xmm1,xmm1
3790c5 xorps  xmm7,xmm7
3790c8 call   0x2cc340
3790cd mov    r8,QWORD PTR [rsp+0x58]
3790d2 movaps xmm0,xmm12
3790d6 divss  xmm0,DWORD PTR [rip+0xfffffffffff14a52]        # 0x28db30
3790dd 
3790de mov    rdx,QWORD PTR [rsp+0x50]
3790e3 xor    r9d,r9d
3790e6 mov    rcx,QWORD PTR [r15+0x298]
3790ed mov    DWORD PTR [rsp+0x38],0x0
3790f4 
3790f5 movsd  xmm1,QWORD PTR [rax]
3790f9 movss  DWORD PTR [rsp+0x30],xmm7
3790ff movsd  QWORD PTR [rsp+0x28],xmm1
379105 movss  DWORD PTR [rsp+0x20],xmm0
37910b call   0x3a7654
379110 movss  xmm3,DWORD PTR [rbx+0x8]
379115 lea    rcx,[rsp+0x70]
37911a movss  xmm2,DWORD PTR [rbx+0x4]
37911f movss  xmm1,DWORD PTR [rbx]
379123 mov    r14,QWORD PTR [r15+0x298]
37912a movss  DWORD PTR [rsp+0x20],xmm7
379130 call   0x2d484c
379135 mov    rcx,rax
379138 call   0x2ef80c
37913d mov    rcx,QWORD PTR [rip+0x8c9e4]        # 0x405b28
379144 mov    esi,eax
379146 movss  xmm3,DWORD PTR [rbx+0x8]
37914b movss  xmm2,DWORD PTR [rbx+0x4]
379150 movss  xmm1,DWORD PTR [rbx]
379154 movss  xmm0,DWORD PTR [rcx+0x37d0]
37915b 
37915c lea    rcx,[rsp+0x60]
379161 movss  DWORD PTR [rsp+0x20],xmm0
379167 call   0x2d484c
37916c mov    rcx,rax
37916f call   0x2ef80c
379174 mov    rcx,QWORD PTR [rip+0x8c9ad]        # 0x405b28
37917b mov    edi,eax
37917d movss  xmm3,DWORD PTR [rbx+0x8]
379182 movss  xmm2,DWORD PTR [rbx+0x4]
379187 movss  xmm0,DWORD PTR [rcx+0x37d0]
37918e 
37918f movss  DWORD PTR [rsp+0x20],xmm0
379195 movss  xmm1,DWORD PTR [rbx]
379199 lea    rcx,[rbp-0x70]
37919d call   0x2d484c
3791a2 mov    rcx,rax
3791a5 call   0x2ef80c
3791aa mov    ebx,eax
3791ac movss  DWORD PTR [rsp+0x20],xmm7
3791b2 mov    rax,QWORD PTR [rbp+0x3c90]
3791b9 lea    rcx,[rbp-0x80]
3791bd movss  xmm3,DWORD PTR [rax+0x8]
3791c2 movss  xmm2,DWORD PTR [rax+0x4]
3791c7 movss  xmm1,DWORD PTR [rax]
3791cb call   0x2d484c
3791d0 mov    rcx,rax
3791d3 call   0x2ef80c
3791d8 mov    DWORD PTR [rsp+0x30],esi
3791dc lea    r8,[rsp+0x58]
3791e1 mov    r9d,eax
3791e4 mov    DWORD PTR [rsp+0x28],edi
3791e8 lea    rdx,[rsp+0x50]
3791ed mov    DWORD PTR [rsp+0x20],ebx
3791f1 mov    rcx,r14
3791f4 call   0x3a12d8
3791f9 lea    rcx,[rsp+0x50]
3791fe call   0x378934
379203 movaps xmm6,xmm0
379206 movss  DWORD PTR [rsp+0x20],xmm7
37920c mulss  xmm6,DWORD PTR [rip+0xfffffffffff1403c]        # 0x28d250
379213 
379214 lea    rcx,[rbp-0x80]
379218 xorps  xmm3,xmm3
37921b xorps  xmm2,xmm2
37921e xorps  xmm1,xmm1
379221 call   0x2d484c
379226 mov    rcx,rax
379229 call   0x2ef80c
37922e xorps  xmm3,xmm3
379231 movss  DWORD PTR [rsp+0x20],xmm7
379237 xorps  xmm2,xmm2
37923a lea    rcx,[rbp-0x70]
37923e xorps  xmm1,xmm1
379241 mov    r14d,eax
379244 call   0x2d484c
379249 mov    rcx,rax
37924c call   0x2ef80c
379251 xorps  xmm3,xmm3
379254 movss  DWORD PTR [rsp+0x20],xmm7
37925a xorps  xmm2,xmm2
37925d lea    rcx,[rsp+0x70]
379262 xorps  xmm1,xmm1
379265 mov    esi,eax
379267 call   0x2d484c
37926c mov    rcx,rax
37926f call   0x2ef80c
379274 xorps  xmm3,xmm3
379277 movss  DWORD PTR [rsp+0x20],xmm7
37927d xorps  xmm2,xmm2
379280 lea    rcx,[rsp+0x60]
379285 xorps  xmm1,xmm1
379288 mov    edi,eax
37928a call   0x2d484c
37928f mov    rcx,rax
379292 call   0x2ef80c
379297 movss  xmm13,DWORD PTR [rip+0xfffffffffff13fb4]        # 0x28d254
37929e 
3792a0 mov    ecx,0x5
3792a5 movaps xmm1,xmm13
3792a9 mov    ebx,eax
3792ab call   0x392298
3792b0 mov    DWORD PTR [rsp+0x40],0xf0
3792b7 
3792b8 lea    rdx,[rsp+0x58]
3792bd movss  DWORD PTR [rsp+0x38],xmm6
3792c3 lea    rcx,[rsp+0x50]
3792c8 mov    DWORD PTR [rsp+0x30],r14d
3792cd mov    r8d,eax
3792d0 mov    DWORD PTR [rsp+0x28],esi
3792d4 mov    r9d,ebx
3792d7 mov    DWORD PTR [rsp+0x20],edi
3792db call   0x378a88
3792e0 movss  xmm10,DWORD PTR [rbp-0x50]
3792e6 movss  xmm6,DWORD PTR [r12]
3792ec mov    rax,QWORD PTR [rbp+0x3c90]
3792f3 movss  DWORD PTR [rsp+0x20],xmm10
3792fa movss  xmm3,DWORD PTR [rax+0x8]
3792ff lea    rcx,[rbp-0x80]
379303 movss  xmm2,DWORD PTR [rax+0x4]
379308 movss  xmm1,DWORD PTR [rax]
37930c call   0x2d484c
379311 movaps xmm3,xmm13
379315 movss  DWORD PTR [rsp+0x20],xmm10
37931c movaps xmm2,xmm13
379320 lea    rcx,[rbp-0x70]
379324 movaps xmm1,xmm13
379328 movups xmm0,XMMWORD PTR [rax]
37932b movdqu XMMWORD PTR [rsp+0x60],xmm0
379331 call   0x2d484c
379336 movaps xmm3,xmm6
379339 lea    r8,[rsp+0x60]
37933e lea    rdx,[rsp+0x70]
379343 lea    rcx,[rbp-0x60]
379347 movups xmm0,XMMWORD PTR [rax]
37934a movdqu XMMWORD PTR [rsp+0x70],xmm0
379350 call   0x3795a4
379355 mov    rdi,QWORD PTR [r15+0x298]
37935c lea    rcx,[rbp-0x60]
379360 call   0x2ef80c
379365 movss  xmm8,DWORD PTR [rip+0xffffffffffecfb7a]        # 0x248ee8
37936c 
37936e lea    rcx,[rsp+0x50]
379373 mulss  xmm8,DWORD PTR [rip+0xfffffffffff19ddc]        # 0x293158
37937a 
37937c mov    ebx,eax
37937e call   0x378934
379383 movaps xmm7,xmm0
379386 lea    rdx,[rbp+0x3c98]
37938d mulss  xmm7,DWORD PTR [rip+0xfffffffffff13ebb]        # 0x28d250
379394 
379395 lea    rcx,[rsp+0x50]
37939a movaps xmm6,xmm12
37939e subss  xmm6,xmm0
3793a2 movaps xmm0,xmm7
3793a5 addss  xmm0,DWORD PTR [rsp+0x50]
3793ab mulss  xmm6,DWORD PTR [r12]
3793b1 addss  xmm6,xmm0
3793b5 call   0x3788f4
3793ba movaps xmm1,xmm6
3793bd lea    rcx,[rbp+0x3c90]
3793c4 movss  xmm2,DWORD PTR [rax+0x4]
3793c9 call   0x2cc340
3793ce addss  xmm8,xmm7
3793d3 mov    DWORD PTR [rsp+0x20],0x0
3793da 
3793db mov    r9d,ebx
3793de lea    rdx,[rbp+0x3c90]
3793e5 mov    rcx,rdi
3793e8 movaps xmm2,xmm8
3793ec call   0x39f874
3793f1 mulss  xmm10,DWORD PTR [rip+0xfffffffffff142ea]        # 0x28d6e4
3793f8 
3793fa lea    rcx,[rbp-0x80]
3793fe mov    rdi,QWORD PTR [r15+0x298]
379405 mov    edx,0xff
37940a mov    r9d,edx
37940d mov    r8d,edx
379410 cvttss2si eax,xmm10
379415 mov    DWORD PTR [rsp+0x20],eax
379419 call   0x2db318
37941e mov    rcx,rax
379421 call   0x2ef80c
379426 movss  xmm7,DWORD PTR [rip+0xffffffffffecfaba]        # 0x248ee8
37942d 
37942e lea    rcx,[rsp+0x50]
379433 mulss  xmm7,DWORD PTR [rip+0xfffffffffff19d1d]        # 0x293158
37943a 
37943b mov    ebx,eax
37943d call   0x378934
379442 subss  xmm12,xmm0
379447 movaps xmm6,xmm0
37944a mulss  xmm6,DWORD PTR [rip+0xfffffffffff13dfe]        # 0x28d250
379451 
379452 lea    rdx,[rbp+0x3c98]
379459 lea    rcx,[rsp+0x50]
37945e mulss  xmm12,DWORD PTR [r12]
379464 movaps xmm0,xmm6
379467 addss  xmm0,DWORD PTR [rsp+0x50]
37946d addss  xmm12,xmm0
379472 call   0x3788f4
379477 movaps xmm1,xmm12
37947b lea    rcx,[rbp+0x3c90]
379482 movss  xmm2,DWORD PTR [rax+0x4]
379487 call   0x2cc340
37948c addss  xmm7,xmm6
379490 movss  DWORD PTR [rsp+0x28],xmm13
379497 lea    rdx,[rbp+0x3c90]
37949e mov    r9d,ebx
3794a1 mov    DWORD PTR [rsp+0x20],0x0
3794a8 
3794a9 movaps xmm2,xmm7
3794ac mov    rcx,rdi
3794af call   0x39f7ac
3794b4 lea    rdx,[rbp+0x3ca8]
3794bb lea    rcx,[rsp+0x50]
3794c0 call   0x378940
3794c5 lea    rdx,[rbp+0x3c98]
3794cc mov    rbx,rax
3794cf lea    rcx,[rbp+0x3c90]
3794d6 call   0x3786e8
3794db mov    rcx,rax
3794de call   0x37a040
3794e3 mov    rcx,rax
3794e6 xor    r8d,r8d
3794e9 mov    rdx,rbx
3794ec call   0x3c2dc8
3794f1 call   0x393ff4
3794f6 test   al,al
3794f8 je     0x37952d
3794fa movss  xmm6,DWORD PTR [rbp+0x1210]
379501 
379502 lea    rcx,[rsp+0x50]
379507 subss  xmm6,xmm14
37950c call   0x378970
379511 subss  xmm0,xmm13
379516 divss  xmm6,xmm0
37951a movaps xmm0,xmm6
37951d call   0x3789fc
379522 movss  DWORD PTR [r12],xmm0
379528 mov    BYTE PTR [r13+0x0],0x1
37952d lea    rcx,[rbp+0x410]
379534 call   0x378104
379539 lea    r11,[rsp+0x3d50]
379540 
379541 mov    rbx,QWORD PTR [r11+0x50]
379545 movaps xmm6,XMMWORD PTR [r11-0x10]
37954a movaps xmm7,XMMWORD PTR [r11-0x20]
37954f movaps xmm8,XMMWORD PTR [r11-0x30]
379554 movaps xmm10,XMMWORD PTR [r11-0x40]
379559 movaps xmm12,XMMWORD PTR [r11-0x50]
37955e movaps xmm13,XMMWORD PTR [r11-0x60]
379563 movaps xmm14,XMMWORD PTR [r11-0x70]
379568 mov    rsp,r11
37956b pop    r15
37956d pop    r14
37956f pop    r13
379571 pop    r12
379573 pop    rdi
379574 pop    rsi
379575 pop    rbp
379576 ret

; closure independent pdata/next-pdata extent 39045c..3904df unwind3d2064
39045c sub    rsp,0x28
390460 movss  xmm0,DWORD PTR [rcx+0xc]
390465 mov    r8,rcx
390468 call   0x3789fc
39046d movss  xmm3,DWORD PTR [rip+0xffffffffffefd26f]        # 0x28d6e4
390474 
390475 movss  xmm2,DWORD PTR [rip+0xffffffffffefcdd3]        # 0x28d250
39047c 
39047d mulss  xmm0,xmm3
390481 addss  xmm0,xmm2
390485 cvttss2si edx,xmm0
390489 movss  xmm0,DWORD PTR [rcx+0x8]
39048e shl    edx,0x8
390491 call   0x3789fc
390496 mulss  xmm0,xmm3
39049a addss  xmm0,xmm2
39049e cvttss2si eax,xmm0
3904a2 movss  xmm0,DWORD PTR [rcx+0x4]
3904a7 or     eax,edx
3904a9 shl    eax,0x8
3904ac call   0x3789fc
3904b1 mulss  xmm0,xmm3
3904b5 addss  xmm0,xmm2
3904b9 cvttss2si ecx,xmm0
3904bd movss  xmm0,DWORD PTR [r8]
3904c2 or     eax,ecx
3904c4 shl    eax,0x8
3904c7 call   0x3789fc
3904cc mulss  xmm0,xmm3
3904d0 addss  xmm0,xmm2
3904d4 cvttss2si ecx,xmm0
3904d8 or     eax,ecx
3904da add    rsp,0x28
3904de ret

; closure independent pdata/next-pdata extent 3c0538..3c2a7f unwind3d58a0
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

; closure independent pdata/next-pdata extent 37897c..37898c unwind0
37897c cmp    cl,0x20
37897f je     0x378989
378981 cmp    cl,0x9
378984 je     0x378989
378986 xor    al,al
378988 ret
378989 mov    al,0x1
37898b ret

; closure independent pdata/next-pdata extent 392ca4..392cc8 unwind0
392ca4 mov    rax,QWORD PTR [rip+0x72e7d]        # 0x405b28
392cab add    rax,0x37d0
392cb1 ret
392cb2 int3
392cb3 int3
392cb4 movsxd rax,ecx
392cb7 lea    rcx,[rax+rax*2]
392cbb lea    rax,[rip+0xfffffffffff16c6e]        # 0x2a9930
392cc2 lea    rax,[rax+rcx*4]
392cc6 ret
392cc7 int3

; closure independent pdata/next-pdata extent 3926ac..3926b8 unwind0
3926ac mov    rax,QWORD PTR [rip+0x73475]        # 0x405b28
3926b3 add    rax,0x8
3926b7 ret

; closure independent pdata/next-pdata extent 377714..377c7c unwind3d2040
377714 mov    QWORD PTR [rsp+0x8],rbx
377719 push   rdi
37771a sub    rsp,0x20
37771e mov    eax,DWORD PTR [rdx]
377720 mov    rdi,rdx
377723 mov    DWORD PTR [rcx],eax
377725 mov    rbx,rcx
377728 mov    eax,DWORD PTR [rdx+0x4]
37772b mov    DWORD PTR [rcx+0x4],eax
37772e movsd  xmm0,QWORD PTR [rdx+0x8]
377733 movsd  QWORD PTR [rcx+0x8],xmm0
377738 mov    eax,DWORD PTR [rdx+0x10]
37773b mov    DWORD PTR [rcx+0x10],eax
37773e mov    eax,DWORD PTR [rdx+0x14]
377741 mov    DWORD PTR [rcx+0x14],eax
377744 mov    rax,QWORD PTR [rdx+0x18]
377748 mov    QWORD PTR [rcx+0x18],rax
37774c mov    rax,QWORD PTR [rdx+0x20]
377750 mov    QWORD PTR [rcx+0x20],rax
377754 mov    eax,DWORD PTR [rdx+0x28]
377757 mov    DWORD PTR [rcx+0x28],eax
37775a mov    eax,DWORD PTR [rdx+0x2c]
37775d mov    DWORD PTR [rcx+0x2c],eax
377760 mov    eax,DWORD PTR [rdx+0x30]
377763 mov    DWORD PTR [rcx+0x30],eax
377766 mov    eax,DWORD PTR [rdx+0x34]
377769 mov    DWORD PTR [rcx+0x34],eax
37776c mov    eax,DWORD PTR [rdx+0x38]
37776f mov    DWORD PTR [rcx+0x38],eax
377772 mov    eax,DWORD PTR [rdx+0x3c]
377775 mov    DWORD PTR [rcx+0x3c],eax
377778 mov    eax,DWORD PTR [rdx+0x40]
37777b mov    DWORD PTR [rcx+0x40],eax
37777e mov    rax,QWORD PTR [rdx+0x48]
377782 mov    QWORD PTR [rcx+0x48],rax
377786 mov    rax,QWORD PTR [rdx+0x50]
37778a mov    QWORD PTR [rcx+0x50],rax
37778e mov    eax,DWORD PTR [rdx+0x58]
377791 mov    DWORD PTR [rcx+0x58],eax
377794 mov    al,BYTE PTR [rdx+0x5c]
377797 mov    BYTE PTR [rcx+0x5c],al
37779a mov    rax,QWORD PTR [rdx+0x60]
37779e mov    QWORD PTR [rcx+0x60],rax
3777a2 movsd  xmm0,QWORD PTR [rdx+0x68]
3777a7 movsd  QWORD PTR [rcx+0x68],xmm0
3777ac mov    al,BYTE PTR [rdx+0x70]
3777af mov    BYTE PTR [rcx+0x70],al
3777b2 mov    al,BYTE PTR [rdx+0x71]
3777b5 mov    BYTE PTR [rcx+0x71],al
3777b8 mov    al,BYTE PTR [rdx+0x72]
3777bb mov    BYTE PTR [rcx+0x72],al
3777be mov    al,BYTE PTR [rdx+0x73]
3777c1 mov    BYTE PTR [rcx+0x73],al
3777c4 mov    al,BYTE PTR [rdx+0x74]
3777c7 mov    BYTE PTR [rcx+0x74],al
3777ca mov    al,BYTE PTR [rdx+0x75]
3777cd mov    BYTE PTR [rcx+0x75],al
3777d0 mov    al,BYTE PTR [rdx+0x76]
3777d3 mov    BYTE PTR [rcx+0x76],al
3777d6 mov    al,BYTE PTR [rdx+0x77]
3777d9 mov    BYTE PTR [rcx+0x77],al
3777dc mov    eax,DWORD PTR [rdx+0x78]
3777df mov    DWORD PTR [rcx+0x78],eax
3777e2 mov    al,BYTE PTR [rdx+0x7c]
3777e5 mov    BYTE PTR [rcx+0x7c],al
3777e8 mov    al,BYTE PTR [rdx+0x7d]
3777eb mov    BYTE PTR [rcx+0x7d],al
3777ee mov    rax,QWORD PTR [rdx+0x80]
3777f5 mov    QWORD PTR [rcx+0x80],rax
3777fc mov    rax,QWORD PTR [rdx+0x88]
377803 mov    QWORD PTR [rcx+0x88],rax
37780a mov    rax,QWORD PTR [rdx+0x90]
377811 mov    QWORD PTR [rcx+0x90],rax
377818 mov    rax,QWORD PTR [rdx+0x98]
37781f mov    QWORD PTR [rcx+0x98],rax
377826 mov    rax,QWORD PTR [rdx+0xa0]
37782d mov    QWORD PTR [rcx+0xa0],rax
377834 mov    rax,QWORD PTR [rdx+0xa8]
37783b mov    QWORD PTR [rcx+0xa8],rax
377842 mov    rax,QWORD PTR [rdx+0xb0]
377849 mov    QWORD PTR [rcx+0xb0],rax
377850 mov    rax,QWORD PTR [rdx+0xb8]
377857 mov    QWORD PTR [rcx+0xb8],rax
37785e mov    rax,QWORD PTR [rdx+0xc0]
377865 mov    QWORD PTR [rcx+0xc0],rax
37786c mov    r8d,0xa30
377872 mov    rax,QWORD PTR [rdx+0xc8]
377879 mov    QWORD PTR [rcx+0xc8],rax
377880 mov    al,BYTE PTR [rdx+0xd0]
377886 mov    BYTE PTR [rcx+0xd0],al
37788c mov    al,BYTE PTR [rdx+0xd1]
377892 mov    BYTE PTR [rcx+0xd1],al
377898 mov    al,BYTE PTR [rdx+0xd2]
37789e mov    BYTE PTR [rcx+0xd2],al
3778a4 mov    al,BYTE PTR [rdx+0xd3]
3778aa mov    BYTE PTR [rcx+0xd3],al
3778b0 mov    al,BYTE PTR [rdx+0xd4]
3778b6 mov    BYTE PTR [rcx+0xd4],al
3778bc mov    al,BYTE PTR [rdx+0xd5]
3778c2 mov    BYTE PTR [rcx+0xd5],al
3778c8 mov    al,BYTE PTR [rdx+0xd6]
3778ce mov    BYTE PTR [rcx+0xd6],al
3778d4 mov    eax,DWORD PTR [rdx+0xd8]
3778da mov    DWORD PTR [rcx+0xd8],eax
3778e0 mov    eax,DWORD PTR [rdx+0xdc]
3778e6 mov    DWORD PTR [rcx+0xdc],eax
3778ec mov    eax,DWORD PTR [rdx+0xe0]
3778f2 mov    DWORD PTR [rcx+0xe0],eax
3778f8 mov    eax,DWORD PTR [rdx+0xe4]
3778fe mov    DWORD PTR [rcx+0xe4],eax
377904 mov    eax,DWORD PTR [rdx+0xe8]
37790a mov    DWORD PTR [rcx+0xe8],eax
377910 mov    eax,DWORD PTR [rdx+0xec]
377916 mov    DWORD PTR [rcx+0xec],eax
37791c movsd  xmm0,QWORD PTR [rdx+0xf0]
377923 
377924 add    rdx,0xf8
37792b movsd  QWORD PTR [rcx+0xf0],xmm0
377932 
377933 add    rcx,0xf8
37793a call   0x3c8d4c
37793f mov    edx,0x5
377944 lea    rax,[rbx+0xb28]
37794b lea    rcx,[rdi+0xb28]
377952 lea    r8d,[rdx+0x7b]
377956 movups xmm0,XMMWORD PTR [rcx]
377959 movups XMMWORD PTR [rax],xmm0
37795c movups xmm1,XMMWORD PTR [rcx+0x10]
377960 movups XMMWORD PTR [rax+0x10],xmm1
377964 movups xmm0,XMMWORD PTR [rcx+0x20]
377968 movups XMMWORD PTR [rax+0x20],xmm0
37796c movups xmm1,XMMWORD PTR [rcx+0x30]
377970 movups XMMWORD PTR [rax+0x30],xmm1
377974 movups xmm0,XMMWORD PTR [rcx+0x40]
377978 movups XMMWORD PTR [rax+0x40],xmm0
37797c movups xmm1,XMMWORD PTR [rcx+0x50]
377980 movups XMMWORD PTR [rax+0x50],xmm1
377984 movups xmm0,XMMWORD PTR [rcx+0x60]
377988 movups XMMWORD PTR [rax+0x60],xmm0
37798c movups xmm1,XMMWORD PTR [rcx+0x70]
377990 add    rcx,r8
377993 movups XMMWORD PTR [rax+0x70],xmm1
377997 add    rax,r8
37799a sub    rdx,0x1
37799e jne    0x377956
3779a0 movups xmm0,XMMWORD PTR [rcx-0x4]
3779a4 lea    rdx,[rdi+0xe24]
3779ab mov    r8d,0x28c0
3779b1 lea    rcx,[rbx+0xe24]
3779b8 movups XMMWORD PTR [rax-0x4],xmm0
3779bc movups xmm0,XMMWORD PTR [rdi+0xdb4]
3779c3 movups XMMWORD PTR [rbx+0xdb4],xmm0
3779ca movups xmm1,XMMWORD PTR [rdi+0xdc4]
3779d1 movups XMMWORD PTR [rbx+0xdc4],xmm1
3779d8 movups xmm0,XMMWORD PTR [rdi+0xdd4]
3779df movups XMMWORD PTR [rbx+0xdd4],xmm0
3779e6 movups xmm1,XMMWORD PTR [rdi+0xde4]
3779ed movups XMMWORD PTR [rbx+0xde4],xmm1
3779f4 mov    rax,QWORD PTR [rdi+0xdf8]
3779fb mov    QWORD PTR [rbx+0xdf8],rax
377a02 movsd  xmm0,QWORD PTR [rdi+0xe00]
377a09 
377a0a movsd  QWORD PTR [rbx+0xe00],xmm0
377a11 
377a12 mov    eax,DWORD PTR [rdi+0xe08]
377a18 mov    DWORD PTR [rbx+0xe08],eax
377a1e mov    al,BYTE PTR [rdi+0xe0c]
377a24 mov    BYTE PTR [rbx+0xe0c],al
377a2a mov    eax,DWORD PTR [rdi+0xe10]
377a30 mov    DWORD PTR [rbx+0xe10],eax
377a36 mov    eax,DWORD PTR [rdi+0xe14]
377a3c mov    DWORD PTR [rbx+0xe14],eax
377a42 mov    eax,DWORD PTR [rdi+0xe18]
377a48 mov    DWORD PTR [rbx+0xe18],eax
377a4e mov    al,BYTE PTR [rdi+0xe1c]
377a54 mov    BYTE PTR [rbx+0xe1c],al
377a5a mov    al,BYTE PTR [rdi+0xe1d]
377a60 mov    BYTE PTR [rbx+0xe1d],al
377a66 mov    al,BYTE PTR [rdi+0xe1e]
377a6c mov    BYTE PTR [rbx+0xe1e],al
377a72 mov    al,BYTE PTR [rdi+0xe1f]
377a78 mov    BYTE PTR [rbx+0xe1f],al
377a7e mov    eax,DWORD PTR [rdi+0xe20]
377a84 mov    DWORD PTR [rbx+0xe20],eax
377a8a call   0x3c8d4c
377a8f mov    al,BYTE PTR [rdi+0x36e4]
377a95 mov    BYTE PTR [rbx+0x36e4],al
377a9b movsd  xmm0,QWORD PTR [rdi+0x36e8]
377aa2 
377aa3 movsd  QWORD PTR [rbx+0x36e8],xmm0
377aaa 
377aab movups xmm0,XMMWORD PTR [rdi+0x36f0]
377ab2 movups XMMWORD PTR [rbx+0x36f0],xmm0
377ab9 movups xmm1,XMMWORD PTR [rdi+0x3700]
377ac0 movups XMMWORD PTR [rbx+0x3700],xmm1
377ac7 movsd  xmm0,QWORD PTR [rdi+0x3710]
377ace 
377acf movsd  QWORD PTR [rbx+0x3710],xmm0
377ad6 
377ad7 movups xmm0,XMMWORD PTR [rdi+0x3718]
377ade movups XMMWORD PTR [rbx+0x3718],xmm0
377ae5 movups xmm1,XMMWORD PTR [rdi+0x3728]
377aec movups XMMWORD PTR [rbx+0x3728],xmm1
377af3 movsd  xmm0,QWORD PTR [rdi+0x3738]
377afa 
377afb movsd  QWORD PTR [rbx+0x3738],xmm0
377b02 
377b03 mov    eax,DWORD PTR [rdi+0x3740]
377b09 mov    DWORD PTR [rbx+0x3740],eax
377b0f mov    al,BYTE PTR [rdi+0x3744]
377b15 mov    BYTE PTR [rbx+0x3744],al
377b1b mov    eax,DWORD PTR [rdi+0x3745]
377b21 mov    DWORD PTR [rbx+0x3745],eax
377b27 mov    al,BYTE PTR [rdi+0x3749]
377b2d mov    BYTE PTR [rbx+0x3749],al
377b33 movsd  xmm0,QWORD PTR [rdi+0x374a]
377b3a 
377b3b movsd  QWORD PTR [rbx+0x374a],xmm0
377b42 
377b43 movzx  eax,WORD PTR [rdi+0x3752]
377b4a mov    WORD PTR [rbx+0x3752],ax
377b51 movsd  xmm0,QWORD PTR [rdi+0x3754]
377b58 
377b59 movsd  QWORD PTR [rbx+0x3754],xmm0
377b60 
377b61 movzx  eax,WORD PTR [rdi+0x375c]
377b68 mov    WORD PTR [rbx+0x375c],ax
377b6f mov    eax,DWORD PTR [rdi+0x375e]
377b75 mov    DWORD PTR [rbx+0x375e],eax
377b7b mov    al,BYTE PTR [rdi+0x3762]
377b81 mov    BYTE PTR [rbx+0x3762],al
377b87 mov    eax,DWORD PTR [rdi+0x3763]
377b8d mov    DWORD PTR [rbx+0x3763],eax
377b93 mov    al,BYTE PTR [rdi+0x3767]
377b99 mov    BYTE PTR [rbx+0x3767],al
377b9f mov    eax,DWORD PTR [rdi+0x3768]
377ba5 mov    DWORD PTR [rbx+0x3768],eax
377bab mov    al,BYTE PTR [rdi+0x376c]
377bb1 mov    BYTE PTR [rbx+0x376c],al
377bb7 lea    rdx,[rdi+0x37b8]
377bbe mov    al,BYTE PTR [rdi+0x376d]
377bc4 lea    rcx,[rbx+0x37b8]
377bcb mov    BYTE PTR [rbx+0x376d],al
377bd1 movups xmm0,XMMWORD PTR [rdi+0x3770]
377bd8 movups XMMWORD PTR [rbx+0x3770],xmm0
377bdf mov    eax,DWORD PTR [rdi+0x3780]
377be5 mov    DWORD PTR [rbx+0x3780],eax
377beb movups xmm0,XMMWORD PTR [rdi+0x3784]
377bf2 movups XMMWORD PTR [rbx+0x3784],xmm0
377bf9 mov    eax,DWORD PTR [rdi+0x3794]
377bff mov    DWORD PTR [rbx+0x3794],eax
377c05 movups xmm0,XMMWORD PTR [rdi+0x3798]
377c0c movups XMMWORD PTR [rbx+0x3798],xmm0
377c13 mov    eax,DWORD PTR [rdi+0x37a8]
377c19 mov    DWORD PTR [rbx+0x37a8],eax
377c1f mov    eax,DWORD PTR [rdi+0x37ac]
377c25 mov    DWORD PTR [rbx+0x37ac],eax
377c2b mov    al,BYTE PTR [rdi+0x37b0]
377c31 mov    BYTE PTR [rbx+0x37b0],al
377c37 mov    al,BYTE PTR [rdi+0x37b1]
377c3d mov    BYTE PTR [rbx+0x37b1],al
377c43 mov    al,BYTE PTR [rdi+0x37b2]
377c49 mov    BYTE PTR [rbx+0x37b2],al
377c4f mov    al,BYTE PTR [rdi+0x37b3]
377c55 mov    BYTE PTR [rbx+0x37b3],al
377c5b movzx  eax,WORD PTR [rdi+0x37b4]
377c62 mov    WORD PTR [rbx+0x37b4],ax
377c69 call   0x376384
377c6e mov    rax,rbx
377c71 mov    rbx,QWORD PTR [rsp+0x30]
377c76 add    rsp,0x20
377c7a pop    rdi
377c7b ret

; closure independent pdata/next-pdata extent 376760..377712 unwind3d2040
376760 mov    QWORD PTR [rsp+0x8],rbx
376765 push   rdi
376766 sub    rsp,0x20
37676a mov    al,BYTE PTR [rdx]
37676c mov    rdi,rdx
37676f mov    BYTE PTR [rcx],al
376771 mov    rbx,rcx
376774 mov    al,BYTE PTR [rdx+0x1]
376777 add    rdx,0x8
37677b mov    BYTE PTR [rcx+0x1],al
37677e add    rcx,0x8
376782 call   0x377714
376787 mov    ecx,0x8
37678c lea    r8,[rbx+0x37d0]
376793 lea    rax,[rdi+0x37d0]
37679a lea    edx,[rcx+0x78]
37679d movups xmm0,XMMWORD PTR [rax]
3767a0 movups XMMWORD PTR [r8],xmm0
3767a4 movups xmm1,XMMWORD PTR [rax+0x10]
3767a8 movups XMMWORD PTR [r8+0x10],xmm1
3767ad movups xmm0,XMMWORD PTR [rax+0x20]
3767b1 movups XMMWORD PTR [r8+0x20],xmm0
3767b6 movups xmm1,XMMWORD PTR [rax+0x30]
3767ba movups XMMWORD PTR [r8+0x30],xmm1
3767bf movups xmm0,XMMWORD PTR [rax+0x40]
3767c3 movups XMMWORD PTR [r8+0x40],xmm0
3767c8 movups xmm1,XMMWORD PTR [rax+0x50]
3767cc movups XMMWORD PTR [r8+0x50],xmm1
3767d1 movups xmm0,XMMWORD PTR [rax+0x60]
3767d5 movups XMMWORD PTR [r8+0x60],xmm0
3767da movups xmm1,XMMWORD PTR [rax+0x70]
3767de add    rax,rdx
3767e1 movups XMMWORD PTR [r8+0x70],xmm1
3767e6 add    r8,rdx
3767e9 sub    rcx,0x1
3767ed jne    0x37679d
3767ef movups xmm0,XMMWORD PTR [rax]
3767f2 lea    rdx,[rdi+0x3c38]
3767f9 lea    rcx,[rbx+0x3c38]
376800 movups XMMWORD PTR [r8],xmm0
376804 movups xmm1,XMMWORD PTR [rax+0x10]
376808 movups XMMWORD PTR [r8+0x10],xmm1
37680d movups xmm0,XMMWORD PTR [rax+0x20]
376811 movups XMMWORD PTR [r8+0x20],xmm0
376816 movups xmm1,XMMWORD PTR [rax+0x30]
37681a movups XMMWORD PTR [r8+0x30],xmm1
37681f movups xmm0,XMMWORD PTR [rax+0x40]
376823 movups XMMWORD PTR [r8+0x40],xmm0
376828 mov    rax,QWORD PTR [rax+0x50]
37682c mov    QWORD PTR [r8+0x50],rax
376830 mov    rax,QWORD PTR [rdi+0x3c28]
376837 mov    QWORD PTR [rbx+0x3c28],rax
37683e mov    eax,DWORD PTR [rdi+0x3c30]
376844 mov    DWORD PTR [rbx+0x3c30],eax
37684a mov    eax,DWORD PTR [rdi+0x3c34]
376850 mov    DWORD PTR [rbx+0x3c34],eax
376856 call   0x376584
37685b mov    rax,QWORD PTR [rdi+0x3e58]
376862 lea    rdx,[rdi+0x3e80]
376869 mov    QWORD PTR [rbx+0x3e58],rax
376870 lea    rcx,[rbx+0x3e80]
376877 mov    eax,DWORD PTR [rdi+0x3e60]
37687d mov    DWORD PTR [rbx+0x3e60],eax
376883 mov    eax,DWORD PTR [rdi+0x3e64]
376889 mov    DWORD PTR [rbx+0x3e64],eax
37688f mov    eax,DWORD PTR [rdi+0x3e68]
376895 mov    DWORD PTR [rbx+0x3e68],eax
37689b mov    al,BYTE PTR [rdi+0x3e6c]
3768a1 mov    BYTE PTR [rbx+0x3e6c],al
3768a7 mov    al,BYTE PTR [rdi+0x3e6d]
3768ad mov    BYTE PTR [rbx+0x3e6d],al
3768b3 mov    al,BYTE PTR [rdi+0x3e6e]
3768b9 mov    BYTE PTR [rbx+0x3e6e],al
3768bf mov    al,BYTE PTR [rdi+0x3e6f]
3768c5 mov    BYTE PTR [rbx+0x3e6f],al
3768cb mov    al,BYTE PTR [rdi+0x3e70]
3768d1 mov    BYTE PTR [rbx+0x3e70],al
3768d7 mov    rax,QWORD PTR [rdi+0x3e78]
3768de mov    QWORD PTR [rbx+0x3e78],rax
3768e5 call   0x376464
3768ea lea    rdx,[rdi+0x3e90]
3768f1 lea    rcx,[rbx+0x3e90]
3768f8 call   0x376464
3768fd mov    eax,DWORD PTR [rdi+0x3ea0]
376903 lea    rdx,[rdi+0x3ea8]
37690a mov    DWORD PTR [rbx+0x3ea0],eax
376910 lea    rcx,[rbx+0x3ea8]
376917 mov    eax,DWORD PTR [rdi+0x3ea4]
37691d mov    DWORD PTR [rbx+0x3ea4],eax
376923 call   0x3763c4
376928 lea    rdx,[rdi+0x3eb8]
37692f lea    rcx,[rbx+0x3eb8]
376936 call   0x3763c4
37693b lea    rdx,[rdi+0x3ec8]
376942 lea    rcx,[rbx+0x3ec8]
376949 call   0x3763c4
37694e lea    rdx,[rdi+0x3ed8]
376955 lea    rcx,[rbx+0x3ed8]
37695c call   0x376564
376961 lea    rdx,[rdi+0x3ee8]
376968 lea    rcx,[rbx+0x3ee8]
37696f call   0x377e5c
376974 mov    eax,DWORD PTR [rdi+0x3ef8]
37697a mov    DWORD PTR [rbx+0x3ef8],eax
376980 movsd  xmm0,QWORD PTR [rdi+0x3efc]
376987 
376988 movsd  QWORD PTR [rbx+0x3efc],xmm0
37698f 
376990 mov    rax,QWORD PTR [rdi+0x3f08]
376997 mov    QWORD PTR [rbx+0x3f08],rax
37699e mov    rax,QWORD PTR [rdi+0x3f10]
3769a5 mov    QWORD PTR [rbx+0x3f10],rax
3769ac mov    rax,QWORD PTR [rdi+0x3f18]
3769b3 mov    QWORD PTR [rbx+0x3f18],rax
3769ba mov    rax,QWORD PTR [rdi+0x3f20]
3769c1 mov    QWORD PTR [rbx+0x3f20],rax
3769c8 mov    rax,QWORD PTR [rdi+0x3f28]
3769cf mov    QWORD PTR [rbx+0x3f28],rax
3769d6 movsd  xmm0,QWORD PTR [rdi+0x3f30]
3769dd 
3769de movsd  QWORD PTR [rbx+0x3f30],xmm0
3769e5 
3769e6 lea    rcx,[rbx+0x3fb0]
3769ed mov    eax,DWORD PTR [rdi+0x3f38]
3769f3 lea    rdx,[rdi+0x3fb0]
3769fa mov    DWORD PTR [rbx+0x3f38],eax
376a00 mov    r8d,0x690
376a06 mov    eax,DWORD PTR [rdi+0x3f3c]
376a0c mov    DWORD PTR [rbx+0x3f3c],eax
376a12 movsd  xmm0,QWORD PTR [rdi+0x3f40]
376a19 
376a1a movsd  QWORD PTR [rbx+0x3f40],xmm0
376a21 
376a22 movsd  xmm1,QWORD PTR [rdi+0x3f48]
376a29 
376a2a movsd  QWORD PTR [rbx+0x3f48],xmm1
376a31 
376a32 mov    eax,DWORD PTR [rdi+0x3f50]
376a38 mov    DWORD PTR [rbx+0x3f50],eax
376a3e mov    eax,DWORD PTR [rdi+0x3f54]
376a44 mov    DWORD PTR [rbx+0x3f54],eax
376a4a mov    eax,DWORD PTR [rdi+0x3f58]
376a50 mov    DWORD PTR [rbx+0x3f58],eax
376a56 mov    al,BYTE PTR [rdi+0x3f5c]
376a5c mov    BYTE PTR [rbx+0x3f5c],al
376a62 mov    al,BYTE PTR [rdi+0x3f5d]
376a68 mov    BYTE PTR [rbx+0x3f5d],al
376a6e mov    eax,DWORD PTR [rdi+0x3f60]
376a74 mov    DWORD PTR [rbx+0x3f60],eax
376a7a mov    eax,DWORD PTR [rdi+0x3f64]
376a80 mov    DWORD PTR [rbx+0x3f64],eax
376a86 mov    eax,DWORD PTR [rdi+0x3f68]
376a8c mov    DWORD PTR [rbx+0x3f68],eax
376a92 mov    eax,DWORD PTR [rdi+0x3f6c]
376a98 mov    DWORD PTR [rbx+0x3f6c],eax
376a9e mov    eax,DWORD PTR [rdi+0x3f70]
376aa4 mov    DWORD PTR [rbx+0x3f70],eax
376aaa mov    al,BYTE PTR [rdi+0x3f74]
376ab0 mov    BYTE PTR [rbx+0x3f74],al
376ab6 mov    al,BYTE PTR [rdi+0x3f75]
376abc mov    BYTE PTR [rbx+0x3f75],al
376ac2 mov    al,BYTE PTR [rdi+0x3f76]
376ac8 mov    BYTE PTR [rbx+0x3f76],al
376ace mov    al,BYTE PTR [rdi+0x3f77]
376ad4 mov    BYTE PTR [rbx+0x3f77],al
376ada mov    al,BYTE PTR [rdi+0x3f78]
376ae0 mov    BYTE PTR [rbx+0x3f78],al
376ae6 mov    al,BYTE PTR [rdi+0x3f79]
376aec mov    BYTE PTR [rbx+0x3f79],al
376af2 movsd  xmm0,QWORD PTR [rdi+0x3f7c]
376af9 
376afa movsd  QWORD PTR [rbx+0x3f7c],xmm0
376b01 
376b02 mov    rax,QWORD PTR [rdi+0x3f88]
376b09 mov    QWORD PTR [rbx+0x3f88],rax
376b10 mov    eax,DWORD PTR [rdi+0x3f90]
376b16 mov    DWORD PTR [rbx+0x3f90],eax
376b1c mov    eax,DWORD PTR [rdi+0x3f94]
376b22 mov    DWORD PTR [rbx+0x3f94],eax
376b28 mov    eax,DWORD PTR [rdi+0x3f98]
376b2e mov    DWORD PTR [rbx+0x3f98],eax
376b34 mov    al,BYTE PTR [rdi+0x3f9c]
376b3a mov    BYTE PTR [rbx+0x3f9c],al
376b40 mov    al,BYTE PTR [rdi+0x3f9d]
376b46 mov    BYTE PTR [rbx+0x3f9d],al
376b4c mov    rax,QWORD PTR [rdi+0x3fa0]
376b53 mov    QWORD PTR [rbx+0x3fa0],rax
376b5a mov    eax,DWORD PTR [rdi+0x3fa8]
376b60 mov    DWORD PTR [rbx+0x3fa8],eax
376b66 mov    eax,DWORD PTR [rdi+0x3fac]
376b6c mov    DWORD PTR [rbx+0x3fac],eax
376b72 call   0x3c8d4c
376b77 lea    rdx,[rdi+0x4640]
376b7e lea    rcx,[rbx+0x4640]
376b85 call   0x377d60
376b8a mov    eax,DWORD PTR [rdi+0x4778]
376b90 mov    DWORD PTR [rbx+0x4778],eax
376b96 mov    al,BYTE PTR [rdi+0x477c]
376b9c mov    BYTE PTR [rbx+0x477c],al
376ba2 mov    eax,DWORD PTR [rdi+0x4780]
376ba8 mov    DWORD PTR [rbx+0x4780],eax
376bae mov    eax,DWORD PTR [rdi+0x4784]
376bb4 mov    DWORD PTR [rbx+0x4784],eax
376bba mov    eax,DWORD PTR [rdi+0x4788]
376bc0 mov    DWORD PTR [rbx+0x4788],eax
376bc6 mov    eax,DWORD PTR [rdi+0x478c]
376bcc mov    DWORD PTR [rbx+0x478c],eax
376bd2 movups xmm0,XMMWORD PTR [rdi+0x4790]
376bd9 movups XMMWORD PTR [rbx+0x4790],xmm0
376be0 mov    eax,DWORD PTR [rdi+0x47a0]
376be6 lea    rdx,[rdi+0x4850]
376bed mov    DWORD PTR [rbx+0x47a0],eax
376bf3 lea    rcx,[rbx+0x4850]
376bfa movups xmm0,XMMWORD PTR [rdi+0x47a4]
376c01 movups XMMWORD PTR [rbx+0x47a4],xmm0
376c08 movups xmm1,XMMWORD PTR [rdi+0x47b4]
376c0f movups XMMWORD PTR [rbx+0x47b4],xmm1
376c16 movups xmm0,XMMWORD PTR [rdi+0x47c4]
376c1d movups XMMWORD PTR [rbx+0x47c4],xmm0
376c24 movups xmm1,XMMWORD PTR [rdi+0x47d0]
376c2b movups XMMWORD PTR [rbx+0x47d0],xmm1
376c32 movups xmm0,XMMWORD PTR [rdi+0x47e0]
376c39 movups XMMWORD PTR [rbx+0x47e0],xmm0
376c40 movups xmm1,XMMWORD PTR [rdi+0x47f0]
376c47 movups XMMWORD PTR [rbx+0x47f0],xmm1
376c4e movups xmm0,XMMWORD PTR [rdi+0x4800]
376c55 movups XMMWORD PTR [rbx+0x4800],xmm0
376c5c movups xmm1,XMMWORD PTR [rdi+0x4810]
376c63 movups XMMWORD PTR [rbx+0x4810],xmm1
376c6a movups xmm0,XMMWORD PTR [rdi+0x4820]
376c71 movups XMMWORD PTR [rbx+0x4820],xmm0
376c78 movups xmm1,XMMWORD PTR [rdi+0x4830]
376c7f movups XMMWORD PTR [rbx+0x4830],xmm1
376c86 movups xmm0,XMMWORD PTR [rdi+0x4840]
376c8d movups XMMWORD PTR [rbx+0x4840],xmm0
376c94 call   0x376424
376c99 lea    rdx,[rdi+0x4860]
376ca0 lea    rcx,[rbx+0x4860]
376ca7 call   0x3764e4
376cac lea    rdx,[rdi+0x4870]
376cb3 lea    rcx,[rbx+0x4870]
376cba call   0x3763c4
376cbf lea    rdx,[rdi+0x4880]
376cc6 lea    rcx,[rbx+0x4880]
376ccd call   0x3763a4
376cd2 lea    rdx,[rdi+0x4890]
376cd9 lea    rcx,[rbx+0x4890]
376ce0 call   0x3763a4
376ce5 lea    rdx,[rdi+0x48a0]
376cec lea    rcx,[rbx+0x48a0]
376cf3 call   0x376444
376cf8 lea    rdx,[rdi+0x48b0]
376cff lea    rcx,[rbx+0x48b0]
376d06 call   0x3764a4
376d0b lea    rdx,[rdi+0x48c0]
376d12 lea    rcx,[rbx+0x48c0]
376d19 call   0x3764a4
376d1e mov    eax,DWORD PTR [rdi+0x48d0]
376d24 lea    rdx,[rdi+0x48d8]
376d2b lea    rcx,[rbx+0x48d8]
376d32 mov    DWORD PTR [rbx+0x48d0],eax
376d38 call   0x3763c4
376d3d mov    rax,QWORD PTR [rdi+0x48e8]
376d44 mov    QWORD PTR [rbx+0x48e8],rax
376d4b mov    eax,DWORD PTR [rdi+0x48f0]
376d51 mov    DWORD PTR [rbx+0x48f0],eax
376d57 mov    eax,DWORD PTR [rdi+0x48f4]
376d5d mov    DWORD PTR [rbx+0x48f4],eax
376d63 mov    eax,DWORD PTR [rdi+0x48f8]
376d69 mov    DWORD PTR [rbx+0x48f8],eax
376d6f mov    eax,DWORD PTR [rdi+0x48fc]
376d75 mov    DWORD PTR [rbx+0x48fc],eax
376d7b mov    eax,DWORD PTR [rdi+0x4900]
376d81 mov    DWORD PTR [rbx+0x4900],eax
376d87 mov    eax,DWORD PTR [rdi+0x4904]
376d8d mov    DWORD PTR [rbx+0x4904],eax
376d93 mov    eax,DWORD PTR [rdi+0x4908]
376d99 mov    DWORD PTR [rbx+0x4908],eax
376d9f mov    eax,DWORD PTR [rdi+0x490c]
376da5 mov    DWORD PTR [rbx+0x490c],eax
376dab mov    eax,DWORD PTR [rdi+0x4910]
376db1 mov    DWORD PTR [rbx+0x4910],eax
376db7 mov    eax,DWORD PTR [rdi+0x4914]
376dbd mov    DWORD PTR [rbx+0x4914],eax
376dc3 mov    eax,DWORD PTR [rdi+0x4918]
376dc9 mov    DWORD PTR [rbx+0x4918],eax
376dcf mov    eax,DWORD PTR [rdi+0x491c]
376dd5 mov    DWORD PTR [rbx+0x491c],eax
376ddb mov    eax,DWORD PTR [rdi+0x4920]
376de1 mov    DWORD PTR [rbx+0x4920],eax
376de7 mov    al,BYTE PTR [rdi+0x4924]
376ded mov    BYTE PTR [rbx+0x4924],al
376df3 mov    al,BYTE PTR [rdi+0x4925]
376df9 mov    BYTE PTR [rbx+0x4925],al
376dff mov    al,BYTE PTR [rdi+0x4926]
376e05 mov    BYTE PTR [rbx+0x4926],al
376e0b mov    al,BYTE PTR [rdi+0x4927]
376e11 mov    BYTE PTR [rbx+0x4927],al
376e17 mov    al,BYTE PTR [rdi+0x4928]
376e1d mov    BYTE PTR [rbx+0x4928],al
376e23 mov    al,BYTE PTR [rdi+0x4929]
376e29 mov    BYTE PTR [rbx+0x4929],al
376e2f mov    al,BYTE PTR [rdi+0x492a]
376e35 mov    BYTE PTR [rbx+0x492a],al
376e3b mov    eax,DWORD PTR [rdi+0x492c]
376e41 mov    DWORD PTR [rbx+0x492c],eax
376e47 movups xmm0,XMMWORD PTR [rdi+0x4930]
376e4e movdqu XMMWORD PTR [rbx+0x4930],xmm0
376e55 
376e56 mov    al,BYTE PTR [rdi+0x4940]
376e5c mov    BYTE PTR [rbx+0x4940],al
376e62 mov    al,BYTE PTR [rdi+0x4941]
376e68 mov    BYTE PTR [rbx+0x4941],al
376e6e mov    al,BYTE PTR [rdi+0x4942]
376e74 mov    BYTE PTR [rbx+0x4942],al
376e7a mov    eax,DWORD PTR [rdi+0x4944]
376e80 mov    DWORD PTR [rbx+0x4944],eax
376e86 mov    eax,DWORD PTR [rdi+0x4948]
376e8c mov    DWORD PTR [rbx+0x4948],eax
376e92 mov    eax,DWORD PTR [rdi+0x494c]
376e98 mov    DWORD PTR [rbx+0x494c],eax
376e9e mov    eax,DWORD PTR [rdi+0x4950]
376ea4 mov    DWORD PTR [rbx+0x4950],eax
376eaa mov    eax,DWORD PTR [rdi+0x4954]
376eb0 mov    DWORD PTR [rbx+0x4954],eax
376eb6 mov    eax,DWORD PTR [rdi+0x4958]
376ebc mov    DWORD PTR [rbx+0x4958],eax
376ec2 movups xmm0,XMMWORD PTR [rdi+0x495c]
376ec9 movdqu XMMWORD PTR [rbx+0x495c],xmm0
376ed0 
376ed1 movups xmm1,XMMWORD PTR [rdi+0x496c]
376ed8 movdqu XMMWORD PTR [rbx+0x496c],xmm1
376edf 
376ee0 mov    eax,DWORD PTR [rdi+0x497c]
376ee6 mov    DWORD PTR [rbx+0x497c],eax
376eec mov    eax,DWORD PTR [rdi+0x4980]
376ef2 mov    DWORD PTR [rbx+0x4980],eax
376ef8 mov    eax,DWORD PTR [rdi+0x4984]
376efe mov    DWORD PTR [rbx+0x4984],eax
376f04 movups xmm0,XMMWORD PTR [rdi+0x4988]
376f0b movups XMMWORD PTR [rbx+0x4988],xmm0
376f12 movups xmm1,XMMWORD PTR [rdi+0x4998]
376f19 movups XMMWORD PTR [rbx+0x4998],xmm1
376f20 movups xmm0,XMMWORD PTR [rdi+0x49a8]
376f27 movups XMMWORD PTR [rbx+0x49a8],xmm0
376f2e movups xmm0,XMMWORD PTR [rdi+0x49b8]
376f35 movups XMMWORD PTR [rbx+0x49b8],xmm0
376f3c movups xmm1,XMMWORD PTR [rdi+0x49c8]
376f43 movups XMMWORD PTR [rbx+0x49c8],xmm1
376f4a movups xmm0,XMMWORD PTR [rdi+0x49d8]
376f51 movups XMMWORD PTR [rbx+0x49d8],xmm0
376f58 movups xmm0,XMMWORD PTR [rdi+0x49e8]
376f5f movups XMMWORD PTR [rbx+0x49e8],xmm0
376f66 movups xmm1,XMMWORD PTR [rdi+0x49f8]
376f6d movups XMMWORD PTR [rbx+0x49f8],xmm1
376f74 movups xmm0,XMMWORD PTR [rdi+0x4a08]
376f7b movups XMMWORD PTR [rbx+0x4a08],xmm0
376f82 movups xmm0,XMMWORD PTR [rdi+0x4a18]
376f89 movups XMMWORD PTR [rbx+0x4a18],xmm0
376f90 movups xmm1,XMMWORD PTR [rdi+0x4a28]
376f97 movups XMMWORD PTR [rbx+0x4a28],xmm1
376f9e movups xmm0,XMMWORD PTR [rdi+0x4a38]
376fa5 movups XMMWORD PTR [rbx+0x4a38],xmm0
376fac mov    eax,DWORD PTR [rdi+0x4a48]
376fb2 mov    DWORD PTR [rbx+0x4a48],eax
376fb8 mov    eax,DWORD PTR [rdi+0x4a4c]
376fbe mov    DWORD PTR [rbx+0x4a4c],eax
376fc4 mov    rax,QWORD PTR [rdi+0x4a50]
376fcb mov    QWORD PTR [rbx+0x4a50],rax
376fd2 mov    rax,QWORD PTR [rdi+0x4a58]
376fd9 mov    QWORD PTR [rbx+0x4a58],rax
376fe0 mov    rax,QWORD PTR [rdi+0x4a60]
376fe7 mov    QWORD PTR [rbx+0x4a60],rax
376fee mov    eax,DWORD PTR [rdi+0x4a68]
376ff4 lea    rdx,[rdi+0x4b10]
376ffb mov    DWORD PTR [rbx+0x4a68],eax
377001 lea    rcx,[rbx+0x4b10]
377008 mov    eax,DWORD PTR [rdi+0x4a6c]
37700e mov    DWORD PTR [rbx+0x4a6c],eax
377014 mov    al,BYTE PTR [rdi+0x4a70]
37701a mov    BYTE PTR [rbx+0x4a70],al
377020 movsd  xmm0,QWORD PTR [rdi+0x4a74]
377027 
377028 movsd  QWORD PTR [rbx+0x4a74],xmm0
37702f 
377030 movsd  xmm1,QWORD PTR [rdi+0x4a7c]
377037 
377038 movsd  QWORD PTR [rbx+0x4a7c],xmm1
37703f 
377040 mov    eax,DWORD PTR [rdi+0x4a84]
377046 mov    DWORD PTR [rbx+0x4a84],eax
37704c mov    eax,DWORD PTR [rdi+0x4a88]
377052 mov    DWORD PTR [rbx+0x4a88],eax
377058 mov    al,BYTE PTR [rdi+0x4a8c]
37705e mov    BYTE PTR [rbx+0x4a8c],al
377064 mov    al,BYTE PTR [rdi+0x4a8d]
37706a mov    BYTE PTR [rbx+0x4a8d],al
377070 mov    al,BYTE PTR [rdi+0x4a8e]
377076 mov    BYTE PTR [rbx+0x4a8e],al
37707c mov    eax,DWORD PTR [rdi+0x4a90]
377082 mov    DWORD PTR [rbx+0x4a90],eax
377088 mov    eax,DWORD PTR [rdi+0x4a94]
37708e mov    DWORD PTR [rbx+0x4a94],eax
377094 mov    eax,DWORD PTR [rdi+0x4a98]
37709a mov    DWORD PTR [rbx+0x4a98],eax
3770a0 movups xmm0,XMMWORD PTR [rdi+0x4aa0]
3770a7 movups XMMWORD PTR [rbx+0x4aa0],xmm0
3770ae movups xmm1,XMMWORD PTR [rdi+0x4ab0]
3770b5 movups XMMWORD PTR [rbx+0x4ab0],xmm1
3770bc movups xmm0,XMMWORD PTR [rdi+0x4ac0]
3770c3 movups XMMWORD PTR [rbx+0x4ac0],xmm0
3770ca movups xmm1,XMMWORD PTR [rdi+0x4ad0]
3770d1 movups XMMWORD PTR [rbx+0x4ad0],xmm1
3770d8 movups xmm0,XMMWORD PTR [rdi+0x4ae0]
3770df movdqu XMMWORD PTR [rbx+0x4ae0],xmm0
3770e6 
3770e7 mov    eax,DWORD PTR [rdi+0x4af0]
3770ed mov    DWORD PTR [rbx+0x4af0],eax
3770f3 mov    eax,DWORD PTR [rdi+0x4af4]
3770f9 mov    DWORD PTR [rbx+0x4af4],eax
3770ff mov    eax,DWORD PTR [rdi+0x4af8]
377105 mov    DWORD PTR [rbx+0x4af8],eax
37710b mov    eax,DWORD PTR [rdi+0x4afc]
377111 mov    DWORD PTR [rbx+0x4afc],eax
377117 mov    eax,DWORD PTR [rdi+0x4b00]
37711d mov    DWORD PTR [rbx+0x4b00],eax
377123 mov    eax,DWORD PTR [rdi+0x4b04]
377129 mov    DWORD PTR [rbx+0x4b04],eax
37712f mov    eax,DWORD PTR [rdi+0x4b08]
377135 mov    DWORD PTR [rbx+0x4b08],eax
37713b call   0x376364
377140 movups xmm0,XMMWORD PTR [rdi+0x4b20]
377147 lea    rdx,[rdi+0x4b38]
37714e lea    rcx,[rbx+0x4b38]
377155 movdqu XMMWORD PTR [rbx+0x4b20],xmm0
37715c 
37715d mov    eax,DWORD PTR [rdi+0x4b30]
377163 mov    DWORD PTR [rbx+0x4b30],eax
377169 call   0x376404
37716e mov    rax,QWORD PTR [rdi+0x4b48]
377175 lea    rdx,[rdi+0x4b58]
37717c mov    QWORD PTR [rbx+0x4b48],rax
377183 lea    rcx,[rbx+0x4b58]
37718a mov    eax,DWORD PTR [rdi+0x4b50]
377190 mov    DWORD PTR [rbx+0x4b50],eax
377196 call   0x376544
37719b lea    rdx,[rdi+0x4b68]
3771a2 lea    rcx,[rbx+0x4b68]
3771a9 call   0x376328
3771ae lea    rdx,[rdi+0x4b90]
3771b5 lea    rcx,[rbx+0x4b90]
3771bc call   0x3763a4
3771c1 lea    rdx,[rdi+0x4ba0]
3771c8 lea    rcx,[rbx+0x4ba0]
3771cf call   0x3763e4
3771d4 mov    rax,QWORD PTR [rdi+0x4bb0]
3771db lea    rdx,[rdi+0x4bb8]
3771e2 lea    rcx,[rbx+0x4bb8]
3771e9 mov    QWORD PTR [rbx+0x4bb0],rax
3771f0 call   0x3762ec
3771f5 lea    rdx,[rdi+0x4be0]
3771fc lea    rcx,[rbx+0x4be0]
377203 call   0x376484
377208 lea    rdx,[rdi+0x4bf0]
37720f lea    rcx,[rbx+0x4bf0]
377216 call   0x3764e4
37721b mov    eax,DWORD PTR [rdi+0x4c00]
377221 lea    rdx,[rdi+0x4c18]
377228 mov    DWORD PTR [rbx+0x4c00],eax
37722e lea    rcx,[rbx+0x4c18]
377235 mov    eax,DWORD PTR [rdi+0x4c04]
37723b mov    DWORD PTR [rbx+0x4c04],eax
377241 mov    eax,DWORD PTR [rdi+0x4c08]
377247 mov    DWORD PTR [rbx+0x4c08],eax
37724d mov    eax,DWORD PTR [rdi+0x4c0c]
377253 mov    DWORD PTR [rbx+0x4c0c],eax
377259 movsd  xmm0,QWORD PTR [rdi+0x4c10]
377260 
377261 movsd  QWORD PTR [rbx+0x4c10],xmm0
377268 
377269 call   0x377ca0
37726e lea    rdx,[rdi+0x5aa8]
377275 lea    rcx,[rbx+0x5aa8]
37727c call   0x377c7c
377281 lea    rdx,[rdi+0x5ac0]
377288 lea    rcx,[rbx+0x5ac0]
37728f call   0x3766ac
377294 mov    eax,DWORD PTR [rdi+0x5b38]
37729a lea    rdx,[rdi+0x5bb8]
3772a1 mov    DWORD PTR [rbx+0x5b38],eax
3772a7 lea    rcx,[rbx+0x5bb8]
3772ae mov    eax,DWORD PTR [rdi+0x5b3c]
3772b4 mov    DWORD PTR [rbx+0x5b3c],eax
3772ba mov    eax,DWORD PTR [rdi+0x5b40]
3772c0 mov    DWORD PTR [rbx+0x5b40],eax
3772c6 mov    eax,DWORD PTR [rdi+0x5b44]
3772cc mov    DWORD PTR [rbx+0x5b44],eax
3772d2 mov    eax,DWORD PTR [rdi+0x5b48]
3772d8 mov    DWORD PTR [rbx+0x5b48],eax
3772de mov    eax,DWORD PTR [rdi+0x5b4c]
3772e4 mov    DWORD PTR [rbx+0x5b4c],eax
3772ea mov    eax,DWORD PTR [rdi+0x5b50]
3772f0 mov    DWORD PTR [rbx+0x5b50],eax
3772f6 movups xmm0,XMMWORD PTR [rdi+0x5b54]
3772fd movdqu XMMWORD PTR [rbx+0x5b54],xmm0
377304 
377305 movups xmm0,XMMWORD PTR [rdi+0x5b64]
37730c movups XMMWORD PTR [rbx+0x5b64],xmm0
377313 movups xmm1,XMMWORD PTR [rdi+0x5b74]
37731a movups XMMWORD PTR [rbx+0x5b74],xmm1
377321 movups xmm0,XMMWORD PTR [rdi+0x5b84]
377328 movups XMMWORD PTR [rbx+0x5b84],xmm0
37732f mov    eax,DWORD PTR [rdi+0x5b94]
377335 mov    DWORD PTR [rbx+0x5b94],eax
37733b mov    eax,DWORD PTR [rdi+0x5b98]
377341 mov    DWORD PTR [rbx+0x5b98],eax
377347 mov    al,BYTE PTR [rdi+0x5b9c]
37734d mov    BYTE PTR [rbx+0x5b9c],al
377353 mov    al,BYTE PTR [rdi+0x5b9d]
377359 mov    BYTE PTR [rbx+0x5b9d],al
37735f mov    eax,DWORD PTR [rdi+0x5ba0]
377365 mov    DWORD PTR [rbx+0x5ba0],eax
37736b mov    eax,DWORD PTR [rdi+0x5ba4]
377371 mov    DWORD PTR [rbx+0x5ba4],eax
377377 mov    eax,DWORD PTR [rdi+0x5ba8]
37737d mov    DWORD PTR [rbx+0x5ba8],eax
377383 mov    eax,DWORD PTR [rdi+0x5bac]
377389 mov    DWORD PTR [rbx+0x5bac],eax
37738f movzx  eax,WORD PTR [rdi+0x5bb0]
377396 mov    WORD PTR [rbx+0x5bb0],ax
37739d movzx  eax,WORD PTR [rdi+0x5bb2]
3773a4 mov    WORD PTR [rbx+0x5bb2],ax
3773ab call   0x376364
3773b0 lea    rdx,[rdi+0x5bc8]
3773b7 lea    rcx,[rbx+0x5bc8]
3773be call   0x3763a4
3773c3 movups xmm0,XMMWORD PTR [rdi+0x5bd8]
3773ca movdqu XMMWORD PTR [rbx+0x5bd8],xmm0
3773d1 
3773d2 movups xmm1,XMMWORD PTR [rdi+0x5be8]
3773d9 movdqu XMMWORD PTR [rbx+0x5be8],xmm1
3773e0 
3773e1 mov    al,BYTE PTR [rdi+0x5bf8]
3773e7 mov    BYTE PTR [rbx+0x5bf8],al
3773ed mov    al,BYTE PTR [rdi+0x5bf9]
3773f3 mov    BYTE PTR [rbx+0x5bf9],al
3773f9 mov    eax,DWORD PTR [rdi+0x5bfc]
3773ff lea    rdx,[rdi+0x5c00]
377406 lea    rcx,[rbx+0x5c00]
37740d mov    DWORD PTR [rbx+0x5bfc],eax
377413 call   0x3762d4
377418 lea    rdx,[rdi+0x5c10]
37741f lea    rcx,[rbx+0x5c10]
377426 call   0x3764c4
37742b lea    rdx,[rdi+0x5c20]
377432 lea    rcx,[rbx+0x5c20]
377439 call   0x3762d4
37743e lea    rdx,[rdi+0x5c30]
377445 lea    rcx,[rbx+0x5c30]
37744c call   0x3762d4
377451 lea    rdx,[rdi+0x5c40]
377458 lea    rcx,[rbx+0x5c40]
37745f call   0x3763e4
377464 mov    eax,DWORD PTR [rdi+0x5c50]
37746a lea    rdx,[rdi+0x5ca0]
377471 mov    DWORD PTR [rbx+0x5c50],eax
377477 lea    rcx,[rbx+0x5ca0]
37747e movups xmm0,XMMWORD PTR [rdi+0x5c58]
377485 movups XMMWORD PTR [rbx+0x5c58],xmm0
37748c movups xmm1,XMMWORD PTR [rdi+0x5c68]
377493 movups XMMWORD PTR [rbx+0x5c68],xmm1
37749a movups xmm0,XMMWORD PTR [rdi+0x5c78]
3774a1 movups XMMWORD PTR [rbx+0x5c78],xmm0
3774a8 movsd  xmm1,QWORD PTR [rdi+0x5c88]
3774af 
3774b0 movsd  QWORD PTR [rbx+0x5c88],xmm1
3774b7 
3774b8 mov    al,BYTE PTR [rdi+0x5c90]
3774be mov    BYTE PTR [rbx+0x5c90],al
3774c4 mov    eax,DWORD PTR [rdi+0x5c94]
3774ca mov    DWORD PTR [rbx+0x5c94],eax
3774d0 mov    rax,QWORD PTR [rdi+0x5c98]
3774d7 mov    QWORD PTR [rbx+0x5c98],rax
3774de call   0x3762d4
3774e3 mov    rax,QWORD PTR [rdi+0x5cb0]
3774ea lea    rdx,[rdi+0x5cd8]
3774f1 mov    QWORD PTR [rbx+0x5cb0],rax
3774f8 lea    rcx,[rbx+0x5cd8]
3774ff mov    rax,QWORD PTR [rdi+0x5cb8]
377506 mov    QWORD PTR [rbx+0x5cb8],rax
37750d mov    eax,DWORD PTR [rdi+0x5cc0]
377513 mov    DWORD PTR [rbx+0x5cc0],eax
377519 mov    al,BYTE PTR [rdi+0x5cc4]
37751f mov    BYTE PTR [rbx+0x5cc4],al
377525 mov    eax,DWORD PTR [rdi+0x5cc8]
37752b mov    DWORD PTR [rbx+0x5cc8],eax
377531 mov    eax,DWORD PTR [rdi+0x5ccc]
377537 mov    DWORD PTR [rbx+0x5ccc],eax
37753d mov    eax,DWORD PTR [rdi+0x5cd0]
377543 mov    DWORD PTR [rbx+0x5cd0],eax
377549 mov    eax,DWORD PTR [rdi+0x5cd4]
37754f mov    DWORD PTR [rbx+0x5cd4],eax
377555 call   0x3762d4
37755a lea    rdx,[rdi+0x5ce8]
377561 lea    rcx,[rbx+0x5ce8]
377568 call   0x377e74
37756d mov    al,BYTE PTR [rdi+0x5d00]
377573 lea    rdx,[rdi+0x5d20]
37757a mov    BYTE PTR [rbx+0x5d00],al
377580 lea    rcx,[rbx+0x5d20]
377587 mov    al,BYTE PTR [rdi+0x5d01]
37758d mov    BYTE PTR [rbx+0x5d01],al
377593 mov    al,BYTE PTR [rdi+0x5d02]
377599 mov    BYTE PTR [rbx+0x5d02],al
37759f mov    al,BYTE PTR [rdi+0x5d03]
3775a5 mov    BYTE PTR [rbx+0x5d03],al
3775ab mov    al,BYTE PTR [rdi+0x5d04]
3775b1 mov    BYTE PTR [rbx+0x5d04],al
3775b7 mov    eax,DWORD PTR [rdi+0x5d08]
3775bd mov    DWORD PTR [rbx+0x5d08],eax
3775c3 movups xmm0,XMMWORD PTR [rdi+0x5d0c]
3775ca movdqu XMMWORD PTR [rbx+0x5d0c],xmm0
3775d1 
3775d2 call   0x377e14
3775d7 movups xmm0,XMMWORD PTR [rdi+0x5d48]
3775de movups XMMWORD PTR [rbx+0x5d48],xmm0
3775e5 movups xmm1,XMMWORD PTR [rdi+0x5d58]
3775ec movups XMMWORD PTR [rbx+0x5d58],xmm1
3775f3 movups xmm0,XMMWORD PTR [rdi+0x5d68]
3775fa movups XMMWORD PTR [rbx+0x5d68],xmm0
377601 movups xmm1,XMMWORD PTR [rdi+0x5d78]
377608 lea    rdx,[rdi+0x5e50]
37760f lea    rcx,[rbx+0x5e50]
377616 movups XMMWORD PTR [rbx+0x5d78],xmm1
37761d movups xmm0,XMMWORD PTR [rdi+0x5d88]
377624 movups XMMWORD PTR [rbx+0x5d88],xmm0
37762b movups xmm1,XMMWORD PTR [rdi+0x5d98]
377632 movups XMMWORD PTR [rbx+0x5d98],xmm1
377639 movups xmm0,XMMWORD PTR [rdi+0x5da8]
377640 movups XMMWORD PTR [rbx+0x5da8],xmm0
377647 movups xmm1,XMMWORD PTR [rdi+0x5db8]
37764e movups XMMWORD PTR [rbx+0x5db8],xmm1
377655 movups xmm0,XMMWORD PTR [rdi+0x5dc8]
37765c movups XMMWORD PTR [rbx+0x5dc8],xmm0
377663 movups xmm1,XMMWORD PTR [rdi+0x5dd8]
37766a movups XMMWORD PTR [rbx+0x5dd8],xmm1
377671 movups xmm0,XMMWORD PTR [rdi+0x5de8]
377678 movups XMMWORD PTR [rbx+0x5de8],xmm0
37767f movups xmm1,XMMWORD PTR [rdi+0x5df8]
377686 movups XMMWORD PTR [rbx+0x5df8],xmm1
37768d movups xmm0,XMMWORD PTR [rdi+0x5e08]
377694 movups XMMWORD PTR [rbx+0x5e08],xmm0
37769b movups xmm1,XMMWORD PTR [rdi+0x5e18]
3776a2 movups XMMWORD PTR [rbx+0x5e18],xmm1
3776a9 movups xmm0,XMMWORD PTR [rdi+0x5e28]
3776b0 movups XMMWORD PTR [rbx+0x5e28],xmm0
3776b7 mov    eax,DWORD PTR [rdi+0x5e38]
3776bd mov    DWORD PTR [rbx+0x5e38],eax
3776c3 mov    eax,DWORD PTR [rdi+0x5e3c]
3776c9 mov    DWORD PTR [rbx+0x5e3c],eax
3776cf mov    eax,DWORD PTR [rdi+0x5e40]
3776d5 mov    DWORD PTR [rbx+0x5e40],eax
3776db mov    eax,DWORD PTR [rdi+0x5e44]
3776e1 mov    DWORD PTR [rbx+0x5e44],eax
3776e7 mov    eax,DWORD PTR [rdi+0x5e48]
3776ed mov    DWORD PTR [rbx+0x5e48],eax
3776f3 mov    eax,DWORD PTR [rdi+0x5e4c]
3776f9 mov    DWORD PTR [rbx+0x5e4c],eax
3776ff call   0x376364
377704 mov    rax,rbx
377707 mov    rbx,QWORD PTR [rsp+0x30]
37770c add    rsp,0x20
377710 pop    rdi
377711 ret

; closure independent pdata/next-pdata extent 377ef4..378103 unwind3d2038
377ef4 rex push rbx
377ef6 sub    rsp,0x20
377efa mov    rbx,rcx
377efd add    rcx,0x5e50
377f04 call   0x336624
377f09 lea    rcx,[rbx+0x5d20]
377f10 call   0x378170
377f15 lea    rcx,[rbx+0x5ce8]
377f1c call   0x3366dc
377f21 lea    rcx,[rbx+0x5cd8]
377f28 call   0x3366dc
377f2d lea    rcx,[rbx+0x5ca0]
377f34 call   0x3366dc
377f39 lea    rcx,[rbx+0x5c40]
377f40 call   0x336624
377f45 lea    rcx,[rbx+0x5c30]
377f4c call   0x3366dc
377f51 lea    rcx,[rbx+0x5c20]
377f58 call   0x3366dc
377f5d lea    rcx,[rbx+0x5c10]
377f64 call   0x336624
377f69 lea    rcx,[rbx+0x5c00]
377f70 call   0x3366dc
377f75 lea    rcx,[rbx+0x5bc8]
377f7c call   0x336624
377f81 lea    rcx,[rbx+0x5bb8]
377f88 call   0x336624
377f8d lea    rcx,[rbx+0x5ac0]
377f94 call   0x39f5ac
377f99 lea    rcx,[rbx+0x5aa8]
377fa0 call   0x378110
377fa5 lea    rcx,[rbx+0x4c18]
377fac call   0x37811c
377fb1 lea    rcx,[rbx+0x4bf0]
377fb8 call   0x336624
377fbd lea    rcx,[rbx+0x4be0]
377fc4 call   0x336624
377fc9 lea    rcx,[rbx+0x4bb8]
377fd0 call   0x377ea0
377fd5 lea    rcx,[rbx+0x4ba0]
377fdc call   0x336624
377fe1 lea    rcx,[rbx+0x4b90]
377fe8 call   0x336624
377fed lea    rcx,[rbx+0x4b68]
377ff4 call   0x377ec4
377ff9 lea    rcx,[rbx+0x4b58]
378000 call   0x336624
378005 lea    rcx,[rbx+0x4b38]
37800c call   0x336624
378011 lea    rcx,[rbx+0x4b10]
378018 call   0x336624
37801d lea    rcx,[rbx+0x48d8]
378024 call   0x336624
378029 lea    rcx,[rbx+0x48c0]
378030 call   0x336624
378035 lea    rcx,[rbx+0x48b0]
37803c call   0x336624
378041 lea    rcx,[rbx+0x48a0]
378048 call   0x336624
37804d lea    rcx,[rbx+0x4890]
378054 call   0x336624
378059 lea    rcx,[rbx+0x4880]
378060 call   0x336624
378065 lea    rcx,[rbx+0x4870]
37806c call   0x336624
378071 lea    rcx,[rbx+0x4860]
378078 call   0x336624
37807d lea    rcx,[rbx+0x4850]
378084 call   0x336624
378089 lea    rcx,[rbx+0x4640]
378090 call   0x378148
378095 lea    rcx,[rbx+0x3ee8]
37809c call   0x3366dc
3780a1 lea    rcx,[rbx+0x3ed8]
3780a8 call   0x336624
3780ad lea    rcx,[rbx+0x3ec8]
3780b4 call   0x336624
3780b9 lea    rcx,[rbx+0x3eb8]
3780c0 call   0x336624
3780c5 lea    rcx,[rbx+0x3ea8]
3780cc call   0x336624
3780d1 lea    rcx,[rbx+0x3e90]
3780d8 call   0x336624
3780dd lea    rcx,[rbx+0x3e80]
3780e4 call   0x336624
3780e9 lea    rcx,[rbx+0x3c38]
3780f0 call   0x377ee8
3780f5 lea    rcx,[rbx+0x8]
3780f9 add    rsp,0x20
3780fd pop    rbx
3780fe jmp    0x378104

; closure independent pdata/next-pdata extent 378104..37811c unwind0
378104 add    rcx,0x37b8
37810b jmp    0x336624
378110 add    rcx,0x8
378114 jmp    0x336624
378119 int3
37811a int3
37811b int3

; closure independent pdata/next-pdata extent 378a88..378f1b unwind3d4104
378a88 mov    rax,rsp
378a8b mov    QWORD PTR [rax+0x18],rbx
378a8f push   rbp
378a90 push   rsi
378a91 push   rdi
378a92 push   r14
378a94 push   r15
378a96 mov    rbp,rsp
378a99 sub    rsp,0x70
378a9d mov    ebx,DWORD PTR [rbp+0x70]
378aa0 mov    r15d,r9d
378aa3 movaps XMMWORD PTR [rax-0x38],xmm6
378aa7 mov    r14d,r8d
378aaa movss  xmm6,DWORD PTR [rip+0xfffffffffff147a2]        # 0x28d254
378ab1 
378ab2 mov    rdi,rdx
378ab5 movaps XMMWORD PTR [rax-0x48],xmm7
378ab9 mov    rsi,rcx
378abc movss  xmm7,DWORD PTR [rip+0xfffffffffff1478c]        # 0x28d250
378ac3 
378ac4 movaps XMMWORD PTR [rax-0x58],xmm8
378ac9 movaps XMMWORD PTR [rax-0x68],xmm9
378ace mov    eax,ebx
378ad0 and    eax,0x30
378ad3 cmp    al,0x30
378ad5 mov    eax,ebx
378ad7 setne  r10b
378adb and    eax,0xc0
378ae0 cmp    al,0xc0
378ae2 setne  al
378ae5 test   al,r10b
378ae8 je     0x378af0
378aea movaps xmm8,xmm6
378aee jmp    0x378af4
378af0 movaps xmm8,xmm7
378af4 movss  xmm0,DWORD PTR [rdx]
378af8 subss  xmm0,DWORD PTR [rcx]
378afc call   0x2e3ef0
378b01 mulss  xmm0,xmm8
378b06 subss  xmm0,xmm6
378b0a movaps xmm1,xmm0
378b0d movss  xmm0,DWORD PTR [rbp+0x68]
378b12 call   0x3762cc
378b17 mov    eax,ebx
378b19 movaps xmm8,xmm0
378b1d and    eax,0x50
378b20 cmp    al,0x50
378b22 mov    eax,ebx
378b24 setne  cl
378b27 and    eax,0xa0
378b2c cmp    al,0xa0
378b2e setne  al
378b31 test   al,cl
378b33 je     0x378b38
378b35 movaps xmm7,xmm6
378b38 movss  xmm0,DWORD PTR [rdi+0x4]
378b3d subss  xmm0,DWORD PTR [rsi+0x4]
378b42 call   0x2e3ef0
378b47 mulss  xmm0,xmm7
378b4b subss  xmm0,xmm6
378b4f movaps xmm1,xmm0
378b52 movaps xmm0,xmm8
378b56 call   0x3762cc
378b5b xorps  xmm2,xmm2
378b5e movaps xmm6,xmm0
378b61 comiss xmm2,xmm0
378b64 jae    0x378ef3
378b6a test   ebx,ebx
378b6c je     0x378ef3
378b72 test   bl,0x10
378b75 je     0x378b7d
378b77 movaps xmm9,xmm0
378b7b jmp    0x378b81
378b7d xorps  xmm9,xmm9
378b81 test   bl,0x20
378b84 je     0x378b8c
378b86 movaps xmm8,xmm0
378b8a jmp    0x378b90
378b8c xorps  xmm8,xmm8
378b90 test   bl,bl
378b92 jns    0x378b99
378b94 movaps xmm7,xmm0
378b97 jmp    0x378b9c
378b99 xorps  xmm7,xmm7
378b9c test   bl,0x40
378b9f jne    0x378ba4
378ba1 xorps  xmm6,xmm6
378ba4 call   0x392ecc
378ba9 mov    rcx,QWORD PTR [rax+0x38]
378bad movsd  xmm0,QWORD PTR [rcx]
378bb1 movsd  QWORD PTR [rbp+0x30],xmm0
378bb6 call   0x392ecc
378bbb mov    edx,0x6
378bc0 mov    rcx,rax
378bc3 lea    r8d,[rdx-0x2]
378bc7 call   0x3a719c
378bcc call   0x392ecc
378bd1 mov    rbx,rax
378bd4 call   0x392ecc
378bd9 mov    rcx,rbx
378bdc movzx  edx,WORD PTR [rax+0x34]
378be0 call   0x378a4c
378be5 call   0x392ecc
378bea mov    rbx,rax
378bed call   0x392ecc
378bf2 mov    rcx,rbx
378bf5 movzx  edx,WORD PTR [rax+0x34]
378bf9 inc    dx
378bfc call   0x378a4c
378c01 call   0x392ecc
378c06 mov    rbx,rax
378c09 call   0x392ecc
378c0e mov    rcx,rbx
378c11 movzx  edx,WORD PTR [rax+0x34]
378c15 add    dx,0x2
378c19 call   0x378a4c
378c1e call   0x392ecc
378c23 mov    rbx,rax
378c26 call   0x392ecc
378c2b mov    rcx,rbx
378c2e movzx  edx,WORD PTR [rax+0x34]
378c32 call   0x378a4c
378c37 call   0x392ecc
378c3c mov    rbx,rax
378c3f call   0x392ecc
378c44 mov    rcx,rbx
378c47 movzx  edx,WORD PTR [rax+0x34]
378c4b add    dx,0x2
378c4f call   0x378a4c
378c54 call   0x392ecc
378c59 mov    rbx,rax
378c5c call   0x392ecc
378c61 mov    rcx,rbx
378c64 movzx  edx,WORD PTR [rax+0x34]
378c68 add    dx,0x3
378c6c call   0x378a4c
378c71 call   0x392ecc
378c76 mov    rcx,rax
378c79 lea    r8,[rbp+0x30]
378c7d mov    r9d,r15d
378c80 mov    rdx,rsi
378c83 call   0x378a5c
378c88 call   0x392ecc
378c8d movss  xmm2,DWORD PTR [rsi+0x4]
378c92 lea    rcx,[rbp+0x38]
378c96 movss  xmm1,DWORD PTR [rdi]
378c9a mov    rbx,rax
378c9d call   0x2cc340
378ca2 mov    r9d,DWORD PTR [rbp+0x50]
378ca6 lea    r8,[rbp+0x30]
378caa mov    rdx,rax
378cad mov    rcx,rbx
378cb0 call   0x378a5c
378cb5 call   0x392ecc
378cba mov    r9d,DWORD PTR [rbp+0x58]
378cbe lea    r8,[rbp+0x30]
378cc2 mov    rcx,rax
378cc5 mov    rdx,rdi
378cc8 call   0x378a5c
378ccd call   0x392ecc
378cd2 movss  xmm2,DWORD PTR [rdi+0x4]
378cd7 lea    rcx,[rbp+0x38]
378cdb movss  xmm1,DWORD PTR [rsi]
378cdf mov    rbx,rax
378ce2 call   0x2cc340
378ce7 mov    r9d,DWORD PTR [rbp+0x60]
378ceb lea    r8,[rbp+0x30]
378cef mov    rdx,rax
378cf2 mov    rcx,rbx
378cf5 call   0x378a5c
378cfa call   0x392ecc
378cff mov    rcx,rax
378d02 mov    rdx,rsi
378d05 call   0x378a40
378d0a call   0x392ecc
378d0f movaps xmm2,xmm9
378d13 lea    rcx,[rbp+0x30]
378d17 addss  xmm2,DWORD PTR [rsi+0x4]
378d1c movaps xmm1,xmm9
378d20 mov    rbx,rax
378d23 addss  xmm1,DWORD PTR [rsi]
378d27 call   0x2cc340
378d2c movss  xmm0,DWORD PTR [rip+0xfffffffffff3050c]        # 0x2a9240
378d33 
378d34 mov    rdx,rax
378d37 movss  xmm3,DWORD PTR [rip+0xfffffffffff30509]        # 0x2a9248
378d3e 
378d3f movaps xmm2,xmm9
378d43 mov    DWORD PTR [rsp+0x28],0x0
378d4a 
378d4b mov    rcx,rbx
378d4e movss  DWORD PTR [rsp+0x20],xmm0
378d54 call   0x3a684c
378d59 call   0x392ecc
378d5e mov    rcx,rax
378d61 mov    edx,r14d
378d64 call   0x378a14
378d69 call   0x392ecc
378d6e movss  xmm2,DWORD PTR [rsi+0x4]
378d73 lea    rcx,[rbp+0x30]
378d77 movss  xmm1,DWORD PTR [rdi]
378d7b mov    rbx,rax
378d7e call   0x2cc340
378d83 mov    rdx,rax
378d86 mov    rcx,rbx
378d89 call   0x378a40
378d8e call   0x392ecc
378d93 movss  xmm1,DWORD PTR [rdi]
378d97 lea    rcx,[rbp+0x30]
378d9b movaps xmm2,xmm8
378d9f subss  xmm1,xmm8
378da4 addss  xmm2,DWORD PTR [rsi+0x4]
378da9 mov    rbx,rax
378dac call   0x2cc340
378db1 movss  xmm0,DWORD PTR [rip+0xfffffffffff3048b]        # 0x2a9244
378db8 
378db9 mov    rdx,rax
378dbc movss  xmm3,DWORD PTR [rip+0xfffffffffff3048c]        # 0x2a9250
378dc3 
378dc4 movaps xmm2,xmm8
378dc8 mov    DWORD PTR [rsp+0x28],0x0
378dcf 
378dd0 mov    rcx,rbx
378dd3 movss  DWORD PTR [rsp+0x20],xmm0
378dd9 call   0x3a684c
378dde call   0x392ecc
378de3 mov    rcx,rax
378de6 mov    edx,r14d
378de9 call   0x378a14
378dee call   0x392ecc
378df3 movss  xmm2,DWORD PTR [rdi+0x4]
378df8 lea    rcx,[rbp+0x30]
378dfc movss  xmm1,DWORD PTR [rdi]
378e00 mov    rbx,rax
378e03 call   0x2cc340
378e08 mov    rdx,rax
378e0b mov    rcx,rbx
378e0e call   0x378a40
378e13 call   0x392ecc
378e18 movss  xmm2,DWORD PTR [rdi+0x4]
378e1d lea    rcx,[rbp+0x30]
378e21 movss  xmm1,DWORD PTR [rdi]
378e25 subss  xmm2,xmm7
378e29 subss  xmm1,xmm7
378e2d mov    rbx,rax
378e30 call   0x2cc340
378e35 movss  xmm0,DWORD PTR [rip+0xfffffffffff3040f]        # 0x2a924c
378e3c 
378e3d mov    rdx,rax
378e40 movss  xmm3,DWORD PTR [rip+0xfffffffffff30410]        # 0x2a9258
378e47 
378e48 movaps xmm2,xmm7
378e4b mov    DWORD PTR [rsp+0x28],0x0
378e52 
378e53 mov    rcx,rbx
378e56 movss  DWORD PTR [rsp+0x20],xmm0
378e5c call   0x3a684c
378e61 call   0x392ecc
378e66 mov    rcx,rax
378e69 mov    edx,r14d
378e6c call   0x378a14
378e71 call   0x392ecc
378e76 movss  xmm2,DWORD PTR [rdi+0x4]
378e7b lea    rcx,[rbp+0x30]
378e7f movss  xmm1,DWORD PTR [rsi]
378e83 mov    rbx,rax
378e86 call   0x2cc340
378e8b mov    rdx,rax
378e8e mov    rcx,rbx
378e91 call   0x378a40
378e96 call   0x392ecc
378e9b movss  xmm2,DWORD PTR [rdi+0x4]
378ea0 lea    rcx,[rbp+0x30]
378ea4 movaps xmm1,xmm6
378ea7 subss  xmm2,xmm6
378eab addss  xmm1,DWORD PTR [rsi]
378eaf mov    rbx,rax
378eb2 call   0x2cc340
378eb7 movss  xmm0,DWORD PTR [rip+0xfffffffffff30395]        # 0x2a9254
378ebe 
378ebf mov    rdx,rax
378ec2 movss  xmm3,DWORD PTR [rip+0xfffffffffff30392]        # 0x2a925c
378ec9 
378eca movaps xmm2,xmm6
378ecd mov    DWORD PTR [rsp+0x28],0x0
378ed4 
378ed5 mov    rcx,rbx
378ed8 movss  DWORD PTR [rsp+0x20],xmm0
378ede call   0x3a684c
378ee3 call   0x392ecc
378ee8 mov    rcx,rax
378eeb mov    edx,r14d
378eee call   0x378a14
378ef3 movaps xmm6,XMMWORD PTR [rsp+0x60]
378ef8 lea    r11,[rsp+0x70]
378efd mov    rbx,QWORD PTR [r11+0x40]
378f01 movaps xmm8,XMMWORD PTR [r11-0x30]
378f06 movaps xmm9,XMMWORD PTR [r11-0x40]
378f0b movaps xmm7,XMMWORD PTR [rsp+0x50]
378f10 mov    rsp,r11
378f13 pop    r15
378f15 pop    r14
378f17 pop    rdi
378f18 pop    rsi
378f19 pop    rbp
378f1a ret

; closure independent pdata/next-pdata extent 378940..37896d unwind3d2038
378940 rex push rbx
378942 sub    rsp,0x20
378946 movss  xmm2,DWORD PTR [rcx+0xc]
37894b mov    rbx,rdx
37894e movss  xmm1,DWORD PTR [rcx+0x8]
378953 subss  xmm2,DWORD PTR [rcx+0x4]
378958 subss  xmm1,DWORD PTR [rcx]
37895c mov    rcx,rdx
37895f call   0x2cc340
378964 mov    rax,rbx
378967 add    rsp,0x20
37896b pop    rbx
37896c ret

; closure independent pdata/next-pdata extent 3788f4..378931 unwind3d2038
3788f4 rex push rbx
3788f6 sub    rsp,0x20
3788fa movss  xmm2,DWORD PTR [rcx+0xc]
3788ff mov    rbx,rdx
378902 movss  xmm1,DWORD PTR [rcx+0x8]
378907 addss  xmm2,DWORD PTR [rcx+0x4]
37890c addss  xmm1,DWORD PTR [rcx]
378910 movss  xmm0,DWORD PTR [rip+0xfffffffffff14938]        # 0x28d250
378917 
378918 mov    rcx,rdx
37891b mulss  xmm2,xmm0
37891f mulss  xmm1,xmm0
378923 call   0x2cc340
378928 mov    rax,rbx
37892b add    rsp,0x20
37892f pop    rbx
378930 ret

; closure independent pdata/next-pdata extent 378934..378940 unwind0
378934 movss  xmm0,DWORD PTR [rcx+0xc]
378939 subss  xmm0,DWORD PTR [rcx+0x4]
37893e ret
37893f int3

; closure independent pdata/next-pdata extent 378970..37898c unwind0
378970 movss  xmm0,DWORD PTR [rcx+0x8]
378975 subss  xmm0,DWORD PTR [rcx]
378979 ret
37897a int3
37897b int3
37897c cmp    cl,0x20
37897f je     0x378989
378981 cmp    cl,0x9
378984 je     0x378989
378986 xor    al,al
378988 ret
378989 mov    al,0x1
37898b ret

; closure independent pdata/next-pdata extent 3789fc..378a14 unwind0
3789fc movaps xmm1,xmm0
3789ff xorps  xmm0,xmm0
378a02 comiss xmm0,xmm1
378a05 ja     0x378a13
378a07 movss  xmm0,DWORD PTR [rip+0xfffffffffff14845]        # 0x28d254
378a0e 
378a0f minss  xmm0,xmm1
378a13 ret

; closure independent pdata/next-pdata extent 3762bc..3762d4 unwind0
3762bc comiss xmm1,xmm0
3762bf ja     0x3762c8
3762c1 minss  xmm2,xmm0
3762c5 movaps xmm1,xmm2
3762c8 movaps xmm0,xmm1
3762cb ret
3762cc minss  xmm0,xmm1
3762d0 ret
3762d1 int3
3762d2 int3
3762d3 int3

; closure independent pdata/next-pdata extent 393ff4..394050 unwind0
393ff4 mov    rax,QWORD PTR [rip+0x71b2d]        # 0x405b28
393ffb mov    ecx,DWORD PTR [rax+0x3f68]
394001 test   ecx,ecx
394003 je     0x39400f
394005 cmp    ecx,DWORD PTR [rax+0x47a4]
39400b sete   al
39400e ret
39400f xor    al,al
394011 ret
394012 int3
394013 int3
394014 mov    rcx,QWORD PTR [rip+0x71b0d]        # 0x405b28
39401b mov    eax,DWORD PTR [rcx+0x47ac]
394021 test   al,0x20
394023 je     0x39402b
394025 shr    eax,0x6
394028 and    al,0x1
39402a ret
39402b mov    eax,DWORD PTR [rcx+0x47a4]
394031 mov    edx,DWORD PTR [rcx+0x3f98]
394037 cmp    edx,eax
394039 jne    0x39404b
39403b test   edx,edx
39403d je     0x39404b
39403f cmp    DWORD PTR [rcx+0x3f68],eax
394045 je     0x39404b
394047 mov    cl,0x1
394049 jmp    0x39404d
39404b xor    cl,cl
39404d mov    al,cl
39404f ret

; closure independent pdata/next-pdata extent 3c2dc8..3c2e93 unwind3d56bc
3c2dc8 rex push rbx
3c2dca push   rsi
3c2dcb push   rdi
3c2dcc push   r14
3c2dce sub    rsp,0x58
3c2dd2 mov    edi,r8d
3c2dd5 mov    r14,rdx
3c2dd8 mov    rsi,rcx
3c2ddb call   0x35d200
3c2de0 mov    rbx,rax
3c2de3 cmp    BYTE PTR [rax+0xbb],0x0
3c2dea jne    0x3c2e87
3c2df0 xor    r8d,r8d
3c2df3 mov    rdx,rsi
3c2df6 mov    rcx,rax
3c2df9 call   0x392614
3c2dfe mov    rdx,QWORD PTR [r14]
3c2e01 lea    rcx,[rsp+0x38]
3c2e06 xorps  xmm3,xmm3
3c2e09 xorps  xmm2,xmm2
3c2e0c mov    esi,eax
3c2e0e call   0x38f224
3c2e13 lea    r8,[rsp+0x38]
3c2e18 lea    rdx,[rbx+0x100]
3c2e1f lea    rcx,[rsp+0x98]
3c2e26 
3c2e27 call   0x2ef9d8
3c2e2c mov    r8,rax
3c2e2f lea    rdx,[rbx+0x100]
3c2e36 lea    rcx,[rsp+0x40]
3c2e3b call   0x2db388
3c2e40 movss  xmm1,DWORD PTR [rip+0xffffffffffed0418]        # 0x293260
3c2e47 
3c2e48 lea    rcx,[rsp+0x38]
3c2e4d call   0x394b40
3c2e52 xor    r9d,r9d
3c2e55 lea    rcx,[rsp+0x40]
3c2e5a xor    r8d,r8d
3c2e5d mov    edx,esi
3c2e5f call   0x3948dc
3c2e64 test   al,al
3c2e66 je     0x3c2e87
3c2e68 lea    r9,[rsp+0x98]
3c2e6f 
3c2e70 mov    DWORD PTR [rsp+0x20],edi
3c2e74 lea    r8,[rsp+0x30]
3c2e79 mov    edx,esi
3c2e7b lea    rcx,[rsp+0x40]
3c2e80 call   0x3bc7e0
3c2e85 jmp    0x3c2e89
3c2e87 xor    al,al
3c2e89 add    rsp,0x58
3c2e8d pop    r14
3c2e8f pop    rdi
3c2e90 pop    rsi
3c2e91 pop    rbx
3c2e92 ret

; closure independent pdata/next-pdata extent 38a3fc..38a40c unwind0
38a3fc movss  xmm0,DWORD PTR [rcx]
38a400 mov    eax,DWORD PTR [rdx]
38a402 mov    DWORD PTR [rcx],eax
38a404 movss  DWORD PTR [rdx],xmm0
38a408 ret
38a409 int3
38a40a int3
38a40b int3

; closure independent pdata/next-pdata extent 2e3ef0..2e3f60 unwind0
2e3ef0 andps  xmm0,XMMWORD PTR [rip+0xfffffffffffa9c69]        # 0x28db60
2e3ef7 ret
2e3ef8 mov    al,BYTE PTR [rip+0xfffffffffffa9c82]        # 0x28db80
2e3efe movups xmm0,XMMWORD PTR [rip+0xfffffffffffa9c6b]        # 0x28db70
2e3f05 movups XMMWORD PTR [rdx],xmm0
2e3f08 mov    BYTE PTR [rdx+0x10],al
2e3f0b mov    rax,rdx
2e3f0e ret
2e3f0f int3
2e3f10 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa9c71]        # 0x28db88
2e3f17 mov    rax,rdx
2e3f1a movsd  xmm1,QWORD PTR [rip+0xfffffffffffa9c74]        # 0x28db96
2e3f21 
2e3f22 movups XMMWORD PTR [rdx],xmm0
2e3f25 movsd  QWORD PTR [rdx+0xe],xmm1
2e3f2a ret
2e3f2b int3
2e3f2c movups xmm0,XMMWORD PTR [rip+0xfffffffffffa9c6d]        # 0x28dba0
2e3f33 mov    rax,rdx
2e3f36 movsd  xmm1,QWORD PTR [rip+0xfffffffffffa9c6f]        # 0x28dbad
2e3f3d 
2e3f3e movups XMMWORD PTR [rdx],xmm0
2e3f41 movsd  QWORD PTR [rdx+0xd],xmm1
2e3f46 ret
2e3f47 int3
2e3f48 mov    al,BYTE PTR [rip+0xfffffffffffa9c7a]        # 0x28dbc8
2e3f4e movups xmm0,XMMWORD PTR [rip+0xfffffffffffa9c63]        # 0x28dbb8
2e3f55 movups XMMWORD PTR [rdx],xmm0
2e3f58 mov    BYTE PTR [rdx+0x10],al
2e3f5b mov    rax,rdx
2e3f5e ret
2e3f5f int3

; closure independent pdata/next-pdata extent 3a7654..3a792b unwind3d5098
3a7654 mov    rax,rsp
3a7657 mov    QWORD PTR [rax+0x8],rbx
3a765b push   rbp
3a765c push   rsi
3a765d push   rdi
3a765e push   r12
3a7660 push   r13
3a7662 push   r14
3a7664 push   r15
3a7666 lea    rbp,[rax-0x3f]
3a766a sub    rsp,0xf0
3a7671 test   DWORD PTR [rbp+0x7f],0x1f0
3a7678 mov    esi,0xf0
3a767d movaps XMMWORD PTR [rax-0x48],xmm6
3a7681 mov    edi,r9d
3a7684 cmovne esi,DWORD PTR [rbp+0x7f]
3a7688 mov    r15,rcx
3a768b movaps XMMWORD PTR [rax-0x58],xmm7
3a768f movaps XMMWORD PTR [rax-0x68],xmm8
3a7694 movaps XMMWORD PTR [rax-0x78],xmm9
3a7699 movq   xmm9,rdx
3a769e movaps XMMWORD PTR [rax-0x88],xmm11
3a76a5 
3a76a6 movaps XMMWORD PTR [rax-0x98],xmm12
3a76ad 
3a76ae movaps XMMWORD PTR [rax-0xa8],xmm13
3a76b5 
3a76b6 movaps XMMWORD PTR [rsp+0x70],xmm14
3a76bc movaps XMMWORD PTR [rsp+0x60],xmm15
3a76c2 mov    QWORD PTR [rsp+0x38],r8
3a76c7 movsd  QWORD PTR [rsp+0x40],xmm9
3a76ce cmp    r9d,0xff000000
3a76d5 jae    0x3a78c4
3a76db mov    edx,r9d
3a76de mov    ecx,0xffcccccc
3a76e3 call   0x392f88
3a76e8 mov    ecx,eax
3a76ea call   0x3922dc
3a76ef mov    edx,edi
3a76f1 mov    ecx,0xff808080
3a76f6 mov    ebx,eax
3a76f8 call   0x392f88
3a76fd mov    ecx,eax
3a76ff call   0x3922dc
3a7704 movss  xmm0,DWORD PTR [rbp+0x77]
3a7709 lea    r8,[rsp+0x38]
3a770e mov    DWORD PTR [rsp+0x28],esi
3a7712 lea    rdx,[rsp+0x40]
3a7717 mov    r9d,ebx
3a771a movss  DWORD PTR [rsp+0x20],xmm0
3a7720 mov    rcx,r15
3a7723 mov    r12d,eax
3a7726 call   0x3a1244
3a772b movss  xmm3,DWORD PTR [rsp+0x44]
3a7731 movss  xmm7,DWORD PTR [rbp+0x73]
3a7736 movss  xmm11,DWORD PTR [rsp+0x3c]
3a773d addss  xmm7,xmm3
3a7741 comiss xmm11,xmm7
3a7745 jbe    0x3a78e2
3a774b movss  xmm14,DWORD PTR [rbp+0x6f]
3a7751 xor    r14d,r14d
3a7754 movss  xmm8,DWORD PTR [rsp+0x38]
3a775b addss  xmm14,xmm9
3a7760 mov    r13d,0x100
3a7766 movss  DWORD PTR [rsp+0x30],xmm14
3a776d movaps xmm2,xmm11
3a7771 movaps xmm1,xmm3
3a7774 movaps xmm0,xmm7
3a7777 call   0x3762bc
3a777c addss  xmm7,DWORD PTR [rbp+0x67]
3a7781 movaps xmm15,xmm0
3a7785 movaps xmm1,xmm11
3a7789 movaps xmm0,xmm7
3a778c movss  DWORD PTR [rbp+0x5f],xmm7
3a7791 call   0x3762cc
3a7796 comiss xmm15,xmm0
3a779a movss  DWORD PTR [rbp+0x7f],xmm0
3a779f jae    0x3a78b5
3a77a5 mov    eax,r14d
3a77a8 and    eax,0x1
3a77ab movd   xmm6,eax
3a77af cvtdq2ps xmm6,xmm6
3a77b2 mulss  xmm6,DWORD PTR [rbp+0x67]
3a77b7 addss  xmm6,xmm14
3a77bc comiss xmm8,xmm6
3a77c0 jbe    0x3a78b5
3a77c6 movss  xmm12,DWORD PTR [rbp+0x67]
3a77cc movss  xmm14,DWORD PTR [rbp+0x7f]
3a77d2 addss  xmm12,xmm12
3a77d7 movss  xmm7,DWORD PTR [rbp+0x77]
3a77dc movaps xmm2,xmm8
3a77e0 movaps xmm1,xmm9
3a77e4 movaps xmm0,xmm6
3a77e7 call   0x3762bc
3a77ec movaps xmm13,xmm0
3a77f0 movaps xmm1,xmm8
3a77f4 movaps xmm0,xmm6
3a77f7 addss  xmm0,DWORD PTR [rbp+0x67]
3a77fc call   0x3762cc
3a7801 comiss xmm13,xmm0
3a7805 jae    0x3a789a
3a780b comiss xmm3,xmm15
3a780f mov    edi,r13d
3a7812 jb     0x3a7829
3a7814 comiss xmm9,xmm13
3a7818 mov    eax,0x110
3a781d cmovae edi,eax
3a7820 comiss xmm0,xmm8
3a7824 jb     0x3a7829
3a7826 or     edi,0x20
3a7829 comiss xmm14,xmm11
3a782d jb     0x3a7842
3a782f comiss xmm9,xmm13
3a7833 jb     0x3a7838
3a7835 or     edi,0x40
3a7838 comiss xmm0,xmm8
3a783c jb     0x3a7842
3a783e bts    edi,0x7
3a7842 cmp    esi,r13d
3a7845 je     0x3a7850
3a7847 cmp    edi,r13d
3a784a je     0x3a7850
3a784c and    edi,esi
3a784e jmp    0x3a7853
3a7850 mov    edi,r13d
3a7853 movaps xmm2,xmm14
3a7857 lea    rcx,[rsp+0x48]
3a785c movaps xmm1,xmm0
3a785f call   0x2cc340
3a7864 movaps xmm2,xmm15
3a7868 lea    rcx,[rsp+0x50]
3a786d movaps xmm1,xmm13
3a7871 mov    rbx,rax
3a7874 call   0x2cc340
3a7879 mov    rdx,rax
3a787c mov    DWORD PTR [rsp+0x28],edi
3a7880 mov    r9d,r12d
3a7883 movss  DWORD PTR [rsp+0x20],xmm7
3a7889 mov    r8,rbx
3a788c mov    rcx,r15
3a788f call   0x3a1244
3a7894 movss  xmm3,DWORD PTR [rsp+0x44]
3a789a addss  xmm6,xmm12
3a789f comiss xmm8,xmm6
3a78a3 ja     0x3a77dc
3a78a9 movss  xmm7,DWORD PTR [rbp+0x5f]
3a78ae movss  xmm14,DWORD PTR [rsp+0x30]
3a78b5 inc    r14d
3a78b8 comiss xmm11,xmm7
3a78bc ja     0x3a776d
3a78c2 jmp    0x3a78e2
3a78c4 movss  xmm0,DWORD PTR [rbp+0x77]
3a78c9 lea    r8,[rsp+0x38]
3a78ce mov    DWORD PTR [rsp+0x28],esi
3a78d2 lea    rdx,[rsp+0x40]
3a78d7 movss  DWORD PTR [rsp+0x20],xmm0
3a78dd call   0x3a1244
3a78e2 movaps xmm15,XMMWORD PTR [rsp+0x60]
3a78e8 lea    r11,[rsp+0xf0]
3a78ef 
3a78f0 mov    rbx,QWORD PTR [r11+0x40]
3a78f4 movaps xmm6,XMMWORD PTR [r11-0x10]
3a78f9 movaps xmm7,XMMWORD PTR [r11-0x20]
3a78fe movaps xmm8,XMMWORD PTR [r11-0x30]
3a7903 movaps xmm9,XMMWORD PTR [r11-0x40]
3a7908 movaps xmm11,XMMWORD PTR [r11-0x50]
3a790d movaps xmm12,XMMWORD PTR [r11-0x60]
3a7912 movaps xmm13,XMMWORD PTR [r11-0x70]
3a7917 movaps xmm14,XMMWORD PTR [r11-0x80]
3a791c mov    rsp,r11
3a791f pop    r15
3a7921 pop    r14
3a7923 pop    r13
3a7925 pop    r12
3a7927 pop    rdi
3a7928 pop    rsi
3a7929 pop    rbp
3a792a ret

; closure independent pdata/next-pdata extent 376384..3763a4 unwind3d2038
376384 rex push rbx
376386 sub    rsp,0x20
37638a xor    eax,eax
37638c mov    rbx,rcx
37638f mov    QWORD PTR [rcx],rax
376392 mov    QWORD PTR [rcx+0x8],rax
376396 call   0x378220
37639b mov    rax,rbx
37639e add    rsp,0x20
3763a2 pop    rbx
3763a3 ret

; closure independent pdata/next-pdata extent 376364..376384 unwind3d2038
376364 rex push rbx
376366 sub    rsp,0x20
37636a xor    eax,eax
37636c mov    rbx,rcx
37636f mov    QWORD PTR [rcx],rax
376372 mov    QWORD PTR [rcx+0x8],rax
376376 call   0x3781dc
37637b mov    rax,rbx
37637e add    rsp,0x20
376382 pop    rbx
376383 ret

; closure independent pdata/next-pdata extent 398b84..398bec unwind3d2448
398b84 mov    QWORD PTR [rsp+0x8],rbx
398b89 mov    QWORD PTR [rsp+0x10],rsi
398b8e push   rdi
398b8f sub    rsp,0x40
398b93 mov    rdi,QWORD PTR [rip+0x6cf8e]        # 0x405b28
398b9a mov    rsi,rdx
398b9d movsxd rbx,ecx
398ba0 lea    rcx,[rsp+0x20]
398ba5 call   0x38a550
398baa mov    DWORD PTR [rsp+0x20],ebx
398bae lea    rcx,[rdi+0x4850]
398bb5 add    rbx,rbx
398bb8 lea    rdx,[rsp+0x20]
398bbd movups xmm0,XMMWORD PTR [rdi+rbx*8+0x38b8]
398bc4 
398bc5 movdqu XMMWORD PTR [rsp+0x24],xmm0
398bcb call   0x39ef90
398bd0 movups xmm0,XMMWORD PTR [rsi]
398bd3 mov    rsi,QWORD PTR [rsp+0x58]
398bd8 movdqu XMMWORD PTR [rdi+rbx*8+0x38b8],xmm0
398bdf 
398be1 mov    rbx,QWORD PTR [rsp+0x50]
398be6 add    rsp,0x40
398bea pop    rdi
398beb ret

; closure independent pdata/next-pdata extent 399994..399a64 unwind3d4910
399994 mov    QWORD PTR [rsp+0x10],rbx
399999 mov    QWORD PTR [rsp+0x18],rsi
39999e push   rdi
39999f sub    rsp,0x60
3999a3 mov    QWORD PTR [rsp+0x50],rcx
3999a8 mov    rdi,r8
3999ab mov    rsi,rdx
3999ae test   r9b,r9b
3999b1 je     0x3999c3
3999b3 mov    rdx,r8
3999b6 mov    rcx,rsi
3999b9 call   0x391c50
3999be mov    rdi,rax
3999c1 jmp    0x3999d4
3999c3 test   r8,r8
3999c6 jne    0x3999d4
3999c8 mov    rcx,rsi
3999cb call   0x3ca904
3999d0 lea    rdi,[rax+rsi*1]
3999d4 cmp    rsi,rdi
3999d7 je     0x399a52
3999d9 movss  xmm1,DWORD PTR [rip+0xffffffffffef3873]        # 0x28d254
3999e0 
3999e1 mov    ecx,0x1
3999e6 mov    rbx,QWORD PTR [rip+0x6c13b]        # 0x405b28
3999ed call   0x392298
3999f2 mov    rcx,QWORD PTR [rbx+0x3f08]
3999f9 lea    r9,[rsp+0x50]
3999fe movss  xmm2,DWORD PTR [rbx+0x3c30]
399a05 
399a06 xorps  xmm0,xmm0
399a09 mov    rdx,QWORD PTR [rbx+0x3c28]
399a10 mov    QWORD PTR [rsp+0x40],0x0
399a17 
399a19 mov    rcx,QWORD PTR [rcx+0x298]
399a20 movss  DWORD PTR [rsp+0x38],xmm0
399a26 mov    QWORD PTR [rsp+0x30],rdi
399a2b mov    QWORD PTR [rsp+0x28],rsi
399a30 mov    DWORD PTR [rsp+0x20],eax
399a34 call   0x3a31f8
399a39 cmp    BYTE PTR [rbx+0x5c90],0x0
399a40 je     0x399a52
399a42 mov    r8,rdi
399a45 lea    rcx,[rsp+0x50]
399a4a mov    rdx,rsi
399a4d call   0x394e5c
399a52 lea    r11,[rsp+0x60]
399a57 mov    rbx,QWORD PTR [r11+0x18]
399a5b mov    rsi,QWORD PTR [r11+0x20]
399a5f mov    rsp,r11
399a62 pop    rdi
399a63 ret

; closure independent pdata/next-pdata extent 392f88..392ffd unwind3d2064
392f88 sub    rsp,0x28
392f8c mov    eax,edx
392f8e xorps  xmm2,xmm2
392f91 shr    eax,0x18
392f94 mov    r9d,edx
392f97 mov    r10d,ecx
392f9a cvtsi2ss xmm2,rax
392f9f mov    eax,edx
392fa1 shr    eax,0x10
392fa4 movzx  edx,al
392fa7 mov    eax,ecx
392fa9 shr    eax,0x10
392fac movzx  ecx,al
392faf divss  xmm2,DWORD PTR [rip+0xffffffffffefa72d]        # 0x28d6e4
392fb6 
392fb7 call   0x38a3d4
392fbc mov    r8d,eax
392fbf mov    eax,r9d
392fc2 shr    eax,0x8
392fc5 or     r8d,0xffffff00
392fcc movzx  edx,al
392fcf mov    eax,r10d
392fd2 shr    eax,0x8
392fd5 movzx  ecx,al
392fd8 shl    r8d,0x8
392fdc call   0x38a3d4
392fe1 or     r8d,eax
392fe4 movzx  edx,r9b
392fe8 movzx  ecx,r10b
392fec shl    r8d,0x8
392ff0 call   0x38a3d4
392ff5 or     eax,r8d
392ff8 add    rsp,0x28
392ffc ret

; closure independent pdata/next-pdata extent 3922dc..39233c unwind0
3922dc mov    rax,QWORD PTR [rip+0x73845]        # 0x405b28
3922e3 movss  xmm1,DWORD PTR [rax+0x37d0]
3922ea 
3922eb mov    eax,ecx
3922ed comiss xmm1,DWORD PTR [rip+0xffffffffffefaf60]        # 0x28d254
3922f4 jae    0x392315
3922f6 shr    eax,0x18
3922f9 xorps  xmm0,xmm0
3922fc and    ecx,0xffffff
392302 cvtsi2ss xmm0,rax
392307 mulss  xmm0,xmm1
39230b cvttss2si rax,xmm0
392310 shl    eax,0x18
392313 or     eax,ecx
392315 ret
392316 int3
392317 int3
392318 test   rcx,rcx
39231b je     0x392337
39231d mov    rax,rcx
392320 mov    rcx,QWORD PTR [rcx+0x378]
392327 test   dl,dl
392329 je     0x392332
39232b mov    rcx,QWORD PTR [rcx+0x380]
392332 cmp    rax,rcx
392335 jne    0x39231d
392337 mov    rax,rcx
39233a ret
39233b int3

; closure independent pdata/next-pdata extent 394e5c..395020 unwind3d4830
394e5c mov    QWORD PTR [rsp+0x20],rbx
394e61 push   rbp
394e62 push   rsi
394e63 push   rdi
394e64 push   r12
394e66 push   r13
394e68 push   r14
394e6a push   r15
394e6c sub    rsp,0x30
394e70 mov    r14,r8
394e73 mov    r15,rdx
394e76 mov    r13,rcx
394e79 mov    rsi,QWORD PTR [rip+0x70ca8]        # 0x405b28
394e80 mov    rax,QWORD PTR [rsi+0x5cb8]
394e87 mov    rbx,QWORD PTR [rsi+0x5cb0]
394e8e mov    r12,QWORD PTR [rsi+0x3f08]
394e95 mov    QWORD PTR [rsp+0x78],rax
394e9a mov    QWORD PTR [rsi+0x5cb8],0x0
394ea1 
394ea5 mov    QWORD PTR [rsi+0x5cb0],0x0
394eac 
394eb0 test   r14,r14
394eb3 jne    0x394ec2
394eb5 xor    edx,edx
394eb7 mov    rcx,r15
394eba call   0x391c50
394ebf mov    r14,rax
394ec2 lea    rcx,[rsi+0x5cc0]
394ec9 test   r13,r13
394ecc je     0x394f15
394ece movss  xmm1,DWORD PTR [rcx]
394ed2 addss  xmm1,DWORD PTR [rsi+0x3810]
394ed9 
394eda movss  xmm0,DWORD PTR [r13+0x4]
394ee0 addss  xmm1,DWORD PTR [rip+0xffffffffffef836c]        # 0x28d254
394ee7 
394ee8 comiss xmm0,xmm1
394eeb jbe    0x394ef1
394eed mov    dl,0x1
394eef jmp    0x394ef8
394ef1 test   r13,r13
394ef4 je     0x394f15
394ef6 xor    dl,dl
394ef8 mov    eax,DWORD PTR [r13+0x4]
394efc mov    DWORD PTR [rcx],eax
394efe test   dl,dl
394f00 je     0x394f15
394f02 lea    rcx,[rip+0xfffffffffff15223]        # 0x2aa12c
394f09 call   0x395038
394f0e mov    BYTE PTR [rsi+0x5cc4],0x1
394f15 test   rbx,rbx
394f18 je     0x394f31
394f1a mov    rcx,rbx
394f1d call   0x3ca904
394f22 mov    rdx,rbx
394f25 mov    rcx,r13
394f28 lea    r8,[rax+rbx*1]
394f2c call   0x394e5c
394f31 mov    eax,DWORD PTR [r12+0x188]
394f38 
394f39 mov    ecx,DWORD PTR [rsi+0x5cc8]
394f3f cmp    ecx,eax
394f41 jle    0x394f4b
394f43 mov    DWORD PTR [rsi+0x5cc8],eax
394f49 jmp    0x394f4d
394f4b mov    eax,ecx
394f4d mov    r12d,DWORD PTR [r12+0x188]
394f54 
394f55 sub    r12d,eax
394f58 shl    r12d,0x2
394f5c mov    rdx,r14
394f5f mov    rcx,r15
394f62 call   0x393520
394f67 mov    rbp,rax
394f6a cmp    r15,rax
394f6d jne    0x394f74
394f6f cmp    rax,r14
394f72 je     0x394fea
394f74 cmp    BYTE PTR [rsi+0x5cc4],0x0
394f7b lea    rdx,[rsp+0x80]
394f82 
394f83 mov    edi,0x1
394f88 lea    rcx,[rsp+0x70]
394f8d cmovne edi,r12d
394f91 mov    ebx,ebp
394f93 sub    ebx,r15d
394f96 call   0x38c774
394f9b mov    rcx,rax
394f9e call   0x39e8fc
394fa3 mov    rcx,rax
394fa6 mov    QWORD PTR [rsp+0x20],r15
394fab mov    r9d,ebx
394fae lea    r8,[rip+0xffffffffffef8373]        # 0x28d328
394fb5 mov    edx,edi
394fb7 call   0x395038
394fbc mov    BYTE PTR [rsi+0x5cc4],0x0
394fc3 cmp    BYTE PTR [rbp+0x0],0xa
394fc7 jne    0x394fdc
394fc9 lea    rcx,[rip+0xfffffffffff1515c]        # 0x2aa12c
394fd0 call   0x395038
394fd5 mov    BYTE PTR [rsi+0x5cc4],0x1
394fdc cmp    rbp,r14
394fdf je     0x394fea
394fe1 lea    r15,[rbp+0x1]
394fe5 jmp    0x394f5c
394fea mov    rdi,QWORD PTR [rsp+0x78]
394fef test   rdi,rdi
394ff2 je     0x395008
394ff4 mov    rcx,rdi
394ff7 call   0x3ca904
394ffc mov    r15,rdi
394fff lea    r14,[rax+rdi*1]
395003 jmp    0x394e79
395008 mov    rbx,QWORD PTR [rsp+0x88]
39500f 
395010 add    rsp,0x30
395014 pop    r15
395016 pop    r14
395018 pop    r13
39501a pop    r12
39501c pop    rdi
39501d pop    rsi
39501e pop    rbp
39501f ret

; closure independent pdata/next-pdata extent 393520..393549 unwind3d2038
393520 rex push rbx
393522 sub    rsp,0x20
393526 mov    r8,rdx
393529 mov    rbx,rdx
39352c sub    r8,rcx
39352f mov    edx,0xa
393534 call   0x3c8cf0
393539 test   rax,rax
39353c cmovne rbx,rax
393540 mov    rax,rbx
393543 add    rsp,0x20
393547 pop    rbx
393548 ret

; closure independent pdata/next-pdata extent 38c774..38ccd0 unwind0
38c774 movabs rax,0x3e4e16151f4a1212
38c77b 
38c77e mov    QWORD PTR [rdx],rax
38c781 mov    rax,rdx
38c784 ret
38c785 int3
38c786 int3
38c787 int3
38c788 movzx  eax,WORD PTR [rip+0xfffffffffff1d2f9]        # 0x2a9a88
38c78f movsd  xmm0,QWORD PTR [rip+0xfffffffffff1d2e9]        # 0x2a9a80
38c796 
38c797 movsd  QWORD PTR [rdx],xmm0
38c79b mov    WORD PTR [rdx+0x8],ax
38c79f mov    rax,rdx
38c7a2 ret
38c7a3 int3
38c7a4 mov    eax,DWORD PTR [rip+0xfffffffffff1d2ed]        # 0x2a9a97
38c7aa movsd  xmm0,QWORD PTR [rip+0xfffffffffff1d2de]        # 0x2a9a90
38c7b1 
38c7b2 movsd  QWORD PTR [rdx],xmm0
38c7b6 mov    DWORD PTR [rdx+0x7],eax
38c7b9 mov    rax,rdx
38c7bc ret
38c7bd int3
38c7be int3
38c7bf int3
38c7c0 movabs rax,0x3e4a534948784862
38c7c7 
38c7ca mov    QWORD PTR [rdx],rax
38c7cd mov    rax,rdx
38c7d0 ret
38c7d1 int3
38c7d2 int3
38c7d3 int3
38c7d4 movzx  eax,WORD PTR [rip+0xfffffffffff1d2cd]        # 0x2a9aa8
38c7db movsd  xmm0,QWORD PTR [rip+0xfffffffffff1d2bd]        # 0x2a9aa0
38c7e2 
38c7e3 movsd  QWORD PTR [rdx],xmm0
38c7e7 mov    WORD PTR [rdx+0x8],ax
38c7eb mov    rax,rdx
38c7ee ret
38c7ef int3
38c7f0 mov    eax,DWORD PTR [rip+0xfffffffffff1d2b6]        # 0x2a9aac
38c7f6 mov    DWORD PTR [rdx],eax
38c7f8 movzx  eax,WORD PTR [rip+0xfffffffffff1d2b1]        # 0x2a9ab0
38c7ff mov    WORD PTR [rdx+0x4],ax
38c803 mov    al,BYTE PTR [rip+0xfffffffffff1d2a9]        # 0x2a9ab2
38c809 mov    BYTE PTR [rdx+0x6],al
38c80c mov    rax,rdx
38c80f ret
38c810 mov    al,BYTE PTR [rip+0xfffffffffff1d2aa]        # 0x2a9ac0
38c816 movsd  xmm0,QWORD PTR [rip+0xfffffffffff1d29a]        # 0x2a9ab8
38c81d 
38c81e movsd  QWORD PTR [rdx],xmm0
38c822 mov    BYTE PTR [rdx+0x8],al
38c825 mov    rax,rdx
38c828 ret
38c829 int3
38c82a int3
38c82b int3
38c82c mov    eax,DWORD PTR [rip+0xfffffffffff1d292]        # 0x2a9ac4
38c832 mov    DWORD PTR [rdx],eax
38c834 mov    al,BYTE PTR [rip+0xfffffffffff1d28e]        # 0x2a9ac8
38c83a mov    BYTE PTR [rdx+0x4],al
38c83d mov    rax,rdx
38c840 ret
38c841 int3
38c842 int3
38c843 int3
38c844 mov    eax,DWORD PTR [rip+0xfffffffffff1d282]        # 0x2a9acc
38c84a mov    DWORD PTR [rdx],eax
38c84c movzx  eax,WORD PTR [rip+0xfffffffffff1d27d]        # 0x2a9ad0
38c853 mov    WORD PTR [rdx+0x4],ax
38c857 mov    al,BYTE PTR [rip+0xfffffffffff1d275]        # 0x2a9ad2
38c85d mov    BYTE PTR [rdx+0x6],al
38c860 mov    rax,rdx
38c863 ret
38c864 mov    eax,DWORD PTR [rip+0xfffffffffff1d26a]        # 0x2a9ad4
38c86a mov    DWORD PTR [rdx],eax
38c86c movzx  eax,WORD PTR [rip+0xfffffffffff1d265]        # 0x2a9ad8
38c873 mov    WORD PTR [rdx+0x4],ax
38c877 mov    al,BYTE PTR [rip+0xfffffffffff1d25d]        # 0x2a9ada
38c87d mov    BYTE PTR [rdx+0x6],al
38c880 mov    rax,rdx
38c883 ret
38c884 movabs rax,0x3e65040b1f164b12
38c88b 
38c88e mov    QWORD PTR [rdx],rax
38c891 mov    rax,rdx
38c894 ret
38c895 int3
38c896 int3
38c897 int3
38c898 mov    eax,DWORD PTR [rip+0xfffffffffff1d832]        # 0x2aa0d0
38c89e movsd  xmm0,QWORD PTR [rip+0xfffffffffff1d822]        # 0x2aa0c8
38c8a5 
38c8a6 movsd  QWORD PTR [rdx],xmm0
38c8aa mov    DWORD PTR [rdx+0x8],eax
38c8ad mov    al,BYTE PTR [rip+0xfffffffffff1d821]        # 0x2aa0d4
38c8b3 mov    BYTE PTR [rdx+0xc],al
38c8b6 mov    rax,rdx
38c8b9 ret
38c8ba int3
38c8bb int3
38c8bc mov    eax,DWORD PTR [rip+0xfffffffffff1d7ca]        # 0x2aa08c
38c8c2 mov    DWORD PTR [rdx],eax
38c8c4 movzx  eax,WORD PTR [rip+0xfffffffffff1d7c5]        # 0x2aa090
38c8cb mov    WORD PTR [rdx+0x4],ax
38c8cf mov    al,BYTE PTR [rip+0xfffffffffff1d7bd]        # 0x2aa092
38c8d5 mov    BYTE PTR [rdx+0x6],al
38c8d8 mov    rax,rdx
38c8db ret
38c8dc mov    eax,DWORD PTR [rip+0xfffffffffff1d846]        # 0x2aa128
38c8e2 movups xmm0,XMMWORD PTR [rip+0xfffffffffff1d82f]        # 0x2aa118
38c8e9 movups XMMWORD PTR [rdx],xmm0
38c8ec mov    DWORD PTR [rdx+0x10],eax
38c8ef mov    rax,rdx
38c8f2 ret
38c8f3 int3
38c8f4 mov    eax,DWORD PTR [rip+0xfffffffffff1d7b6]        # 0x2aa0b0
38c8fa movsd  xmm0,QWORD PTR [rip+0xfffffffffff1d7a6]        # 0x2aa0a8
38c901 
38c902 movsd  QWORD PTR [rdx],xmm0
38c906 mov    DWORD PTR [rdx+0x8],eax
38c909 movzx  eax,WORD PTR [rip+0xfffffffffff1d7a4]        # 0x2aa0b4
38c910 mov    WORD PTR [rdx+0xc],ax
38c914 mov    al,BYTE PTR [rip+0xfffffffffff1d79c]        # 0x2aa0b6
38c91a mov    BYTE PTR [rdx+0xe],al
38c91d mov    rax,rdx
38c920 ret
38c921 int3
38c922 int3
38c923 int3
38c924 movzx  eax,WORD PTR [rip+0xfffffffffff1d1bd]        # 0x2a9ae8
38c92b movsd  xmm0,QWORD PTR [rip+0xfffffffffff1d1ad]        # 0x2a9ae0
38c932 
38c933 movsd  QWORD PTR [rdx],xmm0
38c937 mov    WORD PTR [rdx+0x8],ax
38c93b mov    rax,rdx
38c93e ret
38c93f int3
38c940 mov    eax,DWORD PTR [rip+0xfffffffffff1d1a6]        # 0x2a9aec
38c946 mov    DWORD PTR [rdx],eax
38c948 movzx  eax,WORD PTR [rip+0xfffffffffff1d1a1]        # 0x2a9af0
38c94f mov    WORD PTR [rdx+0x4],ax
38c953 mov    rax,rdx
38c956 ret
38c957 int3
38c958 mov    eax,DWORD PTR [rip+0xfffffffffff1d196]        # 0x2a9af4
38c95e mov    DWORD PTR [rdx],eax
38c960 movzx  eax,WORD PTR [rip+0xfffffffffff1d191]        # 0x2a9af8
38c967 mov    WORD PTR [rdx+0x4],ax
38c96b mov    rax,rdx
38c96e ret
38c96f int3
38c970 mov    eax,DWORD PTR [rip+0xfffffffffff1d186]        # 0x2a9afc
38c976 mov    DWORD PTR [rdx],eax
38c978 movzx  eax,WORD PTR [rip+0xfffffffffff1d181]        # 0x2a9b00
38c97f mov    WORD PTR [rdx+0x4],ax
38c983 mov    al,BYTE PTR [rip+0xfffffffffff1d179]        # 0x2a9b02
38c989 mov    BYTE PTR [rdx+0x6],al
38c98c mov    rax,rdx
38c98f ret
38c990 mov    al,BYTE PTR [rip+0xfffffffffff1d17a]        # 0x2a9b10
38c996 movsd  xmm0,QWORD PTR [rip+0xfffffffffff1d16a]        # 0x2a9b08
38c99d 
38c99e movsd  QWORD PTR [rdx],xmm0
38c9a2 mov    BYTE PTR [rdx+0x8],al
38c9a5 mov    rax,rdx
38c9a8 ret
38c9a9 int3
38c9aa int3
38c9ab int3
38c9ac movzx  eax,WORD PTR [rip+0xfffffffffff1d16d]        # 0x2a9b20
38c9b3 movsd  xmm0,QWORD PTR [rip+0xfffffffffff1d15d]        # 0x2a9b18
38c9ba 
38c9bb movsd  QWORD PTR [rdx],xmm0
38c9bf mov    WORD PTR [rdx+0x8],ax
38c9c3 mov    rax,rdx
38c9c6 ret
38c9c7 int3
38c9c8 movabs rax,0x3e49507a4e5f5d7b
38c9cf 
38c9d2 mov    QWORD PTR [rdx],rax
38c9d5 mov    rax,rdx
38c9d8 ret
38c9d9 int3
38c9da int3
38c9db int3
38c9dc movzx  eax,WORD PTR [rip+0xfffffffffff1d14d]        # 0x2a9b30
38c9e3 movsd  xmm0,QWORD PTR [rip+0xfffffffffff1d13d]        # 0x2a9b28
38c9ea 
38c9eb movsd  QWORD PTR [rdx],xmm0
38c9ef mov    WORD PTR [rdx+0x8],ax
38c9f3 mov    rax,rdx
38c9f6 ret
38c9f7 int3
38c9f8 movzx  eax,WORD PTR [rip+0xfffffffffff1d141]        # 0x2a9b40
38c9ff movsd  xmm0,QWORD PTR [rip+0xfffffffffff1d131]        # 0x2a9b38
38ca06 
38ca07 movsd  QWORD PTR [rdx],xmm0
38ca0b mov    WORD PTR [rdx+0x8],ax
38ca0f mov    rax,rdx
38ca12 ret
38ca13 int3
38ca14 mov    eax,DWORD PTR [rip+0xfffffffffff1d135]        # 0x2a9b4f
38ca1a movsd  xmm0,QWORD PTR [rip+0xfffffffffff1d126]        # 0x2a9b48
38ca21 
38ca22 movsd  QWORD PTR [rdx],xmm0
38ca26 mov    DWORD PTR [rdx+0x7],eax
38ca29 mov    rax,rdx
38ca2c ret
38ca2d int3
38ca2e int3
38ca2f int3
38ca30 mov    al,BYTE PTR [rip+0xfffffffffff1d12a]        # 0x2a9b60
38ca36 movsd  xmm0,QWORD PTR [rip+0xfffffffffff1d11a]        # 0x2a9b58
38ca3d 
38ca3e movsd  QWORD PTR [rdx],xmm0
38ca42 mov    BYTE PTR [rdx+0x8],al
38ca45 mov    rax,rdx
38ca48 ret
38ca49 int3
38ca4a int3
38ca4b int3
38ca4c mov    eax,DWORD PTR [rip+0xfffffffffff1d11d]        # 0x2a9b6f
38ca52 movsd  xmm0,QWORD PTR [rip+0xfffffffffff1d10e]        # 0x2a9b68
38ca59 
38ca5a movsd  QWORD PTR [rdx],xmm0
38ca5e mov    DWORD PTR [rdx+0x7],eax
38ca61 mov    rax,rdx
38ca64 ret
38ca65 int3
38ca66 int3
38ca67 int3
38ca68 mov    eax,DWORD PTR [rip+0xfffffffffff1d106]        # 0x2a9b74
38ca6e mov    DWORD PTR [rdx],eax
38ca70 mov    al,BYTE PTR [rip+0xfffffffffff1d102]        # 0x2a9b78
38ca76 mov    BYTE PTR [rdx+0x4],al
38ca79 mov    rax,rdx
38ca7c ret
38ca7d int3
38ca7e int3
38ca7f int3
38ca80 movzx  eax,WORD PTR [rip+0xfffffffffff1d0f5]        # 0x2a9b7c
38ca87 mov    WORD PTR [rdx],ax
38ca8a mov    al,BYTE PTR [rip+0xfffffffffff1d0ee]        # 0x2a9b7e
38ca90 mov    BYTE PTR [rdx+0x2],al
38ca93 mov    rax,rdx
38ca96 ret
38ca97 int3
38ca98 movzx  eax,WORD PTR [rip+0xfffffffffff1d0e1]        # 0x2a9b80
38ca9f mov    WORD PTR [rdx],ax
38caa2 mov    al,BYTE PTR [rip+0xfffffffffff1d0da]        # 0x2a9b82
38caa8 mov    BYTE PTR [rdx+0x2],al
38caab mov    rax,rdx
38caae ret
38caaf int3
38cab0 movzx  eax,WORD PTR [rip+0xfffffffffff1d0cd]        # 0x2a9b84
38cab7 mov    WORD PTR [rdx],ax
38caba mov    al,BYTE PTR [rip+0xfffffffffff1d0c6]        # 0x2a9b86
38cac0 mov    BYTE PTR [rdx+0x2],al
38cac3 mov    rax,rdx
38cac6 ret
38cac7 int3
38cac8 movzx  eax,WORD PTR [rip+0xfffffffffff1d0b9]        # 0x2a9b88
38cacf mov    WORD PTR [rdx],ax
38cad2 mov    al,BYTE PTR [rip+0xfffffffffff1d0b2]        # 0x2a9b8a
38cad8 mov    BYTE PTR [rdx+0x2],al
38cadb mov    rax,rdx
38cade ret
38cadf int3
38cae0 movzx  eax,WORD PTR [rip+0xfffffffffff1d0a5]        # 0x2a9b8c
38cae7 mov    WORD PTR [rdx],ax
38caea mov    al,BYTE PTR [rip+0xfffffffffff1d09e]        # 0x2a9b8e
38caf0 mov    BYTE PTR [rdx+0x2],al
38caf3 mov    rax,rdx
38caf6 ret
38caf7 int3
38caf8 movzx  eax,WORD PTR [rip+0xfffffffffff1d091]        # 0x2a9b90
38caff mov    WORD PTR [rdx],ax
38cb02 mov    al,BYTE PTR [rip+0xfffffffffff1d08a]        # 0x2a9b92
38cb08 mov    BYTE PTR [rdx+0x2],al
38cb0b mov    rax,rdx
38cb0e ret
38cb0f int3
38cb10 movzx  eax,WORD PTR [rip+0xfffffffffff1d07d]        # 0x2a9b94
38cb17 mov    WORD PTR [rdx],ax
38cb1a mov    al,BYTE PTR [rip+0xfffffffffff1d076]        # 0x2a9b96
38cb20 mov    BYTE PTR [rdx+0x2],al
38cb23 mov    rax,rdx
38cb26 ret
38cb27 int3
38cb28 movzx  eax,WORD PTR [rip+0xfffffffffff1d069]        # 0x2a9b98
38cb2f mov    WORD PTR [rdx],ax
38cb32 mov    al,BYTE PTR [rip+0xfffffffffff1d062]        # 0x2a9b9a
38cb38 mov    BYTE PTR [rdx+0x2],al
38cb3b mov    rax,rdx
38cb3e ret
38cb3f int3
38cb40 movzx  eax,WORD PTR [rip+0xfffffffffff1d055]        # 0x2a9b9c
38cb47 mov    WORD PTR [rdx],ax
38cb4a mov    al,BYTE PTR [rip+0xfffffffffff1d04e]        # 0x2a9b9e
38cb50 mov    BYTE PTR [rdx+0x2],al
38cb53 mov    rax,rdx
38cb56 ret
38cb57 int3
38cb58 mov    eax,DWORD PTR [rip+0xfffffffffff1d049]        # 0x2a9ba7
38cb5e movsd  xmm0,QWORD PTR [rip+0xfffffffffff1d03a]        # 0x2a9ba0
38cb65 
38cb66 movsd  QWORD PTR [rdx],xmm0
38cb6a mov    DWORD PTR [rdx+0x7],eax
38cb6d mov    rax,rdx
38cb70 ret
38cb71 int3
38cb72 int3
38cb73 int3
38cb74 mov    eax,DWORD PTR [rip+0xfffffffffff1d032]        # 0x2a9bac
38cb7a mov    DWORD PTR [rdx],eax
38cb7c movzx  eax,WORD PTR [rip+0xfffffffffff1d02d]        # 0x2a9bb0
38cb83 mov    WORD PTR [rdx+0x4],ax
38cb87 mov    rax,rdx
38cb8a ret
38cb8b int3
38cb8c mov    eax,DWORD PTR [rip+0xfffffffffff1d022]        # 0x2a9bb4
38cb92 mov    DWORD PTR [rdx],eax
38cb94 movzx  eax,WORD PTR [rip+0xfffffffffff1d01d]        # 0x2a9bb8
38cb9b mov    WORD PTR [rdx+0x4],ax
38cb9f mov    rax,rdx
38cba2 ret
38cba3 int3
38cba4 mov    eax,DWORD PTR [rip+0xfffffffffff1d012]        # 0x2a9bbc
38cbaa mov    DWORD PTR [rdx],eax
38cbac movzx  eax,WORD PTR [rip+0xfffffffffff1d00d]        # 0x2a9bc0
38cbb3 mov    WORD PTR [rdx+0x4],ax
38cbb7 mov    al,BYTE PTR [rip+0xfffffffffff1d005]        # 0x2a9bc2
38cbbd mov    BYTE PTR [rdx+0x6],al
38cbc0 mov    rax,rdx
38cbc3 ret
38cbc4 mov    eax,DWORD PTR [rip+0xfffffffffff1cffa]        # 0x2a9bc4
38cbca mov    DWORD PTR [rdx],eax
38cbcc movzx  eax,WORD PTR [rip+0xfffffffffff1cff5]        # 0x2a9bc8
38cbd3 mov    WORD PTR [rdx+0x4],ax
38cbd7 mov    rax,rdx
38cbda ret
38cbdb int3
38cbdc movzx  eax,WORD PTR [rip+0xfffffffffff1cff5]        # 0x2a9bd8
38cbe3 movsd  xmm0,QWORD PTR [rip+0xfffffffffff1cfe5]        # 0x2a9bd0
38cbea 
38cbeb movsd  QWORD PTR [rdx],xmm0
38cbef mov    WORD PTR [rdx+0x8],ax
38cbf3 mov    rax,rdx
38cbf6 ret
38cbf7 int3
38cbf8 mov    eax,DWORD PTR [rip+0xfffffffffff1cfde]        # 0x2a9bdc
38cbfe mov    DWORD PTR [rdx],eax
38cc00 movzx  eax,WORD PTR [rip+0xfffffffffff1cfd9]        # 0x2a9be0
38cc07 mov    WORD PTR [rdx+0x4],ax
38cc0b mov    rax,rdx
38cc0e ret
38cc0f int3
38cc10 mov    eax,DWORD PTR [rip+0xfffffffffff1cfda]        # 0x2a9bf0
38cc16 movsd  xmm0,QWORD PTR [rip+0xfffffffffff1cfca]        # 0x2a9be8
38cc1d 
38cc1e movsd  QWORD PTR [rdx],xmm0
38cc22 mov    DWORD PTR [rdx+0x8],eax
38cc25 mov    rax,rdx
38cc28 ret
38cc29 int3
38cc2a int3
38cc2b int3
38cc2c movzx  eax,WORD PTR [rip+0xfffffffffff1cfcd]        # 0x2a9c00
38cc33 movsd  xmm0,QWORD PTR [rip+0xfffffffffff1cfbd]        # 0x2a9bf8
38cc3a 
38cc3b movsd  QWORD PTR [rdx],xmm0
38cc3f mov    WORD PTR [rdx+0x8],ax
38cc43 mov    rax,rdx
38cc46 ret
38cc47 int3
38cc48 movss  xmm0,DWORD PTR [rcx]
38cc4c mov    rax,rcx
38cc4f addss  xmm0,DWORD PTR [rdx]
38cc53 movss  xmm1,DWORD PTR [rcx+0x4]
38cc58 movss  DWORD PTR [rcx],xmm0
38cc5c addss  xmm1,DWORD PTR [rdx+0x4]
38cc61 movss  DWORD PTR [rcx+0x4],xmm1
38cc66 ret
38cc67 int3
38cc68 movss  xmm0,DWORD PTR [rcx]
38cc6c mov    rax,rcx
38cc6f subss  xmm0,DWORD PTR [rdx]
38cc73 movss  xmm1,DWORD PTR [rcx+0x4]
38cc78 movss  DWORD PTR [rcx],xmm0
38cc7c subss  xmm1,DWORD PTR [rdx+0x4]
38cc81 movss  DWORD PTR [rcx+0x4],xmm1
38cc86 ret
38cc87 int3
38cc88 movss  xmm1,DWORD PTR [rdx]
38cc8c movss  xmm0,DWORD PTR [rcx]
38cc90 comiss xmm0,xmm1
38cc93 jbe    0x38cc99
38cc95 movss  DWORD PTR [rcx],xmm1
38cc99 movss  xmm1,DWORD PTR [rdx+0x4]
38cc9e movss  xmm0,DWORD PTR [rcx+0x4]
38cca3 comiss xmm0,xmm1
38cca6 jbe    0x38ccad
38cca8 movss  DWORD PTR [rcx+0x4],xmm1
38ccad movss  xmm0,DWORD PTR [rdx+0x8]
38ccb2 comiss xmm0,DWORD PTR [rcx+0x8]
38ccb6 jbe    0x38ccbd
38ccb8 movss  DWORD PTR [rcx+0x8],xmm0
38ccbd movss  xmm0,DWORD PTR [rdx+0xc]
38ccc2 comiss xmm0,DWORD PTR [rcx+0xc]
38ccc6 jbe    0x38cccd
38ccc8 movss  DWORD PTR [rcx+0xc],xmm0
38cccd ret
38ccce int3
38cccf int3

; closure independent pdata/next-pdata extent 39e8fc..39e922 unwind3d2038
39e8fc rex push rbx
39e8fe sub    rsp,0x20
39e902 mov    rbx,rcx
39e905 call   0x2dd2e4
39e90a test   al,al
39e90c je     0x39e919
39e90e mov    rdx,rbx
39e911 mov    rcx,rbx
39e914 call   0x39e4dc
39e919 mov    rax,rbx
39e91c add    rsp,0x20
39e920 pop    rbx
39e921 ret

; closure independent pdata/next-pdata extent 395038..395073 unwind3d2274
395038 mov    r11,rsp
39503b mov    QWORD PTR [r11+0x8],rcx
39503f mov    QWORD PTR [r11+0x10],rdx
395043 mov    QWORD PTR [r11+0x18],r8
395047 mov    QWORD PTR [r11+0x20],r9
39504b sub    rsp,0x28
39504f mov    rax,QWORD PTR [rip+0x70ad2]        # 0x405b28
395056 cmp    BYTE PTR [rax+0x5c90],0x0
39505d je     0x39506e
39505f mov    rdx,rcx
395062 lea    r8,[r11+0x10]
395066 mov    rcx,rax
395069 call   0x395074
39506e add    rsp,0x28
395072 ret

; closure independent pdata/next-pdata extent 395074..3950c1 unwind3d2054
395074 mov    QWORD PTR [rsp+0x8],rbx
395079 mov    QWORD PTR [rsp+0x10],rsi
39507e push   rdi
39507f sub    rsp,0x20
395083 cmp    QWORD PTR [rcx+0x5c98],0x0
39508a 
39508b lea    rbx,[rcx+0x5ca0]
395092 mov    rdi,r8
395095 mov    rsi,rdx
395098 je     0x3950a4
39509a xor    edx,edx
39509c mov    rcx,rbx
39509f call   0x37acd4
3950a4 mov    r8,rdi
3950a7 mov    rdx,rsi
3950aa mov    rcx,rbx
3950ad mov    rbx,QWORD PTR [rsp+0x30]
3950b2 mov    rsi,QWORD PTR [rsp+0x38]
3950b7 add    rsp,0x20
3950bb pop    rdi
3950bc jmp    0x39e280

; closure independent pdata/next-pdata extent 39e280..39e304 unwind3d2834
39e280 rex push rbx
39e282 push   rbp
39e283 push   rsi
39e284 push   rdi
39e285 push   r14
39e287 push   r15
39e289 sub    rsp,0x28
39e28d mov    r14,r8
39e290 mov    r9,r8
39e293 mov    r8,rdx
39e296 mov    r15,rdx
39e299 mov    rdi,rcx
39e29c xor    edx,edx
39e29e xor    ecx,ecx
39e2a0 call   0x393270
39e2a5 movsxd rbp,eax
39e2a8 test   eax,eax
39e2aa jle    0x39e2f7
39e2ac cmp    DWORD PTR [rdi],0x0
39e2af mov    esi,0x1
39e2b4 mov    edx,DWORD PTR [rdi+0x4]
39e2b7 cmovne esi,DWORD PTR [rdi]
39e2ba lea    ebx,[rsi+rbp*1]
39e2bd cmp    ebx,edx
39e2bf jl     0x39e2d0
39e2c1 add    edx,edx
39e2c3 mov    rcx,rdi
39e2c6 cmp    ebx,edx
39e2c8 cmovg  edx,ebx
39e2cb call   0x37a69c
39e2d0 mov    edx,ebx
39e2d2 mov    rcx,rdi
39e2d5 call   0x37acd4
39e2da lea    edx,[rsi-0x1]
39e2dd mov    rcx,rdi
39e2e0 call   0x38bb70
39e2e5 mov    rcx,rax
39e2e8 lea    rdx,[rbp+0x1]
39e2ec mov    r9,r14
39e2ef mov    r8,r15
39e2f2 call   0x393270
39e2f7 add    rsp,0x28
39e2fb pop    r15
39e2fd pop    r14
39e2ff pop    rdi
39e300 pop    rsi
39e301 pop    rbp
39e302 pop    rbx
39e303 ret
