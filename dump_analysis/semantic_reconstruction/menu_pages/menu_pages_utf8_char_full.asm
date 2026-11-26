393a04 mov    r9,rcx
393a07 cmp    r8d,0x80
393a0e jae    0x393a19
393a10 mov    BYTE PTR [rcx],r8b
393a13 mov    eax,0x1
393a18 ret
393a19 cmp    r8d,0x800
393a20 jae    0x393a48
393a22 mov    eax,0x2
393a27 cmp    edx,eax
393a29 jl     0x393acc
393a2f mov    ecx,r8d
393a32 and    r8b,0x3f
393a36 shr    ecx,0x6
393a39 add    cl,0xc0
393a3c or     r8b,0x80
393a40 mov    BYTE PTR [r9],cl
393a43 mov    BYTE PTR [r9+0x1],r8b
393a47 ret
393a48 cmp    r8d,0x10000
393a4f jae    0x393a82
393a51 cmp    edx,0x3
393a54 jl     0x393acc
393a56 mov    eax,r8d
393a59 shr    eax,0xc
393a5c add    al,0xe0
393a5e mov    BYTE PTR [rcx],al
393a60 mov    ecx,r8d
393a63 shr    ecx,0x6
393a66 and    r8b,0x3f
393a6a and    cl,0x3f
393a6d mov    eax,0x3
393a72 or     cl,0x80
393a75 or     r8b,0x80
393a79 mov    BYTE PTR [r9+0x1],cl
393a7d mov    BYTE PTR [r9+0x2],r8b
393a81 ret
393a82 cmp    r8d,0x10ffff
393a89 ja     0x393acc
393a8b cmp    edx,0x4
393a8e jl     0x393acc
393a90 mov    eax,r8d
393a93 shr    eax,0x12
393a96 add    al,0xf0
393a98 mov    BYTE PTR [rcx],al
393a9a mov    ecx,r8d
393a9d shr    ecx,0xc
393aa0 mov    eax,0x4
393aa5 and    cl,0x3f
393aa8 or     cl,0x80
393aab mov    BYTE PTR [r9+0x1],cl
393aaf mov    ecx,r8d
393ab2 shr    ecx,0x6
393ab5 and    r8b,0x3f
393ab9 and    cl,0x3f
393abc or     cl,0x80
393abf or     r8b,0x80
393ac3 mov    BYTE PTR [r9+0x2],cl
393ac7 mov    BYTE PTR [r9+0x3],r8b
393acb ret
393acc xor    eax,eax
393ace ret
393acf int3
393ad0 mov    QWORD PTR [rsp+0x8],rbx
393ad5 mov    QWORD PTR [rsp+0x18],rsi
393ada push   rdi
393adb sub    rsp,0x20
393adf mov    rdi,rdx
393ae2 mov    rbx,rcx
393ae5 xor    esi,esi
393ae7 test   rdi,rdi
393aea je     0x393af1
393aec cmp    rbx,rdi
393aef jae    0x393b10
393af1 cmp    BYTE PTR [rbx],0x0
