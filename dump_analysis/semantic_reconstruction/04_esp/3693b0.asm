; pdata function 0x3693b0..0x3693d4 unwind=0x3d2064
3693b0  48 83 ec 28                    sub    rsp,0x28
3693b4  4c 8b c1                       mov    r8,rcx
3693b7  e8 4c 1b f6 ff                 call   0x2caf08
3693bc  84 c0                          test   al,al
3693be  74 0f                          je     0x3693cf
3693c0  ba c0 02 00 00                 mov    edx,0x2c0
3693c5  49 8b c8                       mov    rcx,r8
3693c8  e8 6f 5a f7 ff                 call   0x2dee3c
3693cd  8a 00                          mov    al,BYTE PTR [rax]
3693cf  48 83 c4 28                    add    rsp,0x28
3693d3  c3                             ret
