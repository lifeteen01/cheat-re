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
