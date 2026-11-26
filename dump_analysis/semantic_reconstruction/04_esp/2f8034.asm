; pdata function 0x2f8034..0x2f80bc unwind=0x3d2064
2f8034  48 83 ec 28                    sub    rsp,0x28
2f8038  48 8b 05 c1 ee 0d 00           mov    rax,QWORD PTR [rip+0xdeec1]        # 0x3d6f00
2f803f  48 8b 90 90 e4 0e 0f           mov    rdx,QWORD PTR [rax+0xf0ee490]
2f8046  48 8b ca                       mov    rcx,rdx
2f8049  e8 ba 2e fd ff                 call   0x2caf08
2f804e  84 c0                          test   al,al
2f8050  74 63                          je     0x2f80b5
2f8052  4c 8b 82 b8 00 00 00           mov    r8,QWORD PTR [rdx+0xb8]
2f8059  49 8b c8                       mov    rcx,r8
2f805c  e8 a7 2e fd ff                 call   0x2caf08
2f8061  84 c0                          test   al,al
2f8063  74 50                          je     0x2f80b5
2f8065  49 8b 48 18                    mov    rcx,QWORD PTR [r8+0x18]
2f8069  e8 9a 2e fd ff                 call   0x2caf08
2f806e  84 c0                          test   al,al
2f8070  74 43                          je     0x2f80b5
2f8072  49 8b 48 18                    mov    rcx,QWORD PTR [r8+0x18]
2f8076  e8 d5 18 00 00                 call   0x2f9950
2f807b  48 8b c8                       mov    rcx,rax
2f807e  48 8b d0                       mov    rdx,rax
2f8081  e8 82 2e fd ff                 call   0x2caf08
2f8086  84 c0                          test   al,al
2f8088  74 2b                          je     0x2f80b5
2f808a  48 8b 4a 18                    mov    rcx,QWORD PTR [rdx+0x18]
2f808e  e8 75 2e fd ff                 call   0x2caf08
2f8093  84 c0                          test   al,al
2f8095  74 1e                          je     0x2f80b5
2f8097  48 8b 4a 18                    mov    rcx,QWORD PTR [rdx+0x18]
2f809b  e8 cc 18 00 00                 call   0x2f996c
2f80a0  48 8b c8                       mov    rcx,rax
2f80a3  48 8b d0                       mov    rdx,rax
2f80a6  e8 5d 2e fd ff                 call   0x2caf08
2f80ab  84 c0                          test   al,al
2f80ad  74 06                          je     0x2f80b5
2f80af  48 8b 42 20                    mov    rax,QWORD PTR [rdx+0x20]
2f80b3  eb 02                          jmp    0x2f80b7
2f80b5  33 c0                          xor    eax,eax
2f80b7  48 83 c4 28                    add    rsp,0x28
2f80bb  c3                             ret
