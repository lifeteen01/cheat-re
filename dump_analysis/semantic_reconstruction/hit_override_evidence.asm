; pdata function 0x32b3a8..0x32b62c unwind=0x3d2120
32b3a8  40 53                          rex push rbx
32b3aa  55                             push   rbp
32b3ab  56                             push   rsi
32b3ac  57                             push   rdi
32b3ad  48 83 ec 38                    sub    rsp,0x38
32b3b1  e8 22 62 04 00                 call   0x3715d8
32b3b6  48 8b c8                       mov    rcx,rax
32b3b9  48 8b d0                       mov    rdx,rax
32b3bc  e8 47 fb f9 ff                 call   0x2caf08
32b3c1  84 c0                          test   al,al
32b3c3  0f 84 5a 02 00 00              je     0x32b623
32b3c9  48 8b ca                       mov    rcx,rdx
32b3cc  e8 07 62 04 00                 call   0x3715d8
32b3d1  48 8b c8                       mov    rcx,rax
32b3d4  48 8b f8                       mov    rdi,rax
32b3d7  e8 2c fb f9 ff                 call   0x2caf08
32b3dc  84 c0                          test   al,al
32b3de  0f 84 3f 02 00 00              je     0x32b623
32b3e4  48 8b cf                       mov    rcx,rdi
32b3e7  e8 5c 8f 04 00                 call   0x374348
32b3ec  80 3d 55 c5 0c 00 00           cmp    BYTE PTR [rip+0xcc555],0x0        # 0x3f7948 ; CONFIG Bools.helihitover value(+0x48)
32b3f3  8b e8                          mov    ebp,eax
32b3f5  74 54                          je     0x32b44b
32b3f7  48 8b 1d ba be 0a 00           mov    rbx,QWORD PTR [rip+0xabeba]        # 0x3d72b8
32b3fe  48 8b cb                       mov    rcx,rbx
32b401  e8 02 fb f9 ff                 call   0x2caf08
32b406  84 c0                          test   al,al
32b408  74 41                          je     0x32b44b
32b40a  48 8b cb                       mov    rcx,rbx
32b40d  e8 8a 5a fb ff                 call   0x2e0e9c
32b412  84 c0                          test   al,al
32b414  74 35                          je     0x32b44b
32b416  81 fd 86 09 4b 61              cmp    ebp,0x614b0986
32b41c  75 2d                          jne    0x32b44b
32b41e  ba cc 02 00 00                 mov    edx,0x2cc
32b423  48 8b cb                       mov    rcx,rbx
32b426  e8 11 3a fb ff                 call   0x2dee3c
32b42b  ba b7 17 5c 0d                 mov    edx,0xd5c17b7
32b430  b9 82 7c e7 a0                 mov    ecx,0xa0e77c82
32b435  f3 0f 10 00                    movss  xmm0,DWORD PTR [rax]
32b439  0f 2f 05 10 7e f6 ff           comiss xmm0,DWORD PTR [rip+0xfffffffffff67e10]        # 0x293250 ; f32=5000
32b440  0f 47 d1                       cmova  edx,ecx
32b443  48 8b cf                       mov    rcx,rdi
32b446  e8 e1 8e 04 00                 call   0x37432c
32b44b  80 3d 86 c9 0a 00 00           cmp    BYTE PTR [rip+0xac986],0x0        # 0x3d7dd8 ; CONFIG Bools.HitChams value(+0x48)
32b452  74 6f                          je     0x32b4c3
32b454  8b 4f 38                       mov    ecx,DWORD PTR [rdi+0x38]
32b457  e8 ac fe ff ff                 call   0x32b308
32b45c  48 8b c8                       mov    rcx,rax
32b45f  48 8b f0                       mov    rsi,rax
32b462  e8 a1 fa f9 ff                 call   0x2caf08
32b467  84 c0                          test   al,al
32b469  74 58                          je     0x32b4c3
32b46b  48 8b ce                       mov    rcx,rsi
32b46e  e8 e1 a5 fb ff                 call   0x2e5a54
32b473  48 8b c8                       mov    rcx,rax
32b476  48 8b d0                       mov    rdx,rax
32b479  e8 8a fa f9 ff                 call   0x2caf08
32b47e  84 c0                          test   al,al
32b480  74 41                          je     0x32b4c3
32b482  48 8b ca                       mov    rcx,rdx
32b485  e8 ca ae fa ff                 call   0x2d6354
32b48a  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
32b48f  48 8b d8                       mov    rbx,rax
32b492  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
32b497  e8 a0 fd ff ff                 call   0x32b23c ; STRING getter=0x32b23c BasePlayer
32b49c  48 8b c8                       mov    rcx,rax
32b49f  e8 b0 e7 fb ff                 call   0x2e9c54
32b4a4  48 8b c8                       mov    rcx,rax
32b4a7  48 ba 25 23 22 84 e4 9c f2 cb  movabs rdx,0xcbf29ce484222325
32b4b1  e8 96 a6 fb ff                 call   0x2e5b4c
32b4b6  48 3b d8                       cmp    rbx,rax
32b4b9  75 08                          jne    0x32b4c3
32b4bb  48 8b ce                       mov    rcx,rsi
32b4be  e8 a1 ef 03 00                 call   0x36a464
32b4c3  80 3d ce c4 0c 00 00           cmp    BYTE PTR [rip+0xcc4ce],0x0        # 0x3f7998 ; CONFIG Bools.HitOverride value(+0x48)
32b4ca  0f 84 53 01 00 00              je     0x32b623
32b4d0  81 fd a0 f7 33 53              cmp    ebp,0x5333f7a0
32b4d6  0f 85 47 01 00 00              jne    0x32b623
32b4dc  f3 0f 10 0d 60 26 f6 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff62660]        # 0x28db44 ; f32=100
32b4e4  0f 57 c0                       xorps  xmm0,xmm0
32b4e7  e8 70 88 fb ff                 call   0x2e3d5c
32b4ec  8b 05 f6 c4 0c 00              mov    eax,DWORD PTR [rip+0xcc4f6]        # 0x3f79e8 ; CONFIG i.BoneIndex3 value(+0x48)
32b4f2  85 c0                          test   eax,eax
32b4f4  75 0a                          jne    0x32b500
32b4f6  ba 96 e8 9a 29                 mov    edx,0x299ae896
32b4fb  e9 1b 01 00 00                 jmp    0x32b61b
32b500  83 f8 01                       cmp    eax,0x1
32b503  75 0a                          jne    0x32b50f
32b505  ba 45 fe 7e 55                 mov    edx,0x557efe45
32b50a  e9 0c 01 00 00                 jmp    0x32b61b
32b50f  83 f8 02                       cmp    eax,0x2
32b512  0f 84 b6 00 00 00              je     0x32b5ce
32b518  83 f8 03                       cmp    eax,0x3
32b51b  0f 84 8d 00 00 00              je     0x32b5ae
32b521  83 f8 04                       cmp    eax,0x4
32b524  75 5f                          jne    0x32b585
32b526  0f 2f 05 13 26 f6 ff           comiss xmm0,DWORD PTR [rip+0xfffffffffff62613]        # 0x28db40 ; f32=90
32b52d  77 c7                          ja     0x32b4f6
32b52f  0f 2f 05 06 26 f6 ff           comiss xmm0,DWORD PTR [rip+0xfffffffffff62606]        # 0x28db3c ; f32=80
32b536  0f 87 c2 00 00 00              ja     0x32b5fe
32b53c  0f 2f 05 f5 25 f6 ff           comiss xmm0,DWORD PTR [rip+0xfffffffffff625f5]        # 0x28db38 ; f32=70
32b543  77 69                          ja     0x32b5ae
32b545  0f 2f 05 e4 25 f6 ff           comiss xmm0,DWORD PTR [rip+0xfffffffffff625e4]        # 0x28db30 ; f32=60
32b54c  77 70                          ja     0x32b5be
32b54e  0f 2f 05 d7 25 f6 ff           comiss xmm0,DWORD PTR [rip+0xfffffffffff625d7]        # 0x28db2c ; f32=50
32b555  77 77                          ja     0x32b5ce
32b557  0f 2f 05 ca 25 f6 ff           comiss xmm0,DWORD PTR [rip+0xfffffffffff625ca]        # 0x28db28 ; f32=40
32b55e  77 7e                          ja     0x32b5de
32b560  0f 2f 05 bd 25 f6 ff           comiss xmm0,DWORD PTR [rip+0xfffffffffff625bd]        # 0x28db24 ; f32=30
32b567  0f 87 81 00 00 00              ja     0x32b5ee
32b56d  0f 2f 05 ac 25 f6 ff           comiss xmm0,DWORD PTR [rip+0xfffffffffff625ac]        # 0x28db20 ; f32=20
32b574  0f 87 84 00 00 00              ja     0x32b5fe
32b57a  0f 2f 05 9b 25 f6 ff           comiss xmm0,DWORD PTR [rip+0xfffffffffff6259b]        # 0x28db1c ; f32=10
32b581  76 6b                          jbe    0x32b5ee
32b583  eb 49                          jmp    0x32b5ce
32b585  ba 96 e8 9a 29                 mov    edx,0x299ae896
32b58a  83 f8 05                       cmp    eax,0x5
32b58d  0f 85 88 00 00 00              jne    0x32b61b
32b593  0f 2f 05 a6 25 f6 ff           comiss xmm0,DWORD PTR [rip+0xfffffffffff625a6]        # 0x28db40 ; f32=90
32b59a  77 42                          ja     0x32b5de
32b59c  0f 2f 05 99 25 f6 ff           comiss xmm0,DWORD PTR [rip+0xfffffffffff62599]        # 0x28db3c ; f32=80
32b5a3  77 59                          ja     0x32b5fe
32b5a5  0f 2f 05 8c 25 f6 ff           comiss xmm0,DWORD PTR [rip+0xfffffffffff6258c]        # 0x28db38 ; f32=70
32b5ac  76 07                          jbe    0x32b5b5
32b5ae  ba 69 ee d6 36                 mov    edx,0x36d6ee69
32b5b3  eb 66                          jmp    0x32b61b
32b5b5  0f 2f 05 74 25 f6 ff           comiss xmm0,DWORD PTR [rip+0xfffffffffff62574]        # 0x28db30 ; f32=60
32b5bc  76 07                          jbe    0x32b5c5
32b5be  ba 42 3e f2 f4                 mov    edx,0xf4f23e42
32b5c3  eb 56                          jmp    0x32b61b
32b5c5  0f 2f 05 60 25 f6 ff           comiss xmm0,DWORD PTR [rip+0xfffffffffff62560]        # 0x28db2c ; f32=50
32b5cc  76 07                          jbe    0x32b5d5
32b5ce  ba 32 7c e3 2b                 mov    edx,0x2be37c32
32b5d3  eb 46                          jmp    0x32b61b
32b5d5  0f 2f 05 4c 25 f6 ff           comiss xmm0,DWORD PTR [rip+0xfffffffffff6254c]        # 0x28db28 ; f32=40
32b5dc  76 07                          jbe    0x32b5e5
32b5de  ba 39 90 8e e8                 mov    edx,0xe88e9039
32b5e3  eb 36                          jmp    0x32b61b
32b5e5  0f 2f 05 38 25 f6 ff           comiss xmm0,DWORD PTR [rip+0xfffffffffff62538]        # 0x28db24 ; f32=30
32b5ec  76 07                          jbe    0x32b5f5
32b5ee  ba f3 89 4e 31                 mov    edx,0x314e89f3
32b5f3  eb 26                          jmp    0x32b61b
32b5f5  0f 2f 05 24 25 f6 ff           comiss xmm0,DWORD PTR [rip+0xfffffffffff62524]        # 0x28db20 ; f32=20
32b5fc  76 07                          jbe    0x32b605
32b5fe  ba ce 5c f7 69                 mov    edx,0x69f75cce
32b603  eb 16                          jmp    0x32b61b
32b605  0f 2f 05 10 25 f6 ff           comiss xmm0,DWORD PTR [rip+0xfffffffffff62510]        # 0x28db1c ; f32=10
32b60c  ba 32 7c e3 2b                 mov    edx,0x2be37c32
32b611  b8 f3 89 4e 31                 mov    eax,0x314e89f3
32b616  0f 47 c2                       cmova  eax,edx
32b619  8b d0                          mov    edx,eax
32b61b  48 8b cf                       mov    rcx,rdi
32b61e  e8 09 8d 04 00                 call   0x37432c
32b623  48 83 c4 38                    add    rsp,0x38
32b627  5f                             pop    rdi
32b628  5e                             pop    rsi
32b629  5d                             pop    rbp
32b62a  5b                             pop    rbx
32b62b  c3                             ret

; pdata function 0x32b62c..0x32b6c5 unwind=0x3d2054
32b62c  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
32b631  48 89 74 24 10                 mov    QWORD PTR [rsp+0x10],rsi
32b636  57                             push   rdi
32b637  48 83 ec 20                    sub    rsp,0x20
32b63b  48 8b f2                       mov    rsi,rdx
32b63e  48 8b f9                       mov    rdi,rcx
32b641  e8 62 fd ff ff                 call   0x32b3a8
32b646  8b 1d ac c3 0c 00              mov    ebx,DWORD PTR [rip+0xcc3ac]        # 0x3f79f8
32b64c  f6 c3 01                       test   bl,0x1
32b64f  75 1e                          jne    0x32b66f
32b651  83 cb 01                       or     ebx,0x1
32b654  48 8d 0d 85 b2 0b 00           lea    rcx,[rip+0xbb285]        # 0x3e68e0
32b65b  89 1d 97 c3 0c 00              mov    DWORD PTR [rip+0xcc397],ebx        # 0x3f79f8
32b661  e8 72 2f fa ff                 call   0x2ce5d8
32b666  48 89 05 83 c3 0c 00           mov    QWORD PTR [rip+0xcc383],rax        # 0x3f79f0
32b66d  eb 07                          jmp    0x32b676
32b66f  48 8b 05 7a c3 0c 00           mov    rax,QWORD PTR [rip+0xcc37a]        # 0x3f79f0
32b676  f6 c3 02                       test   bl,0x2
32b679  75 22                          jne    0x32b69d
32b67b  48 8b 0d de a7 0a 00           mov    rcx,QWORD PTR [rip+0xaa7de]        # 0x3d5e60
32b682  48 8d 15 77 c3 0c 00           lea    rdx,[rip+0xcc377]        # 0x3f7a00
32b689  83 cb 02                       or     ebx,0x2
32b68c  45 33 c9                       xor    r9d,r9d
32b68f  4c 8b c0                       mov    r8,rax
32b692  89 1d 60 c3 0c 00              mov    DWORD PTR [rip+0xcc360],ebx        # 0x3f79f8
32b698  e8 87 06 fa ff                 call   0x2cbd24
32b69d  48 8b 0d bc a7 0a 00           mov    rcx,QWORD PTR [rip+0xaa7bc]        # 0x3d5e60
32b6a4  48 8d 15 55 c3 0c 00           lea    rdx,[rip+0xcc355]        # 0x3f7a00
32b6ab  4c 8b ce                       mov    r9,rsi
32b6ae  4c 8b c7                       mov    r8,rdi
32b6b1  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
32b6b6  48 8b 74 24 38                 mov    rsi,QWORD PTR [rsp+0x38]
32b6bb  48 83 c4 20                    add    rsp,0x20
32b6bf  5f                             pop    rdi
32b6c0  e9 cf 69 fa ff                 jmp    0x2d2094

; pdata function 0x37432c..0x374345 unwind=0x3d2064
37432c  48 83 ec 28                    sub    rsp,0x28
374330  4c 8b c1                       mov    r8,rcx
374333  e8 d0 6b f5 ff                 call   0x2caf08
374338  84 c0                          test   al,al
37433a  74 04                          je     0x374340
37433c  41 89 50 24                    mov    DWORD PTR [r8+0x24],edx
374340  48 83 c4 28                    add    rsp,0x28
374344  c3                             ret

