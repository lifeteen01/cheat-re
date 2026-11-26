37db8c mov    QWORD PTR [rsp+0x20],rbx
37db91 push   rbp
37db92 push   rsi
37db93 push   rdi
37db94 push   r14
37db96 push   r15
37db98 mov    rbp,rsp
37db9b sub    rsp,0x50
37db9f movaps XMMWORD PTR [rsp+0x40],xmm6
37dba4 movaps XMMWORD PTR [rsp+0x30],xmm7
37dba9 call   0x392ecc
37dbae lea    rcx,[rbp+0x38]
37dbb2 mov    rsi,rax
37dbb5 call   0x392ef8
37dbba mov    rdx,rax
37dbbd lea    r8,[rip+0xffffffffffecb354]        # 0x248f18
37dbc4 lea    rcx,[rbp+0x30]
37dbc8 call   0x2ef9d8
37dbcd movss  xmm7,DWORD PTR [rip+0xfffffffffff0f67f]        # 0x28d254 ; f32=1
37dbd5 mov    r15d,0x1
37dbdb movaps xmm1,xmm7
37dbde mov    ecx,r15d
37dbe1 call   0x392298
37dbe6 lea    r14,[rip+0xfffffffffff01dcb]        # 0x27f9b8
37dbed mov    edi,eax
37dbef mov    r8,r14
37dbf2 lea    rdx,[rbp+0x30]
37dbf6 lea    rcx,[rbp+0x38]
37dbfa call   0x2ef9d8
37dbff lea    r8,[rip+0xfffffffffff01daa]        # 0x27f9b0
37dc06 mov    rbx,rax
37dc09 lea    rdx,[rbp+0x30]
37dc0d lea    rcx,[rbp+0x40]
37dc11 call   0x2ef9d8
37dc16 movss  xmm6,DWORD PTR [rip+0xfffffffffff154da]        # 0x2930f8 ; f32=1.25
37dc1e mov    rdx,rax
37dc21 mov    r9d,edi
37dc24 movss  DWORD PTR [rsp+0x20],xmm6
37dc2a mov    r8,rbx
37dc2d mov    rcx,rsi
37dc30 call   0x3a01f4
37dc35 movaps xmm1,xmm7
37dc38 mov    ecx,r15d
37dc3b call   0x392298
37dc40 lea    r8,[rip+0xfffffffffff01d79]        # 0x27f9c0
37dc47 mov    edi,eax
37dc49 lea    rdx,[rbp+0x30]
37dc4d lea    rcx,[rbp+0x38]
37dc51 call   0x2ef9d8
37dc56 mov    r8,r14
37dc59 lea    rdx,[rbp+0x30]
37dc5d lea    rcx,[rbp+0x40]
37dc61 mov    rbx,rax
37dc64 call   0x2ef9d8
37dc69 mov    rdx,rax
37dc6c movss  DWORD PTR [rsp+0x20],xmm6
37dc72 mov    r9d,edi
37dc75 mov    r8,rbx
37dc78 mov    rcx,rsi
37dc7b call   0x3a01f4
37dc80 movaps xmm1,xmm7
37dc83 mov    ecx,r15d
37dc86 call   0x392298
37dc8b lea    r8,[rip+0xfffffffffff01d36]        # 0x27f9c8
37dc92 mov    edi,eax
37dc94 lea    rdx,[rbp+0x30]
37dc98 lea    rcx,[rbp+0x38]
37dc9c call   0x2ef9d8
37dca1 lea    r8,[rip+0xfffffffffff01d18]        # 0x27f9c0
37dca8 mov    rbx,rax
37dcab lea    rdx,[rbp+0x30]
37dcaf lea    rcx,[rbp+0x40]
37dcb3 call   0x2ef9d8
37dcb8 mov    rdx,rax
37dcbb movss  DWORD PTR [rsp+0x20],xmm6
37dcc1 mov    r9d,edi
37dcc4 mov    r8,rbx
37dcc7 mov    rcx,rsi
37dcca call   0x3a01f4
37dccf movaps xmm1,xmm7
37dcd2 mov    ecx,r15d
37dcd5 call   0x392298
37dcda lea    r8,[rip+0xfffffffffff01cef]        # 0x27f9d0
37dce1 mov    edi,eax
37dce3 lea    rdx,[rbp+0x30]
37dce7 lea    rcx,[rbp+0x38]
37dceb call   0x2ef9d8
37dcf0 mov    rbx,rax
37dcf3 mov    r8,r14
37dcf6 lea    rdx,[rbp+0x30]
37dcfa lea    rcx,[rbp+0x40]
37dcfe call   0x2ef9d8
37dd03 mov    rdx,rax
37dd06 movss  DWORD PTR [rsp+0x20],xmm6
37dd0c mov    r9d,edi
37dd0f mov    r8,rbx
37dd12 mov    rcx,rsi
37dd15 call   0x3a01f4
37dd1a movaps xmm1,xmm7
37dd1d mov    ecx,r15d
37dd20 call   0x392298
37dd25 lea    r8,[rip+0xfffffffffff01cac]        # 0x27f9d8
37dd2c mov    edi,eax
37dd2e lea    rdx,[rbp+0x30]
37dd32 lea    rcx,[rbp+0x38]
37dd36 call   0x2ef9d8
37dd3b lea    r8,[rip+0xfffffffffff01c8e]        # 0x27f9d0
37dd42 mov    rbx,rax
37dd45 lea    rdx,[rbp+0x30]
37dd49 lea    rcx,[rbp+0x40]
37dd4d call   0x2ef9d8
37dd52 mov    rdx,rax
37dd55 movss  DWORD PTR [rsp+0x20],xmm6
37dd5b mov    r9d,edi
37dd5e mov    r8,rbx
37dd61 mov    rcx,rsi
37dd64 call   0x3a01f4
37dd69 movaps xmm1,xmm7
37dd6c mov    ecx,r15d
37dd6f call   0x392298
37dd74 lea    r8,[rip+0xfffffffffff01c65]        # 0x27f9e0
37dd7b mov    edi,eax
37dd7d lea    rdx,[rbp+0x30]
37dd81 lea    rcx,[rbp+0x38]
37dd85 call   0x2ef9d8
37dd8a mov    r8,r14
37dd8d lea    rdx,[rbp+0x30]
37dd91 lea    rcx,[rbp+0x40]
37dd95 mov    rbx,rax
37dd98 call   0x2ef9d8
37dd9d mov    rdx,rax
37dda0 movss  DWORD PTR [rsp+0x20],xmm6
37dda6 mov    r9d,edi
37dda9 mov    r8,rbx
37ddac mov    rcx,rsi
37ddaf call   0x3a01f4
37ddb4 movaps xmm1,xmm7
37ddb7 mov    ecx,r15d
37ddba call   0x392298
37ddbf lea    r14,[rip+0xfffffffffff01c22]        # 0x27f9e8
37ddc6 mov    edi,eax
37ddc8 mov    r8,r14
37ddcb lea    rdx,[rbp+0x30]
37ddcf lea    rcx,[rbp+0x38]
37ddd3 call   0x2ef9d8
37ddd8 lea    r8,[rip+0xfffffffffff01c01]        # 0x27f9e0
37dddf mov    rbx,rax
37dde2 lea    rdx,[rbp+0x30]
37dde6 lea    rcx,[rbp+0x40]
37ddea call   0x2ef9d8
37ddef mov    rdx,rax
37ddf2 movss  DWORD PTR [rsp+0x20],xmm6
37ddf8 mov    r9d,edi
37ddfb mov    r8,rbx
37ddfe mov    rcx,rsi
37de01 call   0x3a01f4
37de06 movaps xmm1,xmm7
37de09 mov    ecx,r15d
37de0c call   0x392298
37de11 lea    r8,[rip+0xfffffffffff01bd8]        # 0x27f9f0
37de18 mov    edi,eax
37de1a lea    rdx,[rbp+0x30]
37de1e lea    rcx,[rbp+0x38]
37de22 call   0x2ef9d8
37de27 mov    r8,r14
37de2a lea    rdx,[rbp+0x30]
37de2e lea    rcx,[rbp+0x40]
37de32 mov    rbx,rax
37de35 call   0x2ef9d8
37de3a mov    rdx,rax
37de3d mov    r9d,edi
37de40 movss  DWORD PTR [rsp+0x20],xmm6
37de46 mov    r8,rbx
37de49 mov    rcx,rsi
37de4c call   0x3a01f4
37de51 movaps xmm1,xmm7
37de54 mov    ecx,r15d
37de57 call   0x392298
37de5c lea    r8,[rip+0xfffffffffff01b95]        # 0x27f9f8
37de63 mov    edi,eax
37de65 lea    rdx,[rbp+0x30]
37de69 lea    rcx,[rbp+0x38]
37de6d call   0x2ef9d8
37de72 lea    r8,[rip+0xfffffffffff01b77]        # 0x27f9f0
37de79 mov    rbx,rax
37de7c lea    rdx,[rbp+0x30]
37de80 lea    rcx,[rbp+0x40]
37de84 call   0x2ef9d8
37de89 mov    rdx,rax
37de8c movss  DWORD PTR [rsp+0x20],xmm6
37de92 mov    r9d,edi
37de95 mov    r8,rbx
37de98 mov    rcx,rsi
37de9b call   0x3a01f4
37dea0 movaps xmm1,xmm7
37dea3 mov    ecx,r15d
37dea6 call   0x392298
37deab lea    r8,[rip+0xfffffffffff01b4e]        # 0x27fa00
37deb2 mov    edi,eax
37deb4 lea    rdx,[rbp+0x30]
37deb8 lea    rcx,[rbp+0x38]
37debc call   0x2ef9d8
37dec1 mov    r8,r14
37dec4 lea    rdx,[rbp+0x30]
37dec8 lea    rcx,[rbp+0x40]
37decc mov    rbx,rax
37decf call   0x2ef9d8
37ded4 mov    rdx,rax
37ded7 movss  DWORD PTR [rsp+0x20],xmm6
37dedd mov    r9d,edi
37dee0 mov    r8,rbx
37dee3 mov    rcx,rsi
37dee6 call   0x3a01f4
37deeb movaps xmm1,xmm7
37deee mov    ecx,r15d
37def1 call   0x392298
37def6 lea    r8,[rip+0xfffffffffff01b0b]        # 0x27fa08
37defd mov    edi,eax
37deff lea    rdx,[rbp+0x30]
37df03 lea    rcx,[rbp+0x38]
37df07 call   0x2ef9d8
37df0c lea    r8,[rip+0xfffffffffff01aed]        # 0x27fa00
37df13 mov    rbx,rax
37df16 lea    rdx,[rbp+0x30]
37df1a lea    rcx,[rbp+0x40]
37df1e call   0x2ef9d8
37df23 mov    rdx,rax
37df26 movss  DWORD PTR [rsp+0x20],xmm6
37df2c mov    r9d,edi
37df2f mov    r8,rbx
37df32 mov    rcx,rsi
37df35 call   0x3a01f4
37df3a mov    rbx,QWORD PTR [rsp+0x98]
37df42 movaps xmm6,XMMWORD PTR [rsp+0x40]
37df47 movaps xmm7,XMMWORD PTR [rsp+0x30]
37df4c add    rsp,0x50
37df50 pop    r15
37df52 pop    r14
37df54 pop    rdi
37df55 pop    rsi
37df56 pop    rbp
37df57 ret
