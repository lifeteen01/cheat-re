; pdata function 0x3663d4..0x3664ca unwind=0x3d2d5c
3663d4  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
3663d9  55                             push   rbp
3663da  48 8b ec                       mov    rbp,rsp
3663dd  48 83 ec 40                    sub    rsp,0x40
3663e1  48 8b da                       mov    rbx,rdx
3663e4  48 8b d1                       mov    rdx,rcx
3663e7  e8 1c 4b f6 ff                 call   0x2caf08
3663ec  84 c0                          test   al,al
3663ee  75 25                          jne    0x366415
3663f0  48 8d 55 20                    lea    rdx,[rbp+0x20]
3663f4  48 8d 4d 20                    lea    rcx,[rbp+0x20]
3663f8  e8 33 63 f6 ff                 call   0x2cc730
3663fd  48 8b c8                       mov    rcx,rax
366400  e8 9f 78 f6 ff                 call   0x2cdca4
366405  48 8b d0                       mov    rdx,rax
366408  48 8b cb                       mov    rcx,rbx
36640b  e8 bc 5e f6 ff                 call   0x2cc2cc
366410  e9 a7 00 00 00                 jmp    0x3664bc
366415  48 8b 92 e8 02 00 00           mov    rdx,QWORD PTR [rdx+0x2e8]
36641c  48 8b ca                       mov    rcx,rdx
36641f  e8 e4 4a f6 ff                 call   0x2caf08
366424  84 c0                          test   al,al
366426  75 0f                          jne    0x366437
366428  48 8d 55 20                    lea    rdx,[rbp+0x20]
36642c  48 8d 4d 20                    lea    rcx,[rbp+0x20]
366430  e8 fb 62 f6 ff                 call   0x2cc730
366435  eb c6                          jmp    0x3663fd
366437  48 8d 4a 14                    lea    rcx,[rdx+0x14]
36643b  e8 c8 4a f6 ff                 call   0x2caf08
366440  84 c0                          test   al,al
366442  75 0f                          jne    0x366453
366444  48 8d 55 20                    lea    rdx,[rbp+0x20]
366448  48 8d 4d 20                    lea    rcx,[rbp+0x20]
36644c  e8 df 62 f6 ff                 call   0x2cc730
366451  eb aa                          jmp    0x3663fd
366453  48 8d 4a 14                    lea    rcx,[rdx+0x14]
366457  e8 a8 eb ff ff                 call   0x365004
36645c  48 8b d0                       mov    rdx,rax
36645f  48 8d 4d e0                    lea    rcx,[rbp-0x20]
366463  e8 64 5e f6 ff                 call   0x2cc2cc
366468  48 8d 4d e0                    lea    rcx,[rbp-0x20]
36646c  e8 23 22 f7 ff                 call   0x2d8694
366471  84 c0                          test   al,al
366473  74 22                          je     0x366497
366475  48 8d 55 20                    lea    rdx,[rbp+0x20]
366479  48 8d 4d 20                    lea    rcx,[rbp+0x20]
36647d  e8 ae 62 f6 ff                 call   0x2cc730
366482  48 8b c8                       mov    rcx,rax
366485  e8 1a 78 f6 ff                 call   0x2cdca4
36648a  48 8b d0                       mov    rdx,rax
36648d  48 8b cb                       mov    rcx,rbx
366490  e8 37 5e f6 ff                 call   0x2cc2cc
366495  eb 1c                          jmp    0x3664b3
366497  80 3d 2a 60 09 00 00           cmp    BYTE PTR [rip+0x9602a],0x0        # 0x3fc4c8 ; CONFIG Bools.StreamerMode value(+0x48)
36649e  48 8d 55 e0                    lea    rdx,[rbp-0x20]
3664a2  48 8b cb                       mov    rcx,rbx
3664a5  74 07                          je     0x3664ae
3664a7  e8 00 fd ff ff                 call   0x3661ac
3664ac  eb 05                          jmp    0x3664b3
3664ae  e8 d1 5d f6 ff                 call   0x2cc284
3664b3  48 8d 4d e0                    lea    rcx,[rbp-0x20]
3664b7  e8 38 60 f6 ff                 call   0x2cc4f4
3664bc  48 8b c3                       mov    rax,rbx
3664bf  48 8b 5c 24 50                 mov    rbx,QWORD PTR [rsp+0x50]
3664c4  48 83 c4 40                    add    rsp,0x40
3664c8  5d                             pop    rbp
3664c9  c3                             ret

