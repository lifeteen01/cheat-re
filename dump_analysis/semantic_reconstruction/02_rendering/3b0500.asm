; pdata function 0x3b0500..0x3b057d unwind=0x3d2038
3b0500  40 53                          rex push rbx
3b0502  48 83 ec 20                    sub    rsp,0x20
3b0506  8b 05 94 dc 05 00              mov    eax,DWORD PTR [rip+0x5dc94]        # 0x40e1a0
3b050c  48 8b d9                       mov    rbx,rcx
3b050f  a8 01                          test   al,0x1
3b0511  75 25                          jne    0x3b0538
3b0513  83 c8 01                       or     eax,0x1
3b0516  b9 7d 14 ac 59                 mov    ecx,0x59ac147d
3b051b  89 05 7f dc 05 00              mov    DWORD PTR [rip+0x5dc7f],eax        # 0x40e1a0
3b0521  e8 ea 37 f8 ff                 call   0x333d10
3b0526  4c 8b 00                       mov    r8,QWORD PTR [rax]
3b0529  8b 05 71 dc 05 00              mov    eax,DWORD PTR [rip+0x5dc71]        # 0x40e1a0
3b052f  4c 89 05 62 dc 05 00           mov    QWORD PTR [rip+0x5dc62],r8        # 0x40e198
3b0536  eb 07                          jmp    0x3b053f
3b0538  4c 8b 05 59 dc 05 00           mov    r8,QWORD PTR [rip+0x5dc59]        # 0x40e198
3b053f  a8 02                          test   al,0x2
3b0541  75 1f                          jne    0x3b0562
3b0543  48 8b 0d 16 59 02 00           mov    rcx,QWORD PTR [rip+0x25916]        # 0x3d5e60
3b054a  48 8d 15 5f dc 05 00           lea    rdx,[rip+0x5dc5f]        # 0x40e1b0
3b0551  83 c8 02                       or     eax,0x2
3b0554  45 33 c9                       xor    r9d,r9d
3b0557  89 05 43 dc 05 00              mov    DWORD PTR [rip+0x5dc43],eax        # 0x40e1a0
3b055d  e8 c2 b7 f1 ff                 call   0x2cbd24
3b0562  48 8b 0d f7 58 02 00           mov    rcx,QWORD PTR [rip+0x258f7]        # 0x3d5e60
3b0569  48 8d 15 40 dc 05 00           lea    rdx,[rip+0x5dc40]        # 0x40e1b0
3b0570  4c 8b c3                       mov    r8,rbx
3b0573  48 83 c4 20                    add    rsp,0x20
3b0577  5b                             pop    rbx
3b0578  e9 7f b4 f1 ff                 jmp    0x2cb9fc
