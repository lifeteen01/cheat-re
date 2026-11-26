; forward independent pdata/next-pdata extent 2e91fc..2e92ae unwind3d2040
2e91fc mov    QWORD PTR [rsp+0x8],rbx
2e9201 push   rdi
2e9202 sub    rsp,0x20
2e9206 mov    rdi,rcx
2e9209 call   0x2e5d4c
2e920e cmp    DWORD PTR [rip+0xfc9b4],eax        # 0x3e5bc8
2e9214 mov    ebx,eax
2e9216 je     0x2e921d
2e9218 call   0x2e6b20
2e921d cmp    BYTE PTR [rip+0xfb02c],0x0        # 0x3e4250
2e9224 mov    DWORD PTR [rip+0xfc99e],ebx        # 0x3e5bc8
2e922a je     0x2e9236
2e922c movss  xmm0,DWORD PTR [rip+0xfffffffffffa4020]        # 0x28d254
2e9233 
2e9234 jmp    0x2e92a3
2e9236 mov    ebx,DWORD PTR [rip+0xfc99c]        # 0x3e5bd8
2e923c test   bl,0x1
2e923f jne    0x2e925f
2e9241 or     ebx,0x1
2e9244 lea    rcx,[rip+0xfbb9d]        # 0x3e4de8
2e924b mov    DWORD PTR [rip+0xfc987],ebx        # 0x3e5bd8
2e9251 call   0x2ce5d8
2e9256 mov    QWORD PTR [rip+0xfc973],rax        # 0x3e5bd0
2e925d jmp    0x2e9266
2e925f mov    rax,QWORD PTR [rip+0xfc96a]        # 0x3e5bd0
2e9266 test   bl,0x2
2e9269 jne    0x2e928d
2e926b mov    rcx,QWORD PTR [rip+0xecbee]        # 0x3d5e60
2e9272 lea    rdx,[rip+0xfc967]        # 0x3e5be0
2e9279 or     ebx,0x2
2e927c xor    r9d,r9d
2e927f mov    r8,rax
2e9282 mov    DWORD PTR [rip+0xfc950],ebx        # 0x3e5bd8
2e9288 call   0x2cbd24
2e928d mov    rcx,QWORD PTR [rip+0xecbcc]        # 0x3d5e60
2e9294 lea    rdx,[rip+0xfc945]        # 0x3e5be0
2e929b mov    r8,rdi
2e929e call   0x2dea4c
2e92a3 mov    rbx,QWORD PTR [rsp+0x30]
2e92a8 add    rsp,0x20
2e92ac pop    rdi
2e92ad ret
