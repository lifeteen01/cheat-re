; pdata function 0x2cb990..0x2cb9b4 unwind=0x3d2038
2cb990  40 53                          rex push rbx
2cb992  48 83 ec 20                    sub    rsp,0x20
2cb996  e8 a5 1d 00 00                 call   0x2cd740
2cb99b  48 8b d8                       mov    rbx,rax
2cb99e  48 8b 00                       mov    rax,QWORD PTR [rax]
2cb9a1  48 85 c0                       test   rax,rax
2cb9a4  75 08                          jne    0x2cb9ae
2cb9a6  e8 4d 05 00 00                 call   0x2cbef8
2cb9ab  48 89 03                       mov    QWORD PTR [rbx],rax
2cb9ae  48 83 c4 20                    add    rsp,0x20
2cb9b2  5b                             pop    rbx
2cb9b3  c3                             ret

; pdata function 0x2cb9b4..0x2cb9d8 unwind=0x3d2038
2cb9b4  40 53                          rex push rbx
2cb9b6  48 83 ec 20                    sub    rsp,0x20
2cb9ba  e8 89 1d 00 00                 call   0x2cd748
2cb9bf  48 8b d8                       mov    rbx,rax
2cb9c2  48 8b 00                       mov    rax,QWORD PTR [rax]
2cb9c5  48 85 c0                       test   rax,rax
2cb9c8  75 08                          jne    0x2cb9d2
2cb9ca  e8 d5 05 00 00                 call   0x2cbfa4
2cb9cf  48 89 03                       mov    QWORD PTR [rbx],rax
2cb9d2  48 83 c4 20                    add    rsp,0x20
2cb9d6  5b                             pop    rbx
2cb9d7  c3                             ret

; pdata function 0x2cb9d8..0x2cb9fc unwind=0x3d2038
2cb9d8  40 53                          rex push rbx
2cb9da  48 83 ec 20                    sub    rsp,0x20
2cb9de  e8 6d 1d 00 00                 call   0x2cd750
2cb9e3  48 8b d8                       mov    rbx,rax
2cb9e6  48 8b 00                       mov    rax,QWORD PTR [rax]
2cb9e9  48 85 c0                       test   rax,rax
2cb9ec  75 08                          jne    0x2cb9f6
2cb9ee  e8 5d 06 00 00                 call   0x2cc050
2cb9f3  48 89 03                       mov    QWORD PTR [rbx],rax
2cb9f6  48 83 c4 20                    add    rsp,0x20
2cb9fa  5b                             pop    rbx
2cb9fb  c3                             ret

; pdata function 0x2de850..0x2de874 unwind=0x3d2038
2de850  40 53                          rex push rbx
2de852  48 83 ec 20                    sub    rsp,0x20
2de856  e8 11 48 00 00                 call   0x2e306c
2de85b  48 8b d8                       mov    rbx,rax
2de85e  48 8b 00                       mov    rax,QWORD PTR [rax]
2de861  48 85 c0                       test   rax,rax
2de864  75 08                          jne    0x2de86e
2de866  e8 4d 04 00 00                 call   0x2decb8
2de86b  48 89 03                       mov    QWORD PTR [rbx],rax
2de86e  48 83 c4 20                    add    rsp,0x20
2de872  5b                             pop    rbx
2de873  c3                             ret

