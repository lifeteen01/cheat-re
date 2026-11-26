30cd6f movss  xmm1,DWORD PTR [rip+0xe2f91]        # 0x3efd08 ; CONFIG V2.WarningBarPosition value(+0x48)
30cd77 mov    rbx,rax
30cd7a call   0x2cc340
30cd7f mov    rcx,rax
30cd82 mov    r8,rbx
30cd85 mov    edx,0x2
30cd8a call   0x39b734
30cd8f cmp    BYTE PTR [rip+0xd8f29],r15b        # 0x3e5cbf
30cd96 je     0x30cddd
30cd98 xorps  xmm2,xmm2
30cd9b lea    rcx,[rbp+0x15a8]
30cda2 xorps  xmm1,xmm1
30cda5 call   0x2cc340
30cdaa movss  xmm2,DWORD PTR [rip+0xe2f5a]        # 0x3efd0c
30cdb2 lea    rcx,[rbp+0x15b0]
30cdb9 movss  xmm1,DWORD PTR [rip+0xe2f47]        # 0x3efd08 ; CONFIG V2.WarningBarPosition value(+0x48)
30cdc1 mov    rbx,rax
30cdc4 call   0x2cc340
30cdc9 mov    rcx,rax
30cdcc mov    r8,rbx
30cdcf mov    edx,esi
30cdd1 call   0x39b734
30cdd6 mov    BYTE PTR [rip+0xd8ee2],r15b        # 0x3e5cbf
30cddd movss  xmm0,DWORD PTR [rip+0xfffffffffff808ff]        # 0x28d6e4 ; f32=255
30cde5 lea    rcx,[rsp+0x70]
30cdea xorps  xmm3,xmm3
30cded movss  DWORD PTR [rsp+0x20],xmm0
30cdf3 xorps  xmm2,xmm2
30cdf6 xorps  xmm1,xmm1
30cdf9 call   0x2cc350
30cdfe movdqu xmm6,XMMWORD PTR [rax]
30ce02 call   0x392ca4
30ce07 xorps  xmm3,xmm3
30ce0a movss  DWORD PTR [rsp+0x20],xmm11
30ce11 xorps  xmm2,xmm2
30ce14 lea    rcx,[rsp+0x70]
30ce19 xorps  xmm1,xmm1
30ce1c movdqu XMMWORD PTR [rax+0x1a8],xmm6
30ce24 call   0x2cc350
30ce29 call   0x392ca4
30ce2e movups xmm0,XMMWORD PTR [rsp+0x70]
30ce33 lea    rcx,[rbp+0x15a8]
30ce3a movss  xmm2,DWORD PTR [rip+0xfffffffffff863c6]        # 0x293208 ; f32=84.615
30ce42 movaps xmm1,xmm14
30ce46 movdqu XMMWORD PTR [rax+0x118],xmm0
30ce4e call   0x2cc340
30ce53 mov    rcx,rax
30ce56 xor    edx,edx
30ce58 call   0x39b770
30ce5d mov    cl,BYTE PTR [rip+0xfffffffffff0b9b5]        # 0x218818
30ce63 mov    al,BYTE PTR [rip+0xdc6df]        # 0x3e9548 ; CONFIG Bools.lookingat value(+0x48)
30ce69 test   cl,cl
30ce6b je     0x30ce76
30ce6d mov    edi,0xaa
30ce72 test   al,al
30ce74 jne    0x30ce7b
30ce76 mov    edi,0xae
30ce7b test   cl,cl
30ce7d je     0x30ce86
30ce7f mov    ebx,r15d
30ce82 test   al,al
30ce84 jne    0x30ce88
30ce86 mov    ebx,esi
30ce88 lea    rdx,[rbp+0x388]
30ce8f lea    rcx,[rbp+0x15a8]
30ce96 call   0x2f4c20 ; STRING getter=0x2f4c20 Warning Bar Window
30ce9b mov    rcx,rax
30ce9e call   0x2cdd94
30cea3 or     ebx,edi
30cea5 mov    rcx,rax
30cea8 mov    r8d,ebx
30ceab xor    edx,edx
30cead call   0x38cfa4
30ceb2 lea    rcx,[rbp+0x108]
30ceb9 call   0x39246c
30cebe cmp    BYTE PTR [rip+0xfffffffffff0b953],r15b        # 0x218818
30cec5 movss  xmm14,DWORD PTR [rip+0xfffffffffff80c56]        # 0x28db24 ; f32=30
30cece je     0x30ced5
30ced0 xorps  xmm0,xmm0
30ced3 jmp    0x30ced9
30ced5 movaps xmm0,xmm14
30ced9 movss  xmm2,DWORD PTR [rbp+0x10c]
30cee1 lea    rcx,[rbp+0x15a8]
30cee8 movss  xmm1,DWORD PTR [rbp+0x108]
30cef0 addss  xmm2,xmm0
30cef4 movss  DWORD PTR [rbp+0x10c],xmm2
30cefc subss  xmm2,xmm14
30cf01 call   0x2cc340
30cf06 movss  xmm0,DWORD PTR [rbp+0x15a8]
30cf0e movss  xmm1,DWORD PTR [rbp+0x15ac]
30cf16 movss  DWORD PTR [rip+0xe2dea],xmm0        # 0x3efd08 ; CONFIG V2.WarningBarPosition value(+0x48)
30cf1e movss  DWORD PTR [rip+0xe2de6],xmm1        # 0x3efd0c
30cf26 call   0x390994
30cf2b movss  xmm0,DWORD PTR [rbp+0x108]
30cf33 mov    cl,sil
30cf36 movss  xmm1,DWORD PTR [rbp+0x10c]
30cf3e addss  xmm0,DWORD PTR [rip+0xfffffffffff862ce]        # 0x293214 ; f32=116
30cf46 addss  xmm1,DWORD PTR [rip+0xfffffffffff8625e]        # 0x2931ac ; f32=12.821
30cf4e movss  DWORD PTR [rbp+0x108],xmm0
30cf56 movss  DWORD PTR [rbp+0x10c],xmm1
