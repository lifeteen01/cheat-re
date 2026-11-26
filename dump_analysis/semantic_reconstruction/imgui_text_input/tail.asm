; tail independent pdata/next-pdata extent 3992a0..39940e unwind3d494c
3992a0 mov    rax,rsp
3992a3 mov    QWORD PTR [rax+0x18],rbx
3992a7 mov    QWORD PTR [rax+0x20],rsi
3992ab push   rbp
3992ac push   rdi
3992ad push   r14
3992af lea    rbp,[rax-0x57]
3992b3 sub    rsp,0xa0
3992ba mov    rdi,QWORD PTR [rip+0x6c867]        # 0x405b28
3992c1 mov    bl,r9b
3992c4 mov    QWORD PTR [rbp-0x21],rdx
3992c8 mov    r9d,r8d
3992cb mov    QWORD PTR [rbp-0x19],rcx
3992cf lea    r8,[rbp-0x21]
3992d3 movaps XMMWORD PTR [rax-0x28],xmm6
3992d7 lea    rdx,[rbp-0x19]
3992db mov    r14,QWORD PTR [rdi+0x3f08]
3992e2 movaps XMMWORD PTR [rax-0x38],xmm7
3992e6 movaps XMMWORD PTR [rax-0x48],xmm8
3992eb movss  xmm8,DWORD PTR [rbp+0x7f]
3992f1 mov    rcx,QWORD PTR [r14+0x298]
3992f8 mov    DWORD PTR [rsp+0x28],0x0
3992ff 
399300 movss  DWORD PTR [rsp+0x20],xmm8
399307 call   0x3a1244
39930c test   bl,bl
39930e je     0x3993e7
399314 movss  xmm7,DWORD PTR [rdi+0x3818]
39931b 
39931c comiss xmm7,DWORD PTR [rip+0xffffffffffef3f29]        # 0x28d24c
399323 jbe    0x3993e7
399329 movss  xmm6,DWORD PTR [rip+0xffffffffffef3f23]        # 0x28d254
399330 
399331 mov    ecx,0x7
399336 mov    rsi,QWORD PTR [r14+0x298]
39933d movaps xmm1,xmm6
399340 call   0x392298
399345 movaps xmm2,xmm6
399348 lea    rcx,[rbp-0x11]
39934c movaps xmm1,xmm6
39934f mov    edi,eax
399351 call   0x2cc340
399356 mov    r8,rax
399359 lea    rdx,[rbp-0x21]
39935d lea    rcx,[rbp-0x9]
399361 call   0x2ef9d8
399366 movaps xmm2,xmm6
399369 lea    rcx,[rbp-0x1]
39936d movaps xmm1,xmm6
399370 mov    rbx,rax
399373 call   0x2cc340
399378 mov    r8,rax
39937b lea    rdx,[rbp-0x19]
39937f lea    rcx,[rbp+0x7]
399383 call   0x2ef9d8
399388 movss  DWORD PTR [rsp+0x30],xmm7
39938e mov    rdx,rax
399391 mov    DWORD PTR [rsp+0x28],0x0
399398 
399399 mov    r9d,edi
39939c mov    r8,rbx
39939f movss  DWORD PTR [rsp+0x20],xmm8
3993a6 mov    rcx,rsi
3993a9 call   0x3a1148
3993ae movaps xmm1,xmm6
3993b1 mov    ecx,0x6
3993b6 call   0x392298
3993bb mov    rcx,QWORD PTR [r14+0x298]
3993c2 lea    r8,[rbp-0x21]
3993c6 movss  DWORD PTR [rsp+0x30],xmm7
3993cc lea    rdx,[rbp-0x19]
3993d0 mov    r9d,eax
3993d3 mov    DWORD PTR [rsp+0x28],0x0
3993da 
3993db movss  DWORD PTR [rsp+0x20],xmm8
3993e2 call   0x3a1148
3993e7 lea    r11,[rsp+0xa0]
3993ee 
3993ef mov    rbx,QWORD PTR [r11+0x30]
3993f3 mov    rsi,QWORD PTR [r11+0x38]
3993f7 movaps xmm6,XMMWORD PTR [r11-0x10]
3993fc movaps xmm7,XMMWORD PTR [r11-0x20]
399401 movaps xmm8,XMMWORD PTR [r11-0x30]
399406 mov    rsp,r11
399409 pop    r14
39940b pop    rdi
39940c pop    rbp
39940d ret

; tail independent pdata/next-pdata extent 399994..399a64 unwind3d4910
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

; tail independent pdata/next-pdata extent 395020..395038 unwind0
395020 mov    rax,QWORD PTR [rip+0x70b01]        # 0x405b28
395027 mov    QWORD PTR [rax+0x5cb0],rcx
39502e mov    QWORD PTR [rax+0x5cb8],rdx
395035 ret
395036 int3
395037 int3

; tail independent pdata/next-pdata extent 3c2c44..3c2d59 unwind3d27c0
3c2c44 rex push rbx
3c2c46 push   rbp
3c2c47 push   rsi
3c2c48 push   rdi
3c2c49 push   r12
3c2c4b push   r13
3c2c4d push   r14
3c2c4f push   r15
3c2c51 sub    rsp,0x38
3c2c55 mov    r12,QWORD PTR [rcx+0x20]
3c2c59 mov    rsi,rdx
3c2c5c mov    r14d,DWORD PTR [rcx+0xc]
3c2c60 mov    r13,rcx
3c2c63 mov    rbx,QWORD PTR [rip+0x42ebe]        # 0x405b28
3c2c6a mov    rcx,rsi
3c2c6d movsxd rdi,r8d
3c2c70 add    rdi,rdx
3c2c73 mov    rdx,rdi
3c2c76 call   0x393ad0
3c2c7b lea    rcx,[rbx+0x5e50]
3c2c82 mov    ebp,eax
3c2c84 lea    edx,[rax*2+0x2]
3c2c8b call   0x3c5e94
3c2c90 mov    r15,QWORD PTR [rbx+0x5e58]
3c2c97 lea    edx,[rbp+0x1]
3c2c9a mov    rcx,r15
3c2c9d mov    QWORD PTR [rsp+0x20],0x0
3c2ca4 
3c2ca6 mov    r9,rdi
3c2ca9 mov    r8,rsi
3c2cac call   0x393ba4
3c2cb1 mov    edx,ebp
3c2cb3 mov    ecx,r14d
3c2cb6 call   0x38019c
3c2cbb xor    edi,edi
3c2cbd test   eax,eax
3c2cbf jle    0x3c2cd3
3c2cc1 movzx  ecx,WORD PTR [r15+rdi*2]
3c2cc6 cmp    WORD PTR [r12+rdi*2],cx
3c2ccb jne    0x3c2cd3
3c2ccd inc    edi
3c2ccf cmp    edi,eax
3c2cd1 jl     0x3c2cc1
3c2cd3 cmp    edi,r14d
3c2cd6 jne    0x3c2cdc
3c2cd8 cmp    edi,ebp
3c2cda je     0x3c2d48
3c2cdc lea    ebx,[r14-0x1]
3c2ce0 lea    edx,[rbp-0x1]
3c2ce3 jmp    0x3c2cff
3c2ce5 cmp    edx,edi
3c2ce7 jl     0x3c2d03
3c2ce9 movsxd rax,edx
3c2cec movsxd rcx,ebx
3c2cef movzx  eax,WORD PTR [r15+rax*2]
3c2cf4 cmp    WORD PTR [r12+rcx*2],ax
3c2cf9 jne    0x3c2d03
3c2cfb dec    ebx
3c2cfd dec    edx
3c2cff cmp    ebx,edi
3c2d01 jge    0x3c2ce5
3c2d03 sub    edx,edi
3c2d05 sub    ebx,edi
3c2d07 inc    ebx
3c2d09 lea    r9d,[rdx+0x1]
3c2d0d test   r9d,r9d
3c2d10 jg     0x3c2d16
3c2d12 test   ebx,ebx
3c2d14 jle    0x3c2d48
3c2d16 lea    rcx,[r13+0x74]
3c2d1a mov    r8d,ebx
3c2d1d mov    edx,edi
3c2d1f call   0x3c5f50
3c2d24 mov    r14,rax
3c2d27 test   rax,rax
3c2d2a je     0x3c2d48
3c2d2c xor    esi,esi
3c2d2e test   ebx,ebx
3c2d30 jle    0x3c2d48
3c2d32 lea    edx,[rsi+rdi*1]
3c2d35 mov    rcx,r13
3c2d38 call   0x3c2f30
3c2d3d mov    WORD PTR [r14+rsi*2],ax
3c2d42 inc    esi
3c2d44 cmp    esi,ebx
3c2d46 jl     0x3c2d32
3c2d48 add    rsp,0x38
3c2d4c pop    r15
3c2d4e pop    r14
3c2d50 pop    r13
3c2d52 pop    r12
3c2d54 pop    rdi
3c2d55 pop    rsi
3c2d56 pop    rbp
3c2d57 pop    rbx
3c2d58 ret

; tail independent pdata/next-pdata extent 3ca940..3ca960 unwind0
3ca940 xor    eax,eax
3ca942 test   r8,r8
3ca945 je     0x3ca95c
3ca947 mov    r9b,BYTE PTR [rax+rdx*1]
3ca94b test   r9b,r9b
3ca94e je     0x3ca95c
3ca950 mov    BYTE PTR [rax+rcx*1],r9b
3ca954 inc    rax
3ca957 cmp    rax,r8
3ca95a jb     0x3ca947
3ca95c mov    rax,rcx
3ca95f ret

; tail independent pdata/next-pdata extent 398a98..398b01 unwind3d2714
398a98 mov    QWORD PTR [rsp+0x10],rbx
398a9d mov    QWORD PTR [rsp+0x8],rcx
398aa2 push   rdi
398aa3 sub    rsp,0x20
398aa7 mov    rdi,QWORD PTR [rip+0x6d07a]        # 0x405b28
398aae mov    rbx,rcx
398ab1 test   rcx,rcx
398ab4 jne    0x398ac3
398ab6 call   0x392490
398abb mov    rbx,rax
398abe mov    QWORD PTR [rsp+0x30],rax
398ac3 mov    rcx,rbx
398ac6 call   0x39b290
398acb lea    rcx,[rdi+0x4870]
398ad2 lea    rdx,[rsp+0x30]
398ad7 call   0x37a658
398adc mov    rdx,QWORD PTR [rbx+0x40]
398ae0 mov    rcx,QWORD PTR [rdi+0x3f08]
398ae7 mov    rdx,QWORD PTR [rdx+0x8]
398aeb mov    rcx,QWORD PTR [rcx+0x298]
398af2 mov    rbx,QWORD PTR [rsp+0x38]
398af7 add    rsp,0x20
398afb pop    rdi
398afc jmp    0x3a73c4

; tail independent pdata/next-pdata extent 39881c..398876 unwind3d2038
39881c rex push rbx
39881e sub    rsp,0x20
398822 mov    rbx,QWORD PTR [rip+0x6d2ff]        # 0x405b28
398829 mov    rcx,QWORD PTR [rbx+0x3f08]
398830 mov    rcx,QWORD PTR [rcx+0x298]
398837 call   0x3a6e84
39883c add    rbx,0x4870
398843 mov    rcx,rbx
398846 call   0x39eea0
39884b mov    rcx,rbx
39884e call   0x2d0d60
398853 test   al,al
398855 je     0x39885e
398857 call   0x392490
39885c jmp    0x398869
39885e mov    rcx,rbx
398861 call   0x39e314
398866 mov    rax,QWORD PTR [rax]
398869 mov    rcx,rax
39886c add    rsp,0x20
398870 pop    rbx
398871 jmp    0x39b290

; tail independent pdata/next-pdata extent 393460..39347c unwind0
393460 cmp    rcx,rdx
393463 jbe    0x393477
393465 lea    rax,[rcx-0x2]
393469 cmp    WORD PTR [rax],0xa
39346d je     0x393477
39346f mov    rcx,rax
393472 cmp    rax,rdx
393475 ja     0x393465
393477 mov    rax,rcx
39347a ret
39347b int3

; tail independent pdata/next-pdata extent 394014..394050 unwind0
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

; tail independent pdata/next-pdata extent 38baf4..38bb2a unwind3d3f58
38baf4 rex push rbx
38baf6 sub    rsp,0x30
38bafa movaps XMMWORD PTR [rsp+0x20],xmm6
38baff mov    rbx,rcx
38bb02 movaps xmm6,xmm3
38bb05 call   0x2cc340
38bb0a movss  xmm2,DWORD PTR [rsp+0x60]
38bb10 lea    rcx,[rbx+0x8]
38bb14 movaps xmm1,xmm6
38bb17 call   0x2cc340
38bb1c movaps xmm6,XMMWORD PTR [rsp+0x20]
38bb21 mov    rax,rbx
38bb24 add    rsp,0x30
38bb28 pop    rbx
38bb29 ret

; tail independent pdata/next-pdata extent 39b290..39b345 unwind3d2040
39b290 mov    QWORD PTR [rsp+0x8],rbx
39b295 push   rdi
39b296 sub    rsp,0x20
39b29a mov    rbx,QWORD PTR [rip+0x6a887]        # 0x405b28
39b2a1 mov    rdi,rcx
39b2a4 movss  xmm0,DWORD PTR [rip+0xffffffffffef1fa8]        # 0x28d254
39b2ab 
39b2ac movss  xmm1,DWORD PTR [rbx+0x60]
39b2b1 mov    QWORD PTR [rbx+0x3c28],rcx
39b2b8 mulss  xmm1,DWORD PTR [rcx+0x14]
39b2bd mulss  xmm1,DWORD PTR [rcx+0x64]
39b2c2 call   0x38a3f4
39b2c7 mov    rcx,QWORD PTR [rbx+0x3f08]
39b2ce movss  DWORD PTR [rbx+0x3c34],xmm0
39b2d5 
39b2d6 test   rcx,rcx
39b2d9 je     0x39b2e5
39b2db call   0x38f1fc
39b2e0 movaps xmm1,xmm0
39b2e3 jmp    0x39b2e8
39b2e5 xorps  xmm1,xmm1
39b2e8 movss  DWORD PTR [rbx+0x3c30],xmm1
39b2ef 
39b2f0 mov    rcx,QWORD PTR [rdi+0x40]
39b2f4 movsd  xmm0,QWORD PTR [rcx+0x50]
39b2f9 lea    rax,[rcx+0x88]
39b300 mov    QWORD PTR [rbx+0x3e40],rax
39b307 lea    rax,[rcx+0x49c]
39b30e mov    QWORD PTR [rbx+0x3e48],rax
39b315 lea    rax,[rcx+0x4a4]
39b31c mov    QWORD PTR [rbx+0x3e50],rax
39b323 movss  DWORD PTR [rbx+0x3c48],xmm1
39b32a 
39b32b movsd  QWORD PTR [rbx+0x3c38],xmm0
39b332 
39b333 mov    QWORD PTR [rbx+0x3c40],rdi
39b33a mov    rbx,QWORD PTR [rsp+0x30]
39b33f add    rsp,0x20
39b343 pop    rdi
39b344 ret

; tail independent pdata/next-pdata extent 392490..3924bb unwind3d2064
392490 sub    rsp,0x28
392494 mov    rcx,QWORD PTR [rip+0x7368d]        # 0x405b28
39249b mov    rax,QWORD PTR [rcx+0x68]
39249f test   rax,rax
3924a2 jne    0x3924b6
3924a4 mov    rcx,QWORD PTR [rcx+0x58]
3924a8 xor    edx,edx
3924aa add    rcx,0x58
3924ae call   0x38bb84
3924b3 mov    rax,QWORD PTR [rax]
3924b6 add    rsp,0x28
3924ba ret

; tail independent pdata/next-pdata extent 3a73c4..3a7400 unwind3d232c
3a73c4 mov    QWORD PTR [rsp+0x8],rbx
3a73c9 mov    QWORD PTR [rsp+0x10],rdx
3a73ce push   rdi
3a73cf sub    rsp,0x20
3a73d3 mov    rdi,rdx
3a73d6 mov    rbx,rcx
3a73d9 add    rcx,0x68
3a73dd lea    rdx,[rsp+0x38]
3a73e2 call   0x37a658
3a73e7 mov    rcx,rbx
3a73ea mov    QWORD PTR [rbx+0x98],rdi
3a73f1 mov    rbx,QWORD PTR [rsp+0x30]
3a73f6 add    rsp,0x20
3a73fa pop    rdi
3a73fb jmp    0x3a8e28

; tail independent pdata/next-pdata extent 3a6e84..3a6ec8 unwind3d2040
3a6e84 mov    QWORD PTR [rsp+0x8],rbx
3a6e89 push   rdi
3a6e8a sub    rsp,0x20
3a6e8e lea    rbx,[rcx+0x68]
3a6e92 mov    rdi,rcx
3a6e95 mov    rcx,rbx
3a6e98 call   0x39eea0
3a6e9d xor    eax,eax
3a6e9f cmp    DWORD PTR [rbx],eax
3a6ea1 je     0x3a6eaf
3a6ea3 movsxd rcx,DWORD PTR [rbx]
3a6ea6 mov    rax,QWORD PTR [rdi+0x70]
3a6eaa mov    rax,QWORD PTR [rax+rcx*8-0x8]
3a6eaf mov    rcx,rdi
3a6eb2 mov    QWORD PTR [rdi+0x98],rax
3a6eb9 mov    rbx,QWORD PTR [rsp+0x30]
3a6ebe add    rsp,0x20
3a6ec2 pop    rdi
3a6ec3 jmp    0x3a8e28

; tail independent pdata/next-pdata extent 38cd28..38cdc2 unwind3d4710
38cd28 rex push rbx
38cd2a sub    rsp,0x60
38cd2e cmp    BYTE PTR [rcx+0x37b1],0x0
38cd35 movaps XMMWORD PTR [rsp+0x50],xmm6
38cd3a movaps xmm6,xmm2
38cd3d movaps XMMWORD PTR [rsp+0x40],xmm7
38cd42 movaps xmm7,xmm1
38cd45 je     0x38cdb2
38cd47 xorps  xmm0,xmm0
38cd4a ucomiss xmm7,xmm0
38cd4d jp     0x38cd58
38cd4f jne    0x38cd58
38cd51 ucomiss xmm6,xmm0
38cd54 jp     0x38cd58
38cd56 je     0x38cdb2
38cd58 mov    rbx,QWORD PTR [rcx+0xdf8]
38cd5f lea    rcx,[rsp+0x20]
38cd64 call   0x38afa8
38cd69 mov    eax,DWORD PTR [rbx+0x3ea4]
38cd6f lea    rcx,[rbx+0x3e80]
38cd76 mov    DWORD PTR [rsp+0x28],eax
38cd7a lea    rdx,[rsp+0x20]
38cd7f inc    eax
38cd81 movss  DWORD PTR [rsp+0x2c],xmm7
38cd87 mov    DWORD PTR [rbx+0x3ea4],eax
38cd8d mov    eax,DWORD PTR [rbx+0x3ea0]
38cd93 mov    DWORD PTR [rsp+0x34],eax
38cd97 movss  DWORD PTR [rsp+0x30],xmm6
38cd9d mov    DWORD PTR [rsp+0x20],0x2
38cda4 
38cda5 mov    DWORD PTR [rsp+0x24],0x1
38cdac 
38cdad call   0x39efe0
38cdb2 movaps xmm6,XMMWORD PTR [rsp+0x50]
38cdb7 movaps xmm7,XMMWORD PTR [rsp+0x40]
38cdbc add    rsp,0x60
38cdc0 pop    rbx
38cdc1 ret

; tail independent pdata/next-pdata extent 38afa8..38afb8 unwind0
38afa8 xorps  xmm0,xmm0
38afab mov    rax,rcx
38afae movups XMMWORD PTR [rcx],xmm0
38afb1 movups XMMWORD PTR [rcx+0xc],xmm0
38afb5 ret
38afb6 int3
38afb7 int3

; tail independent pdata/next-pdata extent 39efe0..39f030 unwind3d2040
39efe0 mov    QWORD PTR [rsp+0x8],rbx
39efe5 push   rdi
39efe6 sub    rsp,0x20
39efea mov    rdi,rdx
39efed mov    rbx,rcx
39eff0 mov    edx,DWORD PTR [rcx]
39eff2 cmp    edx,DWORD PTR [rcx+0x4]
39eff5 jne    0x39f008
39eff7 inc    edx
39eff9 call   0x362efc
39effe mov    edx,eax
39f000 mov    rcx,rbx
39f003 call   0x37a958
39f008 movsxd rax,DWORD PTR [rbx]
39f00b movups xmm0,XMMWORD PTR [rdi]
39f00e imul   rcx,rax,0x1c
39f012 mov    rax,QWORD PTR [rbx+0x8]
39f016 movups XMMWORD PTR [rcx+rax*1],xmm0
39f01a movups xmm1,XMMWORD PTR [rdi+0xc]
39f01e movups XMMWORD PTR [rcx+rax*1+0xc],xmm1
39f023 inc    DWORD PTR [rbx]
39f025 mov    rbx,QWORD PTR [rsp+0x30]
39f02a add    rsp,0x20
39f02e pop    rdi
39f02f ret

; tail independent pdata/next-pdata extent 37a958..37a9b6 unwind3d2054
37a958 mov    QWORD PTR [rsp+0x8],rbx
37a95d mov    QWORD PTR [rsp+0x10],rsi
37a962 push   rdi
37a963 sub    rsp,0x20
37a967 movsxd rdi,edx
37a96a mov    rbx,rcx
37a96d cmp    edi,DWORD PTR [rcx+0x4]
37a970 jle    0x37a9a6
37a972 imul   rcx,rdi,0x1c
37a976 call   0x395158
37a97b mov    rdx,QWORD PTR [rbx+0x8]
37a97f mov    rsi,rax
37a982 test   rdx,rdx
37a985 je     0x37a99f
37a987 movsxd rcx,DWORD PTR [rbx]
37a98a imul   r8,rcx,0x1c
37a98e mov    rcx,rax
37a991 call   0x3c8d4c
37a996 mov    rcx,QWORD PTR [rbx+0x8]
37a99a call   0x39517c
37a99f mov    QWORD PTR [rbx+0x8],rsi
37a9a3 mov    DWORD PTR [rbx+0x4],edi
37a9a6 mov    rbx,QWORD PTR [rsp+0x30]
37a9ab mov    rsi,QWORD PTR [rsp+0x38]
37a9b0 add    rsp,0x20
37a9b4 pop    rdi
37a9b5 ret

; tail independent pdata/next-pdata extent 3c5ed4..3c5f4f unwind3d2040
3c5ed4 mov    QWORD PTR [rsp+0x8],rbx
3c5ed9 push   rdi
3c5eda sub    rsp,0x20
3c5ede mov    edi,edx
3c5ee0 mov    rbx,rcx
3c5ee3 call   0x3c68f0
3c5ee8 cmp    WORD PTR [rcx+0xdfe],0x63
3c5eef 
3c5ef0 jne    0x3c5ef7
3c5ef2 call   0x3c6680
3c5ef7 cmp    edi,0x3e7
3c5efd jle    0x3c5f18
3c5eff xor    eax,eax
3c5f01 mov    WORD PTR [rbx+0xdfe],ax
3c5f08 mov    DWORD PTR [rbx+0xe04],eax
3c5f0e jmp    0x3c5f44
3c5f10 mov    rcx,rbx
3c5f13 call   0x3c6680
3c5f18 mov    ecx,DWORD PTR [rbx+0xe04]
3c5f1e add    ecx,edi
3c5f20 cmp    ecx,0x3e7
3c5f26 jg     0x3c5f10
3c5f28 movsx  rcx,WORD PTR [rbx+0xdfe]
3c5f2f 
3c5f30 lea    eax,[rcx+0x1]
3c5f33 mov    WORD PTR [rbx+0xdfe],ax
3c5f3a mov    rax,rcx
3c5f3d shl    rax,0x4
3c5f41 add    rax,rbx
3c5f44 mov    rbx,QWORD PTR [rsp+0x30]
3c5f49 add    rsp,0x20
3c5f4d pop    rdi
3c5f4e ret

; tail independent pdata/next-pdata extent 3c5f50..3c5fb4 unwind3d2130
3c5f50 rex push rbx
3c5f52 push   rbp
3c5f53 push   rsi
3c5f54 push   rdi
3c5f55 sub    rsp,0x28
3c5f59 mov    ebp,edx
3c5f5b mov    esi,r9d
3c5f5e mov    edx,r8d
3c5f61 mov    edi,r8d
3c5f64 mov    rbx,rcx
3c5f67 call   0x3c5ed4
3c5f6c mov    r10,rax
3c5f6f test   rax,rax
3c5f72 jne    0x3c5f78
3c5f74 xor    eax,eax
3c5f76 jmp    0x3c5fab
3c5f78 mov    DWORD PTR [rax],ebp
3c5f7a mov    DWORD PTR [rax+0x4],edi
3c5f7d mov    DWORD PTR [rax+0x8],esi
3c5f80 test   edi,edi
3c5f82 jne    0x3c5f8d
3c5f84 mov    DWORD PTR [rax+0xc],0xffffffff
3c5f8b jmp    0x3c5f74
3c5f8d mov    eax,DWORD PTR [rbx+0xe04]
3c5f93 mov    DWORD PTR [r10+0xc],eax
3c5f97 add    DWORD PTR [rbx+0xe04],edi
3c5f9d movsxd rax,DWORD PTR [r10+0xc]
3c5fa1 add    rax,0x318
3c5fa7 lea    rax,[rbx+rax*2]
3c5fab add    rsp,0x28
3c5faf pop    rdi
3c5fb0 pop    rsi
3c5fb1 pop    rbp
3c5fb2 pop    rbx
3c5fb3 ret

; tail independent pdata/next-pdata extent 3c619c..3c62c1 unwind3d20b4
3c619c rex push rbx
3c619e push   rbp
3c619f push   rsi
3c61a0 push   rdi
3c61a1 push   r12
3c61a3 push   r13
3c61a5 push   r14
3c61a7 push   r15
3c61a9 sub    rsp,0x28
3c61ad movsx  rax,WORD PTR [rdx+0xe20]
3c61b4 
3c61b5 mov    rbx,rdx
3c61b8 mov    rbp,rcx
3c61bb cmp    eax,0x63
3c61be je     0x3c62b0
3c61c4 movsx  rdi,WORD PTR [rdx+0xe1e]
3c61cb 
3c61cc add    rax,rax
3c61cf add    rdi,rdi
3c61d2 mov    r12d,0x1
3c61d8 mov    r15d,DWORD PTR [rdx+rax*8+0x28]
3c61dd mov    r14d,DWORD PTR [rdx+rax*8+0x20]
3c61e2 mov    esi,DWORD PTR [rdx+rax*8+0x24]
3c61e6 movsxd r13,DWORD PTR [rdx+rax*8+0x2c]
3c61eb mov    DWORD PTR [rdx+rdi*8+0x28],esi
3c61ef mov    DWORD PTR [rdx+rdi*8+0x24],r15d
3c61f4 mov    DWORD PTR [rdx+rdi*8+0x20],r14d
3c61f9 mov    DWORD PTR [rdx+rdi*8+0x2c],0xffffffff
3c6200 
3c6201 test   r15d,r15d
3c6204 je     0x3c6277
3c6206 mov    ecx,DWORD PTR [rdx+0xe24]
3c620c lea    eax,[r15+rcx*1]
3c6210 cmp    eax,DWORD PTR [rdx+0xe28]
3c6216 jle    0x3c6223
3c6218 mov    QWORD PTR [rdx+rdi*8+0x24],0x0
3c621f 
3c6221 jmp    0x3c6269
3c6223 mov    DWORD PTR [rdx+rdi*8+0x2c],ecx
3c6227 xor    r12d,r12d
3c622a add    DWORD PTR [rdx+0xe24],r15d
3c6231 cmp    DWORD PTR [rdx+rdi*8+0x24],r12d
3c6236 jle    0x3c6263
3c6238 mov    edx,DWORD PTR [rbx+rdi*8+0x20]
3c623c mov    rcx,rbp
3c623f add    edx,r12d
3c6242 call   0x3c2f30
3c6247 mov    ecx,DWORD PTR [rbx+rdi*8+0x2c]
3c624b add    ecx,r12d
3c624e inc    r12d
3c6251 movsxd rcx,ecx
3c6254 mov    WORD PTR [rbx+rcx*2+0x650],ax
3c625b 
3c625c cmp    r12d,DWORD PTR [rbx+rdi*8+0x24]
3c6261 jl     0x3c6238
3c6263 mov    r12d,0x1
3c6269 mov    r8d,r15d
3c626c mov    edx,r14d
3c626f mov    rcx,rbp
3c6272 call   0x3c2ec0
3c6277 test   esi,esi
3c6279 je     0x3c629a
3c627b lea    rax,[rbx+0x650]
3c6282 mov    r9d,esi
3c6285 lea    r8,[rax+r13*2]
3c6289 mov    edx,r14d
3c628c mov    rcx,rbp
3c628f call   0x3c2fa4
3c6294 add    DWORD PTR [rbx+0xe28],esi
3c629a lea    eax,[r14+rsi*1]
3c629e mov    DWORD PTR [rbx],eax
3c62a0 add    WORD PTR [rbx+0xe1e],r12w
3c62a7 
3c62a8 add    WORD PTR [rbx+0xe20],r12w
3c62af 
3c62b0 add    rsp,0x28
3c62b4 pop    r15
3c62b6 pop    r14
3c62b8 pop    r13
3c62ba pop    r12
3c62bc pop    rdi
3c62bd pop    rsi
3c62be pop    rbp
3c62bf pop    rbx
3c62c0 ret

; tail independent pdata/next-pdata extent 3c62c4..3c6416 unwind3d20b4
3c62c4 rex push rbx
3c62c6 push   rbp
3c62c7 push   rsi
3c62c8 push   rdi
3c62c9 push   r12
3c62cb push   r13
3c62cd push   r14
3c62cf push   r15
3c62d1 sub    rsp,0x28
3c62d5 movsx  rax,WORD PTR [rdx+0xe1e]
3c62dc 
3c62dd xor    r15d,r15d
3c62e0 mov    rbx,rdx
3c62e3 mov    r12,rcx
3c62e6 test   ax,ax
3c62e9 je     0x3c6405
3c62ef movsx  rcx,WORD PTR [rdx+0xe20]
3c62f6 
3c62f7 dec    rax
3c62fa add    rax,rax
3c62fd add    rcx,rcx
3c6300 or     ebp,0xffffffff
3c6303 mov    edi,DWORD PTR [rdx+rax*8+0x28]
3c6307 mov    r14d,DWORD PTR [rdx+rax*8+0x20]
3c630c mov    esi,DWORD PTR [rdx+rax*8+0x24]
3c6310 movsxd r13,DWORD PTR [rdx+rax*8+0x2c]
3c6315 mov    DWORD PTR [rdx+rcx*8+0x1c],ebp
3c6319 mov    DWORD PTR [rdx+rcx*8+0x14],edi
3c631d mov    DWORD PTR [rdx+rcx*8+0x18],esi
3c6321 mov    DWORD PTR [rdx+rcx*8+0x10],r14d
3c6326 test   edi,edi
3c6328 je     0x3c63ce
3c632e mov    r8d,DWORD PTR [rdx+0xe24]
3c6335 add    r8d,edi
3c6338 cmp    r8d,0x3e7
3c633f jl     0x3c6348
3c6341 mov    DWORD PTR [rdx+rcx*8+0x14],r15d
3c6346 jmp    0x3c63c0
3c6348 mov    edx,DWORD PTR [rdx+0xe28]
3c634e cmp    r8d,edx
3c6351 jle    0x3c637c
3c6353 cmp    WORD PTR [rbx+0xe20],0x63
3c635a 
3c635b je     0x3c6405
3c6361 lea    rcx,[rbx+0x20]
3c6365 call   0x3c65b8
3c636a mov    ecx,DWORD PTR [rbx+0xe24]
3c6370 mov    edx,DWORD PTR [rbx+0xe28]
3c6376 add    ecx,edi
3c6378 cmp    ecx,edx
3c637a jg     0x3c6353
3c637c movsx  rbp,WORD PTR [rbx+0xe20]
3c6383 
3c6384 sub    edx,edi
3c6386 add    rbp,rbp
3c6389 mov    DWORD PTR [rbx+rbp*8+0x1c],edx
3c638d sub    DWORD PTR [rbx+0xe28],edi
3c6393 test   edi,edi
3c6395 jle    0x3c63bd
3c6397 lea    edx,[r15+r14*1]
3c639b mov    rcx,r12
3c639e call   0x3c2f30
3c63a3 mov    ecx,DWORD PTR [rbx+rbp*8+0x1c]
3c63a7 add    ecx,r15d
3c63aa inc    r15d
3c63ad movsxd rcx,ecx
3c63b0 mov    WORD PTR [rbx+rcx*2+0x650],ax
3c63b7 
3c63b8 cmp    r15d,edi
3c63bb jl     0x3c6397
3c63bd or     ebp,0xffffffff
3c63c0 mov    r8d,edi
3c63c3 mov    edx,r14d
3c63c6 mov    rcx,r12
3c63c9 call   0x3c2ec0
3c63ce test   esi,esi
3c63d0 je     0x3c63f1
3c63d2 lea    rax,[rbx+0x650]
3c63d9 mov    r9d,esi
3c63dc lea    r8,[rax+r13*2]
3c63e0 mov    edx,r14d
3c63e3 mov    rcx,r12
3c63e6 call   0x3c2fa4
3c63eb sub    DWORD PTR [rbx+0xe24],esi
3c63f1 lea    eax,[r14+rsi*1]
3c63f5 mov    DWORD PTR [rbx],eax
3c63f7 add    WORD PTR [rbx+0xe1e],bp
3c63fe add    WORD PTR [rbx+0xe20],bp
3c6405 add    rsp,0x28
3c6409 pop    r15
3c640b pop    r14
3c640d pop    r13
3c640f pop    r12
3c6411 pop    rdi
3c6412 pop    rsi
3c6413 pop    rbp
3c6414 pop    rbx
3c6415 ret

; tail independent pdata/next-pdata extent 3c6144..3c619a unwind3d2308
3c6144 rex push rbx
3c6146 push   rbp
3c6147 push   rsi
3c6148 push   rdi
3c6149 push   r14
3c614b sub    rsp,0x20
3c614f mov    edi,r9d
3c6152 mov    esi,r8d
3c6155 mov    r9d,DWORD PTR [rsp+0x70]
3c615a mov    rbp,rcx
3c615d lea    rcx,[rdx+0x20]
3c6161 mov    r8d,edi
3c6164 mov    edx,esi
3c6166 call   0x3c5f50
3c616b mov    r14,rax
3c616e test   rax,rax
3c6171 je     0x3c618f
3c6173 xor    ebx,ebx
3c6175 test   edi,edi
3c6177 jle    0x3c618f
3c6179 lea    edx,[rbx+rsi*1]
3c617c mov    rcx,rbp
3c617f call   0x3c2f30
3c6184 mov    WORD PTR [r14+rbx*2],ax
3c6189 inc    ebx
3c618b cmp    ebx,edi
3c618d jl     0x3c6179
3c618f add    rsp,0x20
3c6193 pop    r14
3c6195 pop    rdi
3c6196 pop    rsi
3c6197 pop    rbp
3c6198 pop    rbx
3c6199 ret

; tail independent pdata/next-pdata extent 3c6134..3c6144 unwind0
3c6134 mov    r9d,r8d
3c6137 add    rcx,0x20
3c613b xor    r8d,r8d
3c613e jmp    0x3c5f50
3c6143 int3

; tail independent pdata/next-pdata extent 3c6680..3c672d unwind3d2054
3c6680 mov    QWORD PTR [rsp+0x8],rbx
3c6685 mov    QWORD PTR [rsp+0x10],rsi
3c668a push   rdi
3c668b sub    rsp,0x20
3c668f mov    rbx,rcx
3c6692 xor    esi,esi
3c6694 movzx  ecx,WORD PTR [rcx+0xdfe]
3c669b test   cx,cx
3c669e jle    0x3c671d
3c66a0 cmp    DWORD PTR [rbx+0xc],esi
3c66a3 jl     0x3c66ff
3c66a5 movsxd rdi,DWORD PTR [rbx+0x4]
3c66a9 lea    rax,[rbx+0x630]
3c66b0 sub    DWORD PTR [rbx+0xe04],edi
3c66b6 lea    rcx,[rbx+0x630]
3c66bd movsxd r8,DWORD PTR [rbx+0xe04]
3c66c4 add    r8,r8
3c66c7 lea    rdx,[rax+rdi*2]
3c66cb call   0x3c8d4c
3c66d0 movzx  ecx,WORD PTR [rbx+0xdfe]
3c66d7 mov    edx,esi
3c66d9 cmp    si,cx
3c66dc jge    0x3c66ff
3c66de movsxd rax,edx
3c66e1 add    rax,rax
3c66e4 mov    ecx,DWORD PTR [rbx+rax*8+0xc]
3c66e8 test   ecx,ecx
3c66ea js     0x3c66f2
3c66ec sub    ecx,edi
3c66ee mov    DWORD PTR [rbx+rax*8+0xc],ecx
3c66f2 movsx  ecx,WORD PTR [rbx+0xdfe]
3c66f9 inc    edx
3c66fb cmp    edx,ecx
3c66fd jl     0x3c66de
3c66ff dec    cx
3c6702 lea    rdx,[rbx+0x10]
3c6706 movsx  r8,cx
3c670a mov    WORD PTR [rbx+0xdfe],cx
3c6711 mov    rcx,rbx
3c6714 shl    r8,0x4
3c6718 call   0x3c8d4c
3c671d mov    rbx,QWORD PTR [rsp+0x30]
3c6722 mov    rsi,QWORD PTR [rsp+0x38]
3c6727 add    rsp,0x20
3c672b pop    rdi
3c672c ret

; tail independent pdata/next-pdata extent 3c65b8..3c6680 unwind3d2130
3c65b8 rex push rbx
3c65ba push   rbp
3c65bb push   rsi
3c65bc push   rdi
3c65bd sub    rsp,0x28
3c65c1 mov    edi,0x62
3c65c6 mov    rbx,rcx
3c65c9 cmp    WORD PTR [rcx+0xe00],di
3c65d0 jg     0x3c6677
3c65d6 cmp    DWORD PTR [rcx+0x62c],0x0
3c65dd lea    ebp,[rdi-0x61]
3c65e0 jl     0x3c664c
3c65e2 movsxd rsi,DWORD PTR [rcx+0x624]
3c65e9 mov    eax,0x3e7
3c65ee add    DWORD PTR [rcx+0xe08],esi
3c65f4 movsxd rcx,DWORD PTR [rcx+0xe08]
3c65fb mov    r9,rcx
3c65fe sub    eax,ecx
3c6600 sub    rcx,rsi
3c6603 movsxd r8,eax
3c6606 add    rcx,0x318
3c660d add    r9,0x318
3c6614 add    r8,r8
3c6617 lea    rdx,[rbx+rcx*2]
3c661b lea    rcx,[rbx+r9*2]
3c661f call   0x3c8d4c
3c6624 movsx  eax,WORD PTR [rbx+0xe00]
3c662b mov    edx,eax
3c662d cmp    ax,di
3c6630 jge    0x3c664c
3c6632 movsxd rcx,edx
3c6635 add    rcx,rcx
3c6638 mov    eax,DWORD PTR [rbx+rcx*8+0xc]
3c663c test   eax,eax
3c663e js     0x3c6646
3c6640 add    eax,esi
3c6642 mov    DWORD PTR [rbx+rcx*8+0xc],eax
3c6646 add    edx,ebp
3c6648 cmp    edx,edi
3c664a jl     0x3c6632
3c664c movsx  rcx,WORD PTR [rbx+0xe00]
3c6653 
3c6654 mov    rdx,rcx
3c6657 sub    edi,ecx
3c6659 shl    rdx,0x4
3c665d add    rdx,rbx
3c6660 movsxd r8,edi
3c6663 shl    r8,0x4
3c6667 lea    rcx,[rdx+0x10]
3c666b call   0x3c8d4c
3c6670 add    WORD PTR [rbx+0xe00],bp
3c6677 add    rsp,0x28
3c667b pop    rdi
3c667c pop    rsi
3c667d pop    rbp
3c667e pop    rbx
3c667f ret

; tail independent pdata/next-pdata extent 3c6520..3c6554 unwind3d2130
3c6520 rex push rbx
3c6522 push   rbp
3c6523 push   rsi
3c6524 push   rdi
3c6525 sub    rsp,0x28
3c6529 mov    edi,r9d
3c652c mov    esi,r8d
3c652f mov    rbp,rdx
3c6532 mov    rbx,rcx
3c6535 call   0x3c60e0
3c653a mov    r8d,edi
3c653d mov    edx,esi
3c653f mov    rcx,rbx
3c6542 call   0x3c2ec0
3c6547 mov    BYTE PTR [rbp+0x16],0x0
3c654b add    rsp,0x28
3c654f pop    rdi
3c6550 pop    rsi
3c6551 pop    rbp
3c6552 pop    rbx
3c6553 ret

; tail independent pdata/next-pdata extent 3c2fa4..3c30b7 unwind3d59e8
3c2fa4 mov    QWORD PTR [rsp+0x10],rbx
3c2fa9 mov    QWORD PTR [rsp+0x18],r8
3c2fae push   rbp
3c2faf push   rsi
3c2fb0 push   rdi
3c2fb1 push   r12
3c2fb3 push   r13
3c2fb5 push   r14
3c2fb7 push   r15
3c2fb9 sub    rsp,0x20
3c2fbd mov    ebp,DWORD PTR [rcx+0xe88]
3c2fc3 mov    rbx,rcx
3c2fc6 mov    edi,DWORD PTR [rcx+0xc]
3c2fc9 movsxd r12,r9d
3c2fcc movsxd r13,edx
3c2fcf mov    rcx,r12
3c2fd2 add    rcx,rcx
3c2fd5 mov    QWORD PTR [rsp+0x60],rcx
3c2fda lea    rdx,[rcx+r8*1]
3c2fde mov    rcx,r8
3c2fe1 call   0x393b5c
3c2fe6 mov    DWORD PTR [rsp+0x78],eax
3c2fea and    ebp,0x40000
3c2ff0 jne    0x3c2ffe
3c2ff2 mov    edx,DWORD PTR [rbx+0x10]
3c2ff5 inc    edx
3c2ff7 add    edx,eax
3c2ff9 cmp    edx,DWORD PTR [rbx+0x4c]
3c2ffc jg     0x3c3012
3c2ffe lea    eax,[r12+0x1]
3c3003 add    eax,edi
3c3005 lea    r15,[rbx+0x18]
3c3009 cmp    eax,DWORD PTR [r15]
3c300c jle    0x3c3048
3c300e test   ebp,ebp
3c3010 jne    0x3c3019
3c3012 xor    al,al
3c3014 jmp    0x3c30a2
3c3019 mov    edx,r12d
3c301c mov    ecx,0x100
3c3021 call   0x39f28c
3c3026 mov    r8d,eax
3c3029 lea    ecx,[r12*4+0x0]
3c3030 
3c3031 mov    edx,0x20
3c3036 call   0x3762ac
3c303b lea    edx,[rdi+0x1]
3c303e mov    rcx,r15
3c3041 add    edx,eax
3c3043 call   0x37ad04
3c3048 mov    r14,QWORD PTR [rbx+0x20]
3c304c cmp    r13d,edi
3c304f je     0x3c306b
3c3051 sub    edi,r13d
3c3054 lea    rax,[r12+r13*1]
3c3058 movsxd r8,edi
3c305b lea    rdx,[r14+r13*2]
3c305f add    r8,r8
3c3062 lea    rcx,[r14+rax*2]
3c3066 call   0x3c8d4c
3c306b mov    r8,QWORD PTR [rsp+0x60]
3c3070 lea    rcx,[r14+r13*2]
3c3074 mov    rdx,QWORD PTR [rsp+0x70]
3c3079 call   0x3c8d4c
3c307e add    DWORD PTR [rbx+0xc],r12d
3c3082 mov    rcx,r15
3c3085 mov    eax,DWORD PTR [rsp+0x78]
3c3089 mov    edx,DWORD PTR [rbx+0xc]
3c308c add    DWORD PTR [rbx+0x10],eax
3c308f mov    BYTE PTR [rbx+0xe86],0x1
3c3096 call   0x39f604
3c309b xor    ecx,ecx
3c309d mov    WORD PTR [rax],cx
3c30a0 mov    al,0x1
3c30a2 mov    rbx,QWORD PTR [rsp+0x68]
3c30a7 add    rsp,0x20
3c30ab pop    r15
3c30ad pop    r14
3c30af pop    r13
3c30b1 pop    r12
3c30b3 pop    rdi
3c30b4 pop    rsi
3c30b5 pop    rbp
3c30b6 ret

; tail independent pdata/next-pdata extent 3c2ec0..3c2f2e unwind3d2738
3c2ec0 rex push rbx
3c2ec2 push   rsi
3c2ec3 push   rdi
3c2ec4 push   r14
3c2ec6 sub    rsp,0x28
3c2eca movsxd rax,edx
3c2ecd mov    rdi,rcx
3c2ed0 mov    rdx,QWORD PTR [rcx+0x20]
3c2ed4 movsxd rsi,r8d
3c2ed7 mov    BYTE PTR [rcx+0xe86],0x1
3c2ede lea    r14,[rdx+rax*2]
3c2ee2 lea    rbx,[rax+rsi*1]
3c2ee6 mov    rcx,r14
3c2ee9 lea    rdx,[rdx+rbx*2]
3c2eed call   0x393b5c
3c2ef2 sub    DWORD PTR [rdi+0x10],eax
3c2ef5 mov    rax,QWORD PTR [rdi+0x20]
3c2ef9 sub    DWORD PTR [rdi+0xc],esi
3c2efc movzx  ecx,WORD PTR [rax+rbx*2]
3c2f00 lea    rdx,[rax+0x2]
3c2f04 lea    rdx,[rdx+rbx*2]
3c2f08 xor    eax,eax
3c2f0a jmp    0x3c2f1b
3c2f0c mov    WORD PTR [r14],cx
3c2f10 add    r14,0x2
3c2f14 movzx  ecx,WORD PTR [rdx]
3c2f17 lea    rdx,[rdx+0x2]
3c2f1b test   cx,cx
3c2f1e jne    0x3c2f0c
3c2f20 mov    WORD PTR [r14],ax
3c2f24 add    rsp,0x28
3c2f28 pop    r14
3c2f2a pop    rdi
3c2f2b pop    rsi
3c2f2c pop    rbx
3c2f2d ret

; tail independent pdata/next-pdata extent 3c3230..3c3234 unwind0
3c3230 mov    eax,DWORD PTR [rcx+0xc]
3c3233 ret

; tail independent pdata/next-pdata extent 3c6794..3c68ed unwind3d5a2c
3c6794 rex push rbp
3c6796 push   rbx
3c6797 push   rsi
3c6798 push   rdi
3c6799 push   r12
3c679b push   r13
3c679d push   r14
3c679f push   r15
3c67a1 mov    rbp,rsp
3c67a4 sub    rsp,0x58
3c67a8 mov    rdi,rcx
3c67ab movaps XMMWORD PTR [rsp+0x40],xmm6
3c67b0 mov    rcx,rdx
3c67b3 mov    r12d,r8d
3c67b6 mov    r14,rdx
3c67b9 call   0x3c3230
3c67be xor    r15d,r15d
3c67c1 mov    ebx,eax
3c67c3 cmp    r8d,eax
3c67c6 jne    0x3c6801
3c67c8 test   r9d,r9d
3c67cb je     0x3c6801
3c67cd xor    r8d,r8d
3c67d0 lea    rcx,[rbp-0x38]
3c67d4 call   0x3c30b8
3c67d9 movss  xmm0,DWORD PTR [rbp-0x28]
3c67de subss  xmm0,DWORD PTR [rbp-0x2c]
3c67e3 mov    DWORD PTR [rdi+0x4],r15d
3c67e7 mov    DWORD PTR [rdi+0xc],r15d
3c67eb mov    DWORD PTR [rdi+0x10],ebx
3c67ee movss  DWORD PTR [rdi+0x8],xmm0
3c67f3 movss  xmm0,DWORD PTR [rbp-0x34]
3c67f8 movss  DWORD PTR [rdi],xmm0
3c67fc jmp    0x3c68d7
3c6801 xor    r8d,r8d
3c6804 mov    DWORD PTR [rbp+0x58],r15d
3c6808 lea    rcx,[rbp-0x38]
3c680c mov    DWORD PTR [rdi+0x4],r15d
3c6810 mov    r13d,r15d
3c6813 mov    esi,r15d
3c6816 call   0x3c30b8
3c681b mov    r15d,DWORD PTR [rbp-0x24]
3c681f cmp    r12d,r15d
3c6822 jl     0x3c6884
3c6824 lea    eax,[rbx-0x1]
3c6827 lea    r13d,[r15+rsi*1]
3c682b cmp    r13d,ebx
3c682e jne    0x3c6847
3c6830 test   ebx,ebx
3c6832 jle    0x3c6847
3c6834 mov    edx,eax
3c6836 mov    rcx,r14
3c6839 call   0x3c2f30
3c683e cmp    ax,WORD PTR [rip+0xffffffffffeb935b]        # 0x27fba0
3c6845 jne    0x3c6880
3c6847 movss  xmm0,DWORD PTR [rbp-0x30]
3c684c mov    DWORD PTR [rbp+0x58],esi
3c684f mov    esi,r13d
3c6852 addss  xmm0,DWORD PTR [rdi+0x4]
3c6857 movss  DWORD PTR [rdi+0x4],xmm0
3c685c cmp    r13d,ebx
3c685f je     0x3c6880
3c6861 mov    r8d,r13d
3c6864 lea    rcx,[rbp-0x38]
3c6868 mov    rdx,r14
3c686b call   0x3c30b8
3c6870 mov    r15d,DWORD PTR [rbp-0x24]
3c6874 lea    eax,[r15+r13*1]
3c6878 cmp    r12d,eax
3c687b lea    eax,[rbx-0x1]
3c687e jge    0x3c6827
3c6880 mov    r13d,DWORD PTR [rbp+0x58]
3c6884 movss  xmm0,DWORD PTR [rbp-0x28]
3c6889 movss  xmm6,DWORD PTR [rbp-0x38]
3c688e movss  DWORD PTR [rdi],xmm6
3c6892 mov    DWORD PTR [rdi+0xc],esi
3c6895 mov    DWORD PTR [rdi+0x10],r15d
3c6899 mov    DWORD PTR [rdi+0x14],r13d
3c689d subss  xmm0,DWORD PTR [rbp-0x2c]
3c68a2 movss  DWORD PTR [rdi+0x8],xmm0
3c68a7 cmp    esi,r12d
3c68aa jge    0x3c68d7
3c68ac xor    r15d,r15d
3c68af mov    r8d,r15d
3c68b2 mov    edx,esi
3c68b4 mov    rcx,r14
3c68b7 mov    ebx,r15d
3c68ba call   0x3c2f48
3c68bf addss  xmm0,xmm6
3c68c3 inc    r15d
3c68c6 lea    eax,[rbx+0x1]
3c68c9 add    eax,esi
3c68cb movss  DWORD PTR [rdi],xmm0
3c68cf movaps xmm6,xmm0
3c68d2 cmp    eax,r12d
3c68d5 jl     0x3c68af
3c68d7 movaps xmm6,XMMWORD PTR [rsp+0x40]
3c68dc add    rsp,0x58
3c68e0 pop    r15
3c68e2 pop    r14
3c68e4 pop    r13
3c68e6 pop    r12
3c68e8 pop    rdi
3c68e9 pop    rsi
3c68ea pop    rbx
3c68eb pop    rbp
3c68ec ret

; tail independent pdata/next-pdata extent 3c30b8..3c3154 unwind3d59d8
3c30b8 mov    r11,rsp
3c30bb mov    QWORD PTR [r11+0x18],rbx
3c30bf mov    QWORD PTR [r11+0x20],rsi
3c30c3 push   rdi
3c30c4 sub    rsp,0x40
3c30c8 mov    rdi,QWORD PTR [rdx+0x20]
3c30cc mov    rsi,rcx
3c30cf movsxd rax,r8d
3c30d2 lea    rcx,[r11+0x8]
3c30d6 mov    BYTE PTR [rsp+0x30],0x1
3c30db mov    QWORD PTR [r11-0x20],0x0
3c30e2 
3c30e3 mov    QWORD PTR [r11+0x10],0x0
3c30ea 
3c30eb lea    rbx,[rax+rax*1]
3c30ef movsxd rax,DWORD PTR [rdx+0xc]
3c30f3 mov    rdx,QWORD PTR [rdx]
3c30f6 lea    r8,[rbx+rdi*1]
3c30fa lea    r9,[rdi+rax*2]
3c30fe lea    rax,[r11+0x10]
3c3102 mov    QWORD PTR [r11-0x28],rax
3c3106 call   0x3c03a8
3c310b movss  xmm1,DWORD PTR [rsp+0x54]
3c3111 mov    rax,QWORD PTR [rsp+0x58]
3c3116 movss  xmm0,DWORD PTR [rsp+0x50]
3c311c sub    rax,rbx
3c311f mov    rbx,QWORD PTR [rsp+0x60]
3c3124 sub    rax,rdi
3c3127 sar    rax,1
3c312a mov    DWORD PTR [rsi+0x14],eax
3c312d movss  DWORD PTR [rsi+0x4],xmm0
3c3132 movss  DWORD PTR [rsi+0x8],xmm1
3c3137 movss  DWORD PTR [rsi+0x10],xmm1
3c313c mov    DWORD PTR [rsi],0x0
3c3142 mov    DWORD PTR [rsi+0xc],0x0
3c3149 mov    rsi,QWORD PTR [rsp+0x68]
3c314e add    rsp,0x40
3c3152 pop    rdi
3c3153 ret

; tail independent pdata/next-pdata extent 3c3154..3c318c unwind3d2040
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

; tail independent pdata/next-pdata extent 3c7a48..3c7a6d unwind3d2064
3c7a48 sub    rsp,0x28
3c7a4c mov    eax,DWORD PTR [rcx+0x8]
3c7a4f cmp    DWORD PTR [rcx+0x4],eax
3c7a52 je     0x3c7a68
3c7a54 call   0x3c7b94
3c7a59 mov    r8d,DWORD PTR [rcx+0x4]
3c7a5d mov    DWORD PTR [rcx],r8d
3c7a60 mov    DWORD PTR [rcx+0x8],r8d
3c7a64 mov    BYTE PTR [rcx+0x16],0x0
3c7a68 add    rsp,0x28
3c7a6c ret

; tail independent pdata/next-pdata extent 3c7a70..3c7aa9 unwind3d2064
3c7a70 sub    rsp,0x28
3c7a74 mov    eax,DWORD PTR [rdx+0x8]
3c7a77 mov    r10,rdx
3c7a7a mov    r8,rcx
3c7a7d cmp    DWORD PTR [rdx+0x4],eax
3c7a80 je     0x3c7aa4
3c7a82 mov    rcx,rdx
3c7a85 call   0x3c7b94
3c7a8a mov    rdx,rcx
3c7a8d mov    rcx,r8
3c7a90 call   0x3c6418
3c7a95 mov    r9d,DWORD PTR [rdx+0x8]
3c7a99 mov    DWORD PTR [rdx],r9d
3c7a9c mov    DWORD PTR [rdx+0x4],r9d
3c7aa0 mov    BYTE PTR [rdx+0x16],0x0
3c7aa4 add    rsp,0x28
3c7aa8 ret

; tail independent pdata/next-pdata extent 3c7b10..3c7b24 unwind0
3c7b10 mov    eax,DWORD PTR [rcx+0x8]
3c7b13 cmp    DWORD PTR [rcx+0x4],eax
3c7b16 jne    0x3c7b21
3c7b18 mov    eax,DWORD PTR [rcx]
3c7b1a mov    DWORD PTR [rcx+0x8],eax
3c7b1d mov    DWORD PTR [rcx+0x4],eax
3c7b20 ret
3c7b21 mov    DWORD PTR [rcx],eax
3c7b23 ret

; tail independent pdata/next-pdata extent 3c68f0..3c690c unwind0
3c68f0 mov    WORD PTR [rcx+0xe00],0x63
3c68f7 
3c68f9 mov    DWORD PTR [rcx+0xe08],0x3e7
3c6900 
3c6903 ret
3c6904 jmp    0x3c6454
3c6909 int3
3c690a int3
3c690b int3
