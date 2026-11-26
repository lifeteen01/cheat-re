; font independent pdata/next-pdata extent 3a653c..3a6554 unwind0
3a653c lea    rax,[rip+0xfffffffffffff479]        # 0x3a59bc
3a6543 mov    QWORD PTR [rip+0x5fbe6],rax        # 0x406130
3a654a lea    rax,[rip+0x5fbdf]        # 0x406130
3a6551 ret
3a6552 int3
3a6553 int3

; font independent pdata/next-pdata extent 3a3394..3a33c0 unwind3d2038
3a3394 rex push rbx
3a3396 sub    rsp,0x20
3a339a cmp    DWORD PTR [rcx+0x78],0x0
3a339e mov    rbx,rcx
3a33a1 jne    0x3a33a4
3a33a3 int3
3a33a4 mov    rax,QWORD PTR [rcx+0x488]
3a33ab test   rax,rax
3a33ae jne    0x3a33b5
3a33b0 call   0x3a653c
3a33b5 mov    rcx,rbx
3a33b8 add    rsp,0x20
3a33bc pop    rbx
3a33bd rex.W jmp QWORD PTR [rax]

; font independent pdata/next-pdata extent 3a4994..3a49eb unwind3d2738
3a4994 rex push rbx
3a4996 push   rsi
3a4997 push   rdi
3a4998 push   r14
3a499a sub    rsp,0x28
3a499e cmp    QWORD PTR [rcx+0x30],0x0
3a49a3 mov    rdi,r9
3a49a6 mov    rsi,r8
3a49a9 mov    r14,rdx
3a49ac mov    rbx,rcx
3a49af jne    0x3a49b6
3a49b1 call   0x3a3394
3a49b6 mov    rax,QWORD PTR [rbx+0x30]
3a49ba mov    QWORD PTR [r14],rax
3a49bd test   rsi,rsi
3a49c0 je     0x3a49c7
3a49c2 mov    eax,DWORD PTR [rbx+0x40]
3a49c5 mov    DWORD PTR [rsi],eax
3a49c7 test   rdi,rdi
3a49ca je     0x3a49d1
3a49cc mov    eax,DWORD PTR [rbx+0x44]
3a49cf mov    DWORD PTR [rdi],eax
3a49d1 mov    rax,QWORD PTR [rsp+0x70]
3a49d6 test   rax,rax
3a49d9 je     0x3a49e1
3a49db mov    DWORD PTR [rax],0x1
3a49e1 add    rsp,0x28
3a49e5 pop    r14
3a49e7 pop    rdi
3a49e8 pop    rsi
3a49e9 pop    rbx
3a49ea ret

; font independent pdata/next-pdata extent 3a49ec..3a4ab9 unwind3d4f90
3a49ec mov    rax,rsp
3a49ef mov    QWORD PTR [rax+0x10],rbx
3a49f3 mov    QWORD PTR [rax+0x18],rsi
3a49f7 push   rdi
3a49f8 push   r14
3a49fa push   r15
3a49fc sub    rsp,0x30
3a4a00 cmp    QWORD PTR [rcx+0x38],0x0
3a4a05 mov    rsi,r9
3a4a08 mov    r14,r8
3a4a0b mov    r15,rdx
3a4a0e mov    rbx,rcx
3a4a11 jne    0x3a4a79
3a4a13 xor    r9d,r9d
3a4a16 mov    QWORD PTR [rax+0x8],0x0
3a4a1d 
3a4a1e xor    r8d,r8d
3a4a21 mov    QWORD PTR [rax-0x28],0x0
3a4a28 
3a4a29 lea    rdx,[rax+0x8]
3a4a2d call   0x3a4994
3a4a32 mov    rdi,QWORD PTR [rsp+0x50]
3a4a37 test   rdi,rdi
3a4a3a je     0x3a4a79
3a4a3c movsxd rax,DWORD PTR [rbx+0x40]
3a4a40 movsxd rcx,DWORD PTR [rbx+0x44]
3a4a44 imul   rcx,rax
3a4a48 shl    rcx,0x2
3a4a4c call   0x395158
3a4a51 mov    edx,DWORD PTR [rbx+0x44]
3a4a54 imul   edx,DWORD PTR [rbx+0x40]
3a4a58 mov    QWORD PTR [rbx+0x38],rax
3a4a5c jmp    0x3a4a75
3a4a5e movzx  ecx,BYTE PTR [rdi]
3a4a61 inc    rdi
3a4a64 shl    ecx,0x18
3a4a67 or     ecx,0xffffff
3a4a6d mov    DWORD PTR [rax],ecx
3a4a6f dec    edx
3a4a71 lea    rax,[rax+0x4]
3a4a75 test   edx,edx
3a4a77 jg     0x3a4a5e
3a4a79 mov    rax,QWORD PTR [rbx+0x38]
3a4a7d mov    QWORD PTR [r15],rax
3a4a80 test   r14,r14
3a4a83 je     0x3a4a8b
3a4a85 mov    eax,DWORD PTR [rbx+0x40]
3a4a88 mov    DWORD PTR [r14],eax
3a4a8b test   rsi,rsi
3a4a8e je     0x3a4a95
3a4a90 mov    eax,DWORD PTR [rbx+0x44]
3a4a93 mov    DWORD PTR [rsi],eax
3a4a95 mov    rax,QWORD PTR [rsp+0x70]
3a4a9a test   rax,rax
3a4a9d je     0x3a4aa5
3a4a9f mov    DWORD PTR [rax],0x4
3a4aa5 mov    rbx,QWORD PTR [rsp+0x58]
3a4aaa mov    rsi,QWORD PTR [rsp+0x60]
3a4aaf add    rsp,0x30
3a4ab3 pop    r15
3a4ab5 pop    r14
3a4ab7 pop    rdi
3a4ab8 ret

; font independent pdata/next-pdata extent 3a3e64..3a3ea3 unwind3d2038
3a3e64 rex push rbx
3a3e66 sub    rsp,0x20
3a3e6a mov    rbx,rcx
3a3e6d mov    rcx,QWORD PTR [rcx+0x30]
3a3e71 test   rcx,rcx
3a3e74 je     0x3a3e7b
3a3e76 call   0x39517c
3a3e7b mov    rcx,QWORD PTR [rbx+0x38]
3a3e7f test   rcx,rcx
3a3e82 je     0x3a3e89
3a3e84 call   0x39517c
3a3e89 mov    QWORD PTR [rbx+0x30],0x0
3a3e90 
3a3e91 mov    QWORD PTR [rbx+0x38],0x0
3a3e98 
3a3e99 mov    BYTE PTR [rbx+0x29],0x0
3a3e9d add    rsp,0x20
3a3ea1 pop    rbx
3a3ea2 ret

; font independent pdata/next-pdata extent 3a3e10..3a3e64 unwind3d2038
3a3e10 rex push rbx
3a3e12 sub    rsp,0x20
3a3e16 mov    rbx,rcx
3a3e19 mov    QWORD PTR [rcx+0x10],0x0
3a3e20 
3a3e21 add    rcx,0x28
3a3e25 call   0x379578
3a3e2a mov    rcx,rbx
3a3e2d call   0x379578
3a3e32 lea    rcx,[rbx+0x18]
3a3e36 call   0x379578
3a3e3b mov    QWORD PTR [rbx+0x38],0x0
3a3e42 
3a3e43 mov    QWORD PTR [rbx+0x40],0x0
3a3e4a 
3a3e4b mov    BYTE PTR [rbx+0x60],0x1
3a3e4f mov    QWORD PTR [rbx+0x68],0x0
3a3e56 
3a3e57 mov    DWORD PTR [rbx+0x70],0x0
3a3e5e add    rsp,0x20
3a3e62 pop    rbx
3a3e63 ret

; font independent pdata/next-pdata extent 3a5950..3a59bc unwind3d50f0
3a5950 mov    QWORD PTR [rsp+0x8],rbx
3a5955 mov    QWORD PTR [rsp+0x10],rsi
3a595a push   rdi
3a595b sub    rsp,0x30
3a595f cmp    BYTE PTR [r8+0x48],0x0
3a5964 mov    rdi,r8
3a5967 movaps XMMWORD PTR [rsp+0x20],xmm6
3a596c mov    rbx,rdx
3a596f movaps xmm6,xmm3
3a5972 mov    rsi,rcx
3a5975 jne    0x3a59a3
3a5977 mov    rcx,rdx
3a597a call   0x3a3e10
3a597f mov    eax,DWORD PTR [rdi+0x14]
3a5982 movss  xmm0,DWORD PTR [rsp+0x60]
3a5988 mov    DWORD PTR [rbx+0x14],eax
3a598b xor    eax,eax
3a598d mov    WORD PTR [rbx+0x50],ax
3a5991 movss  DWORD PTR [rbx+0x68],xmm6
3a5996 movss  DWORD PTR [rbx+0x6c],xmm0
3a599b mov    QWORD PTR [rbx+0x48],rdi
3a599f mov    QWORD PTR [rbx+0x40],rsi
3a59a3 inc    WORD PTR [rbx+0x50]
3a59a7 mov    rbx,QWORD PTR [rsp+0x40]
3a59ac mov    rsi,QWORD PTR [rsp+0x48]
3a59b1 movaps xmm6,XMMWORD PTR [rsp+0x20]
3a59b6 add    rsp,0x30
3a59ba pop    rdi
3a59bb ret

; font independent pdata/next-pdata extent 3a4d18..3a4d50 unwind0
3a4d18 xor    r8d,r8d
3a4d1b mov    r9d,0xff
3a4d21 mov    eax,r8d
3a4d24 xorps  xmm0,xmm0
3a4d27 cvtsi2ss xmm0,rax
3a4d2c mulss  xmm0,xmm1
3a4d30 cvttss2si rax,xmm0
3a4d35 cmp    eax,r9d
3a4d38 movzx  edx,al
3a4d3b cmova  edx,r9d
3a4d3f mov    BYTE PTR [rcx+r8*1],dl
3a4d43 inc    r8d
3a4d46 cmp    r8d,0x100
3a4d4d jb     0x3a4d21
3a4d4f ret

; font independent pdata/next-pdata extent 3a4d50..3a4dae unwind3d4734
3a4d50 mov    QWORD PTR [rsp+0x8],rbx
3a4d55 mov    r10d,DWORD PTR [rsp+0x38]
3a4d5a mov    rbx,rcx
3a4d5d mov    r11d,DWORD PTR [rsp+0x28]
3a4d62 imul   r9d,r10d
3a4d66 movsxd rax,r9d
3a4d69 add    rax,rdx
3a4d6c movsxd r9,r8d
3a4d6f mov    r8d,DWORD PTR [rsp+0x30]
3a4d74 add    r9,rax
3a4d77 test   r8d,r8d
3a4d7a jle    0x3a4da8
3a4d7c sub    r10d,r11d
3a4d7f movsxd r10,r10d
3a4d82 mov    edx,r11d
3a4d85 test   r11d,r11d
3a4d88 jle    0x3a4d9d
3a4d8a movzx  eax,BYTE PTR [r9]
3a4d8e dec    edx
3a4d90 mov    cl,BYTE PTR [rbx+rax*1]
3a4d93 mov    BYTE PTR [r9],cl
3a4d96 inc    r9
3a4d99 test   edx,edx
3a4d9b jg     0x3a4d8a
3a4d9d dec    r8d
3a4da0 add    r9,r10
3a4da3 test   r8d,r8d
3a4da6 jg     0x3a4d82
3a4da8 mov    rbx,QWORD PTR [rsp+0x8]
3a4dad ret

; font independent pdata/next-pdata extent 379578..3795a4 unwind3d2038
379578 rex push rbx
37957a sub    rsp,0x20
37957e mov    rbx,rcx
379581 mov    rcx,QWORD PTR [rcx+0x8]
379585 test   rcx,rcx
379588 je     0x37959e
37958a mov    QWORD PTR [rbx],0x0
379591 call   0x39517c
379596 mov    QWORD PTR [rbx+0x8],0x0
37959d 
37959e add    rsp,0x20
3795a2 pop    rbx
3795a3 ret
