; roots independent pdata/next-pdata extent 322580..32260b unwind3d33c0
322580 rex push rbx
322582 sub    rsp,0x30
322586 mov    edx,DWORD PTR [rip+0xcfbb4]        # 0x3f2140
32258c mov    rbx,rcx
32258f movaps XMMWORD PTR [rsp+0x20],xmm6
322594 movaps xmm6,xmm1
322597 test   dl,0x1
32259a jne    0x3225bc
32259c mov    r8,QWORD PTR [rip+0xb495d]        # 0x3d6f00
3225a3 or     edx,0x1
3225a6 add    r8,0x59dede0
3225ad mov    DWORD PTR [rip+0xcfb8d],edx        # 0x3f2140
3225b3 mov    QWORD PTR [rip+0xcfb7e],r8        # 0x3f2138
3225ba jmp    0x3225c3
3225bc mov    r8,QWORD PTR [rip+0xcfb75]        # 0x3f2138
3225c3 test   dl,0x2
3225c6 jne    0x3225e7
3225c8 mov    rcx,QWORD PTR [rip+0xb3891]        # 0x3d5e60
3225cf or     edx,0x2
3225d2 mov    DWORD PTR [rip+0xcfb68],edx        # 0x3f2140
3225d8 xor    r9d,r9d
3225db lea    rdx,[rip+0xcfb6e]        # 0x3f2150
3225e2 call   0x2cbd24
3225e7 mov    rcx,QWORD PTR [rip+0xb3872]        # 0x3d5e60
3225ee lea    rdx,[rip+0xcfb5b]        # 0x3f2150
3225f5 movaps xmm3,xmm6
3225f8 mov    r8,rbx
3225fb call   0x32225c
322600 movaps xmm6,XMMWORD PTR [rsp+0x20]
322605 add    rsp,0x30
322609 pop    rbx
32260a ret

; roots independent pdata/next-pdata extent 366c30..366ccb unwind3d2040
366c30 mov    QWORD PTR [rsp+0x8],rbx
366c35 push   rdi
366c36 sub    rsp,0x20
366c3a mov    rbx,rcx
366c3d call   0x2caf08
366c42 test   al,al
366c44 je     0x366cc0
366c46 mov    rcx,rdx
366c49 call   0x2ce5dc
366c4e mov    edx,DWORD PTR [rip+0x96ecc]        # 0x3fdb20
366c54 mov    rdi,rax
366c57 test   dl,0x1
366c5a jne    0x366c7c
366c5c mov    r8,QWORD PTR [rip+0x7029d]        # 0x3d6f00
366c63 or     edx,0x1
366c66 add    r8,0x3907c80
366c6d mov    DWORD PTR [rip+0x96ead],edx        # 0x3fdb20
366c73 mov    QWORD PTR [rip+0x96e9e],r8        # 0x3fdb18
366c7a jmp    0x366c83
366c7c mov    r8,QWORD PTR [rip+0x96e95]        # 0x3fdb18
366c83 test   dl,0x2
366c86 jne    0x366ca7
366c88 mov    rcx,QWORD PTR [rip+0x6f1d1]        # 0x3d5e60
366c8f or     edx,0x2
366c92 mov    DWORD PTR [rip+0x96e88],edx        # 0x3fdb20
366c98 xor    r9d,r9d
366c9b lea    rdx,[rip+0x96e8e]        # 0x3fdb30
366ca2 call   0x2cbd24
366ca7 mov    rcx,QWORD PTR [rip+0x6f1b2]        # 0x3d5e60
366cae lea    rdx,[rip+0x96e7b]        # 0x3fdb30
366cb5 mov    r9,rdi
366cb8 mov    r8,rbx
366cbb call   0x2d2094
366cc0 mov    rbx,QWORD PTR [rsp+0x30]
366cc5 add    rsp,0x20
366cc9 pop    rdi
366cca ret

; roots independent pdata/next-pdata extent 366ccc..366d79 unwind3d225c
366ccc mov    QWORD PTR [rsp+0x8],rbx
366cd1 mov    QWORD PTR [rsp+0x10],rsi
366cd6 push   rdi
366cd7 sub    rsp,0x30
366cdb mov    sil,r8b
366cde mov    rbx,rcx
366ce1 call   0x2caf08
366ce6 test   al,al
366ce8 je     0x366d69
366cea mov    rcx,rdx
366ced call   0x2ce5dc
366cf2 mov    edx,DWORD PTR [rip+0x97008]        # 0x3fdd00
366cf8 mov    rdi,rax
366cfb test   dl,0x1
366cfe jne    0x366d20
366d00 mov    r8,QWORD PTR [rip+0x701f9]        # 0x3d6f00
366d07 or     edx,0x1
366d0a add    r8,0x38ea530
366d11 mov    DWORD PTR [rip+0x96fe9],edx        # 0x3fdd00
366d17 mov    QWORD PTR [rip+0x96fda],r8        # 0x3fdcf8
366d1e jmp    0x366d27
366d20 mov    r8,QWORD PTR [rip+0x96fd1]        # 0x3fdcf8
366d27 test   dl,0x2
366d2a jne    0x366d4b
366d2c mov    rcx,QWORD PTR [rip+0x6f12d]        # 0x3d5e60
366d33 or     edx,0x2
366d36 mov    DWORD PTR [rip+0x96fc4],edx        # 0x3fdd00
366d3c xor    r9d,r9d
366d3f lea    rdx,[rip+0x96fca]        # 0x3fdd10
366d46 call   0x2cbd24
366d4b mov    rcx,QWORD PTR [rip+0x6f10e]        # 0x3d5e60
366d52 lea    rdx,[rip+0x96fb7]        # 0x3fdd10
366d59 mov    r9,rdi
366d5c mov    BYTE PTR [rsp+0x20],sil
366d61 mov    r8,rbx
366d64 call   0x2d2000
366d69 mov    rbx,QWORD PTR [rsp+0x40]
366d6e mov    rsi,QWORD PTR [rsp+0x48]
366d73 add    rsp,0x30
366d77 pop    rdi
366d78 ret

; roots independent pdata/next-pdata extent 366d7c..366e38 unwind3d225c
366d7c mov    QWORD PTR [rsp+0x8],rbx
366d81 mov    QWORD PTR [rsp+0x10],rsi
366d86 push   rdi
366d87 sub    rsp,0x30
366d8b mov    rdi,r8
366d8e mov    rbx,rcx
366d91 call   0x2caf08
366d96 test   al,al
366d98 je     0x366e28
366d9e mov    rcx,rdx
366da1 call   0x2ce5dc
366da6 mov    rcx,rdi
366da9 mov    rsi,rax
366dac call   0x2ce5dc
366db1 mov    edx,DWORD PTR [rip+0x96e59]        # 0x3fdc10
366db7 mov    rdi,rax
366dba test   dl,0x1
366dbd jne    0x366ddf
366dbf mov    r8,QWORD PTR [rip+0x7013a]        # 0x3d6f00
366dc6 or     edx,0x1
366dc9 add    r8,0x390c430
366dd0 mov    DWORD PTR [rip+0x96e3a],edx        # 0x3fdc10
366dd6 mov    QWORD PTR [rip+0x96e2b],r8        # 0x3fdc08
366ddd jmp    0x366de6
366ddf mov    r8,QWORD PTR [rip+0x96e22]        # 0x3fdc08
366de6 test   dl,0x2
366de9 jne    0x366e0a
366deb mov    rcx,QWORD PTR [rip+0x6f06e]        # 0x3d5e60
366df2 or     edx,0x2
366df5 mov    DWORD PTR [rip+0x96e15],edx        # 0x3fdc10
366dfb xor    r9d,r9d
366dfe lea    rdx,[rip+0x96e1b]        # 0x3fdc20
366e05 call   0x2cbd24
366e0a mov    rcx,QWORD PTR [rip+0x6f04f]        # 0x3d5e60
366e11 lea    rdx,[rip+0x96e08]        # 0x3fdc20
366e18 mov    r9,rsi
366e1b mov    QWORD PTR [rsp+0x20],rdi
366e20 mov    r8,rbx
366e23 call   0x2cba50
366e28 mov    rbx,QWORD PTR [rsp+0x40]
366e2d mov    rsi,QWORD PTR [rsp+0x48]
366e32 add    rsp,0x30
366e36 pop    rdi
366e37 ret

; roots independent pdata/next-pdata extent 366e38..366eef unwind3d2120
366e38 rex push rbx
366e3a push   rbp
366e3b push   rsi
366e3c push   rdi
366e3d sub    rsp,0x38
366e41 mov    sil,r9b
366e44 mov    rdi,r8
366e47 mov    rbx,rcx
366e4a call   0x2caf08
366e4f test   al,al
366e51 je     0x366ee6
366e57 mov    rcx,rdx
366e5a call   0x2ce5dc
366e5f mov    rcx,rdi
366e62 mov    rbp,rax
366e65 call   0x2ce5dc
366e6a mov    edx,DWORD PTR [rip+0x96f80]        # 0x3fddf0
366e70 mov    rdi,rax
366e73 test   dl,0x1
366e76 jne    0x366e98
366e78 mov    r8,QWORD PTR [rip+0x70081]        # 0x3d6f00
366e7f or     edx,0x1
366e82 add    r8,0x38f9900
366e89 mov    DWORD PTR [rip+0x96f61],edx        # 0x3fddf0
366e8f mov    QWORD PTR [rip+0x96f52],r8        # 0x3fdde8
366e96 jmp    0x366e9f
366e98 mov    r8,QWORD PTR [rip+0x96f49]        # 0x3fdde8
366e9f test   dl,0x2
366ea2 jne    0x366ec3
366ea4 mov    rcx,QWORD PTR [rip+0x6efb5]        # 0x3d5e60
366eab or     edx,0x2
366eae mov    DWORD PTR [rip+0x96f3c],edx        # 0x3fddf0
366eb4 xor    r9d,r9d
366eb7 lea    rdx,[rip+0x96f42]        # 0x3fde00
366ebe call   0x2cbd24
366ec3 mov    rcx,QWORD PTR [rip+0x6ef96]        # 0x3d5e60
366eca lea    rdx,[rip+0x96f2f]        # 0x3fde00
366ed1 mov    BYTE PTR [rsp+0x28],sil
366ed6 mov    r9,rbp
366ed9 mov    r8,rbx
366edc mov    QWORD PTR [rsp+0x20],rdi
366ee1 call   0x365ae0
366ee6 add    rsp,0x38
366eea pop    rdi
366eeb pop    rsi
366eec pop    rbp
366eed pop    rbx
366eee ret

; roots independent pdata/next-pdata extent 366ef0..366faa unwind3d25fc
366ef0 rex push rbx
366ef2 push   rbp
366ef3 push   rsi
366ef4 push   rdi
366ef5 sub    rsp,0x48
366ef9 mov    rdi,r9
366efc mov    rsi,r8
366eff mov    rbp,rdx
366f02 mov    rbx,rcx
366f05 call   0x2caf08
366f0a test   al,al
366f0c je     0x366fa1
366f12 mov    r10d,DWORD PTR [rip+0x96fc7]        # 0x3fdee0
366f19 test   r10b,0x1
366f1d jne    0x366f41
366f1f mov    r8,QWORD PTR [rip+0x6ffda]        # 0x3d6f00
366f26 or     r10d,0x1
366f2a add    r8,0x65c7f60
366f31 mov    DWORD PTR [rip+0x96fa8],r10d        # 0x3fdee0
366f38 mov    QWORD PTR [rip+0x96f99],r8        # 0x3fded8
366f3f jmp    0x366f48
366f41 mov    r8,QWORD PTR [rip+0x96f90]        # 0x3fded8
366f48 test   r10b,0x2
366f4c jne    0x366f6f
366f4e mov    rcx,QWORD PTR [rip+0x6ef0b]        # 0x3d5e60
366f55 lea    rdx,[rip+0x96f94]        # 0x3fdef0
366f5c or     r10d,0x2
366f60 xor    r9d,r9d
366f63 mov    DWORD PTR [rip+0x96f76],r10d        # 0x3fdee0
366f6a call   0x2cbd24
366f6f movss  xmm0,DWORD PTR [rsp+0x90]
366f76 
366f78 lea    rdx,[rip+0x96f71]        # 0x3fdef0
366f7f mov    rcx,QWORD PTR [rip+0x6eeda]        # 0x3d5e60
366f86 mov    r9,rbp
366f89 movss  DWORD PTR [rsp+0x30],xmm0
366f8f mov    r8,rbx
366f92 mov    QWORD PTR [rsp+0x28],rdi
366f97 mov    QWORD PTR [rsp+0x20],rsi
366f9c call   0x365b70
366fa1 add    rsp,0x48
366fa5 pop    rdi
366fa6 pop    rsi
366fa7 pop    rbp
366fa8 pop    rbx
366fa9 ret

; roots independent pdata/next-pdata extent 36817c..368200 unwind3d2038
36817c rex push rbx
36817e sub    rsp,0x20
368182 mov    rbx,rcx
368185 call   0x2caf08
36818a test   al,al
36818c je     0x3681fa
36818e mov    edx,DWORD PTR [rip+0x96abc]        # 0x3fec50
368194 test   dl,0x1
368197 jne    0x3681b9
368199 mov    r8,QWORD PTR [rip+0x6ed60]        # 0x3d6f00
3681a0 or     edx,0x1
3681a3 add    r8,0x3e66250
3681aa mov    DWORD PTR [rip+0x96aa0],edx        # 0x3fec50
3681b0 mov    QWORD PTR [rip+0x96a91],r8        # 0x3fec48
3681b7 jmp    0x3681c0
3681b9 mov    r8,QWORD PTR [rip+0x96a88]        # 0x3fec48
3681c0 test   dl,0x2
3681c3 jne    0x3681e4
3681c5 mov    rcx,QWORD PTR [rip+0x6dc94]        # 0x3d5e60
3681cc or     edx,0x2
3681cf mov    DWORD PTR [rip+0x96a7b],edx        # 0x3fec50
3681d5 xor    r9d,r9d
3681d8 lea    rdx,[rip+0x96a81]        # 0x3fec60
3681df call   0x2cbd24
3681e4 mov    rcx,QWORD PTR [rip+0x6dc75]        # 0x3d5e60
3681eb lea    rdx,[rip+0x96a6e]        # 0x3fec60
3681f2 mov    r8,rbx
3681f5 call   0x2cb9fc
3681fa add    rsp,0x20
3681fe pop    rbx
3681ff ret

; roots independent pdata/next-pdata extent 36a238..36a2c6 unwind3d2038
36a238 rex push rbx
36a23a sub    rsp,0x20
36a23e mov    rbx,rcx
36a241 call   0x2caf08
36a246 test   al,al
36a248 je     0x36a2c0
36a24a mov    ecx,DWORD PTR [rip+0x94460]        # 0x3fe6b0
36a250 test   cl,0x1
36a253 jne    0x36a275
36a255 mov    r8,QWORD PTR [rip+0x6cca4]        # 0x3d6f00
36a25c or     ecx,0x1
36a25f add    r8,0x3f464e0
36a266 mov    DWORD PTR [rip+0x94444],ecx        # 0x3fe6b0
36a26c mov    QWORD PTR [rip+0x94435],r8        # 0x3fe6a8
36a273 jmp    0x36a27c
36a275 mov    r8,QWORD PTR [rip+0x9442c]        # 0x3fe6a8
36a27c test   cl,0x2
36a27f jne    0x36a2a0
36a281 or     ecx,0x2
36a284 lea    rdx,[rip+0x94435]        # 0x3fe6c0
36a28b mov    DWORD PTR [rip+0x9441f],ecx        # 0x3fe6b0
36a291 xor    r9d,r9d
36a294 mov    rcx,QWORD PTR [rip+0x6bbc5]        # 0x3d5e60
36a29b call   0x2cbd24
36a2a0 mov    rcx,QWORD PTR [rip+0x6bbb9]        # 0x3d5e60
36a2a7 lea    rdx,[rip+0x94412]        # 0x3fe6c0
36a2ae mov    r8,rbx
36a2b1 call   0x2dea4c
36a2b6 comiss xmm0,DWORD PTR [rip+0xfffffffffff28e0b]        # 0x2930c8
36a2bd setae  al
36a2c0 add    rsp,0x20
36a2c4 pop    rbx
36a2c5 ret

; roots independent pdata/next-pdata extent 36b004..36b08e unwind3d2038
36b004 rex push rbx
36b006 sub    rsp,0x20
36b00a mov    rbx,rcx
36b00d call   0x2caf08
36b012 test   al,al
36b014 je     0x36b088
36b016 mov    edx,DWORD PTR [rip+0x93ff4]        # 0x3ff010
36b01c test   dl,0x1
36b01f jne    0x36b041
36b021 mov    r8,QWORD PTR [rip+0x6bed8]        # 0x3d6f00
36b028 or     edx,0x1
36b02b add    r8,0x3f37e50
36b032 mov    DWORD PTR [rip+0x93fd8],edx        # 0x3ff010
36b038 mov    QWORD PTR [rip+0x93fc9],r8        # 0x3ff008
36b03f jmp    0x36b048
36b041 mov    r8,QWORD PTR [rip+0x93fc0]        # 0x3ff008
36b048 test   dl,0x2
36b04b jne    0x36b06c
36b04d mov    rcx,QWORD PTR [rip+0x6ae0c]        # 0x3d5e60
36b054 or     edx,0x2
36b057 mov    DWORD PTR [rip+0x93fb3],edx        # 0x3ff010
36b05d xor    r9d,r9d
36b060 lea    rdx,[rip+0x93fb9]        # 0x3ff020
36b067 call   0x2cbd24
36b06c mov    rcx,QWORD PTR [rip+0x6aded]        # 0x3d5e60
36b073 lea    rdx,[rip+0x93fa6]        # 0x3ff020
36b07a mov    r9d,0xffffffce
36b080 mov    r8,rbx
36b083 call   0x32b1c8
36b088 add    rsp,0x20
36b08c pop    rbx
36b08d ret

; roots independent pdata/next-pdata extent 36b6cc..36b758 unwind3d2038
36b6cc rex push rbx
36b6ce sub    rsp,0x20
36b6d2 mov    rbx,rcx
36b6d5 call   0x2caf08
36b6da test   al,al
36b6dc jne    0x36b6e7
36b6de xorps  xmm0,xmm0
36b6e1 add    rsp,0x20
36b6e5 pop    rbx
36b6e6 ret
36b6e7 mov    ecx,DWORD PTR [rip+0x93a13]        # 0x3ff100
36b6ed test   cl,0x1
36b6f0 jne    0x36b712
36b6f2 mov    r8,QWORD PTR [rip+0x6b807]        # 0x3d6f00
36b6f9 or     ecx,0x1
36b6fc add    r8,0x1657ed0
36b703 mov    DWORD PTR [rip+0x939f7],ecx        # 0x3ff100
36b709 mov    QWORD PTR [rip+0x939e8],r8        # 0x3ff0f8
36b710 jmp    0x36b719
36b712 mov    r8,QWORD PTR [rip+0x939df]        # 0x3ff0f8
36b719 test   cl,0x2
36b71c jne    0x36b73d
36b71e or     ecx,0x2
36b721 lea    rdx,[rip+0x939e8]        # 0x3ff110
36b728 mov    DWORD PTR [rip+0x939d2],ecx        # 0x3ff100
36b72e xor    r9d,r9d
36b731 mov    rcx,QWORD PTR [rip+0x6a728]        # 0x3d5e60
36b738 call   0x2cbd24
36b73d mov    rcx,QWORD PTR [rip+0x6a71c]        # 0x3d5e60
36b744 lea    rdx,[rip+0x939c5]        # 0x3ff110
36b74b mov    r8,rbx
36b74e add    rsp,0x20
36b752 pop    rbx
36b753 jmp    0x2dea4c

; roots independent pdata/next-pdata extent 370b50..370c11 unwind3d3df0
370b50 mov    QWORD PTR [rsp+0x8],rbx
370b55 push   rdi
370b56 sub    rsp,0x70
370b5a mov    rbx,rcx
370b5d call   0x2caf08
370b62 test   al,al
370b64 je     0x370c03
370b6a lea    rdx,[rsp+0x30]
370b6f lea    rcx,[rsp+0x88]
370b76 
370b77 call   0x370b1c
370b7c mov    rcx,rax
370b7f call   0x3324ec
370b84 mov    rcx,rax
370b87 call   0x2ce5dc
370b8c mov    edx,DWORD PTR [rip+0x8fb0e]        # 0x4006a0
370b92 mov    rdi,rax
370b95 test   dl,0x1
370b98 jne    0x370bba
370b9a mov    r8,QWORD PTR [rip+0x6635f]        # 0x3d6f00
370ba1 or     edx,0x1
370ba4 add    r8,0x171e8f0
370bab mov    DWORD PTR [rip+0x8faef],edx        # 0x4006a0
370bb1 mov    QWORD PTR [rip+0x8fae0],r8        # 0x400698
370bb8 jmp    0x370bc1
370bba mov    r8,QWORD PTR [rip+0x8fad7]        # 0x400698
370bc1 test   dl,0x2
370bc4 jne    0x370be5
370bc6 mov    rcx,QWORD PTR [rip+0x65293]        # 0x3d5e60
370bcd or     edx,0x2
370bd0 mov    DWORD PTR [rip+0x8faca],edx        # 0x4006a0
370bd6 xor    r9d,r9d
370bd9 lea    rdx,[rip+0x8fad0]        # 0x4006b0
370be0 call   0x2cbd24
370be5 mov    rcx,QWORD PTR [rip+0x65274]        # 0x3d5e60
370bec lea    rdx,[rip+0x8fabd]        # 0x4006b0
370bf3 mov    r9,rdi
370bf6 mov    BYTE PTR [rsp+0x20],0x1
370bfb mov    r8,rbx
370bfe call   0x2d2000
370c03 mov    rbx,QWORD PTR [rsp+0x80]
370c0a 
370c0b add    rsp,0x70
370c0f pop    rdi
370c10 ret

; roots independent pdata/next-pdata extent 373c60..373d01 unwind3d2348
373c60 mov    QWORD PTR [rsp+0x8],rbx
373c65 push   rdi
373c66 sub    rsp,0x30
373c6a mov    rbx,rdx
373c6d mov    rdi,rcx
373c70 call   0x2caf08
373c75 test   al,al
373c77 je     0x373cf3
373c79 mov    ecx,DWORD PTR [rip+0x8dce1]        # 0x401960
373c7f test   cl,0x1
373c82 jne    0x373ca4
373c84 mov    r8,QWORD PTR [rip+0x63275]        # 0x3d6f00
373c8b or     ecx,0x1
373c8e add    r8,0x19f3db0
373c95 mov    DWORD PTR [rip+0x8dcc5],ecx        # 0x401960
373c9b mov    QWORD PTR [rip+0x8dcb6],r8        # 0x401958
373ca2 jmp    0x373cab
373ca4 mov    r8,QWORD PTR [rip+0x8dcad]        # 0x401958
373cab test   cl,0x2
373cae jne    0x373ccf
373cb0 or     ecx,0x2
373cb3 lea    rdx,[rip+0x8dcb6]        # 0x401970
373cba mov    DWORD PTR [rip+0x8dca0],ecx        # 0x401960
373cc0 xor    r9d,r9d
373cc3 mov    rcx,QWORD PTR [rip+0x62196]        # 0x3d5e60
373cca call   0x2cbd24
373ccf mov    rcx,QWORD PTR [rip+0x6218a]        # 0x3d5e60
373cd6 lea    r8,[rsp+0x20]
373cdb mov    r9,rdi
373cde lea    rdx,[rip+0x8dc8b]        # 0x401970
373ce5 call   0x2d2094
373cea movups xmm0,XMMWORD PTR [rsp+0x20]
373cef movdqu XMMWORD PTR [rbx],xmm0
373cf3 mov    rax,rbx
373cf6 mov    rbx,QWORD PTR [rsp+0x40]
373cfb add    rsp,0x30
373cff pop    rdi
373d00 ret

; roots independent pdata/next-pdata extent 374168..37420d unwind3d2120
374168 rex push rbx
37416a push   rbp
37416b push   rsi
37416c push   rdi
37416d sub    rsp,0x38
374171 mov    rdi,r9
374174 mov    rsi,r8
374177 mov    rbp,rdx
37417a mov    rbx,rcx
37417d call   0x2caf08
374182 test   al,al
374184 je     0x374204
374186 mov    ecx,DWORD PTR [rip+0x8daac]        # 0x401c38
37418c test   cl,0x1
37418f jne    0x3741b1
374191 mov    r8,QWORD PTR [rip+0x62d68]        # 0x3d6f00
374198 or     ecx,0x1
37419b add    r8,0x1cd1620
3741a2 mov    DWORD PTR [rip+0x8da90],ecx        # 0x401c38
3741a8 mov    QWORD PTR [rip+0x8da81],r8        # 0x401c30
3741af jmp    0x3741b8
3741b1 mov    r8,QWORD PTR [rip+0x8da78]        # 0x401c30
3741b8 test   cl,0x2
3741bb jne    0x3741dc
3741bd or     ecx,0x2
3741c0 lea    rdx,[rip+0x8da79]        # 0x401c40
3741c7 mov    DWORD PTR [rip+0x8da6b],ecx        # 0x401c38
3741cd xor    r9d,r9d
3741d0 mov    rcx,QWORD PTR [rip+0x61c89]        # 0x3d5e60
3741d7 call   0x2cbd24
3741dc mov    rcx,QWORD PTR [rip+0x61c7d]        # 0x3d5e60
3741e3 lea    rdx,[rip+0x8da56]        # 0x401c40
3741ea mov    QWORD PTR [rsp+0x28],rdi
3741ef mov    r9,rbp
3741f2 mov    r8,rbx
3741f5 mov    QWORD PTR [rsp+0x20],rsi
3741fa call   0x374050
3741ff test   al,al
374201 setne  al
374204 add    rsp,0x38
374208 pop    rdi
374209 pop    rsi
37420a pop    rbp
37420b pop    rbx
37420c ret

; roots independent pdata/next-pdata extent 322ef8..322f30 unwind3d2318
322ef8 rex push rbx
322efa sub    rsp,0x30
322efe mov    rbx,rcx
322f01 lea    rdx,[rsp+0x20]
322f06 lea    rcx,[rsp+0x48]
322f0b call   0x3229d8
322f10 mov    rcx,rax
322f13 call   0x2dd160
322f18 mov    rdx,rax
322f1b lea    r8,[rip+0xcf56e]        # 0x3f2490
322f22 mov    rcx,rbx
322f25 call   0x322f30
322f2a add    rsp,0x30
322f2e pop    rbx
322f2f ret

; roots independent pdata/next-pdata extent 322f30..323006 unwind3d27d8
322f30 rex push rbx
322f32 push   rbp
322f33 push   rsi
322f34 push   rdi
322f35 push   r12
322f37 push   r14
322f39 push   r15
322f3b sub    rsp,0x20
322f3f mov    r12,r8
322f42 mov    r14,rdx
322f45 test   rcx,rcx
322f48 je     0x322fef
322f4e test   rdx,rdx
322f51 je     0x322fef
322f57 cmp    BYTE PTR [rdx],0x0
322f5a je     0x322fef
322f60 mov    rax,QWORD PTR [rcx+0x10]
322f64 test   rax,rax
322f67 je     0x322fef
322f6d mov    rax,QWORD PTR [rax+0x20]
322f71 test   rax,rax
322f74 je     0x322fef
322f76 mov    r15,QWORD PTR [rax+0x20]
322f7a test   r15,r15
322f7d je     0x322fef
322f7f mov    ebp,DWORD PTR [rax+0x30]
322f82 lea    eax,[rbp-0x1]
322f85 cmp    eax,0xff
322f8a ja     0x322fef
322f8c xor    esi,esi
322f8e test   ebp,ebp
322f90 jle    0x322fef
322f92 mov    eax,esi
322f94 shl    eax,0x4
322f97 cdqe
322f99 mov    rbx,QWORD PTR [r15+rax*1+0x8]
322f9e test   rbx,rbx
322fa1 je     0x322fe9
322fa3 mov    rbx,QWORD PTR [rbx+0x18]
322fa7 test   rbx,rbx
322faa je     0x322fe9
322fac test   bl,0x1
322faf jne    0x322fe9
322fb1 mov    rbx,QWORD PTR [rbx]
322fb4 test   rbx,rbx
322fb7 je     0x322fe9
322fb9 mov    rdi,QWORD PTR [rbx]
322fbc test   rdi,rdi
322fbf je     0x322fe9
322fc1 cmp    QWORD PTR [r12],0x0
322fc6 je     0x322fd3
322fc8 cmp    QWORD PTR [r12],rdi
322fcc jne    0x322fe9
322fce mov    rax,rbx
322fd1 jmp    0x322ff1
322fd3 mov    rcx,QWORD PTR [rdi+0x10]
322fd7 test   rcx,rcx
322fda je     0x322fe9
322fdc mov    rdx,r14
322fdf call   0x3ca960
322fe4 test   rax,rax
322fe7 jne    0x323000
322fe9 inc    esi
322feb cmp    esi,ebp
322fed jl     0x322f92
322fef xor    eax,eax
322ff1 add    rsp,0x20
322ff5 pop    r15
322ff7 pop    r14
322ff9 pop    r12
322ffb pop    rdi
322ffc pop    rsi
322ffd pop    rbp
322ffe pop    rbx
322fff ret
323000 mov    QWORD PTR [r12],rdi
323004 jmp    0x322fce

; roots independent pdata/next-pdata extent 36a0e0..36a175 unwind3d2038
36a0e0 rex push rbx
36a0e2 sub    rsp,0x20
36a0e6 mov    rbx,rcx
36a0e9 call   0x2caf08
36a0ee test   al,al
36a0f0 je     0x36a16d
36a0f2 mov    edx,DWORD PTR [rip+0x94d38]        # 0x3fee30
36a0f8 test   dl,0x1
36a0fb jne    0x36a11d
36a0fd mov    r8,QWORD PTR [rip+0x6cdfc]        # 0x3d6f00
36a104 or     edx,0x1
36a107 add    r8,0x3f12dd0
36a10e mov    DWORD PTR [rip+0x94d1c],edx        # 0x3fee30
36a114 mov    QWORD PTR [rip+0x94d0d],r8        # 0x3fee28
36a11b jmp    0x36a124
36a11d mov    r8,QWORD PTR [rip+0x94d04]        # 0x3fee28
36a124 test   dl,0x2
36a127 jne    0x36a148
36a129 mov    rcx,QWORD PTR [rip+0x6bd30]        # 0x3d5e60
36a130 or     edx,0x2
36a133 mov    DWORD PTR [rip+0x94cf7],edx        # 0x3fee30
36a139 xor    r9d,r9d
36a13c lea    rdx,[rip+0x94cfd]        # 0x3fee40
36a143 call   0x2cbd24
36a148 mov    rcx,QWORD PTR [rip+0x6bd11]        # 0x3d5e60
36a14f lea    rdx,[rip+0x94cea]        # 0x3fee40
36a156 mov    r8,rbx
36a159 call   0x2cb9fc
36a15e mov    rcx,rax
36a161 call   0x2caf08
36a166 test   al,al
36a168 setne  al
36a16b jmp    0x36a16f
36a16d xor    al,al
36a16f add    rsp,0x20
36a173 pop    rbx
36a174 ret

; roots independent pdata/next-pdata extent 36ba2c..36baca unwind3d298c
36ba2c rex push rbx
36ba2e sub    rsp,0x40
36ba32 movaps XMMWORD PTR [rsp+0x30],xmm6
36ba37 mov    rbx,rcx
36ba3a movaps xmm6,xmm1
36ba3d call   0x2caf08
36ba42 test   al,al
36ba44 je     0x36babf
36ba46 mov    rcx,rbx
36ba49 call   0x36bacc
36ba4e test   al,al
36ba50 je     0x36babf
36ba52 mov    rcx,rbx
36ba55 call   0x36b9a0
36ba5a test   al,al
36ba5c jne    0x36babf
36ba5e movss  xmm0,DWORD PTR [rip+0xfffffffffff293d6]        # 0x294e3c
36ba65 
36ba66 comiss xmm0,xmm6
36ba69 jbe    0x36babf
36ba6b lea    rdx,[rsp+0x20]
36ba70 lea    rcx,[rsp+0x60]
36ba75 call   0x36b3bc
36ba7a mov    rcx,rax
36ba7d call   0x2e9b8c
36ba82 mov    rdx,rax
36ba85 mov    rcx,rbx
36ba88 call   0x36c274
36ba8d movss  xmm1,DWORD PTR [rbx+0x304]
36ba94 
36ba95 mov    rcx,rbx
36ba98 call   0x36c0f0
36ba9d lea    rdx,[rsp+0x60]
36baa2 lea    rcx,[rsp+0x60]
36baa7 call   0x36b420
36baac mov    rcx,rax
36baaf call   0x2e3614
36bab4 mov    rdx,rax
36bab7 mov    rcx,rbx
36baba call   0x366c30
36babf movaps xmm6,XMMWORD PTR [rsp+0x30]
36bac4 add    rsp,0x40
36bac8 pop    rbx
36bac9 ret
