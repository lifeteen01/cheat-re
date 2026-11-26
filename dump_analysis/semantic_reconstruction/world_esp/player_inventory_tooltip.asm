310d4c cmp    BYTE PTR [rip+0xd94c5],sil        # 0x3ea218 ; CONFIG Bools.DrawIngameRadarPlayers value(+0x48)
310d53 mov    al,BYTE PTR [rip+0xd937f]        # 0x3ea0d8 ; CONFIG Bools.DrawIngamemapScientist value(+0x48)
310d59 jne    0x310d63
310d5b test   al,al
310d5d je     0x311ce4
310d63 test   r15b,r15b
310d66 je     0x310d74
310d68 neg    al
310d6a sbb    al,al
310d6c test   al,0x1
310d6e je     0x311ce4
310d74 movaps xmm1,xmm9
310d78 lea    rcx,[rbp+0x12e8]
310d7f call   0x2d9540
310d84 movsd  xmm0,QWORD PTR [rbp-0x60]
310d89 lea    rdx,[rbp+0x970]
310d90 mov    eax,DWORD PTR [rbp-0x58]
310d93 lea    rcx,[rbp+0x1c0]
310d9a movsd  QWORD PTR [rbp+0x970],xmm0
310da2 mov    DWORD PTR [rbp+0x978],eax
310da8 call   0x314f08
310dad xorps  xmm2,xmm2
310db0 lea    rcx,[rbp+0xfe8]
310db7 xorps  xmm1,xmm1
310dba call   0x2cc340
310dbf mov    rdx,rax
310dc2 lea    rcx,[rbp+0x1c0]
310dc9 call   0x2ef6c4
310dce test   al,al
310dd0 je     0x311cd8
310dd6 movups xmm0,XMMWORD PTR [rsp+0x70]
310ddb lea    rdx,[rbp+0x180]
310de2 movaps xmm7,xmm9
310de6 lea    rcx,[rbp+0x10ec]
310ded addss  xmm7,DWORD PTR [rip+0xdcc83]        # 0x3eda78 ; CONFIG F.IngameCircleSize value(+0x48)
310df5 movdqa XMMWORD PTR [rbp+0x180],xmm0
310dfd call   0x31530c
310e02 mov    dil,BYTE PTR [rip+0xd95ef]        # 0x3ea3f8 ; CONFIG Bools.ShowIngameRadarDirection value(+0x48)
310e09 lea    rcx,[rbp-0x70]
310e0d movss  xmm6,DWORD PTR [rax+0x4]
310e12 call   0x2ef80c
310e17 movss  xmm2,DWORD PTR [rbp+0x1c4]
310e1f lea    rcx,[rbp+0xcf0]
310e26 movss  xmm1,DWORD PTR [rbp+0x1c0]
310e2e mov    ebx,eax
310e30 call   0x2cc340
310e35 movss  DWORD PTR [rsp+0x28],xmm6
310e3b mov    rdx,rax
310e3e mov    r9d,ebx
310e41 mov    BYTE PTR [rsp+0x20],dil
310e46 movaps xmm2,xmm7
310e49 mov    rcx,r13
310e4c call   0x35c578
310e51 cmp    BYTE PTR [rip+0xd95f0],sil        # 0x3ea448 ; CONFIG Bools.ShowIngameRadarText value(+0x48)
310e58 je     0x310ed4
310e5a movss  xmm2,DWORD PTR [rbp+0x1c4]
310e62 lea    rcx,[rbp+0xcf8]
310e69 movss  xmm1,DWORD PTR [rbp+0x1c0]
310e71 addss  xmm2,xmm7
310e75 movups xmm6,XMMWORD PTR [rbp-0x70]
310e79 addss  xmm2,DWORD PTR [rip+0xfffffffffff8230b]        # 0x29318c ; f32=6.325
310e81 call   0x2cc340
310e86 cvttss2si edx,xmm10
310e8b lea    rcx,[rbp+0xd8]
310e92 mov    rbx,rax
310e95 call   0x2d9510
310e9a mov    rdx,QWORD PTR [r13+0x10]
310e9e lea    rcx,[rbp+0x180]
310ea5 mov    DWORD PTR [rsp+0x28],0x3
310ead mov    r9,rbx
310eb0 mov    QWORD PTR [rsp+0x20],rcx
310eb5 mov    r8,rax
310eb8 mov    rcx,r13
310ebb movdqa XMMWORD PTR [rbp+0x180],xmm6
310ec3 call   0x36135c
310ec8 lea    rcx,[rbp+0xd8]
310ecf call   0x2cc4f4
310ed4 cmp    BYTE PTR [rbp-0x2c],sil
310ed8 jne    0x311ccb
310ede movss  xmm0,DWORD PTR [rbp+0x348]
310ee6 movss  xmm1,DWORD PTR [rbp+0x34c]
310eee subss  xmm1,DWORD PTR [rbp+0x1c4]
310ef6 subss  xmm0,DWORD PTR [rbp+0x1c0]
310efe mulss  xmm7,xmm7
310f02 mulss  xmm1,xmm1
310f06 mulss  xmm0,xmm0
310f0a addss  xmm1,xmm0
310f0e comiss xmm7,xmm1
310f11 jb     0x311ccb
310f17 mov    rcx,QWORD PTR [rsp+0x58]
310f1c call   0x369324
310f21 mov    rcx,rax
310f24 mov    rbx,rax
310f27 call   0x2caf08
310f2c test   al,al
310f2e je     0x311ccb
310f34 mov    rcx,rbx
310f37 call   0x373dc8
310f3c mov    rcx,rbx
310f3f mov    QWORD PTR [rbp+0x438],rax
310f46 mov    rdi,rax
310f49 call   0x373e20
310f4e mov    rcx,rdi
310f51 mov    QWORD PTR [rbp+0x500],rax
310f58 mov    rsi,rax
310f5b call   0x2caf08
310f60 test   al,al
310f62 je     0x310f70
310f64 mov    rcx,rdi
310f67 call   0x37224c
310f6c mov    ebx,eax
310f6e jmp    0x310f72
310f70 xor    ebx,ebx
310f72 mov    rcx,rsi
310f75 mov    DWORD PTR [rbp+0xfc],ebx
310f7b call   0x2caf08
310f80 test   al,al
310f82 je     0x310f91
310f84 mov    rcx,rsi
310f87 call   0x37224c
310f8c mov    r15d,eax
310f8f jmp    0x310f94
310f91 xor    r15d,r15d
310f94 test   ebx,ebx
310f96 jg     0x310fa1
310f98 test   r15d,r15d
310f9b jle    0x311cc4
310fa1 call   0x392198
310fa6 movss  xmm8,DWORD PTR [rip+0xdce39]        # 0x3edde8 ; CONFIG F.IconSize value(+0x48)
310faf mov    r14,rax
310fb2 call   0x2e0af0
310fb7 movd   xmm6,eax
310fbb cvtdq2ps xmm6,xmm6
310fbe call   0x2e09f0
310fc3 lea    rdx,[rbp+0xcd7]
310fca lea    rcx,[rsp+0x50]
310fcf movd   xmm9,eax
310fd4 cvtdq2ps xmm9,xmm9
310fd8 call   0x2f6a50 ; STRING getter=0x2f6a50 Hotbar
310fdd mov    rcx,rax
310fe0 call   0x2cdcf4
310fe5 lea    rdx,[rbp+0xff0]
310fec mov    rdi,rax
310fef lea    rcx,[rsp+0x50]
310ff4 call   0x2f6acc ; STRING getter=0x2f6acc Clothing
310ff9 mov    rcx,rax
310ffc call   0x2e9b8c
311001 movss  xmm7,DWORD PTR [rip+0xfffffffffff82257]        # 0x293260 ; f32=-1
311009 lea    rcx,[rbp+0x3a8]
311010 xor    r9d,r9d
311013 movss  DWORD PTR [rsp+0x20],xmm7
311019 xor    r8d,r8d
31101c mov    QWORD PTR [rbp+0x4f8],rax
311023 mov    rdx,rdi
311026 call   0x38f79c
31102b mov    rdx,QWORD PTR [rbp+0x4f8]
311032 lea    rcx,[rbp+0x3b0]
311039 xor    r9d,r9d
31103c movss  DWORD PTR [rsp+0x20],xmm7
311042 xor    r8d,r8d
311045 call   0x38f79c
31104a movss  xmm3,DWORD PTR [rbp+0x3a8]
311052 cmp    ebx,r15d
311055 maxss  xmm3,DWORD PTR [rbp+0x3b0]
31105d movss  xmm4,DWORD PTR [rip+0xfffffffffff7cab7]        # 0x28db1c ; f32=10
311065 mov    edx,r15d
311068 cmovg  edx,ebx
31106b xor    ecx,ecx
31106d test   r15d,r15d
311070 setg   cl
311073 xor    eax,eax
311075 test   ebx,ebx
311077 setg   al
31107a lea    r8d,[rcx+rax*1]
31107e test   edx,edx
311080 jle    0x3110a8
311082 movaps xmm1,xmm6
311085 subss  xmm1,xmm4
311089 subss  xmm1,xmm3
31108d comiss xmm1,xmm11
311091 jbe    0x3110a8
311093 movd   xmm0,edx
311097 cvtdq2ps xmm0,xmm0
31109a mulss  xmm0,xmm14
31109f divss  xmm1,xmm0
3110a3 minss  xmm8,xmm1
3110a8 test   r8d,r8d
3110ab je     0x3110e0
3110ad movaps xmm2,xmm9
3110b1 subss  xmm2,xmm4
3110b5 comiss xmm2,xmm11
3110b9 jbe    0x3110e0
3110bb movaps xmm1,xmm8
3110bf movd   xmm0,r8d
3110c4 mulss  xmm1,DWORD PTR [rip+0xfffffffffff82110]        # 0x2931dc ; f32=28
3110cc cvtdq2ps xmm0,xmm0
3110cf addss  xmm1,xmm4
3110d3 mulss  xmm1,xmm0
3110d7 divss  xmm2,xmm1
3110db minss  xmm8,xmm2
3110e0 comiss xmm11,xmm8
3110e4 jb     0x3110ef
3110e6 movss  xmm8,DWORD PTR [rip+0xfffffffffff7c9f5]        # 0x28dae4 ; f32=0.1
3110ef xorps  xmm15,xmm15
3110f3 xorps  xmm0,xmm0
3110f6 cvtsi2ss xmm15,ebx
3110fb cvtsi2ss xmm0,r15d
311100 movaps xmm2,xmm8
311104 mulss  xmm2,xmm14
311109 movaps xmm14,xmm8
31110d mulss  xmm14,DWORD PTR [rip+0xfffffffffff820c6]        # 0x2931dc ; f32=28
311116 mulss  xmm15,xmm2
31111b mulss  xmm0,xmm2
31111f movaps xmm1,xmm14
311123 addss  xmm1,xmm4
311127 movss  DWORD PTR [rbp+0x15c],xmm2
31112f maxss  xmm15,xmm0
311134 movss  DWORD PTR [rbp+0xf8],xmm1
31113c comiss xmm15,xmm3
311140 movss  DWORD PTR [rbp+0x104],xmm15
311149 ja     0x311158
31114b movaps xmm15,xmm3
31114f movss  DWORD PTR [rbp+0x104],xmm15
311158 test   ebx,ebx
31115a jle    0x311172
31115c movss  xmm0,DWORD PTR [rbp+0x3ac]
311164 addss  xmm0,DWORD PTR [rip+0xfffffffffff81fc8]        # 0x293134 ; f32=2
31116c addss  xmm0,xmm1
311170 jmp    0x311175
311172 xorps  xmm0,xmm0
311175 test   r15d,r15d
311178 jle    0x311190
31117a movss  xmm2,DWORD PTR [rbp+0x3b4]
311182 addss  xmm2,DWORD PTR [rip+0xfffffffffff81faa]        # 0x293134 ; f32=2
31118a addss  xmm2,xmm1
31118e jmp    0x311193
311190 xorps  xmm2,xmm2
311193 test   ebx,ebx
311195 jle    0x3111ab
311197 test   r15d,r15d
31119a jle    0x3111ab
31119c movss  xmm10,DWORD PTR [rip+0xfffffffffff81fd3]        # 0x293178 ; f32=4
3111a5 movaps xmm1,xmm10
3111a9 jmp    0x3111b7
3111ab movss  xmm10,DWORD PTR [rip+0xfffffffffff81fc4]        # 0x293178 ; f32=4
3111b4 xorps  xmm1,xmm1
3111b7 addss  xmm2,xmm0
3111bb lea    rcx,[rbp+0x4f0]
3111c2 addss  xmm2,xmm1
3111c6 movaps xmm1,xmm15
3111ca addss  xmm1,xmm4
3111ce addss  xmm2,xmm4
3111d2 call   0x2cc340
3111d7 movss  xmm0,DWORD PTR [rip+0xfffffffffff81fc9]        # 0x2931a8 ; f32=12
3111df lea    rcx,[rbp+0x48]
3111e3 movss  xmm2,DWORD PTR [rbp+0x34c]
3111eb movss  xmm1,DWORD PTR [rbp+0x348]
3111f3 addss  xmm2,xmm0
3111f7 addss  xmm1,xmm0
3111fb call   0x2cc340
311200 movss  xmm7,DWORD PTR [rbp+0x4f0]
311208 movss  xmm3,DWORD PTR [rbp+0x48]
31120d movaps xmm0,xmm7
311210 addss  xmm0,xmm3
311214 comiss xmm0,xmm6
311217 jbe    0x311225
311219 movaps xmm3,xmm6
31121c subss  xmm3,xmm7
311220 movss  DWORD PTR [rbp+0x48],xmm3
311225 movss  xmm6,DWORD PTR [rbp+0x4f4]
31122d movss  xmm1,DWORD PTR [rbp+0x4c]
311232 movaps xmm0,xmm6
311235 addss  xmm0,xmm1
311239 comiss xmm0,xmm9
31123d jbe    0x31124c
31123f movaps xmm1,xmm9
311243 subss  xmm1,xmm6
311247 movss  DWORD PTR [rbp+0x4c],xmm1
31124c comiss xmm11,xmm3
311250 jbe    0x31125a
311252 xorps  xmm3,xmm3
311255 movss  DWORD PTR [rbp+0x48],xmm3
31125a comiss xmm11,xmm1
31125e jbe    0x311268
311260 xorps  xmm1,xmm1
311263 movss  DWORD PTR [rbp+0x4c],xmm1
311268 movaps xmm2,xmm6
31126b lea    rcx,[rbp+0xd00]
311272 addss  xmm2,xmm1
311276 movaps xmm1,xmm7
311279 addss  xmm1,xmm3
31127d call   0x2cc340
311282 mov    r8,rax
311285 mov    DWORD PTR [rsp+0x28],0x0
31128d mov    r9d,0x8c000000
311293 movss  DWORD PTR [rsp+0x20],xmm10
31129a lea    rdx,[rbp+0x48]
31129e mov    rcx,r14
3112a1 call   0x3a1244
3112a6 addss  xmm6,DWORD PTR [rbp+0x4c]
3112ab addss  xmm7,DWORD PTR [rbp+0x48]
3112b0 lea    rcx,[rbp+0xd08]
3112b7 movaps xmm2,xmm6
3112ba movaps xmm1,xmm7
3112bd call   0x2cc340
3112c2 movss  DWORD PTR [rsp+0x30],xmm12
3112c9 lea    rdx,[rbp+0x48]
3112cd mov    r8,rax
3112d0 mov    DWORD PTR [rsp+0x28],0x0
3112d8 mov    r9d,0x24ffffff
3112de movss  DWORD PTR [rsp+0x20],xmm10
3112e5 mov    rcx,r14
3112e8 call   0x3a1148
3112ed movss  xmm0,DWORD PTR [rip+0xfffffffffff81e8b]        # 0x293180 ; f32=5
3112f5 movss  xmm6,DWORD PTR [rbp+0x4c]
3112fa addss  xmm6,xmm0
3112fe test   ebx,ebx
311300 jle    0x311832
311306 movss  xmm1,DWORD PTR [rbp+0x48]
31130b lea    rcx,[rbp+0xd10]
311312 addss  xmm1,xmm0
311316 movaps xmm2,xmm6
311319 call   0x2cc340
31131e mov    rdx,rax
311321 mov    QWORD PTR [rsp+0x20],0x0
31132a mov    r9,rdi
31132d mov    r8d,0xf09ebe96
311333 mov    rcx,r14
311336 call   0x3a31bc
31133b movss  xmm9,DWORD PTR [rbp+0x3ac]
311344 movaps xmm0,xmm8
311348 mulss  xmm0,DWORD PTR [rip+0xfffffffffff81e7c]        # 0x2931cc ; f32=23
311350 xor    r12d,r12d
311353 mov    r13,QWORD PTR [rbp+0x438]
31135a addss  xmm9,DWORD PTR [rip+0xfffffffffff81dd1]        # 0x293134 ; f32=2
311363 movss  xmm15,DWORD PTR [rbp+0x15c]
31136c movss  DWORD PTR [rbp+0x158],xmm0
311374 movaps xmm0,xmm8
311378 movss  xmm13,DWORD PTR [rbp+0x158]
311381 mulss  xmm0,xmm10
311386 addss  xmm9,xmm6
31138b movss  DWORD PTR [rbp+0x64],xmm11
311391 movaps xmm6,xmm8
311395 mulss  xmm6,DWORD PTR [rip+0xfffffffffff81dbb]        # 0x293158 ; f32=3
31139d movss  DWORD PTR [rbp+0x440],xmm0
3113a5 movaps xmm7,xmm9
3113a9 addss  xmm7,xmm14
3113ae movss  DWORD PTR [rbp+0x2c8],xmm6
3113b6 movaps xmm10,xmm7
3113ba movss  DWORD PTR [rbp+0x1d8],xmm7
3113c2 subss  xmm10,DWORD PTR [rip+0xfffffffffff81dad]        # 0x293178 ; f32=4
3113cb movss  DWORD PTR [rbp+0x1d4],xmm10
3113d4 mov    edx,r12d
3113d7 mov    rcx,r13
3113da call   0x3722f0
3113df mov    rcx,rax
3113e2 mov    rdi,rax
3113e5 call   0x2caf08
3113ea test   al,al
3113ec je     0x31177e
3113f2 mov    edx,0x10
3113f7 mov    rcx,rdi
3113fa call   0x2dee3c
3113ff mov    rcx,QWORD PTR [rax]
311402 call   0x2caf08
311407 test   al,al
311409 je     0x31177e
31140f mov    rcx,rdi
311412 call   0x371c38
311417 mov    rcx,rax
31141a mov    QWORD PTR [rbp+0x180],rax
311421 call   0x2caf08
311426 test   al,al
311428 je     0x31177e
31142e mov    rcx,rdi
311431 call   0x371294
311436 mov    edx,0xd8
31143b mov    DWORD PTR [rbp+0x438],eax
311441 mov    rcx,rdi
311444 call   0x2dee3c
311449 mov    edx,0xb4
31144e mov    rcx,rdi
311451 movss  xmm0,DWORD PTR [rax]
311455 movss  DWORD PTR [rbp+0x158],xmm0
31145d call   0x2dee3c
311462 mov    rcx,rdi
311465 movss  xmm0,DWORD PTR [rax]
311469 movss  DWORD PTR [rbp+0x48c],xmm0
311471 call   0x372184
311476 movss  xmm10,DWORD PTR [rbp+0x48]
31147c lea    rcx,[rbp+0xd18]
311483 addss  xmm10,DWORD PTR [rip+0xfffffffffff81cf4]        # 0x293180 ; f32=5
31148c movaps xmm2,xmm7
31148f mov    dil,al
311492 addss  xmm10,DWORD PTR [rbp+0x64]
311498 movaps xmm1,xmm10
31149c addss  xmm1,xmm14
3114a1 call   0x2cc340
3114a6 movaps xmm2,xmm9
3114aa lea    rcx,[rbp+0xd20]
3114b1 movaps xmm1,xmm10
3114b5 mov    rbx,rax
3114b8 call   0x2cc340
3114bd mov    rdx,rax
3114c0 mov    DWORD PTR [rsp+0x28],0x0
3114c8 mov    r9d,0x37000000
3114ce movss  DWORD PTR [rsp+0x20],xmm6
3114d4 mov    r8,rbx
3114d7 mov    rcx,r14
3114da call   0x3a1244
3114df test   dil,dil
3114e2 je     0x3115c1
3114e8 movss  xmm0,DWORD PTR [rbp+0x158]
3114f0 comiss xmm0,xmm11
3114f4 jbe    0x3115c1
3114fa movaps xmm6,xmm10
3114fe lea    rcx,[rbp+0xd28]
311505 addss  xmm6,DWORD PTR [rbp+0x2c8]
31150d movaps xmm2,xmm7
311510 movaps xmm1,xmm6
311513 call   0x2cc340
311518 movaps xmm2,xmm9
31151c lea    rcx,[rbp+0xd30]
311523 movaps xmm1,xmm10
311527 mov    rbx,rax
31152a call   0x2cc340
31152f mov    rdx,rax
311532 mov    DWORD PTR [rsp+0x28],0x0
31153a mov    r9d,0x4c42876e
311540 movss  DWORD PTR [rsp+0x20],xmm11
311547 mov    r8,rbx
31154a mov    rcx,r14
31154d call   0x3a1244
311552 movaps xmm2,xmm7
311555 lea    rcx,[rbp+0xd38]
31155c movaps xmm1,xmm6
31155f call   0x2cc340
311564 movss  xmm0,DWORD PTR [rbp+0x48c]
31156c lea    rcx,[rbp+0xd40]
311573 divss  xmm0,DWORD PTR [rbp+0x158]
31157b mov    rbx,rax
31157e movaps xmm2,xmm12
311582 movaps xmm1,xmm10
311586 minss  xmm0,xmm12
31158b subss  xmm2,xmm0
31158f mulss  xmm2,xmm14
311594 addss  xmm2,xmm9
311599 call   0x2cc340
31159e mov    rdx,rax
3115a1 mov    DWORD PTR [rsp+0x28],0x0
3115a9 mov    r9d,0xcc42876e
3115af movss  DWORD PTR [rsp+0x20],xmm11
3115b6 mov    r8,rbx
3115b9 mov    rcx,r14
3115bc call   0x3a1244
3115c1 movaps xmm7,xmm9
3115c5 lea    rcx,[rbp+0xd48]
3115cc movaps xmm6,xmm10
3115d0 addss  xmm7,xmm8
3115d5 addss  xmm6,DWORD PTR [rbp+0x440]
3115dd movaps xmm2,xmm12
3115e1 movaps xmm1,xmm12
3115e5 call   0x2cc340
3115ea xorps  xmm2,xmm2
3115ed lea    rcx,[rbp+0xd50]
3115f4 xorps  xmm1,xmm1
3115f7 mov    rsi,rax
3115fa call   0x2cc340
3115ff movaps xmm2,xmm7
311602 lea    rcx,[rbp+0xd58]
311609 movaps xmm1,xmm6
31160c addss  xmm2,xmm13
311611 addss  xmm1,xmm13
311616 mov    rdi,rax
311619 call   0x2cc340
31161e movaps xmm2,xmm7
311621 lea    rcx,[rbp+0xd60]
311628 movaps xmm1,xmm6
31162b mov    rbx,rax
31162e call   0x2cc340
311633 mov    rdx,QWORD PTR [rbp+0x180]
31163a mov    r8,rax
31163d mov    DWORD PTR [rsp+0x30],0xffffffff
311645 mov    r9,rbx
311648 mov    QWORD PTR [rsp+0x28],rsi
31164d mov    rcx,r14
311650 mov    QWORD PTR [rsp+0x20],rdi
311655 call   0x3a0168
31165a mov    eax,DWORD PTR [rbp+0x438]
311660 cmp    eax,0x1
311663 jle    0x311759
311669 mov    edx,eax
31166b lea    rcx,[rbp+0xa0]
311672 call   0x2d9510
311677 lea    rcx,[rbp+0xa0]
31167e call   0x2cd7ec
311683 movss  xmm0,DWORD PTR [rip+0xfffffffffff81bd5]        # 0x293260 ; f32=-1
31168b lea    rcx,[rbp+0xbc0]
311692 mov    rdx,rax
311695 movss  DWORD PTR [rsp+0x20],xmm0
31169b xor    r9d,r9d
31169e xor    r8d,r8d
3116a1 call   0x38f79c
3116a6 movss  xmm7,DWORD PTR [rbp+0x1d4]
3116ae lea    rcx,[rbp+0xd68]
3116b5 movaps xmm6,xmm14
3116b9 movaps xmm2,xmm7
3116bc subss  xmm6,DWORD PTR [rbp+0xbc0]
3116c4 addss  xmm2,xmm12
3116c9 mulss  xmm6,DWORD PTR [rip+0xfffffffffff7bb7f]        # 0x28d250 ; f32=0.5
3116d1 addss  xmm6,xmm10
3116d6 movaps xmm1,xmm6
3116d9 addss  xmm1,xmm12
3116de call   0x2cc340
3116e3 lea    rcx,[rbp+0xa0]
3116ea mov    rbx,rax
3116ed call   0x2cd7ec
3116f2 mov    r9,rax
3116f5 mov    QWORD PTR [rsp+0x20],0x0
3116fe mov    r8d,0xb4000000
311704 mov    rdx,rbx
311707 mov    rcx,r14
31170a call   0x3a31bc
31170f movaps xmm2,xmm7
311712 lea    rcx,[rbp+0xd70]
311719 movaps xmm1,xmm6
31171c call   0x2cc340
311721 lea    rcx,[rbp+0xa0]
311728 mov    rbx,rax
31172b call   0x2cd7ec
311730 mov    r9,rax
311733 mov    QWORD PTR [rsp+0x20],0x0
31173c mov    r8d,0xebffffff
311742 mov    rdx,rbx
311745 mov    rcx,r14
311748 call   0x3a31bc
31174d lea    rcx,[rbp+0xa0]
311754 call   0x2cc4f4
311759 movss  xmm0,DWORD PTR [rbp+0x64]
31175e movss  xmm7,DWORD PTR [rbp+0x1d8]
311766 addss  xmm0,xmm15
31176b movss  xmm6,DWORD PTR [rbp+0x2c8]
311773 mov    ebx,DWORD PTR [rbp+0xfc]
311779 movss  DWORD PTR [rbp+0x64],xmm0
31177e inc    r12d
311781 cmp    r12d,ebx
311784 jl     0x3113d4
31178a movss  xmm15,DWORD PTR [rbp+0x104]
311793 addss  xmm9,DWORD PTR [rbp+0xf8]
31179c test   r15d,r15d
31179f jle    0x31180a
3117a1 movss  xmm6,DWORD PTR [rbp+0x48]
3117a6 lea    rcx,[rbp+0xd78]
3117ad addss  xmm6,DWORD PTR [rip+0xfffffffffff819cb]        # 0x293180 ; f32=5
3117b5 movaps xmm7,xmm9
3117b9 addss  xmm7,DWORD PTR [rip+0xfffffffffff81973]        # 0x293134 ; f32=2
3117c1 movaps xmm1,xmm6
3117c4 addss  xmm1,xmm15
3117c9 movaps xmm2,xmm7
3117cc call   0x2cc340
3117d1 movaps xmm2,xmm7
3117d4 lea    rcx,[rbp+0xd80]
3117db movaps xmm1,xmm6
3117de mov    rbx,rax
3117e1 call   0x2cc340
3117e6 mov    rdx,rax
3117e9 movss  DWORD PTR [rsp+0x20],xmm12
3117f0 mov    r9d,0x1affffff
3117f6 mov    r8,rbx
3117f9 mov    rcx,r14
3117fc call   0x3a01f4
311801 addss  xmm9,DWORD PTR [rip+0xfffffffffff8196e]        # 0x293178 ; f32=4
31180a movss  xmm13,DWORD PTR [rbp+0x2cc]
311813 movss  xmm0,DWORD PTR [rip+0xfffffffffff81965]        # 0x293180 ; f32=5
31181b mov    r13,QWORD PTR [rbp+0x15a0]
311822 mov    r12,QWORD PTR [rbp+0x508]
311829 mov    rsi,QWORD PTR [rbp+0x500]
311830 jmp    0x311836
311832 movaps xmm9,xmm6
311836 test   r15d,r15d
311839 jle    0x311caa
31183f movss  xmm1,DWORD PTR [rbp+0x48]
311844 lea    rcx,[rbp+0xd88]
31184b addss  xmm1,xmm0
31184f movaps xmm2,xmm9
311853 call   0x2cc340
311858 mov    r9,QWORD PTR [rbp+0x4f8]
31185f mov    rdx,rax
311862 mov    r8d,0xf09ebe96
311868 mov    QWORD PTR [rsp+0x20],0x0
311871 mov    rcx,r14
311874 call   0x3a31bc
311879 movss  xmm10,DWORD PTR [rbp+0x3b4]
311882 movaps xmm0,xmm8
311886 mulss  xmm0,DWORD PTR [rip+0xfffffffffff8193e]        # 0x2931cc ; f32=23
31188e movaps xmm6,xmm8
311892 xor    r12d,r12d
311895 addss  xmm10,DWORD PTR [rip+0xfffffffffff81896]        # 0x293134 ; f32=2
31189e movss  xmm1,DWORD PTR [rip+0xfffffffffff818d2]        # 0x293178 ; f32=4
3118a6 mulss  xmm6,DWORD PTR [rip+0xfffffffffff818aa]        # 0x293158 ; f32=3
3118ae movss  DWORD PTR [rbp+0xf8],xmm0
3118b6 movaps xmm0,xmm8
3118ba movss  xmm13,DWORD PTR [rbp+0xf8]
3118c3 addss  xmm10,xmm9
3118c8 mulss  xmm0,xmm1
3118cc movss  DWORD PTR [rbp+0x64],xmm11
3118d2 movss  DWORD PTR [rbp+0xfc],xmm6
3118da movaps xmm15,xmm10
3118de movss  DWORD PTR [rbp+0x1d8],xmm0
3118e6 addss  xmm15,xmm14
3118eb movaps xmm7,xmm15
3118ef subss  xmm7,xmm1
3118f3 movss  DWORD PTR [rbp+0x1d4],xmm7
3118fb mov    edx,r12d
3118fe mov    rcx,rsi
311901 call   0x3722f0
311906 mov    rcx,rax
311909 mov    rbx,rax
31190c call   0x2caf08
311911 test   al,al
311913 je     0x311c8e
311919 mov    edx,0x10
31191e mov    rcx,rbx
311921 call   0x2dee3c
311926 mov    rcx,QWORD PTR [rax]
311929 call   0x2caf08
31192e test   al,al
311930 je     0x311c8e
311936 mov    rcx,rbx
311939 call   0x371c38
31193e mov    rcx,rax
311941 mov    QWORD PTR [rbp+0x180],rax
311948 call   0x2caf08
31194d test   al,al
31194f je     0x311c8e
311955 mov    rcx,rbx
311958 call   0x371294
31195d mov    edx,0xd8
311962 mov    DWORD PTR [rbp+0xf8],eax
311968 mov    rcx,rbx
31196b call   0x2dee3c
311970 mov    edx,0xb4
311975 mov    rcx,rbx
311978 movss  xmm0,DWORD PTR [rax]
31197c movss  DWORD PTR [rbp+0x104],xmm0
311984 call   0x2dee3c
311989 mov    rcx,rbx
31198c movss  xmm7,DWORD PTR [rax]
311990 call   0x372184
311995 movss  xmm9,DWORD PTR [rbp+0x48]
31199b lea    rcx,[rbp+0xd90]
3119a2 addss  xmm9,DWORD PTR [rip+0xfffffffffff817d5]        # 0x293180 ; f32=5
3119ab movaps xmm2,xmm15
3119af mov    dil,al
3119b2 addss  xmm9,DWORD PTR [rbp+0x64]
3119b8 movaps xmm1,xmm9
3119bc addss  xmm1,xmm14
3119c1 call   0x2cc340
3119c6 movaps xmm2,xmm10
3119ca lea    rcx,[rbp+0xd98]
3119d1 movaps xmm1,xmm9
3119d5 mov    rbx,rax
3119d8 call   0x2cc340
3119dd xor    esi,esi
3119df mov    rdx,rax
3119e2 mov    DWORD PTR [rsp+0x28],esi
3119e6 mov    r9d,0x37000000
3119ec mov    r8,rbx
3119ef movss  DWORD PTR [rsp+0x20],xmm6
3119f5 mov    rcx,r14
3119f8 call   0x3a1244
3119fd test   dil,dil
311a00 je     0x311ad1
311a06 movss  xmm0,DWORD PTR [rbp+0x104]
311a0e comiss xmm0,xmm11
311a12 jbe    0x311ad1
311a18 movaps xmm6,xmm9
311a1c lea    rcx,[rbp+0xda0]
311a23 addss  xmm6,DWORD PTR [rbp+0xfc]
311a2b movaps xmm2,xmm15
311a2f movaps xmm1,xmm6
311a32 call   0x2cc340
311a37 movaps xmm2,xmm10
311a3b lea    rcx,[rbp+0xda8]
311a42 movaps xmm1,xmm9
311a46 mov    rbx,rax
311a49 call   0x2cc340
311a4e mov    rdx,rax
311a51 mov    DWORD PTR [rsp+0x28],esi
311a55 mov    r9d,0x4c42876e
311a5b movss  DWORD PTR [rsp+0x20],xmm11
311a62 mov    r8,rbx
311a65 mov    rcx,r14
311a68 call   0x3a1244
311a6d movaps xmm2,xmm15
311a71 lea    rcx,[rbp+0xdb0]
311a78 movaps xmm1,xmm6
311a7b call   0x2cc340
311a80 divss  xmm7,DWORD PTR [rbp+0x104]
311a88 lea    rcx,[rbp+0xdb8]
311a8f mov    rbx,rax
311a92 movaps xmm2,xmm12
311a96 movaps xmm1,xmm9
311a9a minss  xmm7,xmm12
311a9f subss  xmm2,xmm7
311aa3 mulss  xmm2,xmm14
311aa8 addss  xmm2,xmm10
311aad call   0x2cc340
311ab2 mov    rdx,rax
311ab5 mov    DWORD PTR [rsp+0x28],esi
311ab9 mov    r9d,0xcc42876e
311abf movss  DWORD PTR [rsp+0x20],xmm11
311ac6 mov    r8,rbx
311ac9 mov    rcx,r14
311acc call   0x3a1244
311ad1 movss  xmm6,DWORD PTR [rbp+0x1d8]
311ad9 lea    rcx,[rbp+0xdc0]
311ae0 movaps xmm7,xmm10
311ae4 addss  xmm6,xmm9
311ae9 movaps xmm2,xmm12
311aed addss  xmm7,xmm8
311af2 movaps xmm1,xmm12
311af6 call   0x2cc340
311afb xorps  xmm2,xmm2
311afe lea    rcx,[rbp+0xdc8]
311b05 xorps  xmm1,xmm1
311b08 mov    rsi,rax
311b0b call   0x2cc340
311b10 movaps xmm2,xmm7
311b13 lea    rcx,[rbp+0xdd0]
311b1a movaps xmm1,xmm6
311b1d addss  xmm2,xmm13
311b22 addss  xmm1,xmm13
311b27 mov    rdi,rax
311b2a call   0x2cc340
311b2f movaps xmm2,xmm7
311b32 lea    rcx,[rbp+0xdd8]
311b39 movaps xmm1,xmm6
311b3c mov    rbx,rax
311b3f call   0x2cc340
311b44 mov    rdx,QWORD PTR [rbp+0x180]
311b4b mov    r8,rax
311b4e mov    DWORD PTR [rsp+0x30],0xffffffff
311b56 mov    r9,rbx
311b59 mov    QWORD PTR [rsp+0x28],rsi
311b5e mov    rcx,r14
311b61 mov    QWORD PTR [rsp+0x20],rdi
311b66 call   0x3a0168
311b6b mov    eax,DWORD PTR [rbp+0xf8]
311b71 cmp    eax,0x1
311b74 jle    0x311c6a
311b7a mov    edx,eax
311b7c lea    rcx,[rbp+0xa0]
311b83 call   0x2d9510
311b88 lea    rcx,[rbp+0xa0]
311b8f call   0x2cd7ec
311b94 movss  xmm0,DWORD PTR [rip+0xfffffffffff816c4]        # 0x293260 ; f32=-1
311b9c lea    rcx,[rbp+0xbc8]
311ba3 mov    rdx,rax
311ba6 movss  DWORD PTR [rsp+0x20],xmm0
311bac xor    r9d,r9d
311baf xor    r8d,r8d
311bb2 call   0x38f79c
311bb7 movss  xmm7,DWORD PTR [rbp+0x1d4]
311bbf lea    rcx,[rbp+0xde0]
311bc6 movaps xmm6,xmm14
311bca movaps xmm2,xmm7
311bcd subss  xmm6,DWORD PTR [rbp+0xbc8]
311bd5 addss  xmm2,xmm12
311bda mulss  xmm6,DWORD PTR [rip+0xfffffffffff7b66e]        # 0x28d250 ; f32=0.5
311be2 addss  xmm6,xmm9
311be7 movaps xmm1,xmm6
311bea addss  xmm1,xmm12
311bef call   0x2cc340
311bf4 lea    rcx,[rbp+0xa0]
311bfb mov    rbx,rax
311bfe call   0x2cd7ec
311c03 mov    r9,rax
311c06 mov    QWORD PTR [rsp+0x20],0x0
311c0f mov    r8d,0xb4000000
311c15 mov    rdx,rbx
311c18 mov    rcx,r14
311c1b call   0x3a31bc
311c20 movaps xmm2,xmm7
311c23 lea    rcx,[rbp+0xde8]
311c2a movaps xmm1,xmm6
311c2d call   0x2cc340
311c32 lea    rcx,[rbp+0xa0]
311c39 mov    rbx,rax
311c3c call   0x2cd7ec
311c41 mov    r9,rax
311c44 mov    QWORD PTR [rsp+0x20],0x0
311c4d mov    r8d,0xebffffff
311c53 mov    rdx,rbx
311c56 mov    rcx,r14
311c59 call   0x3a31bc
311c5e lea    rcx,[rbp+0xa0]
311c65 call   0x2cc4f4
311c6a movss  xmm9,DWORD PTR [rbp+0x64]
311c70 addss  xmm9,DWORD PTR [rbp+0x15c]
311c79 movss  xmm6,DWORD PTR [rbp+0xfc]
311c81 mov    rsi,QWORD PTR [rbp+0x500]
311c88 movss  DWORD PTR [rbp+0x64],xmm9
311c8e inc    r12d
311c91 cmp    r12d,r15d
311c94 jl     0x3118fb
311c9a movss  xmm13,DWORD PTR [rbp+0x2cc]
311ca3 mov    r12,QWORD PTR [rbp+0x508]
311caa movss  xmm10,DWORD PTR [rbp+0x44c]
311cb3 movss  xmm8,DWORD PTR [rbp+0x428]
311cbc mov    r14d,DWORD PTR [rbp-0x30]
311cc0 mov    BYTE PTR [rbp-0x2c],0x1
311cc4 mov    r15b,BYTE PTR [rsp+0x62]
311cc9 xor    esi,esi
311ccb mov    bl,BYTE PTR [rbp+0x15b0]
311cd1 mov    dil,BYTE PTR [rbp+0x15a8]
311cd8 lea    rcx,[rbp+0x12e8]
311cdf call   0x2cc4f4
