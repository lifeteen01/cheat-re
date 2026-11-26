; pdata function 0x2f8540..0x2f8572 unwind=0x0
2f8540  48 89 4c 24 08                 mov    QWORD PTR [rsp+0x8],rcx
2f8545  ba 02 00 00 00                 mov    edx,0x2
2f854a  48 8d 4c 24 08                 lea    rcx,[rsp+0x8]
2f854f  8b 01                          mov    eax,DWORD PTR [rcx]
2f8551  c1 c8 18                       ror    eax,0x18
2f8554  35 ff 9b 4d 5d                 xor    eax,0x5d4d9bff
2f8559  2d 2f 48 7d 74                 sub    eax,0x747d482f
2f855e  c1 c8 06                       ror    eax,0x6
2f8561  89 01                          mov    DWORD PTR [rcx],eax
2f8563  48 8d 49 04                    lea    rcx,[rcx+0x4]
2f8567  83 c2 ff                       add    edx,0xffffffff
2f856a  75 e3                          jne    0x2f854f
2f856c  48 8b 44 24 08                 mov    rax,QWORD PTR [rsp+0x8]
2f8571  c3                             ret
