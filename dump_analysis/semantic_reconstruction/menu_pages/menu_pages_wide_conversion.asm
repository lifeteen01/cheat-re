; pdata function 0x365004..0x365037 unwind=0x3d2038
365004  40 53                          rex push rbx
365006  48 83 ec 20                    sub    rsp,0x20
36500a  48 8b d9                       mov    rbx,rcx
36500d  e8 72 5b 06 00                 call   0x3cab84
365012  4c 8b c3                       mov    r8,rbx
365015  48 8d 0d 74 71 09 00           lea    rcx,[rip+0x97174]        # 0x3fc190
36501c  ba 00 02 00 00                 mov    edx,0x200
365021  4c 8d 0c 43                    lea    r9,[rbx+rax*2]
365025  e8 0e ec 02 00                 call   0x393c38
36502a  48 8d 05 5f 71 09 00           lea    rax,[rip+0x9715f]        # 0x3fc190
365031  48 83 c4 20                    add    rsp,0x20
365035  5b                             pop    rbx
365036  c3                             ret

