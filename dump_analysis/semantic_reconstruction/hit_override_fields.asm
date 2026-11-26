; pdata function 0x3715d8..0x371601 unwind=0x3d2064
3715d8  48 83 ec 28                    sub    rsp,0x28
3715dc  4c 8b c1                       mov    r8,rcx
3715df  e8 24 99 f5 ff                 call   0x2caf08
3715e4  84 c0                          test   al,al
3715e6  75 04                          jne    0x3715ec
3715e8  33 c0                          xor    eax,eax
3715ea  eb 10                          jmp    0x3715fc
3715ec  ba 10 00 00 00                 mov    edx,0x10
3715f1  49 8b c8                       mov    rcx,r8
3715f4  e8 43 d8 f6 ff                 call   0x2dee3c
3715f9  48 8b 00                       mov    rax,QWORD PTR [rax]
3715fc  48 83 c4 28                    add    rsp,0x28
371600  c3                             ret

; pdata function 0x374348..0x374370 unwind=0x3d2064
374348  48 83 ec 28                    sub    rsp,0x28
37434c  4c 8b c1                       mov    r8,rcx
37434f  e8 b4 6b f5 ff                 call   0x2caf08
374354  84 c0                          test   al,al
374356  75 04                          jne    0x37435c
374358  33 c0                          xor    eax,eax
37435a  eb 0f                          jmp    0x37436b
37435c  ba 40 00 00 00                 mov    edx,0x40
374361  49 8b c8                       mov    rcx,r8
374364  e8 d3 aa f6 ff                 call   0x2dee3c
374369  8b 00                          mov    eax,DWORD PTR [rax]
37436b  48 83 c4 28                    add    rsp,0x28
37436f  c3                             ret

