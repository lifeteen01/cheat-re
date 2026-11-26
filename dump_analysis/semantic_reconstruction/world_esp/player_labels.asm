312823 cmp    BYTE PTR [rip+0xd4e7e],dil        # 0x3e76a8 ; CONFIG Bools.HeldItem value(+0x48)
31282a mov    esi,edi
31282c je     0x31289c
31282e cmp    BYTE PTR [rbp+0x15a8],dil
312835 jne    0x31289c
312837 mov    rcx,QWORD PTR [rsp+0x58]
31283c call   0x368a84
312841 mov    rcx,rax
312844 mov    rbx,rax
312847 call   0x2caf08
31284c test   al,al
31284e je     0x31289c
312850 mov    rcx,rbx
312853 call   0x37154c
312858 mov    rcx,rax
31285b mov    r8,rax
31285e call   0x2caf08
312863 test   al,al
312865 je     0x31289c
312867 lea    rdx,[rbp-0x28]
31286b mov    rcx,r8
31286e call   0x372398
312873 lea    rcx,[rbp-0x28]
312877 call   0x2d8694
31287c test   al,al
31287e jne    0x312893
312880 lea    rdx,[rbp-0x28]
312884 lea    rcx,[rbp+0x210]
31288b call   0x2d4c24
312890 mov    esi,DWORD PTR [rbx+0x54]
312893 lea    rcx,[rbp-0x28]
312897 call   0x2cc4f4
31289c cmp    BYTE PTR [rip+0xd4ea5],dil        # 0x3e7748 ; CONFIG Bools.TeamID value(+0x48)
3128a3 jne    0x3128b2
3128a5 cmp    BYTE PTR [rip+0xd4eec],dil        # 0x3e7798 ; CONFIG Bools.name value(+0x48)
3128ac je     0x312adf
3128b2 mov    rcx,QWORD PTR [rsp+0x58]
3128b7 lea    rdx,[rbp+0x110]
3128be call   0x369040
3128c3 lea    rcx,[rbp+0x110]
3128ca call   0x2d8694
3128cf test   al,al
3128d1 jne    0x312acc
3128d7 lea    rdx,[rbp+0x450]
3128de lea    rcx,[rsp+0x50]
3128e3 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
3128e8 mov    rcx,rax
3128eb call   0x2d8464
3128f0 mov    rdx,rax
3128f3 lea    rcx,[rbp+0xfb0]
3128fa call   0x2cc2cc
3128ff mov    edx,r15d
312902 lea    rcx,[rbp+0xf90]
312909 mov    rdi,rax
31290c call   0x2d9510
312911 lea    rdx,[rbp+0x448]
312918 mov    rbx,rax
31291b lea    rcx,[rsp+0x50]
312920 call   0x2f08e0 ; STRING getter=0x2f08e0 (
312925 mov    rcx,rax
312928 call   0x2d8464
31292d mov    rdx,rax
312930 lea    rcx,[rbp+0xf70]
312937 call   0x2cc2cc
31293c mov    r8,rax
31293f lea    rdx,[rbp+0x110]
312946 lea    rcx,[rbp+0x180]
31294d call   0x2ea618
312952 mov    rdx,rax
312955 lea    rcx,[rbp-0x28]
312959 mov    r8,rbx
31295c call   0x2cef40
312961 mov    rdx,rax
312964 lea    rcx,[rbp+0x1f0]
31296b mov    r8,rdi
31296e call   0x2cef40
312973 lea    rcx,[rbp-0x28]
312977 call   0x2cc4f4
31297c lea    rcx,[rbp+0x180]
312983 call   0x2cc4f4
312988 lea    rcx,[rbp+0xf70]
31298f call   0x2cc4f4
312994 lea    rcx,[rbp+0xf90]
31299b call   0x2cc4f4
3129a0 lea    rcx,[rbp+0xfb0]
3129a7 call   0x2cc4f4
3129ac lea    rdx,[rbp+0x446]
3129b3 lea    rcx,[rsp+0x50]
3129b8 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
3129bd mov    rcx,rax
3129c0 call   0x2d8464
3129c5 mov    rdx,rax
3129c8 lea    rcx,[rbp-0x28]
3129cc call   0x2cc2cc
3129d1 mov    edx,r15d
3129d4 lea    rcx,[rbp+0xf70]
3129db mov    rdi,rax
3129de call   0x2d9510
3129e3 lea    rdx,[rbp+0x444]
3129ea mov    rbx,rax
3129ed lea    rcx,[rsp+0x50]
3129f2 call   0x2f08e0 ; STRING getter=0x2f08e0 (
3129f7 mov    rcx,rax
3129fa call   0x2d8464
3129ff mov    rdx,rax
312a02 lea    rcx,[rbp+0xf90]
312a09 call   0x2cc2cc
312a0e mov    rdx,rax
312a11 lea    rcx,[rbp+0xfb0]
312a18 mov    r8,rbx
312a1b call   0x2cef40
312a20 mov    rdx,rax
312a23 lea    rcx,[rbp+0xd8]
312a2a mov    r8,rdi
312a2d call   0x2cef40
312a32 lea    rcx,[rbp+0xfb0]
312a39 call   0x2cc4f4
312a3e lea    rcx,[rbp+0xf90]
312a45 call   0x2cc4f4
312a4a lea    rcx,[rbp+0xf70]
312a51 call   0x2cc4f4
312a56 lea    rcx,[rbp-0x28]
312a5a call   0x2cc4f4
312a5f mov    r14b,BYTE PTR [rsp+0x62]
312a64 xor    eax,eax
312a66 test   r14b,r14b
312a69 jne    0x312a9f
312a6b cmp    BYTE PTR [rip+0xd4d27],al        # 0x3e7798 ; CONFIG Bools.name value(+0x48)
312a71 je     0x312a89
312a73 cmp    BYTE PTR [rip+0xd4ccf],al        # 0x3e7748 ; CONFIG Bools.TeamID value(+0x48)
312a79 je     0x312a9f
312a7b test   r15,r15
312a7e je     0x312a9f
312a80 lea    rdx,[rbp+0x1f0]
312a87 jmp    0x312aa6
312a89 cmp    BYTE PTR [rip+0xd4cb9],al        # 0x3e7748 ; CONFIG Bools.TeamID value(+0x48)
312a8f je     0x312ab2
312a91 test   r15,r15
312a94 je     0x312ab2
312a96 lea    rdx,[rbp+0xd8]
312a9d jmp    0x312aa6
312a9f lea    rdx,[rbp+0x110]
312aa6 lea    rcx,[rbp+0xa0]
312aad call   0x2d4c24
312ab2 lea    rcx,[rbp+0xd8]
312ab9 call   0x2cc4f4
312abe lea    rcx,[rbp+0x1f0]
312ac5 call   0x2cc4f4
312aca jmp    0x312ad1
312acc mov    r14b,BYTE PTR [rsp+0x62]
312ad1 lea    rcx,[rbp+0x110]
312ad8 call   0x2cc4f4
312add jmp    0x312ae4
312adf mov    r14b,BYTE PTR [rsp+0x62]
312ae4 lea    rdx,[rbp+0xe58]
312aeb lea    rcx,[rbp+0x20]
312aef call   0x2d87b0
312af4 lea    rdx,[rbp+0xe60]
312afb lea    rcx,[rbp+0x20]
312aff mov    rbx,QWORD PTR [rax]
312b02 call   0x2d7d90
312b07 mov    r9b,BYTE PTR [rbp+0x15a8]
312b0e lea    rcx,[rbp+0xe68]
312b15 mov    r8,rbx
312b18 mov    rdx,QWORD PTR [rax]
312b1b call   0x2ee154
312b20 mov    rcx,rax
312b23 call   0x2ce5d8
312b28 lea    rdx,[rbp+0xa0]
312b2f lea    rcx,[rax+0x30]
312b33 call   0x2d4c24
312b38 lea    rdx,[rbp+0xe70]
312b3f lea    rcx,[rbp+0x20]
312b43 call   0x2d87b0
312b48 lea    rdx,[rbp+0xe78]
312b4f lea    rcx,[rbp+0x20]
312b53 mov    rbx,QWORD PTR [rax]
312b56 call   0x2d7d90
312b5b mov    r9b,BYTE PTR [rbp+0x15a8]
312b62 lea    rcx,[rbp+0x5c8]
312b69 mov    r8,rbx
312b6c mov    rdx,QWORD PTR [rax]
312b6f call   0x2ee1d0
312b74 lea    rcx,[rbp+0x5c8]
312b7b call   0x2ce5d8
312b80 lea    rdx,[rbp+0x210]
312b87 mov    rbx,rax
312b8a lea    rcx,[rax+0x30]
312b8e call   0x2d4c24
312b93 lea    rdx,[rbp+0xe80]
312b9a mov    DWORD PTR [rbx+0x64],esi
312b9d lea    rcx,[rbp+0x20]
312ba1 call   0x2d87b0
312ba6 lea    rdx,[rbp+0xe88]
312bad lea    rcx,[rbp+0x20]
312bb1 mov    rbx,QWORD PTR [rax]
312bb4 call   0x2d7d90
312bb9 mov    r9b,BYTE PTR [rbp+0x15a8]
312bc0 lea    rcx,[rbp+0xe90]
312bc7 mov    r8,rbx
312bca mov    rdx,QWORD PTR [rax]
312bcd call   0x2ee24c
312bd2 mov    rcx,rax
312bd5 call   0x2ce5d8
312bda lea    rdx,[rbp+0x2f0]
312be1 lea    rcx,[rax+0x30]
312be5 call   0x2d4c24
312bea mov    sil,BYTE PTR [rbp+0x15b8]
312bf1 xor    r15d,r15d
312bf4 test   sil,sil
312bf7 je     0x312c1f
312bf9 cmp    BYTE PTR [rip+0xd4788],r15b        # 0x3e7388 ; CONFIG Bools.DrawOnlineSleepers value(+0x48)
312c00 je     0x312c1f
312c02 lea    rdx,[rbp+0xcd0]
312c09 lea    rcx,[rbp+0x15b8]
312c10 call   0x2f77fc ; STRING getter=0x2f77fc Online
312c15 mov    rcx,rax
312c18 call   0x2cdcf4
312c1d jmp    0x312c3a
312c1f lea    rdx,[rbp+0x1a8]
312c26 lea    rcx,[rbp+0x15b8]
312c2d call   0x2cc730
312c32 mov    rcx,rax
312c35 call   0x2cdca4
312c3a lea    rdx,[rbp+0xe98]
312c41 mov    rdi,rax
312c44 lea    rcx,[rbp+0x20]
312c48 call   0x2d87b0
312c4d lea    rdx,[rbp+0xea0]
312c54 lea    rcx,[rbp+0x20]
312c58 mov    rbx,QWORD PTR [rax]
312c5b call   0x2d7d90
312c60 mov    r9b,BYTE PTR [rbp+0x15a8]
312c67 lea    rcx,[rbp+0xea8]
312c6e mov    r8,rbx
312c71 mov    rdx,QWORD PTR [rax]
312c74 call   0x2ee2c8
312c79 mov    rcx,rax
312c7c call   0x2ce5d8
312c81 mov    rdx,rdi
312c84 lea    rcx,[rax+0x30]
312c88 call   0x2d4c68
312c8d cmp    BYTE PTR [rip+0xd4604],r15b        # 0x3e7298 ; CONFIG Bools.IsOutside value(+0x48)
312c94 je     0x312ccb
312c96 mov    cl,BYTE PTR [rsp+0x61]
312c9a mov    al,BYTE PTR [rbp+0x15a8]
312ca0 or     cl,r14b
312ca3 or     al,cl
312ca5 jne    0x312ccb
312ca7 cmp    BYTE PTR [rsp+0x60],r15b
312cac je     0x312ccb
312cae lea    rdx,[rbp+0xeb0]
312cb5 lea    rcx,[rbp+0x15b8]
312cbc call   0x2dba40
312cc1 mov    rcx,rax
312cc4 call   0x2e3614
312cc9 jmp    0x312ce6
312ccb lea    rdx,[rbp+0x1dc]
312cd2 lea    rcx,[rbp+0x15b8]
312cd9 call   0x2cc730
312cde mov    rcx,rax
312ce1 call   0x2cdca4
312ce6 lea    rdx,[rbp+0xeb8]
312ced mov    rdi,rax
312cf0 lea    rcx,[rbp+0x20]
312cf4 call   0x2d87b0
312cf9 lea    rdx,[rbp+0xec0]
312d00 lea    rcx,[rbp+0x20]
312d04 mov    rbx,QWORD PTR [rax]
312d07 call   0x2d7d90
312d0c mov    r9b,BYTE PTR [rbp+0x15a8]
312d13 lea    rcx,[rbp+0xec8]
312d1a mov    r8,rbx
312d1d mov    rdx,QWORD PTR [rax]
312d20 call   0x2ee344
312d25 mov    rcx,rax
312d28 call   0x2ce5d8
312d2d mov    rdx,rdi
312d30 lea    rcx,[rax+0x30]
312d34 call   0x2d4c68
312d39 lea    rcx,[rbp+0x15b8]
312d40 cmp    BYTE PTR [rbp+0x60],r15b
312d44 jne    0x312d78
312d46 cmp    BYTE PTR [rbp-0x2b],r15b
312d4a jne    0x312d62
312d4c lea    rdx,[rbp+0x1d2]
312d53 call   0x2cc730
312d58 mov    rcx,rax
312d5b call   0x2cdca4
312d60 jmp    0x312d89
312d62 lea    rdx,[rbp+0xed0]
312d69 call   0x2dba70
312d6e mov    rcx,rax
312d71 call   0x2e3614
312d76 jmp    0x312d89
312d78 lea    rdx,[rbp+0x8]
312d7c call   0x2f7c34 ; STRING getter=0x2f7c34 Crawling
312d81 mov    rcx,rax
312d84 call   0x2e9b8c
312d89 lea    rdx,[rbp+0xed8]
312d90 mov    rdi,rax
312d93 lea    rcx,[rbp+0x20]
312d97 call   0x2d87b0
312d9c lea    rdx,[rbp+0xbe0]
312da3 lea    rcx,[rbp+0x20]
312da7 mov    rbx,QWORD PTR [rax]
312daa call   0x2d7d90
312daf mov    r9b,BYTE PTR [rbp+0x15a8]
312db6 lea    rcx,[rbp+0x1e0]
312dbd mov    r8,rbx
312dc0 mov    rdx,QWORD PTR [rax]
312dc3 call   0x2ee3c0
312dc8 mov    rcx,rax
312dcb call   0x2ce5d8
312dd0 mov    rdx,rdi
312dd3 lea    rcx,[rax+0x30]
312dd7 call   0x2d4c68
312ddc cmp    BYTE PTR [rip+0xd6f35],r15b        # 0x3e9d18 ; CONFIG Bools.CornerBox value(+0x48)
312de3 je     0x312e14
312de5 mov    rcx,QWORD PTR [rsp+0x58]
312dea xor    edx,edx
312dec call   0x36a20c
312df1 test   al,al
312df3 jne    0x312e14
312df5 movups xmm0,XMMWORD PTR [rbp-0x70]
312df9 lea    rdx,[rbp+0x110]
312e00 lea    rcx,[rbp+0x80]
312e07 movdqa XMMWORD PTR [rbp+0x110],xmm0
312e0f call   0x37b724
312e14 lea    rcx,[rip+0xd2ead]        # 0x3e5cc8
312e1b mov    DWORD PTR [rbp+0x15b8],r15d
312e22 call   0x2edae8
312e27 lea    rcx,[rip+0xd2e9a]        # 0x3e5cc8
312e2e mov    rbx,rax
312e31 call   0x2cb3a4
312e36 mov    rcx,rax
312e39 lea    r8,[rbp+0x15b8]
312e40 mov    rdx,rbx
312e43 call   0x2edb28
312e48 movups xmm0,XMMWORD PTR [rbp-0x70]
312e4c xor    edx,edx
312e4e lea    rcx,[rbp+0x20]
312e52 movdqa XMMWORD PTR [rbp+0x110],xmm0
312e5a call   0x2ef7c8
312e5f mov    rdx,rax
312e62 lea    rcx,[rbp+0xc40]
312e69 call   0x2db470
312e6e mov    rdx,rax
312e71 lea    r8,[rbp+0x110]
312e78 lea    rcx,[rbp+0x80]
312e7f call   0x37bc98
312e84 movups xmm0,XMMWORD PTR [rbp-0x70]
312e88 mov    edx,0x1
312e8d lea    rcx,[rbp+0x20]
312e91 movdqa XMMWORD PTR [rbp+0x110],xmm0
312e99 call   0x2ef7c8
312e9e mov    rdx,rax
312ea1 lea    rcx,[rbp+0xc40]
312ea8 call   0x2db470
312ead mov    rdx,rax
312eb0 lea    r8,[rbp+0x110]
312eb7 lea    rcx,[rbp+0x80]
312ebe call   0x37bc98
312ec3 movups xmm0,XMMWORD PTR [rbp-0x70]
312ec7 mov    edx,0x2
312ecc lea    rcx,[rbp+0x20]
312ed0 movdqa XMMWORD PTR [rbp+0x110],xmm0
312ed8 call   0x2ef7c8
312edd mov    rdx,rax
312ee0 lea    rcx,[rbp+0xc40]
312ee7 call   0x2db470
312eec mov    rdx,rax
312eef lea    r8,[rbp+0x110]
312ef6 lea    rcx,[rbp+0x80]
312efd call   0x37bc98
312f02 movups xmm0,XMMWORD PTR [rbp-0x70]
312f06 mov    edx,0x3
312f0b lea    rcx,[rbp+0x20]
312f0f movdqa XMMWORD PTR [rbp+0x110],xmm0
312f17 call   0x2ef7c8
312f1c mov    rdx,rax
312f1f lea    rcx,[rbp+0xc40]
312f26 call   0x2db470
312f2b mov    rdx,rax
312f2e lea    r8,[rbp+0x110]
312f35 lea    rcx,[rbp+0x80]
312f3c call   0x37bc98
312f41 movups xmm0,XMMWORD PTR [rbp-0x70]
312f45 mov    edx,0x4
312f4a lea    rcx,[rbp+0x20]
312f4e movdqa XMMWORD PTR [rbp+0x110],xmm0
312f56 call   0x2ef7c8
312f5b mov    rdx,rax
312f5e lea    rcx,[rbp+0xc40]
312f65 call   0x2db470
312f6a mov    rdx,rax
312f6d lea    r8,[rbp+0x110]
312f74 lea    rcx,[rbp+0x80]
312f7b call   0x37bc98
312f80 movups xmm0,XMMWORD PTR [rbp-0x70]
312f84 mov    edx,0x5
312f89 lea    rcx,[rbp+0x20]
312f8d movdqa XMMWORD PTR [rbp+0x110],xmm0
312f95 call   0x2ef7c8
312f9a mov    rdx,rax
312f9d lea    rcx,[rbp+0xc40]
312fa4 call   0x2db470
312fa9 mov    rdx,rax
312fac lea    r8,[rbp+0x110]
312fb3 lea    rcx,[rbp+0x80]
312fba call   0x37bc98
312fbf lea    rcx,[rbp+0xa0]
312fc6 call   0x2cc4f4
312fcb lea    rcx,[rbp+0x210]
312fd2 call   0x2cc4f4
312fd7 lea    rcx,[rbp+0x568]
312fde call   0x2cc4f4
312fe3 lea    rcx,[rbp+0x2f0]
312fea call   0x2cc4f4
312fef lea    rcx,[rbp+0x20]
312ff3 call   0x2db5c4
312ff8 jmp    0x313019
312ffa mov    sil,BYTE PTR [rbp+0x15b8]
313001 jmp    0x313020
313003 mov    sil,BYTE PTR [rbp+0x15b8]
31300a xor    r15d,r15d
31300d jmp    0x313020
31300f mov    sil,BYTE PTR [rbp+0x15b8]
313016 xor    r15d,r15d
313019 lea    rdi,[rip+0xc4288]        # 0x3d72a8
313020 cmp    BYTE PTR [rip+0xd4a91],r15b        # 0x3e7ab8 ; CONFIG Bools.Snapline value(+0x48)
313027 mov    dl,BYTE PTR [rbp+0x15b0]
31302d mov    r8b,BYTE PTR [rbp+0x15a8]
313034 je     0x31311d
31303a mov    cl,dl
31303c mov    al,sil
31303f or     cl,r8b
313042 or     al,cl
313044 jne    0x31311d
31304a mov    rbx,QWORD PTR [rbp+0x18]
31304e mov    rcx,rbx
313051 call   0x2caf08
313056 test   al,al
313058 je     0x31311d
31305e mov    rcx,rbx
313061 call   0x2e0e9c
313066 test   al,al
313068 je     0x313127
31306e cmp    rbx,QWORD PTR [rsp+0x58]
313073 jne    0x313127
313079 movsd  xmm0,QWORD PTR [rbp+0x4c8]
313081 lea    r8,[rbp+0x3b8]
313088 mov    eax,DWORD PTR [rbp+0x4d0]
31308e lea    rdx,[rbp+0x9f0]
313095 mov    r9,rdi
313098 movsd  QWORD PTR [rbp+0x9f0],xmm0
3130a0 mov    rcx,r12
3130a3 mov    DWORD PTR [rbp+0x9f8],eax
3130a9 call   0x36cd20
3130ae test   al,al
3130b0 je     0x313127
3130b2 lea    rcx,[rip+0xd981f]        # 0x3ec8d8 ; CONFIG C.SnapColor value(+0x48)
3130b9 call   0x2ef80c
3130be movss  xmm2,DWORD PTR [rbp+0x3bc]
3130c6 lea    rcx,[rbp+0x5d0]
3130cd movss  xmm1,DWORD PTR [rbp+0x3b8]
3130d5 mov    ebx,eax
3130d7 call   0x2cc340
3130dc movss  xmm2,DWORD PTR [rbp+0x100]
3130e4 lea    rcx,[rbp+0x5d8]
3130eb movaps xmm1,xmm13
3130ef call   0x2cc340
3130f4 movss  xmm6,DWORD PTR [rip+0xfffffffffff7fffc]        # 0x2930f8 ; f32=1.25
3130fc lea    r8,[rbp+0x5d0]
313103 mov    r9d,ebx
313106 movss  DWORD PTR [rsp+0x20],xmm6
31310c lea    rdx,[rbp+0x5d8]
313113 mov    rcx,r13
313116 call   0x35c25c
31311b jmp    0x31312f
31311d movss  xmm6,DWORD PTR [rip+0xfffffffffff7ffd3]        # 0x2930f8 ; f32=1.25
313125 jmp    0x31313c
313127 movss  xmm6,DWORD PTR [rip+0xfffffffffff7ffc9]        # 0x2930f8 ; f32=1.25
31312f mov    r8b,BYTE PTR [rbp+0x15a8]
313136 mov    dl,BYTE PTR [rbp+0x15b0]
31313c cmp    BYTE PTR [rip+0xd4745],r15b        # 0x3e7888 ; CONFIG Bools.PlayerView value(+0x48)
313143 je     0x31336a
313149 or     dl,r8b
31314c or     sil,dl
31314f jne    0x31336a
313155 mov    rcx,QWORD PTR [rsp+0x58]
31315a lea    rdx,[rbp-0x80]
31315e mov    r8d,0x35
313164 call   0x368be8
313169 movaps xmm3,xmm12
31316d lea    rcx,[rbp-0x50]
313171 xorps  xmm2,xmm2
313174 xorps  xmm1,xmm1
313177 call   0x3c7ba8
31317c lea    r8,[rsp+0x70]
313181 lea    rdx,[rbp-0x50]
313185 lea    rcx,[rbp+0x1110]
31318c call   0x320db4
313191 mov    r8,rax
313194 lea    rdx,[rbp+0xa00]
31319b lea    rcx,[rbp-0x80]
31319f call   0x2df708
3131a4 lea    rcx,[rbp+0x1c8]
3131ab call   0x2cb3a4
3131b0 lea    rcx,[rbp+0x1b0]
3131b7 call   0x2cb3a4
3131bc movsd  xmm0,QWORD PTR [rbp+0xa00]
3131c4 lea    r8,[rbp+0x1c8]
3131cb mov    eax,DWORD PTR [rbp+0xa08]
3131d1 lea    rdx,[rbp+0xa10]
3131d8 mov    r9,rdi
3131db movsd  QWORD PTR [rbp+0xa10],xmm0
3131e3 mov    rcx,r12
3131e6 mov    DWORD PTR [rbp+0xa18],eax
3131ec call   0x36cd20
3131f1 test   al,al
3131f3 je     0x31336a
3131f9 movsd  xmm0,QWORD PTR [rbp-0x80]
3131fe lea    r8,[rbp+0x1b0]
313205 mov    eax,DWORD PTR [rbp-0x78]
313208 lea    rdx,[rbp+0xa20]
31320f mov    r9,rdi
313212 movsd  QWORD PTR [rbp+0xa20],xmm0
31321a mov    rcx,r12
31321d mov    DWORD PTR [rbp+0xa28],eax
313223 call   0x36cd20
313228 test   al,al
31322a je     0x31336a
313230 lea    rcx,[rbp-0x70]
313234 call   0x2ef80c
313239 movss  xmm1,DWORD PTR [rbp+0x1c8]
313241 lea    rcx,[rbp+0x5e0]
313248 movss  xmm2,DWORD PTR [rbp+0x1cc]
313250 addss  xmm1,xmm12
313255 mov    ebx,eax
313257 call   0x2cc340
31325c movss  xmm1,DWORD PTR [rbp+0x1b0]
313264 lea    rcx,[rbp+0x5e8]
31326b movss  xmm2,DWORD PTR [rbp+0x1b4]
313273 addss  xmm1,xmm12
313278 call   0x2cc340
31327d mov    r9d,ebx
313280 movss  DWORD PTR [rsp+0x20],xmm6
313286 lea    r8,[rbp+0x5e0]
31328d mov    rcx,r13
313290 lea    rdx,[rbp+0x5e8]
313297 call   0x35c25c
31329c lea    rcx,[rbp-0x70]
3132a0 call   0x2ef80c
3132a5 movss  xmm2,DWORD PTR [rbp+0x1cc]
3132ad lea    rcx,[rbp+0x5f0]
3132b4 movss  xmm1,DWORD PTR [rbp+0x1c8]
3132bc addss  xmm2,xmm12
3132c1 mov    ebx,eax
3132c3 call   0x2cc340
3132c8 movss  xmm2,DWORD PTR [rbp+0x1b4]
3132d0 lea    rcx,[rbp+0x5f8]
3132d7 movss  xmm1,DWORD PTR [rbp+0x1b0]
3132df addss  xmm2,xmm12
3132e4 call   0x2cc340
3132e9 mov    r9d,ebx
3132ec movss  DWORD PTR [rsp+0x20],xmm6
3132f2 lea    r8,[rbp+0x5f0]
3132f9 mov    rcx,r13
3132fc lea    rdx,[rbp+0x5f8]
313303 call   0x35c25c
313308 lea    rcx,[rbp-0x70]
31330c call   0x2ef80c
313311 movss  xmm2,DWORD PTR [rbp+0x1cc]
313319 lea    rcx,[rbp+0x600]
313320 movss  xmm1,DWORD PTR [rbp+0x1c8]
313328 mov    ebx,eax
31332a call   0x2cc340
31332f movss  xmm2,DWORD PTR [rbp+0x1b4]
313337 lea    rcx,[rbp+0x608]
31333e movss  xmm1,DWORD PTR [rbp+0x1b0]
313346 call   0x2cc340
31334b mov    r9d,ebx
31334e movss  DWORD PTR [rsp+0x20],xmm6
313354 lea    r8,[rbp+0x600]
31335b mov    rcx,r13
31335e lea    rdx,[rbp+0x608]
313365 call   0x35c25c
