; pdata function 0x369df4..0x369e1b unwind=0x3d2038
369df4  40 53                          rex push rbx
369df6  48 83 ec 20                    sub    rsp,0x20
369dfa  8b da                          mov    ebx,edx
369dfc  4c 8b c1                       mov    r8,rcx
369dff  e8 04 11 f6 ff                 call   0x2caf08
369e04  84 c0                          test   al,al
369e06  74 0d                          je     0x369e15
369e08  49 8b c8                       mov    rcx,r8
369e0b  e8 d4 f8 ff ff                 call   0x3696e4
369e10  85 c3                          test   ebx,eax
369e12  0f 95 c0                       setne  al
369e15  48 83 c4 20                    add    rsp,0x20
369e19  5b                             pop    rbx
369e1a  c3                             ret
