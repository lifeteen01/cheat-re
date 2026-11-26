; automation independent pdata/next-pdata extent 2e6b20..2e890d unwind3d2d0c
2e6b20 mov    rax,rsp
2e6b23 push   rbp
2e6b24 push   rbx
2e6b25 push   rsi
2e6b26 push   rdi
2e6b27 push   r12
2e6b29 push   r13
2e6b2b push   r14
2e6b2d push   r15
2e6b2f lea    rbp,[rsp-0x58]
2e6b34 sub    rsp,0x158
2e6b3b movaps XMMWORD PTR [rax-0x58],xmm6
2e6b3f movaps XMMWORD PTR [rax-0x68],xmm7
2e6b43 movaps XMMWORD PTR [rax-0x78],xmm8
2e6b48 movaps XMMWORD PTR [rax-0x88],xmm13
2e6b4f 
2e6b50 movaps XMMWORD PTR [rax-0x98],xmm14
2e6b57 
2e6b58 call   0x2e069c
2e6b5d mov    rcx,rax
2e6b60 call   0x2caf08
2e6b65 xor    r13d,r13d
2e6b68 test   al,al
2e6b6a je     0x2e88dc
2e6b70 call   0x2dda9c
2e6b75 mov    rcx,rax
2e6b78 mov    QWORD PTR [rbp-0x78],rax
2e6b7c mov    rdi,rax
2e6b7f call   0x2caf08
2e6b84 test   al,al
2e6b86 je     0x2e88dc
2e6b8c cmp    BYTE PTR [rip+0xfe4b5],r13b        # 0x3e5048
2e6b93 lea    r15d,[r13+0x1]
2e6b97 je     0x2e6c11
2e6b99 mov    dl,r15b
2e6b9c mov    ecx,0x22b
2e6ba1 call   0x2e5e4c
2e6ba6 test   al,al
2e6ba8 je     0x2e6c11
2e6baa mov    rcx,rdi
2e6bad call   0x368a84
2e6bb2 mov    rcx,rax
2e6bb5 mov    rdx,rax
2e6bb8 call   0x2caf08
2e6bbd test   al,al
2e6bbf je     0x2e6c11
2e6bc1 mov    rcx,rdx
2e6bc4 call   0x371e5c
2e6bc9 mov    rcx,rax
2e6bcc mov    rbx,rax
2e6bcf call   0x2caf08
2e6bd4 test   al,al
2e6bd6 je     0x2e6c11
2e6bd8 mov    rcx,rbx
2e6bdb call   0x36c3b4
2e6be0 mov    rcx,rax
2e6be3 mov    rdx,rax
2e6be6 call   0x2caf08
2e6beb test   al,al
2e6bed je     0x2e6c11
2e6bef cmp    DWORD PTR [rdx+0x1c],r13d
2e6bf3 jle    0x2e6c11
2e6bf5 cmp    BYTE PTR [rip+0xfffffffffff31c1c],r13b        # 0x218818
2e6bfc jne    0x2e6c11
2e6bfe call   0x2e6844
2e6c03 test   al,al
2e6c05 jne    0x2e6c11
2e6c07 xor    edx,edx
2e6c09 mov    rcx,rbx
2e6c0c call   0x36bfdc
2e6c11 cmp    BYTE PTR [rip+0xfe2a0],r13b        # 0x3e4eb8
2e6c18 mov    r12d,0x400
2e6c1e xorps  xmm14,xmm14
2e6c22 je     0x2e70f1
2e6c28 cmp    BYTE PTR [rip+0xf1069],r13b        # 0x3d7c98
2e6c2f jne    0x2e70f1
2e6c35 mov    rcx,rdi
2e6c38 call   0x368a84
2e6c3d mov    rcx,rax
2e6c40 mov    rdx,rax
2e6c43 call   0x2caf08
2e6c48 test   al,al
2e6c4a je     0x2e70f1
2e6c50 mov    rcx,rdx
2e6c53 call   0x3721b4
2e6c58 mov    rcx,rax
2e6c5b mov    rsi,rax
2e6c5e call   0x2caf08
2e6c63 test   al,al
2e6c65 je     0x2e70f1
2e6c6b mov    rcx,rdi
2e6c6e call   0x369738
2e6c73 mov    rcx,rax
2e6c76 mov    r14,rax
2e6c79 call   0x2caf08
2e6c7e test   al,al
2e6c80 je     0x2e70f1
2e6c86 cmp    BYTE PTR [rip+0xf1614],r13b        # 0x3d82a1
2e6c8d movss  xmm13,DWORD PTR [rsi+0x3b8]
2e6c94 
2e6c96 jne    0x2e6d5a
2e6c9c cmp    BYTE PTR [rip+0xf1095],r13b        # 0x3d7d38
2e6ca3 je     0x2e6d5a
2e6ca9 mov    rbx,QWORD PTR [rip+0xf0608]        # 0x3d72b8
2e6cb0 mov    rcx,rbx
2e6cb3 call   0x2caf08
2e6cb8 test   al,al
2e6cba je     0x2e6d5a
2e6cc0 mov    rcx,rbx
2e6cc3 call   0x2e0e9c
2e6cc8 test   al,al
2e6cca je     0x2e6d5a
2e6cd0 mov    r8d,0x3e
2e6cd6 lea    rdx,[rsp+0x40]
2e6cdb mov    rcx,rbx
2e6cde call   0x368be8
2e6ce3 movsd  xmm0,QWORD PTR [rsp+0x40]
2e6ce9 lea    rdx,[rsp+0x50]
2e6cee mov    eax,DWORD PTR [rsp+0x48]
2e6cf2 mov    rcx,rdi
2e6cf5 movsd  QWORD PTR [rsp+0x50],xmm0
2e6cfb mov    DWORD PTR [rsp+0x58],eax
2e6cff call   0x3666b0
2e6d04 movaps xmm1,xmm0
2e6d07 movss  xmm0,DWORD PTR [rip+0xf05dd]        # 0x3d72ec
2e6d0e 
2e6d0f addss  xmm0,DWORD PTR [rip+0xfffffffffffa6dc9]        # 0x28dae0
2e6d16 
2e6d17 addss  xmm1,DWORD PTR [rip+0xfffffffffffa6531]        # 0x28d250
2e6d1e 
2e6d1f mulss  xmm0,DWORD PTR [rip+0xfffffffffffa6dd5]        # 0x28dafc
2e6d26 
2e6d27 mulss  xmm0,DWORD PTR [rip+0xfffffffffffa6e19]        # 0x28db48
2e6d2e 
2e6d2f cvtps2pd xmm0,xmm0
2e6d32 addsd  xmm0,QWORD PTR [rip+0xfffffffffffa6db6]        # 0x28daf0
2e6d39 
2e6d3a cvtpd2ps xmm0,xmm0
2e6d3e comiss xmm0,xmm1
2e6d41 jbe    0x2e6d5a
2e6d43 mov    rcx,rsi
2e6d46 call   0x36bb58
2e6d4b test   al,al
2e6d4d je     0x2e6d5a
2e6d4f mov    edx,r12d
2e6d52 mov    rcx,r14
2e6d55 call   0x373d84
2e6d5a cmp    BYTE PTR [rip+0xfe517],r13b        # 0x3e5278
2e6d61 je     0x2e6e10
2e6d67 cmp    BYTE PTR [rip+0xf1533],r13b        # 0x3d82a1
2e6d6e jne    0x2e6e10
2e6d74 mov    rbx,QWORD PTR [rip+0xfd4cd]        # 0x3e4248
2e6d7b mov    rcx,rbx
2e6d7e call   0x2caf08
2e6d83 test   al,al
2e6d85 je     0x2e6e10
2e6d8b mov    rcx,rbx
2e6d8e call   0x2e0e9c
2e6d93 test   al,al
2e6d95 je     0x2e6e10
2e6d97 mov    rcx,rbx
2e6d9a call   0x2e6110
2e6d9f mov    rcx,rax
2e6da2 mov    r8,rax
2e6da5 call   0x2caf08
2e6daa test   al,al
2e6dac je     0x2e6e10
2e6dae lea    rdx,[rsp+0x70]
2e6db3 mov    rcx,r8
2e6db6 call   0x3747d4
2e6dbb lea    rdx,[rsp+0x60]
2e6dc0 mov    rcx,rdi
2e6dc3 call   0x368b9c
2e6dc8 lea    rdx,[rsp+0x60]
2e6dcd lea    rcx,[rsp+0x70]
2e6dd2 call   0x2dff30
2e6dd7 movaps xmm1,xmm0
2e6dda movaps xmm0,xmm13
2e6dde addss  xmm0,DWORD PTR [rip+0xfffffffffffa73ea]        # 0x28e1d0
2e6de5 
2e6de6 comiss xmm0,xmm1
2e6de9 jbe    0x2e6e10
2e6deb xor    edx,edx
2e6ded mov    rcx,rsi
2e6df0 call   0x36b494
2e6df5 test   al,al
2e6df7 je     0x2e6e10
2e6df9 mov    rcx,rsi
2e6dfc call   0x36bb58
2e6e01 test   al,al
2e6e03 je     0x2e6e10
2e6e05 mov    edx,r12d
2e6e08 mov    rcx,r14
2e6e0b call   0x373d84
2e6e10 cmp    BYTE PTR [rip+0xf1151],r13b        # 0x3d7f68
2e6e17 mov    r12d,0x48a10000
2e6e1d je     0x2e6f9d
2e6e23 cmp    BYTE PTR [rip+0xf1477],r13b        # 0x3d82a1
2e6e2a jne    0x2e6f9d
2e6e30 mov    rbx,QWORD PTR [rip+0xf0489]        # 0x3d72c0
2e6e37 mov    rcx,rbx
2e6e3a call   0x2caf08
2e6e3f test   al,al
2e6e41 je     0x2e6f9d
2e6e47 mov    rcx,rbx
2e6e4a call   0x2e0e9c
2e6e4f test   al,al
2e6e51 je     0x2e6f9d
2e6e57 mov    rcx,rbx
2e6e5a call   0x36acb8
2e6e5f test   al,al
2e6e61 jne    0x2e6f9d
2e6e67 mov    rcx,rbx
2e6e6a call   0x36b288
2e6e6f test   al,al
2e6e71 jne    0x2e6f9d
2e6e77 mov    r8d,0x35
2e6e7d lea    rdx,[rsp+0x40]
2e6e82 mov    rcx,rbx
2e6e85 call   0x368be8
2e6e8a lea    rdx,[rsp+0x70]
2e6e8f mov    rcx,rdi
2e6e92 call   0x36924c
2e6e97 movsd  xmm0,QWORD PTR [rsp+0x40]
2e6e9d lea    rdx,[rsp+0x50]
2e6ea2 mov    eax,DWORD PTR [rsp+0x48]
2e6ea6 mov    rcx,rdi
2e6ea9 movsd  QWORD PTR [rsp+0x50],xmm0
2e6eaf mov    DWORD PTR [rsp+0x58],eax
2e6eb3 call   0x3666b0
2e6eb8 movaps xmm7,xmm0
2e6ebb movaps xmm0,xmm13
2e6ebf call   0x2e091c
2e6ec4 mov    eax,DWORD PTR [rsp+0x48]
2e6ec8 lea    rdx,[rsp+0x50]
2e6ecd movaps xmm8,xmm0
2e6ed1 mov    DWORD PTR [rsp+0x58],eax
2e6ed5 movsd  xmm0,QWORD PTR [rsp+0x40]
2e6edb lea    rcx,[rsp+0x60]
2e6ee0 mov    eax,DWORD PTR [rsp+0x78]
2e6ee4 xorps  xmm3,xmm3
2e6ee7 movsd  QWORD PTR [rsp+0x50],xmm0
2e6eed mov    r8d,r12d
2e6ef0 movsd  xmm0,QWORD PTR [rsp+0x70]
2e6ef6 movsd  QWORD PTR [rsp+0x60],xmm0
2e6efc movss  DWORD PTR [rsp+0x20],xmm14
2e6f03 mov    DWORD PTR [rsp+0x68],eax
2e6f07 call   0x2e2320
2e6f0c test   al,al
2e6f0e je     0x2e6f9d
2e6f14 mov    rcx,rsi
2e6f17 call   0x36bb58
2e6f1c test   al,al
2e6f1e je     0x2e6f9d
2e6f20 movss  xmm6,DWORD PTR [rip+0xf03c4]        # 0x3d72ec
2e6f27 
2e6f28 mov    rcx,rbx
2e6f2b addss  xmm6,DWORD PTR [rip+0xfffffffffffa6bad]        # 0x28dae0
2e6f32 
2e6f33 addss  xmm7,DWORD PTR [rip+0xfffffffffffa6315]        # 0x28d250
2e6f3a 
2e6f3b mulss  xmm6,DWORD PTR [rip+0xfffffffffffa6bb9]        # 0x28dafc
2e6f42 
2e6f43 call   0x36942c
2e6f48 xorps  xmm1,xmm1
2e6f4b mulss  xmm0,xmm6
2e6f4f cvtss2sd xmm1,xmm0
2e6f53 addsd  xmm1,QWORD PTR [rip+0xfffffffffffa6b95]        # 0x28daf0
2e6f5a 
2e6f5b cvtpd2ps xmm0,xmm1
2e6f5f comiss xmm0,xmm7
2e6f62 jbe    0x2e6f8a
2e6f64 mov    rcx,rbx
2e6f67 call   0x36a0e0
2e6f6c test   al,al
2e6f6e je     0x2e6f8a
2e6f70 movss  xmm0,DWORD PTR [rip+0xfffffffffffa6bbc]        # 0x28db34
2e6f77 
2e6f78 comiss xmm0,xmm7
2e6f7b jbe    0x2e6f8a
2e6f7d mov    edx,0x400
2e6f82 mov    rcx,r14
2e6f85 call   0x373d84
2e6f8a comiss xmm8,xmm7
2e6f8e jbe    0x2e6f9d
2e6f90 mov    edx,0x400
2e6f95 mov    rcx,r14
2e6f98 call   0x373d84
2e6f9d cmp    BYTE PTR [rip+0xf0f74],r13b        # 0x3d7f18
2e6fa4 jne    0x2e6fc0
2e6fa6 cmp    BYTE PTR [rip+0xf1294],r13b        # 0x3d8241
2e6fad je     0x2e70f1
2e6fb3 cmp    BYTE PTR [rip+0xf12e7],r13b        # 0x3d82a1
2e6fba jne    0x2e70f1
2e6fc0 mov    rbx,QWORD PTR [rip+0xf0301]        # 0x3d72c8
2e6fc7 mov    rcx,rbx
2e6fca call   0x2caf08
2e6fcf test   al,al
2e6fd1 je     0x2e70f1
2e6fd7 mov    rcx,rbx
2e6fda call   0x2e0e9c
2e6fdf test   al,al
2e6fe1 je     0x2e70f1
2e6fe7 mov    rcx,rbx
2e6fea call   0x2e6110
2e6fef mov    rcx,rax
2e6ff2 mov    r8,rax
2e6ff5 call   0x2caf08
2e6ffa test   al,al
2e6ffc je     0x2e70f1
2e7002 lea    rdx,[rsp+0x60]
2e7007 mov    rcx,r8
2e700a call   0x3747d4
2e700f movss  xmm2,DWORD PTR [rip+0xfffffffffffa6ad1]        # 0x28dae8
2e7016 
2e7017 lea    rcx,[rsp+0x50]
2e701c xorps  xmm3,xmm3
2e701f xorps  xmm1,xmm1
2e7022 mov    rbx,rax
2e7025 call   0x3c7ba8
2e702a mov    r8,rax
2e702d lea    rdx,[rsp+0x40]
2e7032 mov    rcx,rbx
2e7035 call   0x2df708
2e703a lea    rdx,[rsp+0x70]
2e703f mov    rcx,rdi
2e7042 call   0x368b9c
2e7047 movsd  xmm1,QWORD PTR [rsp+0x40]
2e704d lea    rdx,[rsp+0x60]
2e7052 mov    eax,DWORD PTR [rsp+0x48]
2e7056 mov    rcx,rdi
2e7059 movsd  QWORD PTR [rsp+0x60],xmm1
2e705f mov    DWORD PTR [rsp+0x68],eax
2e7063 call   0x3666b0
2e7068 movaps xmm6,xmm0
2e706b movaps xmm0,xmm13
2e706f addss  xmm6,DWORD PTR [rip+0xfffffffffffa61d9]        # 0x28d250
2e7076 
2e7077 call   0x2e091c
2e707c comiss xmm0,xmm6
2e707f jbe    0x2e70f1
2e7081 mov    edx,r15d
2e7084 mov    rcx,rsi
2e7087 call   0x36b494
2e708c test   al,al
2e708e je     0x2e70f1
2e7090 movsd  xmm0,QWORD PTR [rsp+0x40]
2e7096 lea    rdx,[rsp+0x60]
2e709b mov    eax,DWORD PTR [rsp+0x48]
2e709f lea    rcx,[rsp+0x50]
2e70a4 movsd  QWORD PTR [rsp+0x60],xmm0
2e70aa xorps  xmm3,xmm3
2e70ad movsd  xmm0,QWORD PTR [rsp+0x70]
2e70b3 mov    r8d,r12d
2e70b6 mov    DWORD PTR [rsp+0x68],eax
2e70ba mov    eax,DWORD PTR [rsp+0x78]
2e70be movsd  QWORD PTR [rsp+0x50],xmm0
2e70c4 movss  DWORD PTR [rsp+0x20],xmm14
2e70cb mov    DWORD PTR [rsp+0x58],eax
2e70cf call   0x2e2320
2e70d4 test   al,al
2e70d6 je     0x2e70f1
2e70d8 mov    rcx,rsi
2e70db call   0x36bb58
2e70e0 test   al,al
2e70e2 je     0x2e70f1
2e70e4 mov    edx,0x400
2e70e9 mov    rcx,r14
2e70ec call   0x373d84
2e70f1 cmp    BYTE PTR [rip+0xf01a8],r13b        # 0x3d72a0
2e70f8 je     0x2e7601
2e70fe cmp    BYTE PTR [rip+0xfdf93],r13b        # 0x3e5098
2e7105 je     0x2e7601
2e710b cmp    BYTE PTR [rip+0xf0d66],r13b        # 0x3d7e78
2e7112 je     0x2e7601
2e7118 cmp    BYTE PTR [rip+0xf1182],r13b        # 0x3d82a1
2e711f jne    0x2e7601
2e7125 movss  xmm1,DWORD PTR [rip+0xf01bf]        # 0x3d72ec
2e712c 
2e712d movsd  xmm0,QWORD PTR [rip+0xfffffffffffa70a3]        # 0x28e1d8
2e7134 
2e7135 cvtps2pd xmm1,xmm1
2e7138 comisd xmm0,xmm1
2e713c jb     0x2e7601
2e7142 call   0x2e02b0
2e7147 mov    rcx,rax
2e714a mov    rbx,rax
2e714d call   0x2caf08
2e7152 test   al,al
2e7154 je     0x2e7601
2e715a mov    rcx,rbx
2e715d call   0x2e0e9c
2e7162 test   al,al
2e7164 je     0x2e7601
2e716a lea    rdx,[rsp+0x60]
2e716f mov    rcx,rbx
2e7172 call   0x369790
2e7177 lea    rcx,[rsp+0x70]
2e717c call   0x3c7bbc
2e7181 mov    rdx,rax
2e7184 lea    rcx,[rsp+0x60]
2e7189 call   0x2df5dc
2e718e test   al,al
2e7190 je     0x2e7601
2e7196 mov    rcx,rdi
2e7199 call   0x368a84
2e719e mov    rcx,rax
2e71a1 mov    rsi,rax
2e71a4 call   0x2caf08
2e71a9 test   al,al
2e71ab je     0x2e7601
2e71b1 mov    rcx,rsi
2e71b4 call   0x3712bc
2e71b9 mov    rcx,rax
2e71bc mov    r14,rax
2e71bf call   0x2caf08
2e71c4 mov    r12b,al
2e71c7 test   al,al
2e71c9 je     0x2e71d3
2e71cb mov    rcx,r14
2e71ce call   0x36bf58
2e71d3 cmp    BYTE PTR [rip+0xfd05e],r13b        # 0x3e4238
2e71da jne    0x2e71fb
2e71dc cmp    BYTE PTR [rip+0xfd056],r13b        # 0x3e4239
2e71e3 jne    0x2e71fb
2e71e5 mov    r8,rbx
2e71e8 mov    rdx,rsi
2e71eb mov    rcx,rdi
2e71ee call   0x2e6340
2e71f3 test   al,al
2e71f5 je     0x2e7601
2e71fb mov    rcx,rsi
2e71fe call   0x371464
2e7203 mov    rcx,rsi
2e7206 mov    rbx,rax
2e7209 call   0x3721b4
2e720e mov    rcx,rsi
2e7211 mov    r15,rax
2e7214 call   0x37154c
2e7219 mov    rcx,rax
2e721c mov    rsi,rax
2e721f call   0x2caf08
2e7224 test   al,al
2e7226 je     0x2e7601
2e722c mov    rcx,rdi
2e722f call   0x369738
2e7234 mov    rcx,rax
2e7237 mov    r13,rax
2e723a call   0x2caf08
2e723f test   al,al
2e7241 je     0x2e75fe
2e7247 mov    rcx,rsi
2e724a call   0x37261c
2e724f cmp    eax,0x37c437bf
2e7254 jne    0x2e73d1
2e725a mov    rcx,rbx
2e725d call   0x2caf08
2e7262 xor    r13d,r13d
2e7265 test   al,al
2e7267 je     0x2e7601
2e726d mov    rcx,rbx
2e7270 call   0x36c3b4
2e7275 mov    rcx,rax
2e7278 mov    rdx,rax
2e727b call   0x2caf08
2e7280 test   al,al
2e7282 je     0x2e7601
2e7288 cmp    DWORD PTR [rdx+0x1c],r13d
2e728c jle    0x2e7601
2e7292 cmp    BYTE PTR [rip+0xfde4f],r13b        # 0x3e50e8
2e7299 je     0x2e7380
2e729f movss  xmm0,DWORD PTR [rip+0xf0045]        # 0x3d72ec
2e72a6 
2e72a7 comiss xmm0,DWORD PTR [rip+0xfe06a]        # 0x3e5318
2e72ae jbe    0x2e7601
2e72b4 divss  xmm0,DWORD PTR [rbx+0x304]
2e72bb 
2e72bc lea    r15d,[r13+0x1]
2e72c0 lea    rcx,[rip+0xfe541]        # 0x3e5808
2e72c7 movss  xmm1,DWORD PTR [rip+0xfffffffffffa6ef9]        # 0x28e1c8
2e72ce 
2e72cf cvttss2si esi,xmm0
2e72d3 cmp    esi,r15d
2e72d6 cmovl  esi,r15d
2e72da call   0x2e5b7c
2e72df test   al,al
2e72e1 je     0x2e7601
2e72e7 cmp    BYTE PTR [rip+0xf0cca],r13b        # 0x3d7fb8
2e72ee je     0x2e731f
2e72f0 call   0x2f824c
2e72f5 test   al,al
2e72f7 je     0x2e731f
2e72f9 cmp    BYTE PTR [rip+0xfdcf8],r13b        # 0x3e4ff8
2e7300 je     0x2e731f
2e7302 test   esi,esi
2e7304 je     0x2e7601
2e730a mov    dl,r15b
2e730d mov    rcx,rbx
2e7310 call   0x36bfdc
2e7315 sub    esi,r15d
2e7318 jne    0x2e730a
2e731a jmp    0x2e7601
2e731f movss  xmm0,DWORD PTR [rip+0xfcf2d]        # 0x3e4254
2e7326 
2e7327 comiss xmm0,DWORD PTR [rip+0xfffffffffffa6e9e]        # 0x28e1cc
2e732e jbe    0x2e7356
2e7330 call   0x2f7dd0
2e7335 test   al,al
2e7337 jne    0x2e7356
2e7339 test   esi,esi
2e733b je     0x2e7601
2e7341 mov    dl,r15b
2e7344 mov    rcx,rbx
2e7347 call   0x36bfdc
2e734c sub    esi,r15d
2e734f jne    0x2e7341
2e7351 jmp    0x2e7601
2e7356 cmp    BYTE PTR [rip+0xfdc9b],r13b        # 0x3e4ff8
2e735d jne    0x2e7601
2e7363 test   esi,esi
2e7365 je     0x2e7601
2e736b mov    dl,r15b
2e736e mov    rcx,rbx
2e7371 call   0x36bfdc
2e7376 sub    esi,r15d
2e7379 jne    0x2e736b
2e737b jmp    0x2e7601
2e7380 cmp    BYTE PTR [rip+0xf0c31],r13b        # 0x3d7fb8
2e7387 je     0x2e739b
2e7389 call   0x2f824c
2e738e test   al,al
2e7390 je     0x2e739b
2e7392 cmp    BYTE PTR [rip+0xfdc5f],r13b        # 0x3e4ff8
2e7399 jne    0x2e73c2
2e739b movss  xmm0,DWORD PTR [rip+0xfceb1]        # 0x3e4254
2e73a2 
2e73a3 comiss xmm0,DWORD PTR [rip+0xfffffffffffa6e22]        # 0x28e1cc
2e73aa jbe    0x2e73b5
2e73ac call   0x2f7dd0
2e73b1 test   al,al
2e73b3 je     0x2e73c2
2e73b5 cmp    BYTE PTR [rip+0xfdc3c],r13b        # 0x3e4ff8
2e73bc jne    0x2e7601
2e73c2 xor    edx,edx
2e73c4 mov    rcx,rbx
2e73c7 call   0x36bfdc
2e73cc jmp    0x2e7601
2e73d1 mov    rcx,r15
2e73d4 call   0x2caf08
2e73d9 test   al,al
2e73db je     0x2e73ea
2e73dd mov    rcx,r15
2e73e0 call   0x36c184
2e73e5 jmp    0x2e75fe
2e73ea xor    r15d,r15d
2e73ed test   r12b,r12b
2e73f0 je     0x2e7476
2e73f6 mov    rcx,r14
2e73f9 call   0x36c3b4
2e73fe mov    rcx,rax
2e7401 mov    rdx,rax
2e7404 call   0x2caf08
2e7409 xor    r13d,r13d
2e740c test   al,al
2e740e je     0x2e7601
2e7414 cmp    DWORD PTR [rdx+0x1c],r13d
2e7418 jg     0x2e7427
2e741a mov    rcx,r14
2e741d call   0x36b458
2e7422 jmp    0x2e7601
2e7427 cmp    BYTE PTR [rip+0xf0b8a],r13b        # 0x3d7fb8
2e742e je     0x2e7442
2e7430 call   0x2f824c
2e7435 test   al,al
2e7437 je     0x2e7442
2e7439 cmp    BYTE PTR [rip+0xfdbb8],r13b        # 0x3e4ff8
2e7440 jne    0x2e7469
2e7442 movss  xmm0,DWORD PTR [rip+0xfce0a]        # 0x3e4254
2e7449 
2e744a comiss xmm0,DWORD PTR [rip+0xfffffffffffa6d7b]        # 0x28e1cc
2e7451 jbe    0x2e745c
2e7453 call   0x2f7dd0
2e7458 test   al,al
2e745a je     0x2e7469
2e745c cmp    BYTE PTR [rip+0xfdb95],r13b        # 0x3e4ff8
2e7463 jne    0x2e7601
2e7469 mov    rcx,r14
2e746c call   0x36c06c
2e7471 jmp    0x2e7601
2e7476 mov    rcx,rbx
2e7479 call   0x2caf08
2e747e test   al,al
2e7480 je     0x2e75fe
2e7486 mov    rcx,rbx
2e7489 call   0x36c3b4
2e748e mov    rcx,rax
2e7491 mov    rdx,rax
2e7494 call   0x2caf08
2e7499 test   al,al
2e749b je     0x2e75fe
2e74a1 cmp    DWORD PTR [rdx+0x1c],r15d
2e74a5 jle    0x2e75fe
2e74ab cmp    BYTE PTR [rip+0xfdc36],r15b        # 0x3e50e8
2e74b2 je     0x2e7597
2e74b8 movss  xmm0,DWORD PTR [rip+0xefe2c]        # 0x3d72ec
2e74bf 
2e74c0 comiss xmm0,DWORD PTR [rip+0xfde51]        # 0x3e5318
2e74c7 jbe    0x2e75fe
2e74cd divss  xmm0,DWORD PTR [rbx+0x304]
2e74d4 
2e74d5 lea    rcx,[rip+0xfe330]        # 0x3e580c
2e74dc mov    r15d,0x1
2e74e2 movss  xmm1,DWORD PTR [rip+0xfffffffffffa6cde]        # 0x28e1c8
2e74e9 
2e74ea cvttss2si esi,xmm0
2e74ee cmp    esi,r15d
2e74f1 cmovl  esi,r15d
2e74f5 call   0x2e5b7c
2e74fa xor    r13d,r13d
2e74fd test   al,al
2e74ff je     0x2e7601
2e7505 cmp    BYTE PTR [rip+0xf0aac],r13b        # 0x3d7fb8
2e750c je     0x2e753d
2e750e call   0x2f824c
2e7513 test   al,al
2e7515 je     0x2e753d
2e7517 cmp    BYTE PTR [rip+0xfdada],r13b        # 0x3e4ff8
2e751e je     0x2e753d
2e7520 test   esi,esi
2e7522 je     0x2e7601
2e7528 mov    dl,r15b
2e752b mov    rcx,rbx
2e752e call   0x36bfdc
2e7533 sub    esi,r15d
2e7536 jne    0x2e7528
2e7538 jmp    0x2e7601
2e753d movss  xmm0,DWORD PTR [rip+0xfcd0f]        # 0x3e4254
2e7544 
2e7545 comiss xmm0,DWORD PTR [rip+0xfffffffffffa6c80]        # 0x28e1cc
2e754c jbe    0x2e7574
2e754e call   0x2f7dd0
2e7553 test   al,al
2e7555 jne    0x2e7574
2e7557 test   esi,esi
2e7559 je     0x2e7601
2e755f mov    dl,r15b
2e7562 mov    rcx,rbx
2e7565 call   0x36bfdc
2e756a sub    esi,r15d
2e756d jne    0x2e755f
2e756f jmp    0x2e7601
2e7574 cmp    BYTE PTR [rip+0xfda7d],r13b        # 0x3e4ff8
2e757b jne    0x2e7601
2e7581 test   esi,esi
2e7583 je     0x2e7601
2e7585 mov    dl,r15b
2e7588 mov    rcx,rbx
2e758b call   0x36bfdc
2e7590 sub    esi,r15d
2e7593 jne    0x2e7585
2e7595 jmp    0x2e7601
2e7597 mov    rcx,rbx
2e759a call   0x36b9a0
2e759f mov    rcx,rbx
2e75a2 mov    sil,al
2e75a5 call   0x36bacc
2e75aa test   al,al
2e75ac je     0x2e75fe
2e75ae test   sil,sil
2e75b1 jne    0x2e75fe
2e75b3 cmp    BYTE PTR [rip+0xf09fe],r15b        # 0x3d7fb8
2e75ba je     0x2e75ce
2e75bc call   0x2f824c
2e75c1 test   al,al
2e75c3 je     0x2e75ce
2e75c5 cmp    BYTE PTR [rip+0xfda2c],r15b        # 0x3e4ff8
2e75cc jne    0x2e75f1
2e75ce movss  xmm0,DWORD PTR [rip+0xfcc7e]        # 0x3e4254
2e75d5 
2e75d6 comiss xmm0,DWORD PTR [rip+0xfffffffffffa6bef]        # 0x28e1cc
2e75dd jbe    0x2e75e8
2e75df call   0x2f7dd0
2e75e4 test   al,al
2e75e6 je     0x2e75f1
2e75e8 cmp    BYTE PTR [rip+0xfda09],r15b        # 0x3e4ff8
2e75ef jne    0x2e75fe
2e75f1 mov    edx,0x400
2e75f6 mov    rcx,r13
2e75f9 call   0x373d84
2e75fe xor    r13d,r13d
2e7601 cmp    BYTE PTR [rip+0xfd900],r13b        # 0x3e4f08
2e7608 je     0x2e7646
2e760a movss  xmm1,DWORD PTR [rip+0xfffffffffffa6bd6]        # 0x28e1e8
2e7611 
2e7612 lea    rcx,[rip+0xfe1f7]        # 0x3e5810
2e7619 call   0x2e5b7c
2e761e test   al,al
2e7620 je     0x2e7646
2e7622 mov    rcx,rdi
2e7625 call   0x369738
2e762a mov    rcx,rax
2e762d mov    r8,rax
2e7630 call   0x2caf08
2e7635 test   al,al
2e7637 je     0x2e7646
2e7639 mov    edx,0x20
2e763e mov    rcx,r8
2e7641 call   0x373d84
2e7646 cmp    BYTE PTR [rip+0xfdb3b],r13b        # 0x3e5188
2e764d je     0x2e7767
2e7653 xor    edx,edx
2e7655 lea    rcx,[rip+0xfdecc]        # 0x3e5528
2e765c call   0x2e89e4
2e7661 test   al,al
2e7663 je     0x2e7767
2e7669 mov    rcx,rdi
2e766c call   0x369324
2e7671 mov    rcx,rax
2e7674 mov    rdx,rax
2e7677 call   0x2caf08
2e767c test   al,al
2e767e je     0x2e7767
2e7684 mov    rcx,rdx
2e7687 call   0x373e4c
2e768c mov    rcx,rax
2e768f mov    r12,rax
2e7692 call   0x2caf08
2e7697 test   al,al
2e7699 je     0x2e7767
2e769f mov    rcx,r12
2e76a2 call   0x372278
2e76a7 mov    esi,r13d
2e76aa test   eax,eax
2e76ac jle    0x2e7767
2e76b2 mov    edi,eax
2e76b4 mov    edx,esi
2e76b6 mov    rcx,r12
2e76b9 call   0x3722a4
2e76be mov    rcx,rax
2e76c1 mov    r15,rax
2e76c4 call   0x2caf08
2e76c9 test   al,al
2e76cb je     0x2e7759
2e76d1 mov    r15,QWORD PTR [r15+0x20]
2e76d5 mov    rcx,r15
2e76d8 call   0x2caf08
2e76dd test   al,al
2e76df je     0x2e7759
2e76e1 mov    r13d,DWORD PTR [r15+0x18]
2e76e5 xor    r14d,r14d
2e76e8 test   r13d,r13d
2e76eb jle    0x2e7756
2e76ed mov    rdx,QWORD PTR [r15+0x10]
2e76f1 mov    rcx,rdx
2e76f4 call   0x2caf08
2e76f9 test   al,al
2e76fb je     0x2e774e
2e76fd lea    eax,[r14*8+0x0]
2e7704 
2e7705 movsxd rcx,eax
2e7708 mov    rbx,QWORD PTR [rdx+rcx*1+0x20]
2e770d mov    rcx,rbx
2e7710 call   0x2caf08
2e7715 test   al,al
2e7717 je     0x2e774e
2e7719 movsxd rbx,DWORD PTR [rbx+0x88]
2e7720 lea    rdx,[rbp+0xa8]
2e7727 lea    rcx,[rbp+0xa0]
2e772e call   0x2e54b4
2e7733 mov    rcx,rax
2e7736 call   0x2cdccc
2e773b mov    rcx,rax
2e773e call   0x2ce5dc
2e7743 mov    rdx,rax
2e7746 mov    rcx,rbx
2e7749 call   0x2e69d8
2e774e inc    r14d
2e7751 cmp    r14d,r13d
2e7754 jl     0x2e76ed
2e7756 xor    r13d,r13d
2e7759 inc    esi
2e775b cmp    esi,edi
2e775d jl     0x2e76b4
2e7763 mov    rdi,QWORD PTR [rbp-0x78]
2e7767 cmp    BYTE PTR [rip+0xfd83a],r13b        # 0x3e4fa8
2e776e je     0x2e7aca
2e7774 mov    rcx,rdi
2e7777 call   0x36b288
2e777c test   al,al
2e777e je     0x2e779e
2e7780 mov    rcx,rdi
2e7783 call   0x3693b0
2e7788 test   al,al
2e778a je     0x2e779e
2e778c xor    edx,edx
2e778e mov    rcx,rdi
2e7791 call   0x36a20c
2e7796 test   al,al
2e7798 jne    0x2e7aca
2e779e mov    rcx,rdi
2e77a1 call   0x369324
2e77a6 mov    rcx,rax
2e77a9 mov    rdx,rax
2e77ac call   0x2caf08
2e77b1 test   al,al
2e77b3 je     0x2e7aca
2e77b9 mov    rcx,rdx
2e77bc call   0x373dc8
2e77c1 mov    rcx,rax
2e77c4 mov    r15,rax
2e77c7 call   0x2caf08
2e77cc test   al,al
2e77ce je     0x2e7aca
2e77d4 mov    rcx,r15
2e77d7 call   0x37224c
2e77dc mov    r12d,eax
2e77df mov    r14d,r13d
2e77e2 test   eax,eax
2e77e4 jle    0x2e7aca
2e77ea movss  xmm8,DWORD PTR [rip+0xfffffffffffa62f1]        # 0x28dae4
2e77f1 
2e77f3 mov    edx,r14d
2e77f6 mov    rcx,r15
2e77f9 call   0x3722f0
2e77fe mov    rcx,rax
2e7801 mov    rsi,rax
2e7804 call   0x2caf08
2e7809 test   al,al
2e780b je     0x2e7abe
2e7811 mov    rcx,QWORD PTR [rsi+0x10]
2e7815 call   0x2caf08
2e781a test   al,al
2e781c je     0x2e7abe
2e7822 mov    rcx,QWORD PTR [rsi+0x10]
2e7826 call   0x37261c
2e782b cmp    eax,0x58c00601
2e7830 jne    0x2e7abe
2e7836 mov    edx,0xd8
2e783b mov    rcx,rsi
2e783e call   0x2dee3c
2e7843 mov    edx,0xb4
2e7848 mov    rcx,rsi
2e784b movss  xmm7,DWORD PTR [rax]
2e784f call   0x2dee3c
2e7854 movss  xmm6,DWORD PTR [rax]
2e7858 comiss xmm14,xmm6
2e785c jb     0x2e78b5
2e785e mov    rcx,rsi
2e7861 call   0x372184
2e7866 test   al,al
2e7868 je     0x2e78b5
2e786a mov    rcx,rdi
2e786d mov    bl,0x1
2e786f call   0x369e1c
2e7874 test   al,al
2e7876 je     0x2e78de
2e7878 lea    rdx,[rbp+0xa8]
2e787f lea    rcx,[rbp+0xa0]
2e7886 call   0x2e5618
2e788b mov    rcx,rax
2e788e call   0x2cdcf4
2e7893 mov    rcx,rax
2e7896 call   0x2ce5dc
2e789b mov    rcx,rsi
2e789e mov    rbx,rax
2e78a1 call   0x371604
2e78a6 mov    ecx,eax
2e78a8 mov    rdx,rbx
2e78ab call   0x2e69d8
2e78b0 jmp    0x2e7ab7
2e78b5 mov    rcx,rdi
2e78b8 mov    bl,r13b
2e78bb call   0x369e1c
2e78c0 test   al,al
2e78c2 je     0x2e78de
2e78c4 mov    rcx,rdi
2e78c7 call   0x368a84
2e78cc test   rax,rax
2e78cf jne    0x2e78de
2e78d1 cmp    BYTE PTR [rip+0xfdf3c],r13b        # 0x3e5814
2e78d8 je     0x2e7ab7
2e78de divss  xmm6,xmm7
2e78e2 minss  xmm6,DWORD PTR [rip+0xfffffffffffa596a]        # 0x28d254
2e78e9 
2e78ea comiss xmm8,xmm6
2e78ee jb     0x2e7939
2e78f0 mov    rcx,rdi
2e78f3 call   0x369e1c
2e78f8 test   al,al
2e78fa je     0x2e7939
2e78fc lea    rdx,[rbp+0xb0]
2e7903 lea    rcx,[rbp+0xa0]
2e790a call   0x2e57bc
2e790f mov    rcx,rax
2e7912 call   0x2cdcf4
2e7917 mov    rcx,rax
2e791a call   0x2ce5dc
2e791f mov    rcx,rsi
2e7922 mov    rbx,rax
2e7925 call   0x371604
2e792a mov    ecx,eax
2e792c mov    rdx,rbx
2e792f call   0x2e69d8
2e7934 jmp    0x2e7abe
2e7939 cmp    BYTE PTR [rip+0xfded4],r13b        # 0x3e5814
2e7940 je     0x2e7aaa
2e7946 mov    rcx,rdi
2e7949 call   0x368a84
2e794e movzx  ecx,bl
2e7951 or     rax,rcx
2e7954 jne    0x2e7aaa
2e795a movaps xmm1,xmm8
2e795e lea    rcx,[rip+0xfdeb3]        # 0x3e5818
2e7965 call   0x2e5b7c
2e796a test   al,al
2e796c je     0x2e7abe
2e7972 mov    rcx,rdi
2e7975 call   0x369e1c
2e797a test   al,al
2e797c jne    0x2e79fd
2e797e mov    rbx,QWORD PTR [rdi+0x600]
2e7985 mov    rcx,rbx
2e7988 call   0x2caf08
2e798d test   al,al
2e798f je     0x2e7abe
2e7995 mov    ecx,DWORD PTR [rip+0xfde8d]        # 0x3e5828
2e799b mov    esi,DWORD PTR [rsi+0xb8]
2e79a1 test   cl,0x1
2e79a4 jne    0x2e79c6
2e79a6 mov    r8,QWORD PTR [rip+0xef553]        # 0x3d6f00
2e79ad or     ecx,0x1
2e79b0 add    r8,0x60425f0
2e79b7 mov    DWORD PTR [rip+0xfde6b],ecx        # 0x3e5828
2e79bd mov    QWORD PTR [rip+0xfde5c],r8        # 0x3e5820
2e79c4 jmp    0x2e79cd
2e79c6 mov    r8,QWORD PTR [rip+0xfde53]        # 0x3e5820
2e79cd test   cl,0x2
2e79d0 jne    0x2e79f1
2e79d2 or     ecx,0x2
2e79d5 lea    rdx,[rip+0xfde54]        # 0x3e5830
2e79dc mov    DWORD PTR [rip+0xfde46],ecx        # 0x3e5828
2e79e2 xor    r9d,r9d
2e79e5 mov    rcx,QWORD PTR [rip+0xee474]        # 0x3d5e60
2e79ec call   0x2cbd24
2e79f1 lea    rdx,[rip+0xfde38]        # 0x3e5830
2e79f8 jmp    0x2e7a8a
2e79fd mov    rcx,rdi
2e7a00 call   0x369e1c
2e7a05 test   al,al
2e7a07 je     0x2e7abe
2e7a0d mov    rbx,QWORD PTR [rdi+0x600]
2e7a14 mov    rcx,rbx
2e7a17 call   0x2caf08
2e7a1c test   al,al
2e7a1e je     0x2e7abe
2e7a24 mov    ecx,DWORD PTR [rip+0xfddfe]        # 0x3e5828
2e7a2a mov    esi,DWORD PTR [rsi+0xb8]
2e7a30 test   cl,0x4
2e7a33 jne    0x2e7a55
2e7a35 mov    r8,QWORD PTR [rip+0xef4c4]        # 0x3d6f00
2e7a3c or     ecx,0x4
2e7a3f add    r8,0x60425f0
2e7a46 mov    DWORD PTR [rip+0xfdddc],ecx        # 0x3e5828
2e7a4c mov    QWORD PTR [rip+0xfdeb5],r8        # 0x3e5908
2e7a53 jmp    0x2e7a5c
2e7a55 mov    r8,QWORD PTR [rip+0xfdeac]        # 0x3e5908
2e7a5c mov    eax,0x8
2e7a61 test   al,cl
2e7a63 jne    0x2e7a83
2e7a65 or     ecx,eax
2e7a67 lea    rdx,[rip+0xfdea2]        # 0x3e5910
2e7a6e mov    DWORD PTR [rip+0xfddb4],ecx        # 0x3e5828
2e7a74 xor    r9d,r9d
2e7a77 mov    rcx,QWORD PTR [rip+0xee3e2]        # 0x3d5e60
2e7a7e call   0x2cbd24
2e7a83 lea    rdx,[rip+0xfde86]        # 0x3e5910
2e7a8a mov    rcx,QWORD PTR [rip+0xee3cf]        # 0x3d5e60
2e7a91 mov    r8,rbx
2e7a94 mov    r9d,esi
2e7a97 mov    BYTE PTR [rsp+0x20],0x1
2e7a9c call   0x2e48d0
2e7aa1 mov    BYTE PTR [rip+0xfdd6c],r13b        # 0x3e5814
2e7aa8 jmp    0x2e7abe
2e7aaa mov    rcx,rdi
2e7aad call   0x368a84
2e7ab2 test   rax,rax
2e7ab5 jne    0x2e7abe
2e7ab7 mov    BYTE PTR [rip+0xfdd56],0x1        # 0x3e5814
2e7abe inc    r14d
2e7ac1 cmp    r14d,r12d
2e7ac4 jl     0x2e77f3
2e7aca cmp    BYTE PTR [rip+0xfd7f7],r13b        # 0x3e52c8
2e7ad1 je     0x2e7b89
2e7ad7 xor    edx,edx
2e7ad9 lea    rcx,[rip+0xfdb08]        # 0x3e55e8
2e7ae0 call   0x2e89e4
2e7ae5 test   al,al
2e7ae7 je     0x2e7b89
2e7aed mov    rcx,rdi
2e7af0 call   0x369324
2e7af5 mov    rcx,rax
2e7af8 mov    rdx,rax
2e7afb call   0x2caf08
2e7b00 test   al,al
2e7b02 je     0x2e7b89
2e7b08 mov    rcx,rdx
2e7b0b call   0x373df4
2e7b10 mov    rcx,rax
2e7b13 mov    r14,rax
2e7b16 call   0x2caf08
2e7b1b test   al,al
2e7b1d je     0x2e7b89
2e7b1f mov    rcx,r14
2e7b22 call   0x37224c
2e7b27 mov    r15d,eax
2e7b2a mov    esi,r13d
2e7b2d test   eax,eax
2e7b2f jle    0x2e7b89
2e7b31 mov    edx,esi
2e7b33 mov    rcx,r14
2e7b36 call   0x3722f0
2e7b3b mov    rcx,rax
2e7b3e mov    r12,rax
2e7b41 call   0x2caf08
2e7b46 test   al,al
2e7b48 je     0x2e7b82
2e7b4a lea    rdx,[rbp+0xa8]
2e7b51 lea    rcx,[rbp+0xa0]
2e7b58 call   0x2e5844
2e7b5d mov    rcx,rax
2e7b60 call   0x2cdccc
2e7b65 mov    rcx,rax
2e7b68 call   0x2ce5dc
2e7b6d mov    rcx,r12
2e7b70 mov    rbx,rax
2e7b73 call   0x371604
2e7b78 mov    ecx,eax
2e7b7a mov    rdx,rbx
2e7b7d call   0x2e69d8
2e7b82 inc    esi
2e7b84 cmp    esi,r15d
2e7b87 jl     0x2e7b31
2e7b89 cmp    BYTE PTR [rip+0xfd8e1],r13b        # 0x3e5471
2e7b90 mov    r15d,0x10
2e7b96 movss  xmm6,DWORD PTR [rip+0xfffffffffffa6626]        # 0x28e1c4
2e7b9d 
2e7b9e movabs r14,0xcbf29ce484222325
2e7ba5 
2e7ba8 je     0x2e7da4
2e7bae cmp    BYTE PTR [rip+0xfd583],r13b        # 0x3e5138
2e7bb5 je     0x2e7c0b
2e7bb7 mov    rcx,rdi
2e7bba call   0x368a84
2e7bbf mov    rcx,rax
2e7bc2 mov    rdx,rax
2e7bc5 call   0x2caf08
2e7bca test   al,al
2e7bcc je     0x2e7da4
2e7bd2 mov    rcx,rdx
2e7bd5 call   0x37154c
2e7bda mov    rcx,rax
2e7bdd mov    rbx,rax
2e7be0 call   0x2caf08
2e7be5 test   al,al
2e7be7 je     0x2e7c0b
2e7be9 mov    rcx,rbx
2e7bec call   0x37261c
2e7bf1 cmp    eax,0xbf78eac
2e7bf6 je     0x2e7c0b
2e7bf8 mov    rcx,rbx
2e7bfb call   0x37261c
2e7c00 cmp    eax,0x6b8447f6
2e7c05 jne    0x2e7da4
2e7c0b mov    rcx,rdi
2e7c0e call   0x36a2f4
2e7c13 mov    rcx,rax
2e7c16 mov    rsi,rax
2e7c19 call   0x2caf08
2e7c1e test   al,al
2e7c20 je     0x2e7da4
2e7c26 mov    rcx,rsi
2e7c29 call   0x2e5a54
2e7c2e mov    rcx,rax
2e7c31 mov    rdx,rax
2e7c34 call   0x2caf08
2e7c39 test   al,al
2e7c3b je     0x2e7da4
2e7c41 mov    rcx,rdx
2e7c44 call   0x2d6354
2e7c49 lea    rdx,[rsp+0x60]
2e7c4e mov    rbx,rax
2e7c51 lea    rcx,[rbp+0xa0]
2e7c58 call   0x2e5910
2e7c5d mov    rcx,rax
2e7c60 call   0x2dd188
2e7c65 mov    rcx,rax
2e7c68 mov    rdx,r14
2e7c6b call   0x2e5b4c
2e7c70 cmp    rbx,rax
2e7c73 jne    0x2e7da4
2e7c79 mov    r9d,DWORD PTR [rip+0xfd6e8]        # 0x3e5368
2e7c80 test   r9d,r9d
2e7c83 jle    0x2e7da4
2e7c89 mov    edx,0x340
2e7c8e mov    rcx,rsi
2e7c91 call   0x2dee3c
2e7c96 mov    rdx,QWORD PTR [rax]
2e7c99 mov    rcx,rdx
2e7c9c call   0x2caf08
2e7ca1 test   al,al
2e7ca3 je     0x2e7da4
2e7ca9 mov    rcx,QWORD PTR [rdx+0x1f8]
2e7cb0 call   0x2caf08
2e7cb5 test   al,al
2e7cb7 je     0x2e7da4
2e7cbd mov    edx,0x370
2e7cc2 mov    rcx,rsi
2e7cc5 call   0x2dee3c
2e7cca movsx  ecx,WORD PTR [rax]
2e7ccd cmp    ecx,DWORD PTR [rip+0xfd6e5]        # 0x3e53b8
2e7cd3 jne    0x2e7da4
2e7cd9 cmp    ecx,r9d
2e7cdc je     0x2e7da4
2e7ce2 lea    rdx,[rbp-0x70]
2e7ce6 lea    rcx,[rbp+0xa0]
2e7ced call   0x2e5958
2e7cf2 mov    rcx,rax
2e7cf5 call   0x2e9bb4
2e7cfa mov    rcx,rax
2e7cfd call   0x2ce5dc
2e7d02 movaps xmm1,xmm6
2e7d05 lea    rcx,[rip+0xfdcdc]        # 0x3e59e8
2e7d0c mov    rbx,rax
2e7d0f call   0x2e5b7c
2e7d14 test   al,al
2e7d16 je     0x2e7da4
2e7d1c mov    ecx,DWORD PTR [rip+0xfdb06]        # 0x3e5828
2e7d22 test   r15b,cl
2e7d25 jne    0x2e7d47
2e7d27 mov    r8,QWORD PTR [rip+0xef1d2]        # 0x3d6f00
2e7d2e or     ecx,r15d
2e7d31 add    r8,0x395f0a0
2e7d38 mov    DWORD PTR [rip+0xfdaea],ecx        # 0x3e5828
2e7d3e mov    QWORD PTR [rip+0xfdcab],r8        # 0x3e59f0
2e7d45 jmp    0x2e7d4e
2e7d47 mov    r8,QWORD PTR [rip+0xfdca2]        # 0x3e59f0
2e7d4e test   cl,0x20
2e7d51 jne    0x2e7d72
2e7d53 or     ecx,0x20
2e7d56 lea    rdx,[rip+0xfdca3]        # 0x3e5a00
2e7d5d mov    DWORD PTR [rip+0xfdac5],ecx        # 0x3e5828
2e7d63 xor    r9d,r9d
2e7d66 mov    rcx,QWORD PTR [rip+0xee0f3]        # 0x3d5e60
2e7d6d call   0x2cbd24
2e7d72 mov    eax,DWORD PTR [rip+0xfd5f0]        # 0x3e5368
2e7d78 lea    rdx,[rip+0xfdc81]        # 0x3e5a00
2e7d7f mov    rcx,QWORD PTR [rip+0xee0da]        # 0x3d5e60
2e7d86 xor    r9d,r9d
2e7d89 mov    DWORD PTR [rsp+0x38],r13d
2e7d8e mov    r8,rsi
2e7d91 mov    DWORD PTR [rsp+0x30],eax
2e7d95 mov    QWORD PTR [rsp+0x28],rbx
2e7d9a mov    DWORD PTR [rsp+0x20],r13d
2e7d9f call   0x2e480c
2e7da4 cmp    BYTE PTR [rip+0xfd0bd],r13b        # 0x3e4e68
2e7dab je     0x2e7fde
2e7db1 mov    ecx,DWORD PTR [rip+0xfd651]        # 0x3e5408
2e7db7 xor    edx,edx
2e7db9 call   0x2e8910
2e7dbe test   al,al
2e7dc0 je     0x2e7fde
2e7dc6 mov    rcx,rdi
2e7dc9 call   0x36a2f4
2e7dce mov    rcx,rax
2e7dd1 mov    QWORD PTR [rbp+0xb8],rax
2e7dd8 mov    r13,rax
2e7ddb call   0x2caf08
2e7de0 test   al,al
2e7de2 je     0x2e7fb7
2e7de8 mov    rcx,r13
2e7deb call   0x2e5a54
2e7df0 mov    rcx,rax
2e7df3 mov    rdx,rax
2e7df6 call   0x2caf08
2e7dfb test   al,al
2e7dfd je     0x2e7fb7
2e7e03 mov    rcx,rdx
2e7e06 call   0x2d6354
2e7e0b lea    rdx,[rsp+0x40]
2e7e10 mov    rbx,rax
2e7e13 lea    rcx,[rbp+0xa0]
2e7e1a call   0x2e5970
2e7e1f mov    rcx,rax
2e7e22 call   0x2cdd44
2e7e27 mov    rcx,rax
2e7e2a mov    rdx,r14
2e7e2d call   0x2e5b4c
2e7e32 cmp    rbx,rax
2e7e35 jne    0x2e7fb7
2e7e3b mov    rcx,rdi
2e7e3e call   0x369324
2e7e43 mov    rcx,rax
2e7e46 mov    rbx,rax
2e7e49 call   0x2caf08
2e7e4e test   al,al
2e7e50 je     0x2e7fb7
2e7e56 mov    rcx,rbx
2e7e59 call   0x373df4
2e7e5e mov    rcx,rax
2e7e61 mov    rdx,rax
2e7e64 call   0x2caf08
2e7e69 test   al,al
2e7e6b je     0x2e7e82
2e7e6d mov    rsi,QWORD PTR [rdx+0x58]
2e7e71 mov    rcx,rdx
2e7e74 mov    QWORD PTR [rbp+0xb0],rsi
2e7e7b call   0x37224c
2e7e80 jmp    0x2e7e96
2e7e82 mov    rax,QWORD PTR [rbp+0xa0]
2e7e89 mov    QWORD PTR [rbp+0xb0],rax
2e7e90 mov    eax,DWORD PTR [rbp+0xa0]
2e7e96 mov    rcx,rbx
2e7e99 mov    DWORD PTR [rbp+0xa0],eax
2e7e9f call   0x373e4c
2e7ea4 mov    rcx,rax
2e7ea7 mov    r15,rax
2e7eaa call   0x2caf08
2e7eaf test   al,al
2e7eb1 je     0x2e7fb7
2e7eb7 mov    rcx,r15
2e7eba call   0x372278
2e7ebf xor    esi,esi
2e7ec1 mov    DWORD PTR [rbp+0xa8],eax
2e7ec7 test   eax,eax
2e7ec9 jle    0x2e7fb7
2e7ecf mov    r13,QWORD PTR [rbp+0xb0]
2e7ed6 mov    edi,eax
2e7ed8 mov    edx,esi
2e7eda mov    rcx,r15
2e7edd call   0x3722a4
2e7ee2 mov    rcx,rax
2e7ee5 mov    rdx,rax
2e7ee8 call   0x2caf08
2e7eed test   al,al
2e7eef je     0x2e7fa2
2e7ef5 mov    r14,QWORD PTR [rdx+0x20]
2e7ef9 mov    rcx,r14
2e7efc call   0x2caf08
2e7f01 test   al,al
2e7f03 je     0x2e7fa2
2e7f09 mov    r12d,DWORD PTR [r14+0x18]
2e7f0d xor    ebx,ebx
2e7f0f test   r12d,r12d
2e7f12 jle    0x2e7fa2
2e7f18 mov    edi,DWORD PTR [rbp+0xa0]
2e7f1e mov    r10,QWORD PTR [r14+0x10]
2e7f22 mov    rcx,r10
2e7f25 call   0x2caf08
2e7f2a test   al,al
2e7f2c je     0x2e7f95
2e7f2e lea    eax,[rbx*8+0x0]
2e7f35 movsxd rcx,eax
2e7f38 mov    r10,QWORD PTR [r10+rcx*1+0x20]
2e7f3d mov    rcx,r10
2e7f40 call   0x2caf08
2e7f45 test   al,al
2e7f47 je     0x2e7f95
2e7f49 mov    rdx,QWORD PTR [r10+0x10]
2e7f4d mov    rcx,rdx
2e7f50 call   0x2caf08
2e7f55 test   al,al
2e7f57 je     0x2e7f95
2e7f59 cmp    DWORD PTR [rdx+0x78],0x1
2e7f5d mov    r9d,DWORD PTR [r10+0x30]
2e7f61 jle    0x2e7f6d
2e7f63 cmp    r9d,DWORD PTR [rdx+0x78]
2e7f67 je     0x2e7f6d
2e7f69 mov    al,0x1
2e7f6b jmp    0x2e7f6f
2e7f6d xor    al,al
2e7f6f cmp    edi,0x18
2e7f72 jne    0x2e7f78
2e7f74 test   al,al
2e7f76 je     0x2e7f95
2e7f78 cmp    r9d,0x2
2e7f7c jle    0x2e7f95
2e7f7e mov    rcx,QWORD PTR [r10+0x88]
2e7f85 add    r9d,0xfffffffe
2e7f89 or     r8d,0xffffffff
2e7f8d mov    rdx,r13
2e7f90 call   0x2e6a84
2e7f95 inc    ebx
2e7f97 cmp    ebx,r12d
2e7f9a jl     0x2e7f1e
2e7f9c mov    edi,DWORD PTR [rbp+0xa8]
2e7fa2 inc    esi
2e7fa4 cmp    esi,edi
2e7fa6 jl     0x2e7ed8
2e7fac mov    rdi,QWORD PTR [rbp-0x78]
2e7fb0 mov    r13,QWORD PTR [rbp+0xb8]
2e7fb7 lea    rdx,[rsp+0x60]
2e7fbc lea    rcx,[rbp+0xa0]
2e7fc3 call   0x2e59d8
2e7fc8 mov    rcx,rax
2e7fcb call   0x2dd188
2e7fd0 mov    rdx,rax
2e7fd3 mov    rcx,r13
2e7fd6 call   0x366c30
2e7fdb xor    r13d,r13d
2e7fde cmp    BYTE PTR [rip+0xfcf73],r13b        # 0x3e4f58
2e7fe5 je     0x2e835f
2e7feb xor    edx,edx
2e7fed lea    rcx,[rip+0xfd594]        # 0x3e5588
2e7ff4 call   0x2e89e4
2e7ff9 test   al,al
2e7ffb je     0x2e835f
2e8001 mov    rcx,rdi
2e8004 call   0x369324
2e8009 mov    rcx,rax
2e800c mov    rbx,rax
2e800f call   0x2caf08
2e8014 test   al,al
2e8016 je     0x2e835f
2e801c mov    rcx,rbx
2e801f call   0x373df4
2e8024 mov    rcx,rax
2e8027 mov    rdx,rax
2e802a call   0x2caf08
2e802f test   al,al
2e8031 je     0x2e8046
2e8033 mov    rsi,QWORD PTR [rdx+0x58]
2e8037 mov    rcx,rdx
2e803a mov    QWORD PTR [rsp+0x50],rsi
2e803f call   0x37224c
2e8044 jmp    0x2e8058
2e8046 mov    rax,QWORD PTR [rbp+0xa0]
2e804d mov    QWORD PTR [rsp+0x50],rax
2e8052 mov    eax,DWORD PTR [rbp+0xa0]
2e8058 mov    rcx,rbx
2e805b mov    DWORD PTR [rbp+0xa8],eax
2e8061 call   0x373e4c
2e8066 mov    rcx,rax
2e8069 mov    QWORD PTR [rsp+0x40],rax
2e806e mov    rbx,rax
2e8071 call   0x2caf08
2e8076 test   al,al
2e8078 je     0x2e835f
2e807e mov    rcx,rbx
2e8081 mov    BYTE PTR [rbp+0xa0],r13b
2e8088 mov    sil,r13b
2e808b call   0x372278
2e8090 mov    DWORD PTR [rbp-0x80],eax
2e8093 mov    r15d,r13d
2e8096 mov    DWORD PTR [rbp+0xb0],r13d
2e809d test   eax,eax
2e809f jle    0x2e835f
2e80a5 mov    edx,r15d
2e80a8 mov    rcx,rbx
2e80ab call   0x3722a4
2e80b0 mov    rcx,rax
2e80b3 mov    rdx,rax
2e80b6 call   0x2caf08
2e80bb test   al,al
2e80bd je     0x2e8334
2e80c3 mov    r13,QWORD PTR [rdx+0x20]
2e80c7 mov    rcx,r13
2e80ca call   0x2caf08
2e80cf xor    r8d,r8d
2e80d2 test   al,al
2e80d4 je     0x2e8331
2e80da mov    eax,DWORD PTR [r13+0x18]
2e80de mov    r14d,r8d
2e80e1 test   eax,eax
2e80e3 jle    0x2e8331
2e80e9 mov    r15d,DWORD PTR [rbp+0xa8]
2e80f0 mov    edi,eax
2e80f2 mov    rdx,QWORD PTR [r13+0x10]
2e80f6 mov    rcx,rdx
2e80f9 call   0x2caf08
2e80fe test   al,al
2e8100 je     0x2e8319
2e8106 lea    eax,[r14*8+0x0]
2e810d 
2e810e movsxd rcx,eax
2e8111 mov    rdx,QWORD PTR [rdx+rcx*1+0x20]
2e8116 mov    rcx,rdx
2e8119 call   0x2caf08
2e811e test   al,al
2e8120 je     0x2e8319
2e8126 mov    rsi,QWORD PTR [rdx+0x10]
2e812a mov    rcx,rsi
2e812d call   0x2caf08
2e8132 test   al,al
2e8134 je     0x2e8312
2e813a mov    rax,QWORD PTR [rdx+0x88]
2e8141 lea    rcx,[rip+0xfd5b0]        # 0x3e56f8
2e8148 mov    r12d,DWORD PTR [rdx+0x30]
2e814c mov    r8d,0x7
2e8152 movsx  ebx,WORD PTR [rsi+0x58]
2e8156 lea    rdx,[rsp+0x60]
2e815b mov    QWORD PTR [rbp+0xb8],rax
2e8162 call   0x2e98f0
2e8167 mov    rcx,rax
2e816a call   0x2d4d70
2e816f xor    r8d,r8d
2e8172 test   al,al
2e8174 jne    0x2e82d0
2e817a cmp    bx,0x11
2e817e ja     0x2e818e
2e8180 mov    ecx,0x3de16
2e8185 bt     ecx,ebx
2e8188 jb     0x2e8312
2e818e test   bx,bx
2e8191 jne    0x2e81b7
2e8193 lea    rdx,[rsp+0x70]
2e8198 lea    rcx,[rip+0xfd559]        # 0x3e56f8
2e819f call   0x2e98f0
2e81a4 mov    rcx,rax
2e81a7 call   0x2d4d70
2e81ac xor    r8d,r8d
2e81af test   al,al
2e81b1 je     0x2e8312
2e81b7 mov    eax,0x3
2e81bc cmp    bx,ax
2e81bf jne    0x2e81e8
2e81c1 lea    r8d,[rax-0x2]
2e81c5 lea    rdx,[rbp-0x58]
2e81c9 lea    rcx,[rip+0xfd528]        # 0x3e56f8
2e81d0 call   0x2e98f0
2e81d5 mov    rcx,rax
2e81d8 call   0x2d4d70
2e81dd xor    r8d,r8d
2e81e0 test   al,al
2e81e2 je     0x2e8312
2e81e8 mov    eax,0x6
2e81ed cmp    bx,ax
2e81f0 jne    0x2e8219
2e81f2 lea    r8d,[rax-0x4]
2e81f6 lea    rdx,[rbp-0x48]
2e81fa lea    rcx,[rip+0xfd4f7]        # 0x3e56f8
2e8201 call   0x2e98f0
2e8206 mov    rcx,rax
2e8209 call   0x2d4d70
2e820e xor    r8d,r8d
2e8211 test   al,al
2e8213 je     0x2e8312
2e8219 mov    eax,0x7
2e821e cmp    bx,ax
2e8221 jne    0x2e824a
2e8223 lea    r8d,[rax-0x4]
2e8227 lea    rdx,[rbp-0x38]
2e822b lea    rcx,[rip+0xfd4c6]        # 0x3e56f8
2e8232 call   0x2e98f0
2e8237 mov    rcx,rax
2e823a call   0x2d4d70
2e823f xor    r8d,r8d
2e8242 test   al,al
2e8244 je     0x2e8312
2e824a mov    eax,0x8
2e824f cmp    bx,ax
2e8252 jne    0x2e827b
2e8254 lea    r8d,[rax-0x4]
2e8258 lea    rdx,[rbp-0x28]
2e825c lea    rcx,[rip+0xfd495]        # 0x3e56f8
2e8263 call   0x2e98f0
2e8268 mov    rcx,rax
2e826b call   0x2d4d70
2e8270 xor    r8d,r8d
2e8273 test   al,al
2e8275 je     0x2e8312
2e827b cmp    ebx,0xd
2e827e jne    0x2e82a3
2e8280 lea    r8d,[rbx-0x8]
2e8284 lea    rdx,[rbp-0x18]
2e8288 lea    rcx,[rip+0xfd469]        # 0x3e56f8
2e828f call   0x2e98f0
2e8294 mov    rcx,rax
2e8297 call   0x2d4d70
2e829c xor    r8d,r8d
2e829f test   al,al
2e82a1 je     0x2e8312
2e82a3 mov    eax,0x5
2e82a8 cmp    bx,ax
2e82ab jne    0x2e82d0
2e82ad lea    r8d,[rax+0x1]
2e82b1 lea    rdx,[rbp-0x70]
2e82b5 lea    rcx,[rip+0xfd43c]        # 0x3e56f8
2e82bc call   0x2e98f0
2e82c1 mov    rcx,rax
2e82c4 call   0x2d4d70
2e82c9 xor    r8d,r8d
2e82cc test   al,al
2e82ce je     0x2e8312
2e82d0 cmp    DWORD PTR [rsi+0x78],0x1
2e82d4 jle    0x2e82de
2e82d6 mov    al,0x1
2e82d8 cmp    r12d,DWORD PTR [rsi+0x78]
2e82dc jne    0x2e82e1
2e82de mov    al,r8b
2e82e1 cmp    r15d,0x18
2e82e5 jne    0x2e82eb
2e82e7 test   al,al
2e82e9 je     0x2e8312
2e82eb mov    rdx,QWORD PTR [rsp+0x50]
2e82f0 mov    r9d,r12d
2e82f3 mov    rcx,QWORD PTR [rbp+0xb8]
2e82fa or     r8d,0xffffffff
2e82fe call   0x2e6a84
2e8303 mov    sil,0x1
2e8306 xor    r8d,r8d
2e8309 mov    BYTE PTR [rbp+0xa0],sil
2e8310 jmp    0x2e8319
2e8312 mov    sil,BYTE PTR [rbp+0xa0]
2e8319 inc    r14d
2e831c cmp    r14d,edi
2e831f jl     0x2e80f2
2e8325 mov    r15d,DWORD PTR [rbp+0xb0]
2e832c mov    rbx,QWORD PTR [rsp+0x40]
2e8331 xor    r13d,r13d
2e8334 inc    r15d
2e8337 mov    DWORD PTR [rbp+0xb0],r15d
2e833e cmp    r15d,DWORD PTR [rbp-0x80]
2e8342 jl     0x2e80a5
2e8348 mov    rdi,QWORD PTR [rbp-0x78]
2e834c test   sil,sil
2e834f je     0x2e835f
2e8351 cmp    BYTE PTR [rip+0xfbea0],r13b        # 0x3e41f8
2e8358 je     0x2e835f
2e835a call   0x2e5bec
2e835f cmp    BYTE PTR [rip+0xfce72],r13b        # 0x3e51d8
2e8366 je     0x2e88c0
2e836c mov    ecx,DWORD PTR [rip+0xfd156]        # 0x3e54c8
2e8372 mov    dl,0x1
2e8374 call   0x2e5e4c
2e8379 test   al,al
2e837b je     0x2e88b0
2e8381 mov    rcx,rdi
2e8384 call   0x36a2f4
2e8389 mov    rcx,rax
2e838c mov    rbx,rax
2e838f call   0x2caf08
2e8394 test   al,al
2e8396 je     0x2e8624
2e839c mov    rcx,rbx
2e839f call   0x2e5a54
2e83a4 mov    rcx,rax
2e83a7 mov    rsi,rax
2e83aa call   0x2caf08
2e83af test   al,al
2e83b1 je     0x2e8624
2e83b7 mov    rcx,rdi
2e83ba call   0x368a84
2e83bf mov    rcx,rax
2e83c2 mov    rdx,rax
2e83c5 call   0x2caf08
2e83ca test   al,al
2e83cc je     0x2e8624
2e83d2 mov    rcx,rdx
2e83d5 call   0x371384
2e83da mov    rcx,rax
2e83dd call   0x2caf08
2e83e2 test   al,al
2e83e4 je     0x2e8624
2e83ea movaps xmm1,xmm6
2e83ed lea    rcx,[rip+0xfd6e8]        # 0x3e5adc
2e83f4 call   0x2e5b7c
2e83f9 test   al,al
2e83fb je     0x2e8624
2e8401 mov    rcx,rsi
2e8404 call   0x2d6354
2e8409 cmp    BYTE PTR [rip+0xfd6c9],r13b        # 0x3e5ad9
2e8410 mov    rsi,rax
2e8413 mov    r14d,0x1d8
2e8419 je     0x2e8579
2e841f lea    rdx,[rsp+0x40]
2e8424 lea    rcx,[rbp+0xa0]
2e842b call   0x2e5a28
2e8430 mov    rcx,rax
2e8433 call   0x2e9b8c
2e8438 movabs r15,0xcbf29ce484222325
2e843f 
2e8442 mov    rcx,rax
2e8445 mov    rdx,r15
2e8448 call   0x2e5b4c
2e844d cmp    rsi,rax
2e8450 je     0x2e847a
2e8452 lea    rdx,[rbp-0x70]
2e8456 lea    rcx,[rbp+0xa0]
2e845d call   0x2e5200
2e8462 mov    rcx,rax
2e8465 call   0x2e9bdc
2e846a mov    rcx,rax
2e846d mov    rdx,r15
2e8470 call   0x2e5b4c
2e8475 cmp    rsi,rax
2e8478 jne    0x2e84e4
2e847a mov    rdx,r14
2e847d mov    rcx,rbx
2e8480 call   0x2dee3c
2e8485 mov    r12d,0x10
2e848b lea    rcx,[rbp+0xa0]
2e8492 cmp    WORD PTR [rax],r12w
2e8496 jne    0x2e84b7
2e8498 lea    rdx,[rsp+0x40]
2e849d call   0x2e5254
2e84a2 mov    rcx,rax
2e84a5 call   0x2cdd44
2e84aa mov    rdx,rax
2e84ad mov    rcx,rbx
2e84b0 call   0x366c30
2e84b5 jmp    0x2e84ea
2e84b7 lea    rdx,[rsp+0x60]
2e84bc call   0x2e5270
2e84c1 mov    rcx,rax
2e84c4 call   0x2d85f4
2e84c9 mov    rdx,rax
2e84cc mov    rcx,rbx
2e84cf call   0x366c30
2e84d4 mov    BYTE PTR [rip+0xfd5fd],0x1        # 0x3e5ad8
2e84db mov    BYTE PTR [rip+0xfd5f7],r13b        # 0x3e5ad9
2e84e2 jmp    0x2e84ea
2e84e4 mov    r12d,0x10
2e84ea lea    rdx,[rbp+0xa0]
2e84f1 lea    rcx,[rbp+0xa0]
2e84f8 call   0x2e52b8
2e84fd mov    rcx,rax
2e8500 call   0x2e3614
2e8505 mov    rcx,rax
2e8508 mov    rdx,r15
2e850b call   0x2e5b4c
2e8510 cmp    rsi,rax
2e8513 jne    0x2e8583
2e8515 mov    rdx,r14
2e8518 mov    rcx,rbx
2e851b call   0x2dee3c
2e8520 lea    rcx,[rbp+0xa0]
2e8527 cmp    WORD PTR [rax],r12w
2e852b jne    0x2e854c
2e852d lea    rdx,[rsp+0x40]
2e8532 call   0x2e52cc
2e8537 mov    rcx,rax
2e853a call   0x2e9c54
2e853f mov    rdx,rax
2e8542 mov    rcx,rbx
2e8545 call   0x366c30
2e854a jmp    0x2e8583
2e854c lea    rdx,[rsp+0x60]
2e8551 call   0x2e52e8
2e8556 mov    rcx,rax
2e8559 call   0x2d85f4
2e855e mov    rdx,rax
2e8561 mov    rcx,rbx
2e8564 call   0x366c30
2e8569 mov    BYTE PTR [rip+0xfd568],0x1        # 0x3e5ad8
2e8570 mov    BYTE PTR [rip+0xfd562],r13b        # 0x3e5ad9
2e8577 jmp    0x2e8583
2e8579 movabs r15,0xcbf29ce484222325
2e8580 
2e8583 cmp    BYTE PTR [rip+0xfd550],r13b        # 0x3e5ada
2e858a je     0x2e8624
2e8590 lea    rdx,[rbp+0xa0]
2e8597 lea    rcx,[rbp+0xa0]
2e859e call   0x2e530c
2e85a3 mov    rcx,rax
2e85a6 call   0x2cdccc
2e85ab mov    rcx,rax
2e85ae mov    rdx,r15
2e85b1 call   0x2e5b4c
2e85b6 cmp    rsi,rax
2e85b9 jne    0x2e8624
2e85bb mov    rdx,r14
2e85be mov    rcx,rbx
2e85c1 call   0x2dee3c
2e85c6 cmp    BYTE PTR [rip+0xfd50b],r13b        # 0x3e5ad8
2e85cd je     0x2e8624
2e85cf test   BYTE PTR [rax],0x8
2e85d2 lea    rcx,[rbp+0xa0]
2e85d9 jne    0x2e85fa
2e85db lea    rdx,[rsp+0x60]
2e85e0 call   0x2e5324
2e85e5 mov    rcx,rax
2e85e8 call   0x2d85f4
2e85ed mov    rdx,rax
2e85f0 mov    rcx,rbx
2e85f3 call   0x366c30
2e85f8 jmp    0x2e8624
2e85fa lea    rdx,[rbp-0x70]
2e85fe call   0x2e5348
2e8603 mov    rcx,rax
2e8606 call   0x2dd160
2e860b mov    rdx,rax
2e860e mov    rcx,rbx
2e8611 call   0x366c30
2e8616 mov    BYTE PTR [rip+0xfd4bb],r13b        # 0x3e5ad8
2e861d mov    BYTE PTR [rip+0xfd4b6],r13b        # 0x3e5ada
2e8624 movaps xmm1,xmm6
2e8627 lea    rcx,[rip+0xfd4b2]        # 0x3e5ae0
2e862e call   0x2e5b7c
2e8633 test   al,al
2e8635 je     0x2e8751
2e863b mov    rcx,rdi
2e863e call   0x368a84
2e8643 mov    rcx,rax
2e8646 mov    rbx,rax
2e8649 call   0x2caf08
2e864e test   al,al
2e8650 je     0x2e8751
2e8656 mov    rcx,rbx
2e8659 call   0x371384
2e865e mov    rcx,rax
2e8661 call   0x2caf08
2e8666 test   al,al
2e8668 je     0x2e86fa
2e866e mov    rax,QWORD PTR [rip+0xee88b]        # 0x3d6f00
2e8675 mov    rdx,QWORD PTR [rax+0xf1134b0]
2e867c mov    rcx,rdx
2e867f call   0x2caf08
2e8684 test   al,al
2e8686 je     0x2e86fa
2e8688 mov    rdx,QWORD PTR [rdx+0xb8]
2e868f mov    rcx,rdx
2e8692 call   0x2caf08
2e8697 test   al,al
2e8699 je     0x2e86fa
2e869b mov    rdx,QWORD PTR [rdx+0x138]
2e86a2 mov    rcx,rdx
2e86a5 call   0x2caf08
2e86aa test   al,al
2e86ac je     0x2e86fa
2e86ae cmp    BYTE PTR [rdx+0xc0],r13b
2e86b5 je     0x2e86fa
2e86b7 mov    rcx,rdi
2e86ba call   0x369738
2e86bf mov    rcx,rax
2e86c2 mov    rdx,rax
2e86c5 call   0x2caf08
2e86ca test   al,al
2e86cc je     0x2e86fa
2e86ce mov    rcx,rdx
2e86d1 call   0x373dc8
2e86d6 mov    rcx,rax
2e86d9 mov    rdx,rax
2e86dc call   0x2caf08
2e86e1 test   al,al
2e86e3 je     0x2e86fa
2e86e5 mov    rdx,QWORD PTR [rdx+0x20]
2e86e9 mov    rcx,rdx
2e86ec call   0x2caf08
2e86f1 test   al,al
2e86f3 je     0x2e86fa
2e86f5 bts    DWORD PTR [rdx+0x28],0xa
2e86fa mov    rcx,rbx
2e86fd call   0x371da4
2e8702 mov    rcx,rax
2e8705 call   0x2caf08
2e870a test   al,al
2e870c je     0x2e8751
2e870e mov    rcx,rdi
2e8711 call   0x369738
2e8716 mov    rcx,rax
2e8719 mov    rdx,rax
2e871c call   0x2caf08
2e8721 test   al,al
2e8723 je     0x2e8751
2e8725 mov    rcx,rdx
2e8728 call   0x373dc8
2e872d mov    rcx,rax
2e8730 mov    rdx,rax
2e8733 call   0x2caf08
2e8738 test   al,al
2e873a je     0x2e8751
2e873c mov    rdx,QWORD PTR [rdx+0x20]
2e8740 mov    rcx,rdx
2e8743 call   0x2caf08
2e8748 test   al,al
2e874a je     0x2e8751
2e874c bts    DWORD PTR [rdx+0x28],0xa
2e8751 mov    rcx,rdi
2e8754 call   0x368a84
2e8759 mov    rcx,rax
2e875c call   0x2caf08
2e8761 test   al,al
2e8763 jne    0x2e88d5
2e8769 cmp    BYTE PTR [rip+0xfd36b],r13b        # 0x3e5adb
2e8770 jne    0x2e88d5
2e8776 mov    rcx,rdi
2e8779 call   0x369324
2e877e mov    rcx,rax
2e8781 mov    rdx,rax
2e8784 call   0x2caf08
2e8789 test   al,al
2e878b je     0x2e88dc
2e8791 mov    rcx,rdx
2e8794 call   0x373dc8
2e8799 mov    rcx,rax
2e879c mov    r14,rax
2e879f call   0x2caf08
2e87a4 test   al,al
2e87a6 je     0x2e88dc
2e87ac mov    rcx,r14
2e87af call   0x37224c
2e87b4 mov    r15d,eax
2e87b7 mov    ebx,r13d
2e87ba test   eax,eax
2e87bc jle    0x2e88dc
2e87c2 mov    edx,ebx
2e87c4 mov    rcx,r14
2e87c7 call   0x3722f0
2e87cc mov    rcx,rax
2e87cf mov    rsi,rax
2e87d2 call   0x2caf08
2e87d7 test   al,al
2e87d9 je     0x2e88a3
2e87df mov    rcx,QWORD PTR [rsi+0x10]
2e87e3 call   0x2caf08
2e87e8 test   al,al
2e87ea je     0x2e88a3
2e87f0 mov    rcx,QWORD PTR [rsi+0x10]
2e87f4 call   0x37261c
2e87f9 cmp    eax,0xcd470ac0
2e87fe je     0x2e880b
2e8800 cmp    eax,0x452412ac
2e8805 jne    0x2e88a3
2e880b mov    r12,QWORD PTR [rdi+0x600]
2e8812 mov    rcx,r12
2e8815 call   0x2caf08
2e881a test   al,al
2e881c je     0x2e88a3
2e8822 mov    ecx,DWORD PTR [rip+0xfd000]        # 0x3e5828
2e8828 mov    esi,DWORD PTR [rsi+0xb8]
2e882e test   cl,0x40
2e8831 jne    0x2e8853
2e8833 mov    r8,QWORD PTR [rip+0xee6c6]        # 0x3d6f00
2e883a or     ecx,0x40
2e883d add    r8,0x60425f0
2e8844 mov    DWORD PTR [rip+0xfcfde],ecx        # 0x3e5828
2e884a mov    QWORD PTR [rip+0xfd297],r8        # 0x3e5ae8
2e8851 jmp    0x2e885a
2e8853 mov    r8,QWORD PTR [rip+0xfd28e]        # 0x3e5ae8
2e885a test   cl,cl
2e885c js     0x2e887e
2e885e bts    ecx,0x7
2e8862 lea    rdx,[rip+0xfd287]        # 0x3e5af0
2e8869 mov    DWORD PTR [rip+0xfcfb9],ecx        # 0x3e5828
2e886f xor    r9d,r9d
2e8872 mov    rcx,QWORD PTR [rip+0xed5e7]        # 0x3d5e60
2e8879 call   0x2cbd24
2e887e mov    rcx,QWORD PTR [rip+0xed5db]        # 0x3d5e60
2e8885 lea    rdx,[rip+0xfd264]        # 0x3e5af0
2e888c mov    r9d,esi
2e888f mov    BYTE PTR [rsp+0x20],0x1
2e8894 mov    r8,r12
2e8897 call   0x2e48d0
2e889c mov    BYTE PTR [rip+0xfd238],0x1        # 0x3e5adb
2e88a3 inc    ebx
2e88a5 cmp    ebx,r15d
2e88a8 jl     0x2e87c2
2e88ae jmp    0x2e88dc
2e88b0 mov    BYTE PTR [rip+0xfd223],0x1        # 0x3e5ada
2e88b7 mov    BYTE PTR [rip+0xfd21b],0x1        # 0x3e5ad9
2e88be jmp    0x2e88dc
2e88c0 mov    BYTE PTR [rip+0xfd211],r13b        # 0x3e5ad8
2e88c7 mov    BYTE PTR [rip+0xfd20b],r13b        # 0x3e5ad9
2e88ce mov    BYTE PTR [rip+0xfd205],r13b        # 0x3e5ada
2e88d5 mov    BYTE PTR [rip+0xfd1ff],r13b        # 0x3e5adb
2e88dc lea    r11,[rsp+0x158]
2e88e3 
2e88e4 movaps xmm6,XMMWORD PTR [r11-0x18]
2e88e9 movaps xmm7,XMMWORD PTR [r11-0x28]
2e88ee movaps xmm8,XMMWORD PTR [r11-0x38]
2e88f3 movaps xmm13,XMMWORD PTR [r11-0x48]
2e88f8 movaps xmm14,XMMWORD PTR [r11-0x58]
2e88fd mov    rsp,r11
2e8900 pop    r15
2e8902 pop    r14
2e8904 pop    r13
2e8906 pop    r12
2e8908 pop    rdi
2e8909 pop    rsi
2e890a pop    rbx
2e890b pop    rbp
2e890c ret
