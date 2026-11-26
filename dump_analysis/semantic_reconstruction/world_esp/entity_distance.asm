; pdata function 0x3666b0..0x366722 unwind=0x3d3dbc
3666b0  40 53                          rex push rbx
3666b2  48 81 ec 90 00 00 00           sub    rsp,0x90
3666b9  48 8b da                       mov    rbx,rdx
3666bc  4c 8b c1                       mov    r8,rcx
3666bf  e8 44 48 f6 ff                 call   0x2caf08
3666c4  84 c0                          test   al,al
3666c6  75 05                          jne    0x3666cd
3666c8  0f 57 c0                       xorps  xmm0,xmm0
3666cb  eb 4c                          jmp    0x366719
3666cd  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
3666d2  49 8b c8                       mov    rcx,r8
3666d5  e8 f2 fd ff ff                 call   0x3664cc
3666da  f2 0f 10 03                    movsd  xmm0,QWORD PTR [rbx]
3666de  4c 8d 44 24 20                 lea    r8,[rsp+0x20]
3666e3  8b 43 08                       mov    eax,DWORD PTR [rbx+0x8]
3666e6  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
3666eb  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
3666f0  f2 0f 11 44 24 20              movsd  QWORD PTR [rsp+0x20],xmm0
3666f6  89 44 24 28                    mov    DWORD PTR [rsp+0x28],eax
3666fa  e8 91 f8 ff ff                 call   0x365f90
3666ff  4c 8b c3                       mov    r8,rbx
366702  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
366707  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
36670c  e8 bb 8f f7 ff                 call   0x2df6cc
366711  48 8b c8                       mov    rcx,rax
366714  e8 cf a7 f7 ff                 call   0x2e0ee8
366719  48 81 c4 90 00 00 00           add    rsp,0x90
366720  5b                             pop    rbx
366721  c3                             ret

