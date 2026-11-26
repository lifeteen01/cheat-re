; closure independent pdata/next-pdata extent 32225c..3222cf unwind3d33cc
32225c rex push rbx
32225e sub    rsp,0x40
322262 mov    rbx,rdx
322265 movaps XMMWORD PTR [rsp+0x30],xmm6
32226a mov    rdx,r8
32226d lea    rcx,[rsp+0x20]
322272 movaps xmm6,xmm3
322275 call   0x2cc268
32227a movaps xmm1,xmm6
32227d lea    rcx,[rsp+0x28]
322282 call   0x2ddbf8
322287 movzx  eax,WORD PTR [rsp+0x5a]
32228c mov    rcx,rbx
32228f movups xmm0,XMMWORD PTR [rsp+0x20]
322294 mov    WORD PTR [rbx+0xd2],ax
32229b lea    rax,[rsp+0x48]
3222a0 mov    QWORD PTR [rbx+0x78],rax
3222a4 movdqu XMMWORD PTR [rbx+0x88],xmm0
3222ab 
3222ac mov    WORD PTR [rbx+0xd0],0x100
3222b3 
3222b5 mov    QWORD PTR [rbx+0x80],0x2
3222bc 
3222c0 movaps xmm6,XMMWORD PTR [rsp+0x30]
3222c5 add    rsp,0x40
3222c9 pop    rbx
3222ca jmp    0x3cdbd4

; closure independent pdata/next-pdata extent 2d2094..2d2106 unwind3d2348
2d2094 mov    QWORD PTR [rsp+0x8],rbx
2d2099 push   rdi
2d209a sub    rsp,0x30
2d209e mov    rdi,rdx
2d20a1 lea    rcx,[rsp+0x20]
2d20a6 mov    rdx,r8
2d20a9 mov    rbx,r9
2d20ac call   0x2cc268
2d20b1 mov    rdx,rbx
2d20b4 lea    rcx,[rsp+0x28]
2d20b9 call   0x2cc268
2d20be movzx  eax,WORD PTR [rsp+0x4a]
2d20c3 mov    rcx,rdi
2d20c6 movups xmm0,XMMWORD PTR [rsp+0x20]
2d20cb mov    WORD PTR [rdi+0xd2],ax
2d20d2 lea    rax,[rsp+0x38]
2d20d7 mov    QWORD PTR [rdi+0x78],rax
2d20db movdqu XMMWORD PTR [rdi+0x88],xmm0
2d20e2 
2d20e3 mov    WORD PTR [rdi+0xd0],0x0
2d20ea 
2d20ec mov    QWORD PTR [rdi+0x80],0x2
2d20f3 
2d20f7 mov    rbx,QWORD PTR [rsp+0x40]
2d20fc add    rsp,0x30
2d2100 pop    rdi
2d2101 jmp    0x3cdbd4

; closure independent pdata/next-pdata extent 2d2000..2d2091 unwind3d2228
2d2000 mov    QWORD PTR [rsp+0x8],rbx
2d2005 push   rdi
2d2006 sub    rsp,0x40
2d200a mov    rdi,rdx
2d200d lea    rcx,[rsp+0x20]
2d2012 mov    rdx,r8
2d2015 mov    rbx,r9
2d2018 call   0x2cc268
2d201d mov    rdx,rbx
2d2020 lea    rcx,[rsp+0x28]
2d2025 call   0x2cc268
2d202a mov    dl,BYTE PTR [rsp+0x70]
2d202e lea    rcx,[rsp+0x30]
2d2033 call   0x2d4928
2d2038 movups xmm0,XMMWORD PTR [rsp+0x20]
2d203d xor    eax,eax
2d203f mov    rcx,rdi
2d2042 movsd  xmm1,QWORD PTR [rsp+0x30]
2d2048 mov    WORD PTR [rdi+0xd0],ax
2d204f mov    BYTE PTR [rdi+0xd2],al
2d2055 mov    al,BYTE PTR [rsp+0x5b]
2d2059 mov    BYTE PTR [rdi+0xd3],al
2d205f lea    rax,[rsp+0x48]
2d2064 movups XMMWORD PTR [rdi+0x88],xmm0
2d206b mov    QWORD PTR [rdi+0x78],rax
2d206f movsd  QWORD PTR [rdi+0x98],xmm1
2d2076 
2d2077 mov    QWORD PTR [rdi+0x80],0x3
2d207e 
2d2082 mov    rbx,QWORD PTR [rsp+0x50]
2d2087 add    rsp,0x40
2d208b pop    rdi
2d208c jmp    0x3cdbd4

; closure independent pdata/next-pdata extent 2cba50..2cbae2 unwind3d2228
2cba50 mov    QWORD PTR [rsp+0x8],rbx
2cba55 push   rdi
2cba56 sub    rsp,0x40
2cba5a mov    rdi,rdx
2cba5d lea    rcx,[rsp+0x20]
2cba62 mov    rdx,r8
2cba65 mov    rbx,r9
2cba68 call   0x2cc268
2cba6d mov    rdx,rbx
2cba70 lea    rcx,[rsp+0x28]
2cba75 call   0x2cc268
2cba7a mov    rdx,QWORD PTR [rsp+0x70]
2cba7f lea    rcx,[rsp+0x30]
2cba84 call   0x2cc268
2cba89 movups xmm0,XMMWORD PTR [rsp+0x20]
2cba8e xor    eax,eax
2cba90 mov    rcx,rdi
2cba93 movsd  xmm1,QWORD PTR [rsp+0x30]
2cba99 mov    WORD PTR [rdi+0xd0],ax
2cbaa0 mov    BYTE PTR [rdi+0xd2],al
2cbaa6 mov    al,BYTE PTR [rsp+0x5b]
2cbaaa mov    BYTE PTR [rdi+0xd3],al
2cbab0 lea    rax,[rsp+0x48]
2cbab5 movups XMMWORD PTR [rdi+0x88],xmm0
2cbabc mov    QWORD PTR [rdi+0x78],rax
2cbac0 movsd  QWORD PTR [rdi+0x98],xmm1
2cbac7 
2cbac8 mov    QWORD PTR [rdi+0x80],0x3
2cbacf 
2cbad3 mov    rbx,QWORD PTR [rsp+0x50]
2cbad8 add    rsp,0x40
2cbadc pop    rdi
2cbadd jmp    0x3cdbd4

; closure independent pdata/next-pdata extent 365ae0..365b6d unwind3d2228
365ae0 mov    QWORD PTR [rsp+0x8],rbx
365ae5 push   rdi
365ae6 sub    rsp,0x40
365aea mov    rdi,rdx
365aed lea    rcx,[rsp+0x20]
365af2 mov    rdx,r8
365af5 mov    rbx,r9
365af8 call   0x2cc268
365afd mov    rdx,rbx
365b00 lea    rcx,[rsp+0x28]
365b05 call   0x2cc268
365b0a mov    rdx,QWORD PTR [rsp+0x70]
365b0f lea    rcx,[rsp+0x30]
365b14 call   0x2cc268
365b19 mov    dl,BYTE PTR [rsp+0x78]
365b1d lea    rcx,[rsp+0x38]
365b22 call   0x2d4928
365b27 movups xmm0,XMMWORD PTR [rsp+0x20]
365b2c xor    eax,eax
365b2e mov    rcx,rdi
365b31 movups xmm1,XMMWORD PTR [rsp+0x30]
365b36 mov    DWORD PTR [rdi+0xd0],eax
365b3c lea    rax,[rsp+0x48]
365b41 movups XMMWORD PTR [rdi+0x88],xmm0
365b48 mov    QWORD PTR [rdi+0x78],rax
365b4c movups XMMWORD PTR [rdi+0x98],xmm1
365b53 mov    QWORD PTR [rdi+0x80],0x4
365b5a 
365b5e mov    rbx,QWORD PTR [rsp+0x50]
365b63 add    rsp,0x40
365b67 pop    rdi
365b68 jmp    0x3cdbd4

; closure independent pdata/next-pdata extent 365b70..365c29 unwind3d25f0
365b70 mov    QWORD PTR [rsp+0x8],rbx
365b75 push   rdi
365b76 sub    rsp,0x50
365b7a mov    rdi,rdx
365b7d lea    rcx,[rsp+0x20]
365b82 mov    rdx,r8
365b85 mov    rbx,r9
365b88 call   0x2cc268
365b8d mov    rdx,rbx
365b90 lea    rcx,[rsp+0x28]
365b95 call   0x2cc268
365b9a mov    rdx,QWORD PTR [rsp+0x80]
365ba1 
365ba2 lea    rcx,[rsp+0x30]
365ba7 call   0x2cc268
365bac mov    rdx,QWORD PTR [rsp+0x88]
365bb3 
365bb4 lea    rcx,[rsp+0x38]
365bb9 call   0x2cc268
365bbe movss  xmm1,DWORD PTR [rsp+0x90]
365bc5 
365bc7 lea    rcx,[rsp+0x40]
365bcc call   0x2ddbf8
365bd1 movups xmm0,XMMWORD PTR [rsp+0x20]
365bd6 xor    eax,eax
365bd8 mov    rcx,rdi
365bdb movups xmm1,XMMWORD PTR [rsp+0x30]
365be0 mov    DWORD PTR [rsp+0x68],eax
365be4 movups XMMWORD PTR [rdi+0x88],xmm0
365beb mov    DWORD PTR [rdi+0xd0],eax
365bf1 lea    rax,[rsp+0x58]
365bf6 movsd  xmm0,QWORD PTR [rsp+0x40]
365bfc movups XMMWORD PTR [rdi+0x98],xmm1
365c03 mov    QWORD PTR [rdi+0x80],0x5
365c0a 
365c0e movsd  QWORD PTR [rdi+0xa8],xmm0
365c15 
365c16 mov    QWORD PTR [rdi+0x78],rax
365c1a mov    rbx,QWORD PTR [rsp+0x60]
365c1f add    rsp,0x50
365c23 pop    rdi
365c24 jmp    0x3cdbd4

; closure independent pdata/next-pdata extent 2cb9fc..2cba4f unwind3d2038
2cb9fc rex push rbx
2cb9fe sub    rsp,0x20
2cba02 mov    rbx,rdx
2cba05 lea    rcx,[rsp+0x48]
2cba0a mov    rdx,r8
2cba0d call   0x2cc268
2cba12 xor    eax,eax
2cba14 mov    QWORD PTR [rbx+0x80],0x1
2cba1b 
2cba1f mov    BYTE PTR [rsp+0x38],al
2cba23 mov    rcx,rbx
2cba26 mov    rax,QWORD PTR [rsp+0x48]
2cba2b mov    QWORD PTR [rbx+0x88],rax
2cba32 mov    eax,DWORD PTR [rsp+0x38]
2cba36 mov    DWORD PTR [rbx+0xd0],eax
2cba3c lea    rax,[rsp+0x28]
2cba41 mov    QWORD PTR [rbx+0x78],rax
2cba45 add    rsp,0x20
2cba49 pop    rbx
2cba4a jmp    0x3cdbd4

; closure independent pdata/next-pdata extent 2dea4c..2deaa4 unwind3d2038
2dea4c rex push rbx
2dea4e sub    rsp,0x20
2dea52 mov    rbx,rdx
2dea55 lea    rcx,[rsp+0x48]
2dea5a mov    rdx,r8
2dea5d call   0x2cc268
2dea62 xor    eax,eax
2dea64 mov    QWORD PTR [rbx+0x80],0x1
2dea6b 
2dea6f mov    BYTE PTR [rsp+0x38],al
2dea73 mov    rcx,rbx
2dea76 mov    rax,QWORD PTR [rsp+0x48]
2dea7b mov    QWORD PTR [rbx+0x88],rax
2dea82 mov    eax,DWORD PTR [rsp+0x38]
2dea86 mov    DWORD PTR [rbx+0xd0],eax
2dea8c lea    rax,[rsp+0x28]
2dea91 mov    QWORD PTR [rbx+0x78],rax
2dea95 call   0x3cdbd4
2dea9a add    rsp,0x20
2dea9e pop    rbx
2dea9f jmp    0x3cdbb0

; closure independent pdata/next-pdata extent 32b1c8..32b239 unwind3d2348
32b1c8 mov    QWORD PTR [rsp+0x8],rbx
32b1cd push   rdi
32b1ce sub    rsp,0x30
32b1d2 mov    rdi,rdx
32b1d5 lea    rcx,[rsp+0x20]
32b1da mov    rdx,r8
32b1dd mov    ebx,r9d
32b1e0 call   0x2cc268
32b1e5 mov    edx,ebx
32b1e7 lea    rcx,[rsp+0x28]
32b1ec call   0x2df370
32b1f1 movzx  eax,WORD PTR [rsp+0x4a]
32b1f6 mov    rcx,rdi
32b1f9 movups xmm0,XMMWORD PTR [rsp+0x20]
32b1fe mov    WORD PTR [rdi+0xd2],ax
32b205 lea    rax,[rsp+0x38]
32b20a mov    QWORD PTR [rdi+0x78],rax
32b20e movdqu XMMWORD PTR [rdi+0x88],xmm0
32b215 
32b216 mov    WORD PTR [rdi+0xd0],0x0
32b21d 
32b21f mov    QWORD PTR [rdi+0x80],0x2
32b226 
32b22a mov    rbx,QWORD PTR [rsp+0x40]
32b22f add    rsp,0x30
32b233 pop    rdi
32b234 jmp    0x3cdbd4

; closure independent pdata/next-pdata extent 374050..3740de unwind3d2228
374050 mov    QWORD PTR [rsp+0x8],rbx
374055 push   rdi
374056 sub    rsp,0x40
37405a mov    rdi,rdx
37405d lea    rcx,[rsp+0x20]
374062 mov    rdx,r8
374065 mov    rbx,r9
374068 call   0x2cc268
37406d mov    rdx,rbx
374070 lea    rcx,[rsp+0x28]
374075 call   0x2cc268
37407a mov    rdx,QWORD PTR [rsp+0x70]
37407f lea    rcx,[rsp+0x30]
374084 call   0x2cc268
374089 mov    rdx,QWORD PTR [rsp+0x78]
37408e lea    rcx,[rsp+0x38]
374093 call   0x2cc268
374098 movups xmm0,XMMWORD PTR [rsp+0x20]
37409d xor    eax,eax
37409f mov    rcx,rdi
3740a2 movups xmm1,XMMWORD PTR [rsp+0x30]
3740a7 mov    DWORD PTR [rdi+0xd0],eax
3740ad lea    rax,[rsp+0x48]
3740b2 movups XMMWORD PTR [rdi+0x88],xmm0
3740b9 mov    QWORD PTR [rdi+0x78],rax
3740bd movups XMMWORD PTR [rdi+0x98],xmm1
3740c4 mov    QWORD PTR [rdi+0x80],0x4
3740cb 
3740cf mov    rbx,QWORD PTR [rsp+0x50]
3740d4 add    rsp,0x40
3740d8 pop    rdi
3740d9 jmp    0x3cdbd4

; closure independent pdata/next-pdata extent 2caf08..2caf28 unwind0
2caf08 test   rcx,rcx
2caf0b jne    0x2caf10
2caf0d xor    al,al
2caf0f ret
2caf10 lea    rax,[rcx-0x100000]
2caf17 movabs rcx,0x7ffffeffffe
2caf1e 
2caf21 cmp    rax,rcx
2caf24 setbe  al
2caf27 ret

; closure independent pdata/next-pdata extent 2ce5dc..2ce5f0 unwind0
2ce5dc jmp    0x2ce718
2ce5e1 int3
2ce5e2 int3
2ce5e3 int3
2ce5e4 movabs rax,0x2e8ba2e8ba2e8ba
2ce5eb 
2ce5ee ret
2ce5ef int3

; closure independent pdata/next-pdata extent 3324ec..332512 unwind3d2038
3324ec rex push rbx
3324ee sub    rsp,0x20
3324f2 mov    rbx,rcx
3324f5 call   0x332514
3324fa test   al,al
3324fc je     0x332509
3324fe mov    rdx,rbx
332501 mov    rcx,rbx
332504 call   0x332460
332509 mov    rax,rbx
33250c add    rsp,0x20
332510 pop    rbx
332511 ret

; closure independent pdata/next-pdata extent 2dd160..2dd186 unwind3d2038
2dd160 rex push rbx
2dd162 sub    rsp,0x20
2dd166 mov    rbx,rcx
2dd169 call   0x2d8a98
2dd16e test   al,al
2dd170 je     0x2dd17d
2dd172 mov    rdx,rbx
2dd175 mov    rcx,rbx
2dd178 call   0x2dd064
2dd17d mov    rax,rbx
2dd180 add    rsp,0x20
2dd184 pop    rbx
2dd185 ret

; closure independent pdata/next-pdata extent 2e9b8c..2e9bb2 unwind3d2038
2e9b8c rex push rbx
2e9b8e sub    rsp,0x20
2e9b92 mov    rbx,rcx
2e9b95 call   0x2d8a90
2e9b9a test   al,al
2e9b9c je     0x2e9ba9
2e9b9e mov    rdx,rbx
2e9ba1 mov    rcx,rbx
2e9ba4 call   0x2e99d8
2e9ba9 mov    rax,rbx
2e9bac add    rsp,0x20
2e9bb0 pop    rbx
2e9bb1 ret

; closure independent pdata/next-pdata extent 2e3614..2e363a unwind3d2038
2e3614 rex push rbx
2e3616 sub    rsp,0x20
2e361a mov    rbx,rcx
2e361d call   0x2dd2e4
2e3622 test   al,al
2e3624 je     0x2e3631
2e3626 mov    rdx,rbx
2e3629 mov    rcx,rbx
2e362c call   0x2e3400
2e3631 mov    rax,rbx
2e3634 add    rsp,0x20
2e3638 pop    rbx
2e3639 ret

; closure independent pdata/next-pdata extent 370b1c..370b50 unwind0
370b1c movups xmm0,XMMWORD PTR [rip+0xfffffffffff37fd5]        # 0x2a8af8
370b23 mov    rax,rdx
370b26 movups xmm1,XMMWORD PTR [rip+0xfffffffffff37fdb]        # 0x2a8b08
370b2d movups XMMWORD PTR [rdx],xmm0
370b30 movups xmm0,XMMWORD PTR [rip+0xfffffffffff37fe1]        # 0x2a8b18
370b37 movups XMMWORD PTR [rdx+0x10],xmm1
370b3b movsd  xmm1,QWORD PTR [rip+0xfffffffffff37fe5]        # 0x2a8b28
370b42 
370b43 movups XMMWORD PTR [rdx+0x20],xmm0
370b47 movsd  QWORD PTR [rdx+0x30],xmm1
370b4c ret
370b4d int3
370b4e int3
370b4f int3

; closure independent pdata/next-pdata extent 3229d8..322aec unwind0
3229d8 movups xmm0,XMMWORD PTR [rip+0xfffffffffff70a89]        # 0x293468
3229df mov    rax,rdx
3229e2 movdqu XMMWORD PTR [rdx],xmm0
3229e6 ret
3229e7 int3
3229e8 mov    al,BYTE PTR [rip+0xfffffffffff70a92]        # 0x293480
3229ee movsd  xmm0,QWORD PTR [rip+0xfffffffffff70a82]        # 0x293478
3229f5 
3229f6 movsd  QWORD PTR [rdx],xmm0
3229fa mov    BYTE PTR [rdx+0x8],al
3229fd mov    rax,rdx
322a00 ret
322a01 int3
322a02 int3
322a03 int3
322a04 mov    eax,DWORD PTR [rip+0xfffffffffff70a86]        # 0x293490
322a0a movsd  xmm0,QWORD PTR [rip+0xfffffffffff70a76]        # 0x293488
322a11 
322a12 movsd  QWORD PTR [rdx],xmm0
322a16 mov    DWORD PTR [rdx+0x8],eax
322a19 mov    rax,rdx
322a1c ret
322a1d int3
322a1e int3
322a1f int3
322a20 mov    eax,DWORD PTR [rip+0xfffffffffff70a7a]        # 0x2934a0
322a26 movsd  xmm0,QWORD PTR [rip+0xfffffffffff70a6a]        # 0x293498
322a2d 
322a2e movsd  QWORD PTR [rdx],xmm0
322a32 mov    DWORD PTR [rdx+0x8],eax
322a35 movzx  eax,WORD PTR [rip+0xfffffffffff70a68]        # 0x2934a4
322a3c mov    WORD PTR [rdx+0xc],ax
322a40 mov    rax,rdx
322a43 ret
322a44 movups xmm0,XMMWORD PTR [rip+0xfffffffffff70a5d]        # 0x2934a8
322a4b mov    rax,rdx
322a4e movdqu XMMWORD PTR [rdx],xmm0
322a52 ret
322a53 int3
322a54 mov    eax,DWORD PTR [rip+0xfffffffffff70a66]        # 0x2934c0
322a5a movsd  xmm0,QWORD PTR [rip+0xfffffffffff70a56]        # 0x2934b8
322a61 
322a62 movsd  QWORD PTR [rdx],xmm0
322a66 mov    DWORD PTR [rdx+0x8],eax
322a69 mov    rax,rdx
322a6c ret
322a6d int3
322a6e int3
322a6f int3
322a70 mov    eax,DWORD PTR [rip+0xfffffffffff709ea]        # 0x293460
322a76 movups xmm0,XMMWORD PTR [rip+0xfffffffffff709d3]        # 0x293450
322a7d movups XMMWORD PTR [rdx],xmm0
322a80 mov    DWORD PTR [rdx+0x10],eax
322a83 mov    rax,rdx
322a86 ret
322a87 int3
322a88 mov    eax,DWORD PTR [rip+0xfffffffffff70a41]        # 0x2934cf
322a8e movsd  xmm0,QWORD PTR [rip+0xfffffffffff70a32]        # 0x2934c8
322a95 
322a96 movsd  QWORD PTR [rdx],xmm0
322a9a mov    DWORD PTR [rdx+0x7],eax
322a9d mov    rax,rdx
322aa0 ret
322aa1 int3
322aa2 int3
322aa3 int3
322aa4 movups xmm0,XMMWORD PTR [rip+0xfffffffffff70a2d]        # 0x2934d8
322aab mov    rax,rdx
322aae movdqu XMMWORD PTR [rdx],xmm0
322ab2 ret
322ab3 int3
322ab4 mov    eax,DWORD PTR [rip+0xfffffffffff70a36]        # 0x2934f0
322aba movsd  xmm0,QWORD PTR [rip+0xfffffffffff70a26]        # 0x2934e8
322ac1 
322ac2 movsd  QWORD PTR [rdx],xmm0
322ac6 mov    DWORD PTR [rdx+0x8],eax
322ac9 mov    rax,rdx
322acc ret
322acd int3
322ace int3
322acf int3
322ad0 mov    eax,DWORD PTR [rip+0xfffffffffff70a29]        # 0x2934ff
322ad6 movsd  xmm0,QWORD PTR [rip+0xfffffffffff70a1a]        # 0x2934f8
322add 
322ade movsd  QWORD PTR [rdx],xmm0
322ae2 mov    DWORD PTR [rdx+0x7],eax
322ae5 mov    rax,rdx
322ae8 ret
322ae9 int3
322aea int3
322aeb int3

; closure independent pdata/next-pdata extent 36b3bc..36b434 unwind0
36b3bc mov    al,BYTE PTR [rip+0xfffffffffff3d37e]        # 0x2a8740
36b3c2 movsd  xmm0,QWORD PTR [rip+0xfffffffffff3d36e]        # 0x2a8738
36b3c9 
36b3ca movsd  QWORD PTR [rdx],xmm0
36b3ce mov    BYTE PTR [rdx+0x8],al
36b3d1 mov    rax,rdx
36b3d4 ret
36b3d5 int3
36b3d6 int3
36b3d7 int3
36b3d8 movaps xmm0,XMMWORD PTR [rip+0xfffffffffff3d2d1]        # 0x2a86b0
36b3df mov    rax,rdx
36b3e2 movaps xmm1,XMMWORD PTR [rip+0xfffffffffff3d2d7]        # 0x2a86c0
36b3e9 movups XMMWORD PTR [rdx],xmm0
36b3ec movaps xmm0,XMMWORD PTR [rip+0xfffffffffff3d2dd]        # 0x2a86d0
36b3f3 movups XMMWORD PTR [rdx+0x10],xmm1
36b3f7 movaps xmm1,XMMWORD PTR [rip+0xfffffffffff3d2e2]        # 0x2a86e0
36b3fe movups XMMWORD PTR [rdx+0x20],xmm0
36b402 movaps xmm0,XMMWORD PTR [rip+0xfffffffffff3d2e7]        # 0x2a86f0
36b409 movups XMMWORD PTR [rdx+0x30],xmm1
36b40d movups xmm1,XMMWORD PTR [rip+0xfffffffffff3d2e5]        # 0x2a86f9
36b414 movups XMMWORD PTR [rdx+0x40],xmm0
36b418 movups XMMWORD PTR [rdx+0x49],xmm1
36b41c ret
36b41d int3
36b41e int3
36b41f int3
36b420 movabs rax,0x3e5b505e695c4b62
36b427 
36b42a mov    QWORD PTR [rdx],rax
36b42d mov    rax,rdx
36b430 ret
36b431 int3
36b432 int3
36b433 int3

; closure independent pdata/next-pdata extent 36b420..36b434 unwind0
36b420 movabs rax,0x3e5b505e695c4b62
36b427 
36b42a mov    QWORD PTR [rdx],rax
36b42d mov    rax,rdx
36b430 ret
36b431 int3
36b432 int3
36b433 int3

; closure independent pdata/next-pdata extent 36bacc..36bb55 unwind3d2038
36bacc rex push rbx
36bace sub    rsp,0x20
36bad2 mov    rbx,rcx
36bad5 call   0x2caf08
36bada test   al,al
36badc je     0x36bb4f
36bade mov    ecx,DWORD PTR [rip+0x9370c]        # 0x3ff1f0
36bae4 test   cl,0x1
36bae7 jne    0x36bb09
36bae9 mov    r8,QWORD PTR [rip+0x6b410]        # 0x3d6f00
36baf0 or     ecx,0x1
36baf3 add    r8,0x42c72c0
36bafa mov    DWORD PTR [rip+0x936f0],ecx        # 0x3ff1f0
36bb00 mov    QWORD PTR [rip+0x936e1],r8        # 0x3ff1e8
36bb07 jmp    0x36bb10
36bb09 mov    r8,QWORD PTR [rip+0x936d8]        # 0x3ff1e8
36bb10 test   cl,0x2
36bb13 jne    0x36bb34
36bb15 or     ecx,0x2
36bb18 lea    rdx,[rip+0x936e1]        # 0x3ff200
36bb1f mov    DWORD PTR [rip+0x936cb],ecx        # 0x3ff1f0
36bb25 xor    r9d,r9d
36bb28 mov    rcx,QWORD PTR [rip+0x6a331]        # 0x3d5e60
36bb2f call   0x2cbd24
36bb34 mov    rcx,QWORD PTR [rip+0x6a325]        # 0x3d5e60
36bb3b lea    rdx,[rip+0x936be]        # 0x3ff200
36bb42 mov    r8,rbx
36bb45 call   0x2cb9fc
36bb4a test   al,al
36bb4c setne  al
36bb4f add    rsp,0x20
36bb53 pop    rbx
36bb54 ret

; closure independent pdata/next-pdata extent 36b9a0..36ba29 unwind3d2038
36b9a0 rex push rbx
36b9a2 sub    rsp,0x20
36b9a6 mov    rbx,rcx
36b9a9 call   0x2caf08
36b9ae test   al,al
36b9b0 je     0x36ba23
36b9b2 mov    ecx,DWORD PTR [rip+0x93928]        # 0x3ff2e0
36b9b8 test   cl,0x1
36b9bb jne    0x36b9dd
36b9bd mov    r8,QWORD PTR [rip+0x6b53c]        # 0x3d6f00
36b9c4 or     ecx,0x1
36b9c7 add    r8,0x42c45a0
36b9ce mov    DWORD PTR [rip+0x9390c],ecx        # 0x3ff2e0
36b9d4 mov    QWORD PTR [rip+0x938fd],r8        # 0x3ff2d8
36b9db jmp    0x36b9e4
36b9dd mov    r8,QWORD PTR [rip+0x938f4]        # 0x3ff2d8
36b9e4 test   cl,0x2
36b9e7 jne    0x36ba08
36b9e9 or     ecx,0x2
36b9ec lea    rdx,[rip+0x938fd]        # 0x3ff2f0
36b9f3 mov    DWORD PTR [rip+0x938e7],ecx        # 0x3ff2e0
36b9f9 xor    r9d,r9d
36b9fc mov    rcx,QWORD PTR [rip+0x6a45d]        # 0x3d5e60
36ba03 call   0x2cbd24
36ba08 mov    rcx,QWORD PTR [rip+0x6a451]        # 0x3d5e60
36ba0f lea    rdx,[rip+0x938da]        # 0x3ff2f0
36ba16 mov    r8,rbx
36ba19 call   0x2cb9fc
36ba1e test   al,al
36ba20 setne  al
36ba23 add    rsp,0x20
36ba27 pop    rbx
36ba28 ret

; closure independent pdata/next-pdata extent 36c274..36c346 unwind3d2348
36c274 mov    QWORD PTR [rsp+0x8],rbx
36c279 push   rdi
36c27a sub    rsp,0x30
36c27e mov    rdi,rdx
36c281 mov    rbx,rcx
36c284 call   0x2caf08
36c289 test   al,al
36c28b je     0x36c33b
36c291 mov    rcx,rdx
36c294 call   0x2ce5dc
36c299 mov    rcx,rax
36c29c call   0x2caf08
36c2a1 test   al,al
36c2a3 je     0x36c33b
36c2a9 mov    rbx,QWORD PTR [rbx+0x218]
36c2b0 mov    rcx,rbx
36c2b3 call   0x2caf08
36c2b8 test   al,al
36c2ba je     0x36c33b
36c2bc mov    ecx,DWORD PTR [rip+0x931fe]        # 0x3ff4c0
36c2c2 test   cl,0x1
36c2c5 jne    0x36c2e7
36c2c7 mov    r8,QWORD PTR [rip+0x6ac32]        # 0x3d6f00
36c2ce or     ecx,0x1
36c2d1 add    r8,0x10a2640
36c2d8 mov    DWORD PTR [rip+0x931e2],ecx        # 0x3ff4c0
36c2de mov    QWORD PTR [rip+0x931d3],r8        # 0x3ff4b8
36c2e5 jmp    0x36c2ee
36c2e7 mov    r8,QWORD PTR [rip+0x931ca]        # 0x3ff4b8
36c2ee test   cl,0x2
36c2f1 jne    0x36c312
36c2f3 or     ecx,0x2
36c2f6 lea    rdx,[rip+0x931d3]        # 0x3ff4d0
36c2fd mov    DWORD PTR [rip+0x931bd],ecx        # 0x3ff4c0
36c303 xor    r9d,r9d
36c306 mov    rcx,QWORD PTR [rip+0x69b53]        # 0x3d5e60
36c30d call   0x2cbd24
36c312 mov    rcx,rdi
36c315 call   0x2ce5dc
36c31a mov    rcx,QWORD PTR [rip+0x69b3f]        # 0x3d5e60
36c321 lea    rdx,[rip+0x931a8]        # 0x3ff4d0
36c328 mov    r9,rax
36c32b mov    DWORD PTR [rsp+0x20],0x0
36c332 
36c333 mov    r8,rbx
36c336 call   0x332e8c
36c33b mov    rbx,QWORD PTR [rsp+0x40]
36c340 add    rsp,0x30
36c344 pop    rdi
36c345 ret

; closure independent pdata/next-pdata extent 36c0f0..36c184 unwind3d3f58
36c0f0 rex push rbx
36c0f2 sub    rsp,0x30
36c0f6 movaps XMMWORD PTR [rsp+0x20],xmm6
36c0fb mov    rbx,rcx
36c0fe movaps xmm6,xmm1
36c101 call   0x2caf08
36c106 test   al,al
36c108 je     0x36c179
36c10a mov    edx,DWORD PTR [rip+0x934a0]        # 0x3ff5b0
36c110 test   dl,0x1
36c113 jne    0x36c135
36c115 mov    r8,QWORD PTR [rip+0x6ade4]        # 0x3d6f00
36c11c or     edx,0x1
36c11f add    r8,0x42c2c70
36c126 mov    DWORD PTR [rip+0x93484],edx        # 0x3ff5b0
36c12c mov    QWORD PTR [rip+0x93475],r8        # 0x3ff5a8
36c133 jmp    0x36c13c
36c135 mov    r8,QWORD PTR [rip+0x9346c]        # 0x3ff5a8
36c13c test   dl,0x2
36c13f jne    0x36c160
36c141 mov    rcx,QWORD PTR [rip+0x69d18]        # 0x3d5e60
36c148 or     edx,0x2
36c14b mov    DWORD PTR [rip+0x9345f],edx        # 0x3ff5b0
36c151 xor    r9d,r9d
36c154 lea    rdx,[rip+0x93465]        # 0x3ff5c0
36c15b call   0x2cbd24
36c160 mov    rcx,QWORD PTR [rip+0x69cf9]        # 0x3d5e60
36c167 lea    rdx,[rip+0x93452]        # 0x3ff5c0
36c16e movaps xmm3,xmm6
36c171 mov    r8,rbx
36c174 call   0x32225c
36c179 movaps xmm6,XMMWORD PTR [rsp+0x20]
36c17e add    rsp,0x30
36c182 pop    rbx
36c183 ret

; closure independent pdata/next-pdata extent 3ca960..3ca9be unwind3d2054
3ca960 mov    QWORD PTR [rsp+0x8],rbx
3ca965 mov    QWORD PTR [rsp+0x10],rsi
3ca96a push   rdi
3ca96b sub    rsp,0x20
3ca96f mov    rbx,rcx
3ca972 mov    rdi,rdx
3ca975 mov    rcx,rdx
3ca978 call   0x3ca904
3ca97d mov    rsi,rax
3ca980 test   rbx,rbx
3ca983 je     0x3ca9ab
3ca985 mov    r8,rsi
3ca988 mov    rdx,rdi
3ca98b mov    rcx,rbx
3ca98e call   0x3ca918
3ca993 test   eax,eax
3ca995 je     0x3ca9ab
3ca997 movsx  edx,BYTE PTR [rdi]
3ca99a lea    rcx,[rbx+0x1]
3ca99e call   0x3ca4f8
3ca9a3 mov    rbx,rax
3ca9a6 test   rax,rax
3ca9a9 jne    0x3ca985
3ca9ab mov    rsi,QWORD PTR [rsp+0x38]
3ca9b0 mov    rax,rbx
3ca9b3 mov    rbx,QWORD PTR [rsp+0x30]
3ca9b8 add    rsp,0x20
3ca9bc pop    rdi
3ca9bd ret
