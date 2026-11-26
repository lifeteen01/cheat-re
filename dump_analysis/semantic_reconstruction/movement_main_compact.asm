324b30 mov    rax,rsp
324b33 mov    QWORD PTR [rax+0x10],rbx
324b37 mov    QWORD PTR [rax+0x18],r8
324b3b mov    QWORD PTR [rax+0x8],rcx
324b3f push   rbp
324b40 push   rsi
324b41 push   rdi
324b42 push   r12
324b44 push   r13
324b46 push   r14
324b48 push   r15
324b4a lea    rbp,[rax-0x268]
324b51 sub    rsp,0x330
324b58 movaps XMMWORD PTR [rax-0x48],xmm6
324b5c mov    rdi,rdx
324b5f movaps XMMWORD PTR [rax-0x58],xmm7
324b63 mov    r13,rcx
324b66 mov    ecx,DWORD PTR [rip+0xcf8cc]        # 0x3f4438 ; CONFIG K.AimbotVirtualKey value(+0x48)
324b6c xor    r12d,r12d
324b6f movaps XMMWORD PTR [rax-0x68],xmm8
324b74 mov    rsi,r8
324b77 movaps XMMWORD PTR [rax-0x78],xmm9
324b7c movaps XMMWORD PTR [rax-0x88],xmm10
324b84 movaps XMMWORD PTR [rax-0x98],xmm11
324b8c lea    r14d,[r12+0x1]
324b91 movaps XMMWORD PTR [rax-0xa8],xmm12
324b99 mov    dl,r14b
324b9c movaps XMMWORD PTR [rax-0xb8],xmm13
324ba4 movaps XMMWORD PTR [rax-0xc8],xmm14
324bac movaps XMMWORD PTR [rax-0xd8],xmm15
324bb4 call   0x2e5e4c
324bb9 test   al,al
324bbb jne    0x324bd2
324bbd mov    ecx,DWORD PTR [rip+0xcf8d5]        # 0x3f4498 ; CONFIG K.SecondAimbotVirtualKey value(+0x48)
324bc3 mov    dl,r14b
324bc6 call   0x2e5e4c
324bcb test   al,al
324bcd mov    al,r12b
324bd0 je     0x324bd5
324bd2 mov    al,r14b
324bd5 mov    dl,BYTE PTR [rip+0xcd8ad]        # 0x3f2488 ; CONFIG Bools.SmoothFlyhack value(+0x48)
324bdb lea    rcx,[rip+0xcac56]        # 0x3ef838 ; CONFIG K.NoCollisionNoclipKey value(+0x48)
324be2 mov    r8b,r14b
324be5 mov    BYTE PTR [rip+0xb26b5],al        # 0x3d72a0
324beb call   0x329754
324bf0 mov    dl,BYTE PTR [rip+0xcec42]        # 0x3f3838 ; CONFIG Bools.teleport5m value(+0x48)
324bf6 lea    rcx,[rip+0xcaf3b]        # 0x3efb38 ; CONFIG K.TeleportVirtualKey value(+0x48)
324bfd mov    r8b,r14b
324c00 call   0x329754
324c05 mov    dl,BYTE PTR [rip+0xceead]        # 0x3f3ab8 ; CONFIG Bools.CrouchMode value(+0x48)
324c0b lea    rcx,[rip+0xcaa46]        # 0x3ef658 ; CONFIG K.CrouchKey value(+0x48)
324c12 mov    r8b,r14b
324c15 call   0x329754
324c1a mov    dl,BYTE PTR [rip+0xcee48]        # 0x3f3a68 ; CONFIG Bools.ladder value(+0x48)
324c20 lea    rcx,[rip+0xcaf71]        # 0x3efb98 ; CONFIG K.laddervirtualkey value(+0x48)
324c27 mov    r8b,r14b
324c2a call   0x329754
324c2f mov    dl,BYTE PTR [rip+0xceca3]        # 0x3f38d8 ; CONFIG Bools.AutoUpgrade value(+0x48)
324c35 lea    rcx,[rip+0xc082c]        # 0x3e5468 ; CONFIG K.UpgradeKey value(+0x48)
324c3c mov    r8b,r14b
324c3f call   0x329754
324c44 mov    dl,BYTE PTR [rip+0xcecde]        # 0x3f3928 ; CONFIG Bools.AutoUpgrade1 value(+0x48)
324c4a lea    rcx,[rip+0xcf607]        # 0x3f4258 ; CONFIG K.UpgradeKey1 value(+0x48)
324c51 mov    r8b,r14b
324c54 call   0x329754
324c59 mov    dl,BYTE PTR [rip+0xceea9]        # 0x3f3b08 ; CONFIG Bools.interactive value(+0x48)
324c5f lea    rcx,[rip+0xb3632]        # 0x3d8298 ; CONFIG K.InteractiveVirtualKey value(+0x48)
324c66 mov    r8b,r14b
324c69 call   0x329754
324c6e mov    dl,BYTE PTR [rip+0xce944]        # 0x3f35b8 ; CONFIG Bools.Flyhack value(+0x48)
324c74 lea    rcx,[rip+0xcadfd]        # 0x3efa78 ; CONFIG K.FlyVirtualKey value(+0x48)
324c7b mov    r8b,r14b
324c7e call   0x329754
324c83 mov    dl,BYTE PTR [rip+0xc4ccf]        # 0x3e9958 ; CONFIG Bools.AutoCollect value(+0x48)
324c89 lea    rcx,[rip+0xca7e8]        # 0x3ef478 ; CONFIG K.AutoCollect value(+0x48)
324c90 mov    r8b,r14b
324c93 call   0x329754
324c98 mov    dl,BYTE PTR [rip+0xce46a]        # 0x3f3108 ; CONFIG Bools.LowVelocity value(+0x48)
324c9e lea    rcx,[rip+0xb3653]        # 0x3d82f8 ; CONFIG K.LowVelocityVirtualKey value(+0x48)
324ca5 mov    r8b,r14b
324ca8 call   0x329754
324cad mov    dl,BYTE PTR [rip+0xce1d5]        # 0x3f2e88 ; CONFIG Bools.VisualizeCorpse value(+0x48)
324cb3 lea    rcx,[rip+0xca93e]        # 0x3ef5f8 ; CONFIG K.CorpseLTWKey value(+0x48)
324cba mov    r8b,r14b
324cbd call   0x329754
324cc2 mov    dl,BYTE PTR [rip+0xce580]        # 0x3f3248 ; CONFIG Bools.Spiderman value(+0x48)
324cc8 lea    rcx,[rip+0xcae09]        # 0x3efad8 ; CONFIG K.SpidermanVirtualKey value(+0x48)
324ccf mov    r8b,r14b
324cd2 call   0x329754
324cd7 mov    dl,BYTE PTR [rip+0xcee7b]        # 0x3f3b58 ; CONFIG Bools.autoauth value(+0x48)
324cdd lea    rcx,[rip+0xca8b4]        # 0x3ef598 ; CONFIG K.AutoAuthVirtual value(+0x48)
324ce4 mov    r8b,r14b
324ce7 call   0x329754
324cec mov    dl,BYTE PTR [rip+0xce876]        # 0x3f3568 ; CONFIG Bools.InjJump value(+0x48)
324cf2 lea    rcx,[rip+0xcaa7f]        # 0x3ef778 ; CONFIG K.InfJumpVirtualKey value(+0x48)
324cf9 mov    r8b,r14b
324cfc call   0x329754
324d01 mov    dl,BYTE PTR [rip+0xce4f1]        # 0x3f31f8 ; CONFIG Bools.recoilmod value(+0x48)
324d07 lea    rcx,[rip+0xcaeea]        # 0x3efbf8 ; CONFIG K.RecoilKey value(+0x48)
324d0e mov    r8b,r14b
324d11 call   0x329754
324d16 lea    rcx,[rip+0xffffffffffef3c43]        # 0x218960
324d1d call   0x320f64
324d22 cmp    rax,0x42
324d26 jb     0x324d3b
324d28 lea    rcx,[rip+0xffffffffffef3c31]        # 0x218960
324d2f mov    BYTE PTR [rip+0xcae0b],r12b        # 0x3efb41
324d36 call   0x31ac64
324d3b lea    rcx,[rip+0xce82e]        # 0x3f3570
324d42 call   0x2ef7fc
324d47 test   al,al
324d49 jne    0x324d56
324d4b mov    dl,r12b
324d4e mov    BYTE PTR [rip+0xcad2d],dl        # 0x3efa81
324d54 jmp    0x324d5c
324d56 mov    dl,BYTE PTR [rip+0xcad25]        # 0x3efa81
324d5c cmp    BYTE PTR [rip+0xce305],r12b        # 0x3f3068 ; CONFIG Bools.nospikeslow value(+0x48)
324d63 jne    0x324d72
324d65 test   dl,dl
324d67 jne    0x324d72
324d69 cmp    BYTE PTR [rip+0xcadd1],r12b        # 0x3efb41
324d70 je     0x324d93
324d72 mov    r8,QWORD PTR [r13+0x30]
324d76 mov    rcx,r8
324d79 call   0x2caf08
324d7e test   al,al
324d80 je     0x324d8f
324d82 mov    QWORD PTR [r8+0x140],r12
324d89 mov    dl,BYTE PTR [rip+0xcacf2]        # 0x3efa81
324d8f test   dl,dl
324d91 jne    0x324d9f
324d93 cmp    BYTE PTR [rip+0xb3507],r12b        # 0x3d82a1
324d9a mov    r15b,r12b
324d9d je     0x324da2
324d9f mov    r15b,r14b
324da2 cmp    BYTE PTR [rip+0xcec6f],r12b        # 0x3f3a18 ; CONFIG Bools.CanShoot value(+0x48)
324da9 mov    BYTE PTR [rbp+0x288],r15b
324db0 jne    0x324dcd
324db2 cmp    BYTE PTR [rip+0xcade8],r12b        # 0x3efba1
324db9 jne    0x324dcd
324dbb cmp    BYTE PTR [rip+0xd2166],r12b        # 0x3f6f28
324dc2 je     0x324ddd
324dc4 mov    BYTE PTR [rip+0xd215d],r12b        # 0x3f6f28
324dcb jmp    0x324dd4
324dcd mov    BYTE PTR [rip+0xd2154],r14b        # 0x3f6f28
324dd4 mov    eax,0xb4bbe47a
324dd9 mov    QWORD PTR [r13+0x20],rax
324ddd test   r15b,r15b
324de0 je     0x324def
324de2 mov    edx,0x4
324de7 mov    rcx,rsi
324dea call   0x372c1c
324def mov    ebx,DWORD PTR [rip+0xd2143]        # 0x3f6f38
324df5 test   r14b,bl
324df8 jne    0x324e18
324dfa or     ebx,r14d
324dfd lea    rcx,[rip+0xc1aa4]        # 0x3e68a8
324e04 mov    DWORD PTR [rip+0xd212e],ebx        # 0x3f6f38
324e0a call   0x2ce5d8
324e0f mov    QWORD PTR [rip+0xd211a],rax        # 0x3f6f30
324e16 jmp    0x324e1f
324e18 mov    rax,QWORD PTR [rip+0xd2111]        # 0x3f6f30
324e1f test   bl,0x2
324e22 jne    0x324e46
324e24 mov    rcx,QWORD PTR [rip+0xb1035]        # 0x3d5e60
324e2b lea    rdx,[rip+0xd210e]        # 0x3f6f40
324e32 or     ebx,0x2
324e35 xor    r9d,r9d
324e38 mov    r8,rax
324e3b mov    DWORD PTR [rip+0xd20f7],ebx        # 0x3f6f38
324e41 call   0x2cbd24
324e46 mov    rcx,QWORD PTR [rip+0xb1013]        # 0x3d5e60
324e4d lea    rdx,[rip+0xd20ec]        # 0x3f6f40
324e54 mov    r9,rdi
324e57 mov    QWORD PTR [rsp+0x20],rsi
324e5c mov    r8,r13
324e5f call   0x2cba50
324e64 cmp    BYTE PTR [rip+0xca7f6],r12b        # 0x3ef661
324e6b je     0x324e78
324e6d mov    edx,r14d
324e70 mov    rcx,rsi
324e73 call   0x372c1c
324e78 test   r15b,r15b
324e7b je     0x324e8a
324e7d mov    edx,0x4
324e82 mov    rcx,rsi
324e85 call   0x372c1c
324e8a lea    rcx,[rip+0xceb3f]        # 0x3f39d0
324e91 call   0x2ef7fc
324e96 test   al,al
324e98 jne    0x324ea3
324e9a cmp    BYTE PTR [rip+0xcad00],r12b        # 0x3efba1
324ea1 je     0x324eac
324ea3 mov    eax,0xb4bbe67a
324ea8 mov    QWORD PTR [r13+0x20],rax
324eac cmp    BYTE PTR [rip+0xb3015],r12b        # 0x3d7ec8 ; CONFIG Bools.Pierce value(+0x48)
324eb3 jne    0x324ebe
324eb5 cmp    BYTE PTR [rip+0xcecec],r12b        # 0x3f3ba8 ; CONFIG Bools.HeliMagic value(+0x48)
324ebc je     0x324eef
324ebe cmp    BYTE PTR [rip+0xd2153],r12b        # 0x3f7018
324ec5 jne    0x324eef
324ec7 mov    rdx,QWORD PTR [rip+0xb2032]        # 0x3d6f00
324ece lea    r8,[rip+0xb763]        # 0x330638
324ed5 add    rdx,0xf6b67b8
324edc lea    rcx,[rip+0xcfb6d]        # 0x3f4a50
324ee3 call   0x32308c
324ee8 mov    BYTE PTR [rip+0xd2129],r14b        # 0x3f7018
324eef cmp    BYTE PTR [rip+0xc0332],r12b        # 0x3e5228 ; CONFIG Bools.PierceFr value(+0x48)
324ef6 jne    0x324f01
324ef8 cmp    BYTE PTR [rip+0xcce59],r12b        # 0x3f1d58 ; CONFIG Bools.ShootThroughFriends value(+0x48)
324eff je     0x324f32
324f01 cmp    BYTE PTR [rip+0xd2111],r12b        # 0x3f7019
324f08 jne    0x324f32
324f0a mov    rdx,QWORD PTR [rip+0xb1fef]        # 0x3d6f00
324f11 lea    r8,[rip+0xffffffffffffce48]        # 0x321d60
324f18 add    rdx,0xf6b8c60
324f1f lea    rcx,[rip+0xcfb62]        # 0x3f4a88
324f26 call   0x32308c
324f2b mov    BYTE PTR [rip+0xd20e7],r14b        # 0x3f7019
324f32 cmp    BYTE PTR [rip+0xced0f],r12b        # 0x3f3c48 ; CONFIG Bools.raidesp value(+0x48)
324f39 jne    0x324f44
324f3b cmp    BYTE PTR [rip+0xcee46],r12b        # 0x3f3d88 ; CONFIG Bools.DrawIngameRadarRaids value(+0x48)
324f42 je     0x324f75
324f44 cmp    BYTE PTR [rip+0xd20cf],r12b        # 0x3f701a
324f4b jne    0x324f75
324f4d mov    rdx,QWORD PTR [rip+0xb1fac]        # 0x3d6f00
324f54 lea    r8,[rip+0x9a59]        # 0x32e9b4
324f5b add    rdx,0xf6b6d68
324f62 lea    rcx,[rip+0xcfaaf]        # 0x3f4a18
324f69 call   0x32308c
324f6e mov    BYTE PTR [rip+0xd20a5],r14b        # 0x3f701a
324f75 call   0x2dda9c
324f7a mov    rcx,rax
324f7d mov    r15,rax
324f80 call   0x2caf08
324f85 movss  xmm11,DWORD PTR [rip+0xfffffffffff682c2]        # 0x28d250 ; f32=0.5
324f8e mov    ebx,0x10
324f93 xorps  xmm8,xmm8
324f97 test   al,al
324f99 je     0x328d66
324f9f mov    rcx,r15
324fa2 call   0x2e0e9c
324fa7 test   al,al
324fa9 je     0x328d66
324faf mov    dl,BYTE PTR [rip+0xcdf73]        # 0x3f2f28 ; CONFIG Bools.NoCractTimer value(+0x48)
324fb5 lea    rcx,[rip+0xca57c]        # 0x3ef538 ; CONFIG K.ResetCraftingVirtual value(+0x48)
324fbc mov    r8b,r14b
324fbf call   0x329754
324fc4 cmp    BYTE PTR [rip+0xca576],r12b        # 0x3ef541
324fcb je     0x324fd2
324fcd call   0x329328
324fd2 cmp    BYTE PTR [rip+0xcdf9f],r12b        # 0x3f2f78 ; CONFIG Bools.CancleAll value(+0x48)
324fd9 je     0x324ff2
324fdb xor    edx,edx
324fdd lea    rcx,[rip+0xcf334]        # 0x3f4318 ; CONFIG K.CancelAllVirtualKey value(+0x48)
324fe4 call   0x2e89e4
324fe9 test   al,al
324feb je     0x324ff2
324fed call   0x324904
324ff2 cmp    QWORD PTR [rip+0xbf247],r12        # 0x3e4240
324ff9 jne    0x32506b
324ffb call   0x2e069c
325000 mov    rcx,rax
325003 mov    rdx,rax
325006 call   0x2caf08
32500b test   al,al
32500d je     0x32506b
32500f mov    rcx,rdx
325012 call   0x370508
325017 mov    rcx,rax
32501a mov    rdi,rax
32501d call   0x2caf08
325022 test   al,al
325024 je     0x32506b
325026 lea    rdx,[rsp+0x42]
32502b lea    rcx,[rsp+0x42]
325030 call   0x2cc730
325035 mov    rcx,rax
325038 call   0x2cdca4
32503d lea    rdx,[rbp-0x70]
325041 mov    rbx,rax
325044 lea    rcx,[rsp+0x41]
325049 call   0x32397c ; STRING getter=0x32397c RunConsoleCommand
32504e mov    rcx,rax
325051 call   0x2e9bdc
325056 mov    rdx,rax
325059 mov    r8,rbx
32505c mov    rcx,rdi
32505f call   0x372efc
325064 mov    QWORD PTR [rip+0xbf1d5],rax        # 0x3e4240
32506b cmp    BYTE PTR [rip+0xce776],r12b        # 0x3f37e8 ; CONFIG Bools.AutoFreeCrates value(+0x48)
325072 mov    esi,0x12
325077 je     0x32511f
32507d mov    dl,r14b
325080 mov    ecx,esi
325082 call   0x2e5e4c
325087 test   al,al
325089 je     0x32511f
32508f mov    rcx,r15
325092 call   0x36a2f4
325097 mov    rcx,rax
32509a mov    rdi,rax
32509d call   0x2caf08
3250a2 test   al,al
3250a4 je     0x32511f
3250a6 mov    rcx,rdi
3250a9 call   0x2e5a54
3250ae mov    rcx,rax
3250b1 mov    rdx,rax
3250b4 call   0x2caf08
3250b9 test   al,al
3250bb je     0x32511f
3250bd mov    rcx,rdx
3250c0 call   0x2d6354
3250c5 lea    rdx,[rbp-0x70]
3250c9 mov    rbx,rax
3250cc lea    rcx,[rsp+0x41]
3250d1 call   0x323d44 ; STRING getter=0x323d44 FreeableLootContainer
3250d6 mov    rcx,rax
3250d9 call   0x2d85a4
3250de mov    rcx,rax
3250e1 movabs rdx,0xcbf29ce484222325
3250eb call   0x2e5b4c
3250f0 cmp    rbx,rax
3250f3 jne    0x32511f
3250f5 test   BYTE PTR [rdi+0x1d8],0x8
3250fc jne    0x32511f
3250fe lea    rdx,[rbp-0x70]
325102 lea    rcx,[rsp+0x41]
325107 call   0x324114 ; STRING getter=0x324114 RPC_OpenLoot
32510c mov    rcx,rax
32510f call   0x2d85f4
325114 mov    rdx,rax
325117 mov    rcx,rdi
32511a call   0x366c30
32511f cmp    BYTE PTR [rip+0xce672],r12b        # 0x3f3798 ; CONFIG Bools.AutoKnock value(+0x48)
325126 movss  xmm15,DWORD PTR [rip+0xfffffffffff689b5]        # 0x28dae4 ; f32=0.1
32512f je     0x3251f9
325135 mov    rcx,r15
325138 call   0x36a2f4
32513d mov    rcx,rax
325140 mov    rdi,rax
325143 call   0x2caf08
325148 test   al,al
32514a je     0x3251f9
325150 mov    rcx,rdi
325153 call   0x2e5a54
325158 mov    rcx,rax
32515b mov    rdx,rax
32515e call   0x2caf08
325163 test   al,al
325165 je     0x3251f9
32516b mov    rcx,rdx
32516e call   0x2d6354
325173 lea    rdx,[rbp+0x10]
325177 mov    rbx,rax
32517a lea    rcx,[rsp+0x41]
32517f call   0x324484 ; STRING getter=0x324484 Door
325184 mov    rcx,rax
325187 call   0x2cdccc
32518c mov    rcx,rax
32518f movabs rdx,0xcbf29ce484222325
325199 call   0x2e5b4c
32519e cmp    rbx,rax
3251a1 jne    0x3251f9
3251a3 movaps xmm1,xmm15
3251a7 lea    rcx,[rip+0xd1e6e]        # 0x3f701c
3251ae call   0x2e5b7c
3251b3 test   al,al
3251b5 je     0x3251f9
3251b7 lea    rdx,[rbp-0x70]
3251bb lea    rcx,[rsp+0x41]
3251c0 call   0x324588 ; STRING getter=0x324588 RPC_OpenDoor
3251c5 mov    rcx,rax
3251c8 call   0x2d85f4
3251cd mov    rdx,rax
3251d0 mov    rcx,rdi
3251d3 call   0x366c30
3251d8 lea    rdx,[rbp-0x70]
3251dc lea    rcx,[rsp+0x41]
3251e1 call   0x3245d0 ; STRING getter=0x3245d0 RPC_KnockDoor
3251e6 mov    rcx,rax
3251e9 call   0x2dd188
3251ee mov    rdx,rax
3251f1 mov    rcx,rdi
3251f4 call   0x366c30
3251f9 cmp    BYTE PTR [rip+0xcea98],r12b        # 0x3f3c98 ; CONFIG Bools.CloseDoorWhileWounded value(+0x48)
325200 je     0x3252ee
325206 mov    dl,r14b
325209 mov    ecx,esi
32520b call   0x2e8910
325210 test   al,al
325212 je     0x3252ee
325218 mov    rcx,r15
32521b call   0x368244
325220 test   al,al
325222 je     0x3252ee
325228 mov    rcx,r15
32522b call   0x36a2f4
325230 mov    rcx,rax
325233 mov    rdi,rax
325236 call   0x2caf08
32523b test   al,al
32523d je     0x3252ee
325243 mov    rcx,rdi
325246 call   0x2e5a54
32524b mov    rcx,rax
32524e mov    r9,rax
325251 call   0x2caf08
325256 test   al,al
325258 je     0x3252ee
32525e mov    edx,0x1d8
325263 mov    rcx,rdi
325266 call   0x2dee3c
32526b mov    rcx,r9
32526e movzx  esi,WORD PTR [rax]
325271 call   0x2d6354
325276 lea    rdx,[rbp+0x10]
32527a mov    rbx,rax
32527d lea    rcx,[rsp+0x41]
325282 call   0x32471c ; STRING getter=0x32471c Door
325287 mov    rcx,rax
32528a call   0x2cdccc
32528f mov    rcx,rax
325292 movabs rdx,0xcbf29ce484222325
32529c call   0x2e5b4c
3252a1 cmp    rbx,rax
3252a4 jne    0x3252ee
3252a6 test   sil,0x8
3252aa je     0x3252ee
3252ac lea    rdx,[rbp-0x70]
3252b0 lea    rcx,[rsp+0x41]
3252b5 call   0x3247b0 ; STRING getter=0x3247b0 Server_NotifyWoundedClose
3252ba mov    rcx,rax
3252bd call   0x32a8d4
3252c2 mov    rdx,rax
3252c5 mov    rcx,rdi
3252c8 call   0x366c30
3252cd lea    rdx,[rbp-0x70]
3252d1 lea    rcx,[rsp+0x41]
3252d6 call   0x3236cc ; STRING getter=0x3236cc RPC_CloseDoor
3252db mov    rcx,rax
3252de call   0x2dd188
3252e3 mov    rdx,rax
3252e6 mov    rcx,rdi
3252e9 call   0x366c30
3252ee cmp    BYTE PTR [rip+0xffffffffffef3523],r12b        # 0x218818
3252f5 je     0x325330
3252f7 cmp    BYTE PTR [rip+0xcdb3a],r12b        # 0x3f2e38 ; CONFIG Bools.LockGUI value(+0x48)
3252fe je     0x325330
325300 mov    rax,QWORD PTR [rip+0xb1bf9]        # 0x3d6f00
325307 mov    rdx,QWORD PTR [rax+0xf0a7480]
32530e mov    rcx,rdx
325311 call   0x2caf08
325316 test   al,al
325318 je     0x325330
32531a mov    rdx,QWORD PTR [rdx+0xb8]
325321 mov    rcx,rdx
325324 call   0x2caf08
325329 test   al,al
32532b je     0x325330
32532d mov    DWORD PTR [rdx],r14d
325330 cmp    BYTE PTR [rip+0xd1ce9],r12b        # 0x3f7020
325337 je     0x325347
325339 cmp    BYTE PTR [rip+0xc0b31],r12b        # 0x3e5e71
325340 je     0x325347
325342 mov    al,r14b
325345 jmp    0x32534f
325347 mov    rcx,r15
32534a call   0x368468
32534f cmp    BYTE PTR [rip+0xc5282],r12b        # 0x3ea5d8 ; CONFIG Bools.desyncnotvisible value(+0x48)
325356 mov    BYTE PTR [rip+0xd1cc4],al        # 0x3f7020
32535c je     0x325382
32535e cmp    BYTE PTR [rip+0xb1f3b],r12b        # 0x3d72a0
325365 je     0x325382
325367 lea    rcx,[rsp+0x50]
32536c call   0x3c7bbc
325371 movsd  xmm0,QWORD PTR [rax]
325375 movsd  QWORD PTR [r13+0x44],xmm0
32537b mov    eax,DWORD PTR [rax+0x8]
32537e mov    DWORD PTR [r13+0x4c],eax
325382 call   0x2f7dd0
325387 test   al,al
325389 je     0x3253c1
32538b cmp    BYTE PTR [rip+0xb1f0e],r12b        # 0x3d72a0
325392 je     0x3253c1
325394 cmp    BYTE PTR [rip+0xbfc5d],r12b        # 0x3e4ff8 ; CONFIG Bools.WaitForinstanthit value(+0x48)
32539b je     0x3253c1
32539d lea    rcx,[rsp+0x50]
3253a2 mov    BYTE PTR [rip+0xc527f],r14b        # 0x3ea628 ; CONFIG Bools.ShouldAttempDesync value(+0x48)
3253a9 call   0x3c7bbc
3253ae movsd  xmm0,QWORD PTR [rax]
3253b2 movsd  QWORD PTR [r13+0x44],xmm0
3253b8 mov    eax,DWORD PTR [rax+0x8]
3253bb mov    DWORD PTR [r13+0x4c],eax
3253bf jmp    0x3253c8
3253c1 mov    BYTE PTR [rip+0xc5260],r12b        # 0x3ea628 ; CONFIG Bools.ShouldAttempDesync value(+0x48)
3253c8 cmp    BYTE PTR [rip+0xcdbf9],r12b        # 0x3f2fc8 ; CONFIG Bools.AutoHeal value(+0x48)
3253cf je     0x325412
3253d1 mov    rcx,r15
3253d4 call   0x368a84
3253d9 mov    rcx,rax
3253dc mov    rdx,rax
3253df call   0x2caf08
3253e4 test   al,al
3253e6 je     0x325412
3253e8 mov    rcx,rdx
3253eb call   0x371df4
3253f0 mov    rcx,rax
3253f3 mov    rbx,rax
3253f6 call   0x2caf08
3253fb test   al,al
3253fd je     0x325412
3253ff mov    rcx,r15
325402 call   0x36970c
325407 movaps xmm1,xmm0
32540a mov    rcx,rbx
32540d call   0x36ba2c
325412 cmp    BYTE PTR [rip+0xb2ee8],r12b        # 0x3d8301
325419 je     0x3259db
32541f mov    rcx,r15
325422 call   0x368a84
325427 mov    rcx,rax
32542a mov    rdi,rax
32542d call   0x2caf08
325432 test   al,al
325434 je     0x3259db
32543a mov    rcx,rdi
32543d call   0x371464
325442 mov    rcx,rax
325445 mov    rbx,rax
325448 call   0x2caf08
32544d test   al,al
32544f je     0x3259db
325455 mov    rcx,rdi
325458 call   0x37154c
32545d mov    rcx,rax
325460 mov    rdi,rax
325463 call   0x2caf08
325468 test   al,al
32546a je     0x325a05
325470 mov    rcx,rbx
325473 call   0x36b938
325478 mov    rcx,rax
32547b mov    rsi,rax
32547e call   0x2caf08
325483 test   al,al
325485 je     0x325a05
32548b mov    rcx,rsi
32548e call   0x372abc
325493 mov    rcx,rax
325496 mov    r13,rax
325499 call   0x2caf08
32549e test   al,al
3254a0 je     0x325a05
3254a6 movss  xmm10,DWORD PTR [rbx+0x3ac]
3254af mov    rcx,rdi
3254b2 call   0x37261c
3254b7 cmp    eax,0x34b73d71
3254bc jne    0x3254ca
3254be mov    rcx,rbx
3254c1 call   0x36b504
3254c6 movaps xmm10,xmm0
3254ca movss  xmm7,DWORD PTR [rip+0xc0bb2]        # 0x3e6084
3254d2 mov    rcx,rbx
3254d5 minss  xmm7,DWORD PTR [rip+0xfffffffffff6861b]        # 0x28daf8
3254dd call   0x36b758
3254e2 movss  xmm6,DWORD PTR [rsi+0x44]
3254e7 lea    rdx,[rsp+0x50]
3254ec addss  xmm6,DWORD PTR [rsi+0x40]
3254f1 mov    rcx,r15
3254f4 mulss  xmm6,xmm10
3254f9 mulss  xmm6,xmm7
3254fd call   0x368100
325502 mov    rcx,rax
325505 lea    rdx,[rbp+0xc0]
32550c movaps xmm2,xmm6
32550f call   0x2df66c
325514 lea    rdx,[rbp+0x20]
325518 mov    rcx,r15
32551b call   0x369164
325520 call   0x2e02b0
325525 mov    rcx,rax
325528 mov    r12,rax
32552b call   0x2caf08
325530 test   al,al
325532 je     0x3259cd
325538 mov    rcx,r12
32553b call   0x2e0e9c
325540 test   al,al
325542 je     0x3259cd
325548 mov    rcx,r12
32554b call   0x2e5a54
325550 mov    rcx,rax
325553 mov    rdx,rax
325556 call   0x2caf08
32555b test   al,al
32555d je     0x325a02
325563 mov    rcx,rdx
325566 call   0x2d6354
32556b lea    rdx,[rbp-0x70]
32556f mov    rdi,rax
325572 lea    rcx,[rsp+0x41]
325577 call   0x323708 ; STRING getter=0x323708 ScientistNPC2
32557c mov    rcx,rax
32557f call   0x2dd188
325584 mov    rcx,rax
325587 movabs rdx,0xcbf29ce484222325
325591 call   0x2e5b4c
325596 mov    r8d,0x37
32559c lea    rdx,[rbp+0x60]
3255a0 cmp    rdi,rax
3255a3 mov    rbx,rax
3255a6 mov    rcx,r12
3255a9 lea    eax,[r8-0x2c]
3255ad cmove  r8d,eax
3255b1 call   0x368be8
3255b6 mov    r8d,0x36
3255bc lea    rdx,[rbp-0x40]
3255c0 cmp    rdi,rbx
3255c3 mov    rcx,r12
3255c6 lea    edi,[r8-0x27]
3255ca cmove  r8d,edi
3255ce call   0x368be8
3255d3 lea    rdx,[rbp+0x70]
3255d7 mov    rcx,r12
3255da call   0x369790
3255df movss  xmm3,DWORD PTR [rbp+0x68]
3255e4 lea    rcx,[rsp+0x50]
3255e9 movss  xmm2,DWORD PTR [rbp-0x3c]
3255ee movss  xmm1,DWORD PTR [rbp+0x60]
3255f3 call   0x3c7ba8
3255f8 movss  xmm2,DWORD PTR [rip+0xfffffffffff6da98]        # 0x293098 ; f32=0.05
325600 lea    rcx,[rsp+0x70]
325605 xorps  xmm3,xmm3
325608 xorps  xmm1,xmm1
32560b mov    rbx,rax
32560e call   0x3c7ba8
325613 mov    r8,rax
325616 lea    rdx,[rbp+0x50]
32561a mov    rcx,rbx
32561d call   0x2df708
325622 xor    r12d,r12d
325625 cmp    BYTE PTR [rip+0xb289c],r12b        # 0x3d7ec8 ; CONFIG Bools.Pierce value(+0x48)
32562c je     0x32565c
32562e movss  xmm2,DWORD PTR [rip+0xfffffffffff6dafe]        # 0x293134 ; f32=2
325636 lea    rcx,[rsp+0x50]
32563b xorps  xmm3,xmm3
32563e xorps  xmm1,xmm1
325641 call   0x3c7ba8
325646 mov    r8,rax
325649 lea    rdx,[rsp+0x70]
32564e lea    rcx,[rbp+0x50]
325652 call   0x2df708
325657 mov    rcx,rax
32565a jmp    0x325670
32565c movsd  xmm0,QWORD PTR [rbp+0x70]
325661 lea    rcx,[rbp-0x10]
325665 mov    eax,DWORD PTR [rbp+0x78]
325668 movsd  QWORD PTR [rbp-0x10],xmm0
32566d mov    DWORD PTR [rbp-0x8],eax
325670 mov    eax,DWORD PTR [rcx+0x8]
325673 movsd  xmm12,QWORD PTR [rcx]
325678 movsd  xmm0,QWORD PTR [rbp+0x50]
32567d movss  xmm13,DWORD PTR [r13+0x38]
325683 movss  xmm14,DWORD PTR [r13+0x34]
325689 movss  xmm15,DWORD PTR [r13+0x44]
32568f movss  xmm9,DWORD PTR [rsi+0x44]
325695 movss  xmm6,DWORD PTR [rsi+0x40]
32569a mov    DWORD PTR [rbp+0x10],eax
32569d mov    eax,DWORD PTR [rbp+0x58]
3256a0 mov    DWORD PTR [rsp+0x68],eax
3256a4 mov    eax,DWORD PTR [rcx+0x8]
3256a7 mov    DWORD PTR [rbp-0x48],eax
3256aa movsd  QWORD PTR [rsp+0x60],xmm0
3256b0 movsd  QWORD PTR [rbp-0x50],xmm12
3256b6 call   0x2e6a6c
3256bb mov    r8d,eax
3256be movss  DWORD PTR [rsp+0x20],xmm8
3256c5 xorps  xmm3,xmm3
3256c8 lea    rdx,[rsp+0x60]
3256cd lea    rcx,[rbp-0x50]
3256d1 call   0x2e2320
3256d6 test   al,al
3256d8 je     0x325993
3256de mov    eax,DWORD PTR [rip+0xcd434]        # 0x3f2b18
3256e4 movd   xmm0,eax
3256e8 cvtdq2ps xmm0,xmm0
3256eb comiss xmm0,DWORD PTR [rip+0xce966]        # 0x3f4058 ; CONFIG F.value4 value(+0x48)
3256f2 jb     0x325988
3256f8 mov    eax,DWORD PTR [rip+0xcea4a]        # 0x3f4148 ; CONFIG i.LViterations value(+0x48)
3256fe addss  xmm9,xmm6
325703 mulss  xmm9,xmm10
325708 test   eax,eax
32570a jne    0x325711
32570c lea    ebx,[rax+0x5]
32570f jmp    0x325732
325711 cmp    eax,r14d
325714 jne    0x32571a
325716 mov    ebx,edi
325718 jmp    0x325732
32571a cmp    eax,0x2
32571d jne    0x325724
32571f lea    ebx,[rax+0x17]
325722 jmp    0x325732
325724 mov    ebx,0x5
325729 cmp    eax,0x3
32572c lea    ecx,[rbx+0x1e]
32572f cmove  ebx,ecx
325732 movss  xmm11,DWORD PTR [rip+0xfffffffffff67b19]        # 0x28d254 ; f32=1
32573b lea    eax,[rbx-0x1]
32573e movd   xmm0,eax
325742 mov    esi,r12d
325745 cvtdq2ps xmm0,xmm0
325748 divss  xmm11,xmm0
32574d cvtps2pd xmm0,xmm15
325751 movsd  QWORD PTR [rbp+0x40],xmm0
325756 cvtps2pd xmm0,xmm13
32575a movsd  QWORD PTR [rbp-0x50],xmm0
32575f cvtps2pd xmm0,xmm14
325763 movsd  QWORD PTR [rsp+0x60],xmm0
325769 movss  xmm10,DWORD PTR [rip+0xfffffffffff6838a]        # 0x28dafc ; f32=1.5
325772 lea    rdx,[rbp-0x70]
325776 movd   xmm0,esi
32577a lea    rcx,[rsp+0x41]
32577f cvtdq2ps xmm0,xmm0
325782 mulss  xmm0,xmm11
325787 subss  xmm10,xmm0
32578c xorps  xmm0,xmm0
32578f movups XMMWORD PTR [rbp+0xd0],xmm0
325796 movups XMMWORD PTR [rbp+0xe0],xmm0
32579d movaps xmm7,xmm10
3257a1 minss  xmm7,DWORD PTR [rip+0xfffffffffff6834f]        # 0x28daf8
3257a9 mulss  xmm7,xmm9
3257ae cvtps2pd xmm6,xmm7
3257b1 call   0x32372c ; STRING getter=0x32372c %.2f/%.2f/%.2f/%.2f
3257b6 mov    rcx,rax
3257b9 call   0x320494
3257be lea    rcx,[rbp+0xd0]
3257c5 mov    rdx,rax
3257c8 movsd  xmm0,QWORD PTR [rbp+0x40]
3257cd movaps xmm2,xmm6
3257d0 movsd  xmm3,QWORD PTR [rsp+0x60]
3257d6 movq   r8,xmm6
3257db movsd  QWORD PTR [rsp+0x28],xmm0
3257e1 movq   r9,xmm3
3257e6 movsd  xmm0,QWORD PTR [rbp-0x50]
3257eb movsd  QWORD PTR [rsp+0x20],xmm0
3257f1 call   0x2ee714
3257f6 lea    rcx,[rbp+0xd0]
3257fd call   0x2d6354
325802 mov    rcx,rax
325805 mov    r12,rax
325808 call   0x2e0e20
32580d mov    rdi,rax
325810 test   rax,rax
325813 jne    0x325846
325815 movaps xmm3,xmm14
325819 movss  DWORD PTR [rsp+0x20],xmm15
325820 movaps xmm2,xmm13
325824 movaps xmm1,xmm7
325827 mov    rcx,r12
32582a call   0x2dfe64
32582f xor    r12d,r12d
325832 mov    rdi,rax
325835 test   rax,rax
325838 je     0x325959
32583e mov    rcx,rax
325841 call   0x2e3a70
325846 movsd  xmm0,QWORD PTR [rip+0xb19fa]        # 0x3d7248
32584e lea    r9,[rbp+0x80]
325855 mov    eax,DWORD PTR [rip+0xb19f5]        # 0x3d7250
32585b lea    r8,[rbp+0x90]
325862 mov    r12d,DWORD PTR [rbp+0x10]
325866 lea    rdx,[rbp+0x30]
32586a movsd  QWORD PTR [rbp+0x80],xmm0
325872 lea    rcx,[rbp-0x10]
325876 movsd  xmm0,QWORD PTR [rbp+0x20]
32587b mov    DWORD PTR [rbp+0x88],eax
325881 mov    eax,DWORD PTR [rbp+0x28]
325884 movsd  QWORD PTR [rbp+0x30],xmm0
325889 movsd  QWORD PTR [rbp+0x90],xmm12
325892 mov    DWORD PTR [rbp+0x98],r12d
325899 mov    DWORD PTR [rbp+0x38],eax
32589c mov    QWORD PTR [rsp+0x20],rdi
3258a1 call   0x2e2374
3258a6 lea    rcx,[rbp-0x10]
3258aa call   0x2e3b58
3258af test   al,al
3258b1 je     0x3258bc
3258b3 lea    rcx,[rbp+0xa0]
3258ba jmp    0x32591e
3258bc movsd  xmm0,QWORD PTR [rbp-0x10]
3258c1 lea    r9,[rbp+0x0]
3258c5 mov    eax,DWORD PTR [rbp-0x8]
3258c8 lea    r8,[rbp-0x80]
3258cc movsd  QWORD PTR [rbp+0x0],xmm0
3258d1 lea    rdx,[rsp+0x70]
3258d6 movsd  xmm0,QWORD PTR [rbp-0x40]
3258db lea    rcx,[rsp+0x50]
3258e0 mov    DWORD PTR [rbp+0x8],eax
3258e3 mov    eax,DWORD PTR [rbp-0x38]
3258e6 movsd  QWORD PTR [rbp-0x80],xmm0
3258eb movsd  xmm0,QWORD PTR [rbp+0x20]
3258f0 mov    DWORD PTR [rbp-0x78],eax
3258f3 mov    eax,DWORD PTR [rbp+0x28]
3258f6 movsd  QWORD PTR [rsp+0x50],xmm0
3258fc movsd  QWORD PTR [rsp+0x70],xmm12
325903 mov    DWORD PTR [rsp+0x78],r12d
325908 mov    DWORD PTR [rsp+0x58],eax
32590c mov    QWORD PTR [rsp+0x20],rdi
325911 call   0x329b50
325916 test   al,al
325918 jne    0x325962
32591a lea    rcx,[rbp-0x30]
32591e xor    r12d,r12d
325921 mov    DWORD PTR [rip+0xc0759],0x3f800000        # 0x3e6084
32592b mov    BYTE PTR [rip+0xbe906],r12b        # 0x3e4238
325932 call   0x3c7bbc
325937 add    esi,r14d
32593a movsd  xmm0,QWORD PTR [rax]
32593e movsd  QWORD PTR [rip+0xb199a],xmm0        # 0x3d72e0
325946 mov    eax,DWORD PTR [rax+0x8]
325949 mov    DWORD PTR [rip+0xb1999],eax        # 0x3d72e8
32594f cmp    esi,ebx
325951 jl     0x325769
325957 jmp    0x325985
325959 mov    BYTE PTR [rip+0xbe8d8],r12b        # 0x3e4238
325960 jmp    0x325985
325962 mov    DWORD PTR [rip+0xb197f],r12d        # 0x3d72e8
325969 xor    r12d,r12d
32596c movss  DWORD PTR [rip+0xc070f],xmm10        # 0x3e6084
325975 movsd  QWORD PTR [rip+0xb1962],xmm12        # 0x3d72e0
32597e mov    BYTE PTR [rip+0xbe8b3],r14b        # 0x3e4238
325985 mov    eax,r12d
325988 add    eax,r14d
32598b mov    DWORD PTR [rip+0xcd187],eax        # 0x3f2b18
325991 jmp    0x3259c2
325993 lea    rcx,[rbp-0x30]
325997 call   0x3c7bbc
32599c movsd  xmm0,QWORD PTR [rax]
3259a0 movsd  QWORD PTR [rip+0xb1938],xmm0        # 0x3d72e0
3259a8 mov    eax,DWORD PTR [rax+0x8]
3259ab mov    DWORD PTR [rip+0xb1937],eax        # 0x3d72e8
3259b1 mov    DWORD PTR [rip+0xc06c9],0x3f800000        # 0x3e6084
3259bb mov    BYTE PTR [rip+0xbe876],r12b        # 0x3e4238
3259c2 movss  xmm15,DWORD PTR [rip+0xfffffffffff68119]        # 0x28dae4 ; f32=0.1
3259cb jmp    0x325a05
3259cd lea    rcx,[rbp-0x30]
3259d1 call   0x3c7bbc
3259d6 xor    r12d,r12d
3259d9 jmp    0x3259e4
3259db lea    rcx,[rbp-0x30]
3259df call   0x3c7bbc
3259e4 movsd  xmm0,QWORD PTR [rax]
3259e8 movsd  QWORD PTR [rip+0xb18f0],xmm0        # 0x3d72e0
3259f0 mov    eax,DWORD PTR [rax+0x8]
3259f3 mov    DWORD PTR [rip+0xb18ef],eax        # 0x3d72e8
3259f9 mov    BYTE PTR [rip+0xbe838],r12b        # 0x3e4238
325a00 jmp    0x325a05
325a02 xor    r12d,r12d
325a05 cmp    BYTE PTR [rip+0xc160c],r12b        # 0x3e7018 ; CONFIG Bools.GrenadeAngles value(+0x48)
325a0c je     0x32619e
325a12 cmp    BYTE PTR [rip+0xb245f],r12b        # 0x3d7e78 ; CONFIG Bools.PSilent value(+0x48)
325a19 je     0x32619e
325a1f cmp    BYTE PTR [rip+0xb187a],r12b        # 0x3d72a0
325a26 je     0x32619e
325a2c mov    rcx,r15
325a2f call   0x368a84
325a34 mov    rcx,rax
325a37 mov    rsi,rax
325a3a call   0x2caf08
325a3f test   al,al
325a41 je     0x3261af
325a47 mov    rcx,rsi
325a4a call   0x3716e0
325a4f mov    rcx,rax
325a52 mov    r13,rax
325a55 call   0x2caf08
325a5a test   al,al
325a5c je     0x32619e
325a62 call   0x2e02b0
325a67 cmp    BYTE PTR [rip+0xc187a],r12b        # 0x3e72e8 ; CONFIG Bools.TrapManipulation value(+0x48)
325a6e mov    rdi,rax
325a71 movss  xmm13,DWORD PTR [rip+0xfffffffffff6d632]        # 0x2930ac ; f32=0.25
325a7a movss  xmm14,DWORD PTR [rip+0xfffffffffff6d619]        # 0x29309c ; f32=0.125
325a83 movsd  xmm11,QWORD PTR [rip+0xfffffffffff6d684]        # 0x293110
325a8c movss  xmm9,DWORD PTR [rip+0xfffffffffff6d6b3]        # 0x293148 ; f32=2.5625
325a95 movss  xmm10,DWORD PTR [rip+0xfffffffffff68742]        # 0x28e1e0 ; f32=8
325a9e movss  xmm12,DWORD PTR [rip+0xfffffffffff68745]        # 0x28e1ec ; f32=-9.81
325aa7 je     0x325dff
325aad mov    rcx,rax
325ab0 call   0x2caf08
325ab5 test   al,al
325ab7 jne    0x325dff
325abd movsd  xmm6,QWORD PTR [rip+0xca513]        # 0x3effd8 ; CONFIG V3.SavedPos value(+0x48)
325ac5 lea    rcx,[rbp-0x10]
325ac9 mov    r12d,DWORD PTR [rip+0xca510]        # 0x3effe0
325ad0 movsd  QWORD PTR [rbp-0x10],xmm6
325ad5 mov    DWORD PTR [rbp-0x8],r12d
325ad9 call   0x2e3b58
325ade test   al,al
325ae0 jne    0x325dfc
325ae6 lea    rdx,[rbp-0x30]
325aea mov    rcx,r15
325aed call   0x369164
325af2 lea    rdx,[rbp+0xa0]
325af9 mov    rcx,r15
325afc mov    rbx,rax
325aff call   0x368100
325b04 mov    rcx,rax
325b07 lea    rdx,[rbp+0xc0]
325b0e movaps xmm2,xmm13
325b12 call   0x2df66c
325b17 mov    r8,rax
325b1a lea    rdx,[rbp-0x40]
325b1e mov    rcx,rbx
325b21 call   0x2df708
325b26 movss  xmm7,DWORD PTR [r13+0x3f8]
325b2f lea    rcx,[rbp-0x30]
325b33 call   0x3c7bbc
325b38 lea    r9,[rsp+0x50]
325b3d movss  DWORD PTR [rsp+0x20],xmm14
325b44 lea    r8,[rsp+0x70]
325b49 lea    rdx,[rbp-0x80]
325b4d movsd  xmm0,QWORD PTR [rax]
325b51 lea    rcx,[rbp+0x140]
325b58 mov    eax,DWORD PTR [rax+0x8]
325b5b movsd  QWORD PTR [rsp+0x50],xmm0
325b61 movsd  xmm0,QWORD PTR [rbp-0x40]
325b66 mov    DWORD PTR [rsp+0x58],eax
325b6a mov    eax,DWORD PTR [rbp-0x38]
325b6d movsd  QWORD PTR [rbp-0x80],xmm0
325b72 movsd  QWORD PTR [rsp+0x70],xmm6
325b78 mov    DWORD PTR [rsp+0x78],r12d
325b7d mov    DWORD PTR [rbp-0x78],eax
325b80 call   0x317194
325b85 lea    rcx,[rsp+0x60]
325b8a movups xmm0,XMMWORD PTR [rax+0x10]
325b8e movups xmm1,XMMWORD PTR [rax+0x20]
325b92 movups xmm6,XMMWORD PTR [rax]
325b95 movaps XMMWORD PTR [rbp+0x100],xmm0
325b9c movups xmm0,XMMWORD PTR [rax+0x30]
325ba0 movaps XMMWORD PTR [rbp+0x110],xmm1
325ba7 movups xmm1,XMMWORD PTR [rax+0x40]
325bab movaps XMMWORD PTR [rbp+0x120],xmm0
325bb2 movaps XMMWORD PTR [rbp+0x130],xmm1
325bb9 movaps XMMWORD PTR [rbp+0xf0],xmm6
325bc0 call   0x3c7bbc
325bc5 movd   eax,xmm6
325bc9 xor    r12d,r12d
325bcc test   al,al
325bce je     0x325c46
325bd0 movss  xmm0,DWORD PTR [rbp+0x104]
325bd8 lea    rdx,[rbp-0x30]
325bdc addss  xmm0,DWORD PTR [rip+0xc04a4]        # 0x3e6088
325be4 lea    rcx,[rbp+0x100]
325beb movss  DWORD PTR [rbp+0x104],xmm0
325bf3 cvtps2pd xmm0,xmm7
325bf6 subsd  xmm0,xmm11
325bfb cvtpd2ps xmm6,xmm0
325bff call   0x2e1278
325c04 mov    rcx,rax
325c07 lea    rdx,[rbp+0xa0]
325c0e movaps xmm2,xmm6
325c11 call   0x2df66c
325c16 movss  xmm2,DWORD PTR [rip+0xfffffffffff67632]        # 0x28d250 ; f32=0.5
325c1e lea    rdx,[rbp+0xc0]
325c25 lea    rcx,[rip+0xc0434]        # 0x3e6060
325c2c mov    rbx,rax
325c2f call   0x2df66c
325c34 mov    r8,rax
325c37 lea    rdx,[rsp+0x50]
325c3c mov    rcx,rbx
325c3f call   0x2df6cc
325c44 jmp    0x325c5d
325c46 lea    rcx,[rbp-0x30]
325c4a mov    BYTE PTR [rip+0xd13d0],r14b        # 0x3f7021
325c51 mov    BYTE PTR [rip+0xc0220],r12b        # 0x3e5e78
325c58 call   0x3c7bbc
325c5d movsd  xmm0,QWORD PTR [rax]
325c61 lea    rcx,[rbp-0x30]
325c65 movsd  QWORD PTR [rsp+0x60],xmm0
325c6b mov    eax,DWORD PTR [rax+0x8]
325c6e mov    DWORD PTR [rsp+0x68],eax
325c72 call   0x3c7bbc
325c77 mov    rdx,rax
325c7a lea    rcx,[rsp+0x60]
325c7f call   0x2df5dc
325c84 test   al,al
325c86 je     0x325dbe
325c8c mov    rcx,rsi
325c8f call   0x2e5a54
325c94 mov    rcx,rax
325c97 mov    rdx,rax
325c9a call   0x2caf08
325c9f test   al,al
325ca1 je     0x325db6
325ca7 mov    rcx,rdx
325caa call   0x2d6354
325caf lea    rdx,[rbp-0x70]
325cb3 mov    rbx,rax
325cb6 lea    rcx,[rsp+0x41]
325cbb call   0x323760 ; STRING getter=0x323760 GrenadeWeapon
325cc0 mov    rcx,rax
325cc3 call   0x2dd188
325cc8 mov    rcx,rax
325ccb movabs rdx,0xcbf29ce484222325
325cd5 call   0x2e5b4c
325cda cmp    rbx,rax
325cdd jne    0x325ce5
325cdf movaps xmm6,xmm9
325ce3 jmp    0x325ce9
325ce5 movaps xmm6,xmm10
325ce9 xorps  xmm3,xmm3
325cec lea    rcx,[rbp-0x30]
325cf0 movaps xmm2,xmm12
325cf4 xorps  xmm1,xmm1
325cf7 call   0x3c7ba8
325cfc movss  xmm7,DWORD PTR [rip+0xfffffffffff67550]        # 0x28d254 ; f32=1
325d04 lea    rdx,[rbp+0xa0]
325d0b movaps xmm2,xmm7
325d0e mov    rcx,rax
325d11 call   0x2df66c
325d16 mov    DWORD PTR [rsp+0x38],0x48a16001
325d1e lea    r9,[rbp+0x10]
325d22 movss  DWORD PTR [rsp+0x30],xmm8
325d29 lea    r8,[rsp+0x60]
325d2e lea    rdx,[rbp-0x40]
325d32 movsd  xmm0,QWORD PTR [rax]
325d36 lea    rcx,[rsp+0x70]
325d3b mov    eax,DWORD PTR [rax+0x8]
325d3e mov    DWORD PTR [rsp+0x58],eax
325d42 lea    rax,[rsp+0x50]
325d47 mov    QWORD PTR [rsp+0x28],rax
325d4c movss  DWORD PTR [rsp+0x20],xmm6
325d52 movsd  QWORD PTR [rsp+0x50],xmm0
325d58 call   0x32a16c
325d5d lea    rdx,[rbp-0x10]
325d61 lea    rcx,[rsp+0x70]
325d66 call   0x2dff30
325d6b comiss xmm7,xmm0
325d6e jb     0x325da6
325d70 lea    rcx,[rsp+0x70]
325d75 call   0x2e3b58
325d7a test   al,al
325d7c jne    0x325da6
325d7e mov    BYTE PTR [rip+0xd129c],r12b        # 0x3f7021
325d85 mov    BYTE PTR [rip+0xc00ec],r14b        # 0x3e5e78
325d8c movss  xmm0,DWORD PTR [rip+0xc02f4]        # 0x3e6088
325d94 comiss xmm0,DWORD PTR [rip+0xfffffffffff6d48d]        # 0x293228 ; f32=150
325d9b jb     0x325dff
325d9d mov    DWORD PTR [rip+0xc02e4],r12d        # 0x3e6088
325da4 jmp    0x325dff
325da6 mov    BYTE PTR [rip+0xd1274],r14b        # 0x3f7021
325dad mov    BYTE PTR [rip+0xc00c4],r12b        # 0x3e5e78
325db4 jmp    0x325dd2
325db6 mov    al,BYTE PTR [rip+0xd1265]        # 0x3f7021
325dbc jmp    0x325dce
325dbe mov    al,r14b
325dc1 mov    BYTE PTR [rip+0xc00b0],r12b        # 0x3e5e78
325dc8 mov    BYTE PTR [rip+0xd1253],al        # 0x3f7021
325dce test   al,al
325dd0 je     0x325d8c
325dd2 movss  xmm0,DWORD PTR [rip+0xc02ae]        # 0x3e6088
325dda comiss xmm0,xmm8
325dde jb     0x325d94
325de0 mov    eax,0x14
325de5 addss  xmm0,DWORD PTR [rip+0xfffffffffff6d2ab]        # 0x293098 ; f32=0.05
325ded sub    eax,r14d
325df0 jne    0x325de5
325df2 movss  DWORD PTR [rip+0xc028e],xmm0        # 0x3e6088
325dfa jmp    0x325d94
325dfc xor    r12d,r12d
325dff mov    rcx,rdi
325e02 call   0x2caf08
325e07 test   al,al
325e09 je     0x3261af
325e0f mov    rcx,rdi
325e12 call   0x2e0e9c
325e17 test   al,al
325e19 je     0x3261af
325e1f mov    rcx,rdi
325e22 call   0x2e5a54
325e27 mov    rcx,rax
325e2a mov    rdx,rax
325e2d call   0x2caf08
325e32 test   al,al
325e34 je     0x3261af
325e3a mov    rcx,rdx
325e3d call   0x2d6354
325e42 lea    rdx,[rbp-0x70]
325e46 mov    rbx,rax
325e49 lea    rcx,[rsp+0x41]
325e4e call   0x323784 ; STRING getter=0x323784 ScientistNPC2
325e53 mov    rcx,rax
325e56 call   0x2dd188
325e5b mov    rcx,rax
325e5e movabs rdx,0xcbf29ce484222325
325e68 call   0x2e5b4c
325e6d mov    ecx,0x2f
325e72 lea    rdx,[rbp-0x10]
325e76 cmp    rbx,rax
325e79 lea    r8d,[rcx+0x6]
325e7d cmove  r8d,ecx
325e81 mov    rcx,rdi
325e84 call   0x368be8
325e89 lea    rdx,[rbp-0x30]
325e8d mov    rcx,r15
325e90 call   0x369164
325e95 lea    rdx,[rbp+0xa0]
325e9c mov    rcx,r15
325e9f mov    rbx,rax
325ea2 call   0x368100
325ea7 mov    rcx,rax
325eaa lea    rdx,[rbp+0xc0]
325eb1 movaps xmm2,xmm13
325eb5 call   0x2df66c
325eba mov    r8,rax
325ebd lea    rdx,[rbp-0x40]
325ec1 mov    rcx,rbx
325ec4 call   0x2df708
325ec9 movss  xmm7,DWORD PTR [r13+0x3f8]
325ed2 lea    rcx,[rbp-0x30]
325ed6 call   0x3c7bbc
325edb lea    r9,[rsp+0x50]
325ee0 movss  DWORD PTR [rsp+0x20],xmm14
325ee7 lea    r8,[rsp+0x70]
325eec lea    rdx,[rbp-0x80]
325ef0 movsd  xmm0,QWORD PTR [rax]
325ef4 lea    rcx,[rbp+0x140]
325efb mov    eax,DWORD PTR [rax+0x8]
325efe movsd  QWORD PTR [rsp+0x50],xmm0
325f04 movsd  xmm0,QWORD PTR [rbp-0x10]
325f09 mov    DWORD PTR [rsp+0x58],eax
325f0d mov    eax,DWORD PTR [rbp-0x8]
325f10 movsd  QWORD PTR [rsp+0x70],xmm0
325f16 movsd  xmm0,QWORD PTR [rbp-0x40]
325f1b mov    DWORD PTR [rsp+0x78],eax
325f1f mov    eax,DWORD PTR [rbp-0x38]
325f22 movsd  QWORD PTR [rbp-0x80],xmm0
325f27 mov    DWORD PTR [rbp-0x78],eax
325f2a call   0x317194
325f2f lea    rcx,[rsp+0x60]
325f34 movups xmm0,XMMWORD PTR [rax+0x10]
325f38 movups xmm1,XMMWORD PTR [rax+0x20]
325f3c movups xmm6,XMMWORD PTR [rax]
325f3f movaps XMMWORD PTR [rbp+0x100],xmm0
325f46 movups xmm0,XMMWORD PTR [rax+0x30]
325f4a movaps XMMWORD PTR [rbp+0x110],xmm1
325f51 movups xmm1,XMMWORD PTR [rax+0x40]
325f55 movaps XMMWORD PTR [rbp+0x120],xmm0
325f5c movaps XMMWORD PTR [rbp+0x130],xmm1
325f63 movaps XMMWORD PTR [rbp+0xf0],xmm6
325f6a call   0x3c7bbc
325f6f movd   eax,xmm6
325f73 test   al,al
325f75 je     0x325fed
325f77 movss  xmm0,DWORD PTR [rbp+0x104]
325f7f lea    rdx,[rbp-0x30]
325f83 addss  xmm0,DWORD PTR [rip+0xc00fd]        # 0x3e6088
325f8b lea    rcx,[rbp+0x100]
325f92 movss  DWORD PTR [rbp+0x104],xmm0
325f9a cvtps2pd xmm0,xmm7
325f9d subsd  xmm0,xmm11
325fa2 cvtpd2ps xmm6,xmm0
325fa6 call   0x2e1278
325fab mov    rcx,rax
325fae lea    rdx,[rbp+0xa0]
325fb5 movaps xmm2,xmm6
325fb8 call   0x2df66c
325fbd movss  xmm2,DWORD PTR [rip+0xfffffffffff6728b]        # 0x28d250 ; f32=0.5
325fc5 lea    rdx,[rbp+0xc0]
325fcc lea    rcx,[rip+0xc008d]        # 0x3e6060
325fd3 mov    rbx,rax
325fd6 call   0x2df66c
325fdb mov    r8,rax
325fde lea    rdx,[rsp+0x50]
325fe3 mov    rcx,rbx
325fe6 call   0x2df6cc
325feb jmp    0x326004
325fed lea    rcx,[rbp-0x30]
325ff1 mov    BYTE PTR [rip+0xd102a],r14b        # 0x3f7022
325ff8 mov    BYTE PTR [rip+0xbfe79],r12b        # 0x3e5e78
325fff call   0x3c7bbc
326004 movsd  xmm0,QWORD PTR [rax]
326008 lea    rcx,[rbp-0x30]
32600c movsd  QWORD PTR [rsp+0x60],xmm0
326012 mov    eax,DWORD PTR [rax+0x8]
326015 mov    DWORD PTR [rsp+0x68],eax
326019 call   0x3c7bbc
32601e mov    rdx,rax
326021 lea    rcx,[rsp+0x60]
326026 call   0x2df5dc
32602b test   al,al
32602d je     0x326160
326033 mov    rcx,rsi
326036 call   0x2e5a54
32603b mov    rcx,rax
32603e mov    rdx,rax
326041 call   0x2caf08
326046 test   al,al
326048 je     0x326158
32604e mov    rcx,rdx
326051 call   0x2d6354
326056 lea    rdx,[rbp-0x70]
32605a mov    rbx,rax
32605d lea    rcx,[rsp+0x41]
326062 call   0x3237cc ; STRING getter=0x3237cc GrenadeWeapon
326067 mov    rcx,rax
32606a call   0x2dd188
32606f mov    rcx,rax
326072 movabs rdx,0xcbf29ce484222325
32607c call   0x2e5b4c
326081 cmp    rbx,rax
326084 je     0x32608a
326086 movaps xmm9,xmm10
32608a xorps  xmm3,xmm3
32608d lea    rcx,[rbp-0x30]
326091 movaps xmm2,xmm12
326095 xorps  xmm1,xmm1
326098 call   0x3c7ba8
32609d movss  xmm6,DWORD PTR [rip+0xfffffffffff671af]        # 0x28d254 ; f32=1
3260a5 lea    rdx,[rbp+0xa0]
3260ac movaps xmm2,xmm6
3260af mov    rcx,rax
3260b2 call   0x2df66c
3260b7 mov    DWORD PTR [rsp+0x38],0x48a16001
3260bf lea    r9,[rbp+0x10]
3260c3 movss  DWORD PTR [rsp+0x30],xmm8
3260ca lea    r8,[rsp+0x60]
3260cf lea    rdx,[rbp-0x40]
3260d3 movsd  xmm0,QWORD PTR [rax]
3260d7 lea    rcx,[rsp+0x70]
3260dc mov    eax,DWORD PTR [rax+0x8]
3260df mov    DWORD PTR [rsp+0x58],eax
3260e3 lea    rax,[rsp+0x50]
3260e8 mov    QWORD PTR [rsp+0x28],rax
3260ed movss  DWORD PTR [rsp+0x20],xmm9
3260f4 movsd  QWORD PTR [rsp+0x50],xmm0
3260fa call   0x32a16c
3260ff lea    rdx,[rbp-0x10]
326103 lea    rcx,[rsp+0x70]
326108 call   0x2dff30
32610d comiss xmm6,xmm0
326110 jb     0x326148
326112 lea    rcx,[rsp+0x70]
326117 call   0x2e3b58
32611c test   al,al
32611e jne    0x326148
326120 mov    BYTE PTR [rip+0xd0efb],r12b        # 0x3f7022
326127 mov    BYTE PTR [rip+0xbfd4a],r14b        # 0x3e5e78
32612e movss  xmm0,DWORD PTR [rip+0xbff52]        # 0x3e6088
326136 comiss xmm8,xmm0
32613a jb     0x3261af
32613c mov    DWORD PTR [rip+0xbff42],0x43160000        # 0x3e6088
326146 jmp    0x3261af
326148 mov    BYTE PTR [rip+0xd0ed3],r14b        # 0x3f7022
32614f mov    BYTE PTR [rip+0xbfd22],r12b        # 0x3e5e78
326156 jmp    0x326174
326158 mov    al,BYTE PTR [rip+0xd0ec4]        # 0x3f7022
32615e jmp    0x326170
326160 mov    al,r14b
326163 mov    BYTE PTR [rip+0xbfd0e],r12b        # 0x3e5e78
32616a mov    BYTE PTR [rip+0xd0eb2],al        # 0x3f7022
326170 test   al,al
326172 je     0x32612e
326174 movss  xmm0,DWORD PTR [rip+0xbff0c]        # 0x3e6088
32617c comiss xmm0,xmm8
326180 jb     0x326136
326182 mov    eax,0x28
326187 addss  xmm0,DWORD PTR [rip+0xfffffffffff6e049]        # 0x2941d8 ; f32=-0.05
32618f sub    eax,r14d
326192 jne    0x326187
326194 movss  DWORD PTR [rip+0xbfeec],xmm0        # 0x3e6088
32619c jmp    0x326136
32619e mov    DWORD PTR [rip+0xbfee0],0x43150000        # 0x3e6088
3261a8 mov    BYTE PTR [rip+0xbfcc9],r12b        # 0x3e5e78
3261af cmp    BYTE PTR [rip+0xbeee2],r12b        # 0x3e5098 ; CONFIG Bools.AutoFire value(+0x48)
3261b6 je     0x326214
3261b8 cmp    BYTE PTR [rip+0xbfcb9],r12b        # 0x3e5e78
3261bf je     0x326214
3261c1 mov    rcx,r15
3261c4 call   0x368a84
3261c9 mov    rcx,rax
3261cc mov    rdx,rax
3261cf call   0x2caf08
3261d4 test   al,al
3261d6 je     0x326214
3261d8 mov    rcx,rdx
3261db call   0x3716e0
3261e0 mov    rcx,rax
3261e3 call   0x2caf08
3261e8 test   al,al
3261ea je     0x326214
3261ec movss  xmm1,DWORD PTR [rip+0xfffffffffff6cea4]        # 0x293098 ; f32=0.05
3261f4 lea    rcx,[rip+0xd0e29]        # 0x3f7024
3261fb call   0x2e5b7c
326200 test   al,al
326202 je     0x326214
326204 call   0x35d31c
326209 mov    rcx,rax
32620c mov    rdx,r15
32620f call   0x317c3c
326214 or     r13d,0xffffffff
326218 cmp    BYTE PTR [rip+0xc3dc9],r12b        # 0x3e9fe8 ; CONFIG Bools.signpainter value(+0x48)
32621f je     0x3263f3
326225 mov    dl,r14b
326228 lea    rcx,[rip+0xcdf69]        # 0x3f4198 ; CONFIG K.SignPainterKey value(+0x48)
32622f call   0x2e89e4
326234 test   al,al
326236 je     0x3263f3
32623c cmp    QWORD PTR [rip+0xbdffd],r12        # 0x3e4240
326243 je     0x3263f3
326249 mov    dl,r14b
32624c mov    rcx,r15
32624f call   0x36ad68
326254 lea    rdx,[rbp-0x70]
326258 lea    rcx,[rsp+0x41]
32625d call   0x3237f0 ; STRING getter=0x3237f0 uploadsign Image.png
326262 mov    rcx,rax
326265 call   0x3204bc
32626a mov    rdx,rax
32626d lea    rcx,[rbp+0xa0]
326274 call   0x2cc2cc
326279 lea    rdx,[rbp-0x70]
32627d lea    rcx,[rsp+0x41]
326282 call   0x32380c ; STRING getter=0x32380c console.clear
326287 mov    rcx,rax
32628a call   0x2dd188
32628f mov    rdx,rax
326292 lea    rcx,[rbp-0x30]
326296 call   0x2cc2cc
32629b mov    eax,DWORD PTR [rip+0xd0c97]        # 0x3f6f38
3262a1 test   al,0x4
3262a3 jne    0x32634c
3262a9 or     eax,0x4
3262ac lea    rdx,[rsp+0x41]
3262b1 lea    rcx,[rsp+0x41]
3262b6 mov    DWORD PTR [rip+0xd0c7c],eax        # 0x3f6f38
3262bc call   0x2cc730
3262c1 mov    rcx,rax
3262c4 call   0x2cdca4
3262c9 lea    rdx,[rsp+0x60]
3262ce mov    rsi,rax
3262d1 lea    rcx,[rsp+0x42]
3262d6 call   0x323868 ; STRING getter=0x323868 ClientRun
3262db mov    rcx,rax
3262de call   0x2cdd44
3262e3 lea    rdx,[rsp+0x40]
3262e8 mov    rdi,rax
3262eb lea    rcx,[rsp+0x42]
3262f0 call   0x2cc730
3262f5 mov    rcx,rax
3262f8 call   0x2cdca4
3262fd lea    rdx,[rbp+0xd0]
326304 mov    rbx,rax
326307 lea    rcx,[rsp+0x42]
32630c call   0x323830 ; STRING getter=0x323830 RunConsoleCommand
326311 mov    rcx,rax
326314 call   0x2e9bdc
326319 mov    rcx,rax
32631c mov    rdx,rbx
32631f call   0x334224
326324 mov    rcx,rax
326327 mov    DWORD PTR [rsp+0x20],r13d
32632c mov    r9,rsi
32632f mov    r8d,r13d
326332 mov    rdx,rdi
326335 call   0x3349ac
32633a mov    r8,QWORD PTR [rax]
32633d mov    eax,DWORD PTR [rip+0xd0bf5]        # 0x3f6f38
326343 mov    QWORD PTR [rip+0xd0cde],r8        # 0x3f7028
32634a jmp    0x326353
32634c mov    r8,QWORD PTR [rip+0xd0cd5]        # 0x3f7028
326353 mov    ecx,0x8
326358 lea    rbx,[rip+0xd0cd1]        # 0x3f7030
32635f test   cl,al
326361 jne    0x32637d
326363 or     eax,ecx
326365 xor    r9d,r9d
326368 mov    rcx,QWORD PTR [rip+0xafaf1]        # 0x3d5e60
32636f mov    rdx,rbx
326372 mov    DWORD PTR [rip+0xd0bc0],eax        # 0x3f6f38
326378 call   0x2cbd24
32637d lea    rcx,[rbp+0xa0]
326384 call   0x2cd7ec
326389 mov    rcx,rax
32638c call   0x2ce5dc
326391 mov    r8,QWORD PTR [rip+0xbdea8]        # 0x3e4240
326398 mov    r9,rax
32639b mov    rcx,QWORD PTR [rip+0xafabe]        # 0x3d5e60
3263a2 mov    rdx,rbx
3263a5 call   0x2d2094
3263aa lea    rcx,[rbp-0x30]
3263ae call   0x2cd7ec
3263b3 mov    rcx,rax
3263b6 call   0x2ce5dc
3263bb mov    r8,QWORD PTR [rip+0xbde7e]        # 0x3e4240
3263c2 mov    r9,rax
3263c5 mov    rcx,QWORD PTR [rip+0xafa94]        # 0x3d5e60
3263cc mov    rdx,rbx
3263cf call   0x2d2094
3263d4 xor    edx,edx
3263d6 mov    rcx,r15
3263d9 call   0x36ad68
3263de lea    rcx,[rbp-0x30]
3263e2 call   0x2cc4f4
3263e7 lea    rcx,[rbp+0xa0]
3263ee call   0x2cc4f4
3263f3 cmp    BYTE PTR [rip+0xccdae],r12b        # 0x3f31a8 ; CONFIG Bools.DemoRecord value(+0x48)
3263fa je     0x3266dd
326400 mov    dl,r14b
326403 lea    rcx,[rip+0xcddee]        # 0x3f41f8 ; CONFIG K.DemoRecordKey value(+0x48)
32640a call   0x2e89e4
32640f test   al,al
326411 je     0x3266e4
326417 cmp    QWORD PTR [rip+0xbde22],r12        # 0x3e4240
32641e je     0x32658c
326424 cmp    BYTE PTR [rip+0xd0cdd],r12b        # 0x3f7108
32642b jne    0x326599
326431 mov    dl,r14b
326434 mov    rcx,r15
326437 call   0x36ad68
32643c lea    rdx,[rbp-0x70]
326440 lea    rcx,[rsp+0x40]
326445 call   0x3239b4 ; STRING getter=0x3239b4 demo.record 
32644a mov    rcx,rax
32644d call   0x2d85f4
326452 mov    rdx,rax
326455 lea    r8,[rip+0xce15c]        # 0x3f45b8
32645c lea    rcx,[rbp-0x30]
326460 call   0x2ea714
326465 mov    eax,DWORD PTR [rip+0xd0acd]        # 0x3f6f38
32646b mov    ecx,0x10
326470 test   cl,al
326472 jne    0x32651a
326478 or     eax,ecx
32647a lea    rdx,[rsp+0x40]
32647f lea    rcx,[rsp+0x40]
326484 mov    DWORD PTR [rip+0xd0aae],eax        # 0x3f6f38
32648a call   0x2cc730
32648f mov    rcx,rax
326492 call   0x2cdca4
326497 lea    rdx,[rsp+0x60]
32649c mov    rsi,rax
32649f lea    rcx,[rsp+0x41]
3264a4 call   0x3239f4 ; STRING getter=0x3239f4 ClientRun
3264a9 mov    rcx,rax
3264ac call   0x2cdd44
3264b1 lea    rdx,[rsp+0x42]
3264b6 mov    rdi,rax
3264b9 lea    rcx,[rsp+0x41]
3264be call   0x2cc730
3264c3 mov    rcx,rax
3264c6 call   0x2cdca4
3264cb lea    rdx,[rbp+0xd0]
3264d2 mov    rbx,rax
3264d5 lea    rcx,[rsp+0x41]
3264da call   0x3239d8 ; STRING getter=0x3239d8 RunConsoleCommand
3264df mov    rcx,rax
3264e2 call   0x2e9bdc
3264e7 mov    rcx,rax
3264ea mov    rdx,rbx
3264ed call   0x334224
3264f2 mov    rcx,rax
3264f5 mov    DWORD PTR [rsp+0x20],r13d
3264fa mov    r9,rsi
3264fd mov    r8d,r13d
326500 mov    rdx,rdi
326503 call   0x3349ac
326508 mov    r8,QWORD PTR [rax]
32650b mov    eax,DWORD PTR [rip+0xd0a27]        # 0x3f6f38
326511 mov    QWORD PTR [rip+0xd0bf8],r8        # 0x3f7110
326518 jmp    0x326521
32651a mov    r8,QWORD PTR [rip+0xd0bef]        # 0x3f7110
326521 test   al,0x20
326523 jne    0x326544
326525 mov    rcx,QWORD PTR [rip+0xaf934]        # 0x3d5e60
32652c lea    rdx,[rip+0xd0bed]        # 0x3f7120
326533 or     eax,0x20
326536 xor    r9d,r9d
326539 mov    DWORD PTR [rip+0xd09f9],eax        # 0x3f6f38
32653f call   0x2cbd24
326544 lea    rcx,[rbp-0x30]
326548 call   0x2cd7ec
32654d mov    rcx,rax
326550 call   0x2ce5dc
326555 mov    r8,QWORD PTR [rip+0xbdce4]        # 0x3e4240
32655c lea    rdx,[rip+0xd0bbd]        # 0x3f7120
326563 mov    rcx,QWORD PTR [rip+0xaf8f6]        # 0x3d5e60
32656a mov    r9,rax
32656d call   0x2d2094
326572 xor    edx,edx
326574 mov    BYTE PTR [rip+0xd0b8d],r14b        # 0x3f7108
32657b mov    rcx,r15
32657e call   0x36ad68
326583 lea    rcx,[rbp-0x30]
326587 jmp    0x3266d6
32658c cmp    BYTE PTR [rip+0xd0b75],r12b        # 0x3f7108
326593 je     0x3266e4
326599 lea    rdx,[rsp+0x60]
32659e lea    rcx,[rsp+0x40]
3265a3 call   0x323a10 ; STRING getter=0x323a10 demo.stop
3265a8 mov    rcx,rax
3265ab call   0x2cdd44
3265b0 mov    rdx,rax
3265b3 lea    rcx,[rbp+0xd0]
3265ba call   0x2cc2cc
3265bf mov    eax,DWORD PTR [rip+0xd0973]        # 0x3f6f38
3265c5 test   al,0x40
3265c7 jne    0x32666c
3265cd or     eax,0x40
3265d0 lea    rdx,[rsp+0x40]
3265d5 lea    rcx,[rsp+0x40]
3265da mov    DWORD PTR [rip+0xd0958],eax        # 0x3f6f38
3265e0 call   0x2cc730
3265e5 mov    rcx,rax
3265e8 call   0x2cdca4
3265ed lea    rdx,[rbp-0x50]
3265f1 mov    rsi,rax
3265f4 lea    rcx,[rsp+0x41]
3265f9 call   0x323a48 ; STRING getter=0x323a48 ClientRun
3265fe mov    rcx,rax
326601 call   0x2cdd44
326606 lea    rdx,[rsp+0x42]
32660b mov    rdi,rax
32660e lea    rcx,[rsp+0x41]
326613 call   0x2cc730
326618 mov    rcx,rax
32661b call   0x2cdca4
326620 lea    rdx,[rbp-0x70]
326624 mov    rbx,rax
326627 lea    rcx,[rsp+0x41]
32662c call   0x323a2c ; STRING getter=0x323a2c RunConsoleCommand
326631 mov    rcx,rax
326634 call   0x2e9bdc
326639 mov    rcx,rax
32663c mov    rdx,rbx
32663f call   0x334224
326644 mov    rcx,rax
326647 mov    DWORD PTR [rsp+0x20],r13d
32664c mov    r9,rsi
32664f mov    r8d,r13d
326652 mov    rdx,rdi
326655 call   0x3349ac
32665a mov    r8,QWORD PTR [rax]
32665d mov    eax,DWORD PTR [rip+0xd08d5]        # 0x3f6f38
326663 mov    QWORD PTR [rip+0xd0b8e],r8        # 0x3f71f8
32666a jmp    0x326673
32666c mov    r8,QWORD PTR [rip+0xd0b85]        # 0x3f71f8
326673 test   al,al
326675 js     0x326697
326677 mov    rcx,QWORD PTR [rip+0xaf7e2]        # 0x3d5e60
32667e lea    rdx,[rip+0xd0b7b]        # 0x3f7200
326685 bts    eax,0x7
326689 xor    r9d,r9d
32668c mov    DWORD PTR [rip+0xd08a6],eax        # 0x3f6f38
326692 call   0x2cbd24
326697 lea    rcx,[rbp+0xd0]
32669e call   0x2cd7ec
3266a3 mov    rcx,rax
3266a6 call   0x2ce5dc
3266ab mov    r8,QWORD PTR [rip+0xbdb8e]        # 0x3e4240
3266b2 lea    rdx,[rip+0xd0b47]        # 0x3f7200
3266b9 mov    rcx,QWORD PTR [rip+0xaf7a0]        # 0x3d5e60
3266c0 mov    r9,rax
3266c3 call   0x2d2094
3266c8 lea    rcx,[rbp+0xd0]
3266cf mov    BYTE PTR [rip+0xd0a32],r12b        # 0x3f7108
3266d6 call   0x2cc4f4
3266db jmp    0x3266e4
3266dd mov    BYTE PTR [rip+0xd0a24],r12b        # 0x3f7108
3266e4 cmp    BYTE PTR [rip+0xccfbd],r12b        # 0x3f36a8 ; CONFIG Bools.instantunlockhandcuff value(+0x48)
3266eb movss  xmm6,DWORD PTR [rip+0xfffffffffff673e5]        # 0x28dad8 ; f32=0.02
3266f3 je     0x326735
3266f5 mov    rcx,r15
3266f8 call   0x36a1e4
3266fd test   al,al
3266ff je     0x326735
326701 movaps xmm1,xmm6
326704 lea    rcx,[rip+0xd0bcd]        # 0x3f72d8
32670b call   0x2e5b7c
326710 test   al,al
326712 je     0x326735
326714 lea    rdx,[rbp-0x70]
326718 lea    rcx,[rsp+0x40]
32671d call   0x323a7c ; STRING getter=0x323a7c RPC_ReqRemoveCuffs
326722 mov    rcx,rax
326725 call   0x2cdd94
32672a mov    rdx,rax
32672d mov    rcx,r15
326730 call   0x366c30
326735 cmp    BYTE PTR [rip+0xccfbc],r12b        # 0x3f36f8 ; CONFIG Bools.handcuffstuffFunny value(+0x48)
32673c movss  xmm9,DWORD PTR [rip+0xfffffffffff6ca0f]        # 0x293154 ; f32=2.9
326745 je     0x326839
32674b cmp    BYTE PTR [rip+0xc3166],r12b        # 0x3e98b8 ; CONFIG Bools.HandcuffStuff value(+0x48)
326752 jne    0x326839
326758 call   0x329120
32675d mov    rcx,rax
326760 mov    rbx,rax
326763 call   0x2caf08
326768 test   al,al
32676a je     0x326839
326770 mov    rcx,rbx
326773 call   0x2e0e9c
326778 test   al,al
32677a je     0x326839
326780 mov    rcx,rbx
326783 call   0x36b288
326788 test   al,al
32678a jne    0x326839
326790 lea    rdx,[rsp+0x50]
326795 mov    rcx,r15
326798 call   0x369164
32679d movsd  xmm0,QWORD PTR [rsp+0x50]
3267a3 lea    rdx,[rsp+0x70]
3267a8 mov    eax,DWORD PTR [rsp+0x58]
3267ac mov    rcx,rbx
3267af movsd  QWORD PTR [rsp+0x70],xmm0
3267b5 mov    DWORD PTR [rsp+0x78],eax
3267b9 call   0x3666b0
3267be mov    rcx,rbx
3267c1 movaps xmm7,xmm0
3267c4 call   0x36a1e4
3267c9 test   al,al
3267cb je     0x326839
3267cd comiss xmm9,xmm7
3267d1 jb     0x326807
3267d3 movaps xmm1,xmm6
3267d6 lea    rcx,[rip+0xd0aff]        # 0x3f72dc
3267dd call   0x2e5b7c
3267e2 test   al,al
3267e4 je     0x326807
3267e6 lea    rdx,[rbp-0x70]
3267ea lea    rcx,[rsp+0x40]
3267ef call   0x323a94 ; STRING getter=0x323a94 RPC_ReqForceMountNearest
3267f4 mov    rcx,rax
3267f7 call   0x32050c
3267fc mov    rdx,rax
3267ff mov    rcx,rbx
326802 call   0x366c30
326807 mov    dl,r14b
32680a mov    ecx,0x13
32680f call   0x2e8910
326814 test   al,al
326816 je     0x326839
326818 lea    rdx,[rbp-0x70]
32681c lea    rcx,[rsp+0x40]
326821 call   0x323ab0 ; STRING getter=0x323ab0 RPC_ReqDoRestrainedPush
326826 mov    rcx,rax
326829 call   0x3204e4
32682e mov    rdx,rax
326831 mov    rcx,rbx
326834 call   0x366c30
326839 cmp    BYTE PTR [rip+0xcce18],r12b        # 0x3f3658 ; CONFIG Bools.handcuffspammer value(+0x48)
326840 je     0x3268b3
326842 movaps xmm1,xmm6
326845 lea    rcx,[rip+0xd0a94]        # 0x3f72e0
32684c call   0x2e5b7c
326851 test   al,al
326853 je     0x3268b3
326855 mov    rcx,r15
326858 call   0x368a84
32685d mov    rcx,rax
326860 mov    rbx,rax
326863 call   0x2caf08
326868 test   al,al
32686a je     0x3268b3
32686c mov    rcx,rbx
32686f call   0x37154c
326874 mov    rcx,rax
326877 mov    rdx,rax
32687a call   0x2caf08
32687f test   al,al
326881 je     0x3268b3
326883 mov    rcx,rdx
326886 call   0x37261c
32688b cmp    eax,0xcdf51354
326890 jne    0x3268b3
326892 lea    rdx,[rbp-0x70]
326896 lea    rcx,[rsp+0x40]
32689b call   0x323acc ; STRING getter=0x323acc RPC_ReqCompleteUnlockMiniGame
3268a0 mov    rcx,rax
3268a3 call   0x3205fc
3268a8 mov    rdx,rax
3268ab mov    rcx,rbx
3268ae call   0x366c30
3268b3 cmp    BYTE PTR [rip+0xccb1e],r12b        # 0x3f33d8 ; CONFIG Bools.RotateShit value(+0x48)
3268ba je     0x326a20
3268c0 mov    dl,r14b
3268c3 mov    ecx,0x3c
3268c8 call   0x2e5e4c
3268cd movsd  xmm6,QWORD PTR [rip+0xfffffffffff6d8e3]        # 0x2941b8
3268d5 test   al,al
3268d7 je     0x3268f4
3268d9 movss  xmm0,DWORD PTR [rip+0xd0a03]        # 0x3f72e4
3268e1 cvtps2pd xmm0,xmm0
3268e4 addsd  xmm0,xmm6
3268e8 cvtpd2ps xmm0,xmm0
3268ec movss  DWORD PTR [rip+0xd09f0],xmm0        # 0x3f72e4
3268f4 mov    dl,r14b
3268f7 mov    ecx,0x3d
3268fc call   0x2e5e4c
326901 test   al,al
326903 je     0x326920
326905 movss  xmm0,DWORD PTR [rip+0xd09d7]        # 0x3f72e4
32690d cvtps2pd xmm0,xmm0
326910 subsd  xmm0,xmm6
326914 cvtpd2ps xmm0,xmm0
326918 movss  DWORD PTR [rip+0xd09c4],xmm0        # 0x3f72e4
326920 mov    dl,r14b
326923 mov    ecx,0x3e
326928 call   0x2e5e4c
32692d test   al,al
32692f je     0x32694c
326931 movss  xmm0,DWORD PTR [rip+0xd09af]        # 0x3f72e8
326939 cvtps2pd xmm0,xmm0
32693c addsd  xmm0,xmm6
326940 cvtpd2ps xmm0,xmm0
326944 movss  DWORD PTR [rip+0xd099c],xmm0        # 0x3f72e8
32694c mov    dl,r14b
32694f mov    ecx,0x3f
326954 call   0x2e5e4c
326959 test   al,al
32695b je     0x326978
32695d movss  xmm0,DWORD PTR [rip+0xd0983]        # 0x3f72e8
326965 cvtps2pd xmm0,xmm0
326968 subsd  xmm0,xmm6
32696c cvtpd2ps xmm0,xmm0
326970 movss  DWORD PTR [rip+0xd0970],xmm0        # 0x3f72e8
326978 mov    rcx,r15
32697b call   0x368a84
326980 mov    rcx,rax
326983 mov    rdi,rax
326986 call   0x2caf08
32698b test   al,al
32698d je     0x326a20
326993 mov    rcx,rdi
326996 call   0x2e5a54
32699b mov    rcx,rax
32699e mov    rdx,rax
3269a1 call   0x2caf08
3269a6 test   al,al
3269a8 je     0x326a20
3269aa mov    rcx,rdx
3269ad call   0x2d6354
3269b2 lea    rdx,[rsp+0x60]
3269b7 mov    rbx,rax
3269ba lea    rcx,[rsp+0x40]
3269bf call   0x323bac
3269c4 mov    rcx,rax
3269c7 call   0x2e3614
3269cc movabs rsi,0xcbf29ce484222325
3269d6 mov    rcx,rax
3269d9 mov    rdx,rsi
3269dc call   0x2e5b4c
3269e1 cmp    rbx,rax
3269e4 jne    0x326a2a
3269e6 movss  xmm2,DWORD PTR [rip+0xd08f6]        # 0x3f72e4
3269ee lea    rcx,[rbp-0x30]
3269f2 movss  xmm1,DWORD PTR [rip+0xd08ee]        # 0x3f72e8
3269fa xorps  xmm3,xmm3
3269fd call   0x3c7ba8
326a02 mov    BYTE PTR [rip+0xd08e3],r14b        # 0x3f72ec
326a09 movsd  xmm0,QWORD PTR [rax]
326a0d movsd  QWORD PTR [rdi+0x300],xmm0
326a15 mov    eax,DWORD PTR [rax+0x8]
326a18 mov    DWORD PTR [rdi+0x308],eax
326a1e jmp    0x326a2a
326a20 movabs rsi,0xcbf29ce484222325
326a2a cmp    BYTE PTR [rip+0xd08bb],r12b        # 0x3f72ec
326a31 je     0x326aea
326a37 cmp    BYTE PTR [rip+0xcc99a],r12b        # 0x3f33d8 ; CONFIG Bools.RotateShit value(+0x48)
326a3e jne    0x326aea
326a44 mov    rcx,r15
326a47 call   0x368a84
326a4c mov    rcx,rax
326a4f mov    rdi,rax
326a52 call   0x2caf08
326a57 test   al,al
326a59 je     0x326aea
326a5f mov    rcx,rdi
326a62 call   0x2e5a54
326a67 mov    rcx,rax
326a6a mov    rdx,rax
326a6d call   0x2caf08
326a72 test   al,al
326a74 je     0x326aea
326a76 mov    rcx,rdx
326a79 call   0x2d6354
326a7e lea    rdx,[rsp+0x60]
326a83 mov    rbx,rax
326a86 lea    rcx,[rsp+0x40]
326a8b call   0x323bac
326a90 mov    rcx,rax
326a93 call   0x2e3614
326a98 mov    rcx,rax
326a9b mov    rdx,rsi
326a9e call   0x2e5b4c
326aa3 cmp    rbx,rax
326aa6 jne    0x326aea
326aa8 xorps  xmm3,xmm3
326aab lea    rcx,[rbp-0x30]
326aaf xorps  xmm2,xmm2
326ab2 xorps  xmm1,xmm1
326ab5 call   0x3c7ba8
326aba mov    DWORD PTR [rip+0xd0820],0x0        # 0x3f72e4
326ac4 mov    DWORD PTR [rip+0xd081a],0x0        # 0x3f72e8
326ace mov    BYTE PTR [rip+0xd0817],r12b        # 0x3f72ec
326ad5 movsd  xmm0,QWORD PTR [rax]
326ad9 movsd  QWORD PTR [rdi+0x300],xmm0
326ae1 mov    eax,DWORD PTR [rax+0x8]
326ae4 mov    DWORD PTR [rdi+0x308],eax
326aea cmp    BYTE PTR [rip+0xcc3e7],r12b        # 0x3f2ed8 ; CONFIG Bools.fastplace value(+0x48)
326af1 je     0x326b47
326af3 mov    rcx,r15
326af6 call   0x368a84
326afb mov    rcx,rax
326afe mov    rdx,rax
326b01 call   0x2caf08
326b06 test   al,al
326b08 je     0x326b47
326b0a mov    rcx,rdx
326b0d call   0x3717c0
326b12 mov    rcx,rax
326b15 mov    r8,rax
326b18 call   0x2caf08
326b1d test   al,al
326b1f je     0x326b47
326b21 mov    edx,0x348
326b26 mov    rcx,r8
326b29 call   0x2dee3c
326b2e mov    rdx,QWORD PTR [rax]
326b31 mov    rcx,rdx
326b34 call   0x2caf08
326b39 test   al,al
326b3b je     0x326b47
326b3d mov    DWORD PTR [rdx+0x170],0x3f800000
326b47 cmp    BYTE PTR [rip+0xccbfa],r12b        # 0x3f3748 ; CONFIG Bools.SpamTorch value(+0x48)
326b4e mov    edi,0x400
326b53 movss  xmm7,DWORD PTR [rip+0xfffffffffff67669]        # 0x28e1c4 ; f32=0.005
326b5b je     0x326bff
326b61 mov    rcx,r15
326b64 call   0x368a84
326b69 mov    rcx,rax
326b6c mov    rdx,rax
326b6f call   0x2caf08
326b74 test   al,al
326b76 je     0x326bff
326b7c mov    rcx,rdx
326b7f call   0x371688
326b84 mov    rcx,rax
326b87 mov    rbx,rax
326b8a call   0x2caf08
326b8f test   al,al
326b91 je     0x326bff
326b93 movaps xmm1,xmm7
326b96 lea    rcx,[rip+0xd0753]        # 0x3f72f0
326b9d call   0x2e5b7c
326ba2 test   al,al
326ba4 je     0x326bff
326ba6 mov    edx,0x1d8
326bab mov    rcx,rbx
326bae call   0x2dee3c
326bb3 movzx  ecx,WORD PTR [rax]
326bb6 cmp    cx,di
326bb9 jne    0x326bd3
326bbb lea    rdx,[rbp+0x10]
326bbf lea    rcx,[rsp+0x40]
326bc4 call   0x323bc0 ; STRING getter=0x323bc0 Ignite
326bc9 mov    rcx,rax
326bcc call   0x2cdcf4
326bd1 jmp    0x326bf4
326bd3 mov    eax,0x402
326bd8 cmp    cx,ax
326bdb jne    0x326bff
326bdd lea    rdx,[rsp+0x60]
326be2 lea    rcx,[rsp+0x40]
326be7 call   0x323be0 ; STRING getter=0x323be0 Extinguish
326bec mov    rcx,rax
326bef call   0x2e9c54
326bf4 mov    rdx,rax
326bf7 mov    rcx,rbx
326bfa call   0x366c30
326bff cmp    BYTE PTR [rip+0xcc782],r12b        # 0x3f3388 ; CONFIG Bools.InstantRevive value(+0x48)
326c06 je     0x326dca
326c0c mov    dl,r14b
326c0f mov    ecx,0x12
326c14 call   0x2e5e4c
326c19 test   al,al
326c1b je     0x326db5
326c21 mov    rcx,r15
326c24 call   0x36a2f4
326c29 mov    rcx,rax
326c2c mov    rdi,rax
326c2f call   0x2caf08
326c34 test   al,al
326c36 je     0x326dca
326c3c mov    rcx,rdi
326c3f call   0x2e5a54
326c44 mov    rcx,rax
326c47 mov    rdx,rax
326c4a call   0x2caf08
326c4f test   al,al
326c51 je     0x326dca
326c57 mov    rcx,rdx
326c5a call   0x2d6354
326c5f lea    rdx,[rsp+0x60]
326c64 mov    rbx,rax
326c67 lea    rcx,[rsp+0x40]
326c6c call   0x323bfc ; STRING getter=0x323bfc BasePlayer
326c71 mov    rcx,rax
326c74 call   0x2e9c54
326c79 mov    rcx,rax
326c7c mov    rdx,rsi
326c7f call   0x2e5b4c
326c84 cmp    rbx,rax
326c87 jne    0x326dca
326c8d xor    edx,edx
326c8f mov    rcx,r15
326c92 call   0x2cd32c
326c97 xor    edx,edx
326c99 mov    rcx,rdi
326c9c mov    r12,rax
326c9f call   0x2cd32c
326ca4 mov    rcx,rdi
326ca7 mov    rbx,rax
326caa call   0x36b288
326caf mov    sil,al
326cb2 test   rbx,rbx
326cb5 je     0x326cc4
326cb7 cmp    rbx,r12
326cba jne    0x326cc4
326cbc mov    bl,r14b
326cbf xor    r12d,r12d
326cc2 jmp    0x326cca
326cc4 xor    r12d,r12d
326cc7 mov    bl,r12b
326cca xor    r8d,r8d
326ccd lea    rdx,[rbp-0x70]
326cd1 mov    rcx,rdi
326cd4 call   0x369e70
326cd9 mov    rdx,rax
326cdc lea    rcx,[rip+0xb057d]        # 0x3d7260
326ce3 call   0x2df608
326ce8 cmp    DWORD PTR [rax+0x24],r14d
326cec je     0x326cf5
326cee test   bl,bl
326cf0 mov    bl,r12b
326cf3 je     0x326cf8
326cf5 mov    bl,r14b
326cf8 lea    rcx,[rbp-0x70]
326cfc call   0x2cc4f4
326d01 mov    eax,DWORD PTR [rip+0xcd3a1]        # 0x3f40a8 ; CONFIG i.reviveindex value(+0x48)
326d07 cmp    eax,r14d
326d0a jne    0x326d4f
326d0c test   sil,sil
326d0f je     0x326dca
326d15 test   bl,bl
326d17 je     0x326dca
326d1d lea    rdx,[rbp-0x70]
326d21 lea    rcx,[rsp+0x40]
326d26 call   0x323c18 ; STRING getter=0x323c18 RPC_KeepAlive
326d2b mov    rcx,rax
326d2e call   0x2dd188
326d33 mov    rdx,rax
326d36 mov    rcx,rdi
326d39 call   0x366c30
326d3e lea    rdx,[rsp+0x60]
326d43 lea    rcx,[rsp+0x40]
326d48 call   0x323c4c ; STRING getter=0x323c4c RPC_Assist
326d4d jmp    0x326da0
326d4f test   eax,eax
326d51 jne    0x326dca
326d53 test   sil,sil
326d56 je     0x326dca
326d58 movss  xmm1,DWORD PTR [rip+0xfffffffffff6d44c]        # 0x2941ac ; f32=0.21
326d60 lea    rcx,[rip+0xd058d]        # 0x3f72f4
326d67 call   0x2e5b7c
326d6c test   al,al
326d6e je     0x326dca
326d70 lea    rdx,[rbp-0x70]
326d74 lea    rcx,[rsp+0x40]
326d79 call   0x323c68 ; STRING getter=0x323c68 RPC_KeepAlive
326d7e mov    rcx,rax
326d81 call   0x2dd188
326d86 mov    rdx,rax
326d89 mov    rcx,rdi
326d8c call   0x366c30
326d91 lea    rdx,[rsp+0x60]
326d96 lea    rcx,[rsp+0x40]
326d9b call   0x323c8c ; STRING getter=0x323c8c RPC_Assist
326da0 mov    rcx,rax
326da3 call   0x2e9c54
326da8 mov    rdx,rax
326dab mov    rcx,rdi
326dae call   0x366c30
326db3 jmp    0x326dca
326db5 call   0x2e6240
326dba addss  xmm0,DWORD PTR [rip+0xfffffffffff6c2e6]        # 0x2930a8 ; f32=0.2
326dc2 movss  DWORD PTR [rip+0xd052a],xmm0        # 0x3f72f4
326dca cmp    BYTE PTR [rip+0xc87d0],r12b        # 0x3ef5a1
326dd1 movss  xmm11,DWORD PTR [rip+0xfffffffffff66476]        # 0x28d250 ; f32=0.5
326dda je     0x326eeb
326de0 movaps xmm1,xmm11
326de4 lea    rcx,[rip+0xd050d]        # 0x3f72f8
326deb call   0x2e5b7c
326df0 test   al,al
326df2 je     0x326eeb
326df8 mov    rcx,r15
326dfb call   0x36b288
326e00 test   al,al
326e02 je     0x326e22
326e04 mov    rcx,r15
326e07 call   0x3693b0
326e0c test   al,al
326e0e je     0x326e22
326e10 xor    edx,edx
326e12 mov    rcx,r15
326e15 call   0x36a20c
326e1a test   al,al
326e1c jne    0x326eeb
326e22 mov    rdi,QWORD PTR [rip+0xbf0df]        # 0x3e5f08
326e29 mov    rcx,rdi
326e2c call   0x2caf08
326e31 test   al,al
326e33 je     0x326eeb
326e39 mov    rcx,rdi
326e3c call   0x2e0e9c
326e41 test   al,al
326e43 je     0x326eeb
326e49 lea    rdx,[rsp+0x50]
326e4e mov    rcx,r15
326e51 call   0x369164
326e56 movsd  xmm0,QWORD PTR [rsp+0x50]
326e5c lea    rdx,[rsp+0x70]
326e61 mov    eax,DWORD PTR [rsp+0x58]
326e65 mov    rcx,rdi
326e68 movsd  QWORD PTR [rsp+0x70],xmm0
326e6e mov    DWORD PTR [rsp+0x78],eax
326e72 call   0x3666b0
326e77 comiss xmm9,xmm0
326e7b jbe    0x326eeb
326e7d mov    edx,0x1d8
326e82 mov    rcx,rdi
326e85 call   0x2dee3c
326e8a mov    ebx,0x10
326e8f cmp    WORD PTR [rax],bx
326e92 jne    0x326ef0
326e94 mov    edx,0x298
326e99 mov    rcx,rdi
326e9c call   0x2dee3c
326ea1 cmp    BYTE PTR [rax],r12b
326ea4 jne    0x326ef0
326ea6 lea    rcx,[rip+0xcd77b]        # 0x3f4628
326ead call   0x2d8ad8
326eb2 cmp    rax,0x4
326eb6 jne    0x326ef0
326eb8 lea    rcx,[rip+0xcd769]        # 0x3f4628
326ebf call   0x2cd7ec
326ec4 lea    rdx,[rbp-0x70]
326ec8 mov    rbx,rax
326ecb lea    rcx,[rsp+0x40]
326ed0 call   0x323d14 ; STRING getter=0x323d14 UnlockWithCode
326ed5 mov    rcx,rax
326ed8 call   0x2d866c
326edd mov    rdx,rax
326ee0 mov    r8,rbx
326ee3 mov    rcx,rdi
326ee6 call   0x366d7c
326eeb mov    ebx,0x10
326ef0 cmp    BYTE PTR [rip+0xc2ec1],r12b        # 0x3e9db8 ; CONFIG Bools.Autolock value(+0x48)
326ef7 je     0x3270b9
326efd mov    rcx,r15
326f00 call   0x36b288
326f05 test   al,al
326f07 je     0x326f27
326f09 mov    rcx,r15
326f0c call   0x3693b0
326f11 test   al,al
326f13 je     0x326f27
326f15 xor    edx,edx
326f17 mov    rcx,r15
326f1a call   0x36a20c
326f1f test   al,al
326f21 jne    0x3270b9
326f27 mov    rdi,QWORD PTR [rip+0xbefd2]        # 0x3e5f00
326f2e mov    rcx,rdi
326f31 call   0x2caf08
326f36 test   al,al
326f38 je     0x3270a7
326f3e mov    rcx,rdi
326f41 call   0x2e0e9c
326f46 test   al,al
326f48 je     0x3270a7
326f4e movaps xmm1,xmm15
326f52 lea    rcx,[rip+0xd03a3]        # 0x3f72fc
326f59 call   0x2e5b7c
326f5e test   al,al
326f60 je     0x3270b9
326f66 lea    rdx,[rsp+0x50]
326f6b mov    rcx,r15
326f6e call   0x369164
326f73 movsd  xmm0,QWORD PTR [rsp+0x50]
326f79 lea    rdx,[rsp+0x70]
326f7e mov    eax,DWORD PTR [rsp+0x58]
326f82 mov    rcx,rdi
326f85 movsd  QWORD PTR [rsp+0x70],xmm0
326f8b mov    DWORD PTR [rsp+0x78],eax
326f8f call   0x3666b0
326f94 movss  xmm1,DWORD PTR [rip+0xfffffffffff6c1ec]        # 0x293188 ; f32=6
326f9c comiss xmm1,xmm0
326f9f jbe    0x3270b9
326fa5 mov    edx,0x288
326faa mov    rcx,rdi
326fad call   0x2dee3c
326fb2 mov    rcx,rdi
326fb5 mov    edx,0x1d8
326fba mov    rsi,rax
326fbd call   0x2dee3c
326fc2 cmp    WORD PTR [rax],bx
326fc5 je     0x3270b9
326fcb lea    r13,[rip+0xcd6c6]        # 0x3f4698
326fd2 mov    rcx,r13
326fd5 call   0x2d8ad8
326fda cmp    rax,0x4
326fde jne    0x3270b9
326fe4 mov    sil,BYTE PTR [rsi]
326fe7 test   sil,sil
326fea jne    0x32701e
326fec mov    rcx,r13
326fef call   0x2cd7ec
326ff4 lea    rdx,[rbp-0x70]
326ff8 mov    rbx,rax
326ffb lea    rcx,[rsp+0x40]
327000 call   0x323e94 ; STRING getter=0x323e94 RPC_ChangeCode
327005 mov    rcx,rax
327008 call   0x2d866c
32700d mov    rdx,rax
327010 xor    r9d,r9d
327013 mov    r8,rbx
327016 mov    rcx,rdi
327019 call   0x366e38
32701e mov    ecx,DWORD PTR [rip+0xbe4a4]        # 0x3e54c8 ; CONFIG K.ReplaceDoorKey value(+0x48)
327024 mov    dl,r14b
327027 call   0x2e5e4c
32702c test   al,al
32702e je     0x32703c
327030 cmp    BYTE PTR [rip+0xbe1a1],r12b        # 0x3e51d8 ; CONFIG Bools.AutoReplaceDoor value(+0x48)
327037 mov    al,r14b
32703a jne    0x32703f
32703c mov    al,r12b
32703f test   sil,sil
327042 je     0x3270b9
327044 cmp    BYTE PTR [rip+0xcc10d],r12b        # 0x3f3158 ; CONFIG Bools.StealUnlockedDoors value(+0x48)
32704b je     0x3270b9
32704d test   al,al
32704f jne    0x3270b9
327051 mov    rcx,r13
327054 call   0x2cd7ec
327059 lea    rdx,[rbp-0x70]
32705d mov    rbx,rax
327060 lea    rcx,[rsp+0x40]
327065 call   0x323f44 ; STRING getter=0x323f44 RPC_ChangeCode
32706a mov    rcx,rax
32706d call   0x2d866c
327072 mov    rdx,rax
327075 xor    r9d,r9d
327078 mov    r8,rbx
32707b mov    rcx,rdi
32707e call   0x366e38
327083 lea    rdx,[rsp+0x60]
327088 lea    rcx,[rsp+0x40]
32708d call   0x323fac
327092 mov    rcx,rax
327095 call   0x2e3614
32709a mov    rdx,rax
32709d mov    rcx,rdi
3270a0 call   0x366c30
3270a5 jmp    0x3270b9
3270a7 call   0x2e6240
3270ac addss  xmm0,xmm15
3270b1 movss  DWORD PTR [rip+0xd0243],xmm0        # 0x3f72fc
3270b9 cmp    BYTE PTR [rip+0xcc8b8],r12b        # 0x3f3978 ; CONFIG Bools.AutoRespawn value(+0x48)
3270c0 je     0x3270e7
3270c2 mov    rcx,r15
3270c5 call   0x3693b0
3270ca test   al,al
3270cc je     0x3270e7
3270ce movaps xmm1,xmm11
3270d2 lea    rcx,[rip+0xd0227]        # 0x3f7300
3270d9 call   0x2e5b7c
3270de test   al,al
3270e0 je     0x3270e7
3270e2 call   0x32a014
3270e7 cmp    BYTE PTR [rip+0xcc8da],r12b        # 0x3f39c8 ; CONFIG Bools.AutoSuicide value(+0x48)
3270ee je     0x32711d
3270f0 mov    ecx,DWORD PTR [rip+0xcd1c2]        # 0x3f42b8 ; CONFIG K.SuicideVirtualKey value(+0x48)
3270f6 mov    dl,r14b
3270f9 call   0x2e5e4c
3270fe test   al,al
327100 je     0x32711d
327102 movaps xmm1,xmm7
327105 lea    rcx,[rip+0xd01f8]        # 0x3f7304
32710c call   0x2e5b7c
327111 test   al,al
327113 je     0x32711d
327115 mov    rcx,r15
327118 call   0x36b004
32711d cmp    BYTE PTR [rip+0xc2474],r12b        # 0x3e9598 ; CONFIG Bools.BruteForceCodes value(+0x48)
327124 je     0x3274b4
32712a mov    rcx,r15
32712d call   0x36a2f4
327132 mov    rcx,rax
327135 mov    rdi,rax
327138 call   0x2caf08
32713d test   al,al
32713f je     0x3274bb
327145 mov    rcx,rdi
327148 call   0x2e0e9c
32714d test   al,al
32714f je     0x3274bb
327155 mov    rcx,rdi
327158 call   0x2e5a54
32715d mov    rcx,rax
327160 mov    rdx,rax
327163 call   0x2caf08
327168 test   al,al
32716a je     0x3274bb
327170 mov    rcx,rdx
327173 call   0x2d6354
327178 lea    rdx,[rsp+0x60]
32717d mov    rbx,rax
327180 lea    rcx,[rsp+0x40]
327185 call   0x323ffc ; STRING getter=0x323ffc CodeLock
32718a mov    rcx,rax
32718d call   0x2e9b8c
327192 movabs rsi,0xcbf29ce484222325
32719c mov    rcx,rax
32719f mov    rdx,rsi
3271a2 call   0x2e5b4c
3271a7 cmp    rbx,rax
3271aa je     0x3271d6
3271ac lea    rdx,[rbp-0x70]
3271b0 lea    rcx,[rsp+0x40]
3271b5 call   0x32404c ; STRING getter=0x32404c DigitSendCodeLock
3271ba mov    rcx,rax
3271bd call   0x2e9bdc
3271c2 mov    rcx,rax
3271c5 mov    rdx,rsi
3271c8 call   0x2e5b4c
3271cd cmp    rbx,rax
3271d0 jne    0x3274bb
3271d6 mov    rdx,QWORD PTR [rdi+0x48]
3271da mov    rcx,rdx
3271dd call   0x2caf08
3271e2 test   al,al
3271e4 je     0x3274bb
3271ea mov    eax,DWORD PTR [rdx+0x38]
3271ed mov    rcx,rdi
3271f0 mov    edx,0x1d8
3271f5 mov    DWORD PTR [rbp+0x10],eax
3271f8 call   0x2dee3c
3271fd mov    ecx,0x10
327202 cmp    WORD PTR [rax],cx
327205 mov    rcx,r15
327208 jne    0x32747d
32720e mov    bl,BYTE PTR [rdi+0x298]
327214 call   0x3693b0
327219 test   al,al
32721b jne    0x3274bb
327221 xor    edx,edx
327223 mov    rcx,r15
327226 call   0x36a20c
32722b test   al,al
32722d jne    0x3274bb
327233 mov    rcx,r15
327236 call   0x36b288
32723b or     al,bl
32723d jne    0x3274bb
327243 call   0x2e6240
327248 comiss xmm0,DWORD PTR [rip+0xd00b9]        # 0x3f7308
32724f jbe    0x3274bb
327255 call   0x2e6240
32725a movss  xmm9,DWORD PTR [rip+0xfffffffffff65ff1]        # 0x28d254 ; f32=1
327263 movsxd rax,DWORD PTR [rip+0xcb8a2]        # 0x3f2b0c
32726a addss  xmm0,xmm9
32726f movss  DWORD PTR [rip+0xd0091],xmm0        # 0x3f7308
327277 cmp    eax,0x2710
32727c jg     0x3273c7
327282 lea    rcx,[rip+0xffffffffffef15ff]        # 0x218888
327289 mov    rbx,rax
32728c call   0x2d93e8
327291 cmp    rbx,rax
327294 jb     0x3272a5
327296 lea    rcx,[rip+0xffffffffffef15eb]        # 0x218888
32729d call   0x2d93e8
3272a2 mov    rbx,rax
3272a5 lea    rcx,[rip+0xffffffffffef15dc]        # 0x218888
3272ac call   0x2d93e8
3272b1 mov    QWORD PTR [rsp+0x60],rax
3272b6 cmp    rbx,rax
3272b9 jae    0x3273c7
3272bf mov    rdx,rbx
3272c2 lea    rcx,[rip+0xffffffffffef15bf]        # 0x218888
3272c9 call   0x2d4d20
3272ce lea    rcx,[rip+0xfffffffffff21bc3]        # 0x248e98
3272d5 mov    r12,rax
3272d8 call   0x2d1978
3272dd lea    rcx,[rip+0xfffffffffff21bb4]        # 0x248e98
3272e4 mov    rsi,rax
3272e7 call   0x2d79c0
3272ec mov    r13,rax
3272ef cmp    rsi,rax
3272f2 je     0x327310
3272f4 mov    rdx,r12
3272f7 mov    rcx,rsi
3272fa call   0x2cef30
3272ff test   al,al
327301 jne    0x32746a
327307 add    rsi,0x20
32730b cmp    rsi,r13
32730e jne    0x3272f4
327310 lea    rdx,[rbp+0x10]
327314 lea    rcx,[rip+0xbeb15]        # 0x3e5e30
32731b call   0x2ef6e4
327320 add    DWORD PTR [rax],r14d
327323 call   0x31581c
327328 lea    rdx,[rbp+0x10]
32732c movaps xmm6,xmm0
32732f lea    rcx,[rip+0xbeaba]        # 0x3e5df0
327336 call   0x2ef704
32733b mov    rcx,r12
32733e movss  DWORD PTR [rax],xmm6
327342 call   0x2cd7ec
327347 mov    rdx,rax
32734a lea    rcx,[rip+0xffffffffffef1517]        # 0x218868
327351 call   0x2d4c68
327356 mov    rcx,r12
327359 mov    BYTE PTR [rip+0xbea84],0x0        # 0x3e5de4
327360 call   0x2cd7ec
327365 lea    rdx,[rbp-0x70]
327369 mov    rbx,rax
32736c lea    rcx,[rsp+0x40]
327371 call   0x324068 ; STRING getter=0x324068 UnlockWithCode
327376 mov    rcx,rax
327379 call   0x2d866c
32737e mov    rdx,rax
327381 mov    r8,rbx
327384 mov    rcx,rdi
327387 call   0x366d7c
32738c lea    rdx,[rsp+0x60]
327391 lea    rcx,[rsp+0x40]
327396 call   0x324098 ; STRING getter=0x324098 TryUnlock
32739b mov    rcx,rax
32739e call   0x2cdd44
3273a3 mov    rdx,rax
3273a6 mov    rcx,rdi
3273a9 call   0x366c30
3273ae add    DWORD PTR [rip+0xbea33],r14d        # 0x3e5de8
3273b5 lea    rcx,[rip+0xfffffffffff21adc]        # 0x248e98
3273bc mov    rdx,r12
3273bf call   0x2d901c
3273c4 xor    r12d,r12d
3273c7 call   0x318724
3273cc cmp    BYTE PTR [rip+0xcbec5],r12b        # 0x3f3298 ; CONFIG Bools.Adminmode value(+0x48)
3273d3 je     0x3274f8
3273d9 mov    rax,QWORD PTR [rip+0xafb20]        # 0x3d6f00
3273e0 mov    rdx,QWORD PTR [rax+0xf0c90b0]
3273e7 mov    rcx,rdx
3273ea call   0x2caf08
3273ef test   al,al
3273f1 je     0x327414
3273f3 mov    rdx,QWORD PTR [rdx+0xb8]
3273fa mov    rcx,rdx
3273fd call   0x2caf08
327402 test   al,al
327404 je     0x327414
327406 mov    eax,0x3f800000
32740b mov    DWORD PTR [rdx+0x58],eax
32740e mov    DWORD PTR [rdx+0x3c4],eax
327414 mov    rcx,r15
327417 call   0x3693b0
32741c xor    al,r14b
32741f lea    rcx,[rip+0xcd0d2]        # 0x3f44f8 ; CONFIG K.DebugVirtualKey value(+0x48)
327426 mov    dl,al
327428 call   0x2e89e4
32742d test   al,al
32742f je     0x327537
327435 call   0x32957c
32743a mov    rcx,rax
32743d mov    rbx,rax
327440 call   0x2caf08
327445 test   al,al
327447 je     0x327537
32744d call   0x3247cc
327452 test   al,al
327454 jne    0x3274c9
327456 mov    rcx,rbx
327459 mov    BYTE PTR [rip+0xbea11],r14b        # 0x3e5e71
327460 call   0x370b50
327465 jmp    0x3274ee
32746a add    rbx,r14
32746d cmp    rbx,QWORD PTR [rsp+0x60]
327472 jb     0x3272bf
327478 jmp    0x3273c4
32747d call   0x3693b0
327482 test   al,al
327484 jne    0x3274bb
327486 xor    edx,edx
327488 mov    rcx,r15
32748b call   0x36a20c
327490 movss  xmm9,DWORD PTR [rip+0xfffffffffff65dbb]        # 0x28d254 ; f32=1
327499 test   al,al
32749b jne    0x3273c7
3274a1 mov    DWORD PTR [rip+0xbe940],r12d        # 0x3e5de8
3274a8 mov    BYTE PTR [rip+0xbe935],r14b        # 0x3e5de4
3274af jmp    0x3273c7
3274b4 mov    BYTE PTR [rip+0xbe929],r12b        # 0x3e5de4
3274bb movss  xmm9,DWORD PTR [rip+0xfffffffffff65d90]        # 0x28d254 ; f32=1
3274c4 jmp    0x3273c7
3274c9 call   0x329714
3274ce mov    rcx,rax
3274d1 mov    r8,rax
3274d4 call   0x2caf08
3274d9 test   al,al
3274db je     0x3274ee
3274dd xor    edx,edx
3274df mov    BYTE PTR [rip+0xbe98b],r12b        # 0x3e5e71
3274e6 mov    rcx,r8
3274e9 call   0x36ce18
3274ee mov    rcx,r15
3274f1 call   0x36817c
3274f6 jmp    0x327537
3274f8 cmp    BYTE PTR [rip+0xbe972],r12b        # 0x3e5e71
3274ff je     0x327537
327501 call   0x3247cc
327506 test   al,al
327508 je     0x327530
32750a call   0x329714
32750f mov    rcx,rax
327512 mov    r8,rax
327515 call   0x2caf08
32751a test   al,al
32751c je     0x327530
32751e xor    edx,edx
327520 mov    rcx,r8
327523 call   0x36ce18
327528 mov    rcx,r15
32752b call   0x36817c
327530 mov    BYTE PTR [rip+0xbe93a],r12b        # 0x3e5e71
327537 call   0x2e069c
32753c xor    r13d,r13d
32753f mov    r12,rax
327542 cmp    BYTE PTR [rip+0xbe928],r13b        # 0x3e5e71
327549 je     0x327cb0
32754f cmp    BYTE PTR [rip+0xcc0b2],r13b        # 0x3f3608 ; CONFIG Bools.debuginteractive value(+0x48)
327556 je     0x327ca7
32755c mov    rcx,rax
32755f call   0x2caf08
327564 test   al,al
327566 je     0x327ca7
32756c mov    rcx,r12
32756f call   0x3297f0
327574 mov    rcx,rax
327577 mov    rbx,rax
32757a call   0x2caf08
32757f test   al,al
327581 je     0x327ca7
327587 movss  xmm3,DWORD PTR [rip+0xfffffffffff6658d]        # 0x28db1c ; f32=10
32758f lea    rcx,[rbp-0x80]
327593 xorps  xmm2,xmm2
327596 xorps  xmm1,xmm1
327599 call   0x3c7ba8
32759e lea    rdx,[rbp+0x20]
3275a2 mov    rcx,rbx
3275a5 call   0x3747d4
3275aa lea    rdx,[rbp+0xd0]
3275b1 mov    rcx,rbx
3275b4 call   0x374aa4
3275b9 xorps  xmm0,xmm0
3275bc lea    rcx,[rbp+0xf0]
3275c3 movups XMMWORD PTR [rbp+0x100],xmm0
3275ca movups XMMWORD PTR [rbp+0x10c],xmm0
3275d1 movups XMMWORD PTR [rbp+0xf0],xmm0
3275d8 call   0x2e4f04
3275dd lea    r8,[rbp+0xd0]
3275e4 lea    rdx,[rbp-0x80]
3275e8 lea    rcx,[rbp-0x30]
3275ec call   0x320db4
3275f1 mov    r8,rax
3275f4 lea    rdx,[rbp+0x0]
3275f8 lea    rcx,[rbp+0x20]
3275fc call   0x2df708
327601 call   0x2e6a6c
327606 mov    ebx,eax
327608 lea    r8,[rbp+0x20]
32760c lea    rdx,[rbp+0xa0]
327613 or     ebx,0x48a30900
327619 lea    rcx,[rbp+0x0]
32761d call   0x2df6cc
327622 movss  xmm2,DWORD PTR [rip+0xfffffffffff6bb56]        # 0x293180 ; f32=5
32762a lea    rdx,[rsp+0x50]
32762f mov    DWORD PTR [rsp+0x28],r13d
327634 lea    rcx,[rsp+0x70]
327639 mov    r9d,ebx
32763c movsd  xmm0,QWORD PTR [rax]
327640 mov    eax,DWORD PTR [rax+0x8]
327643 mov    DWORD PTR [rsp+0x58],eax
327647 mov    eax,DWORD PTR [rbp+0x28]
32764a mov    DWORD PTR [rsp+0x78],eax
32764e lea    rax,[rbp+0xf0]
327655 movsd  QWORD PTR [rsp+0x50],xmm0
32765b movsd  xmm0,QWORD PTR [rbp+0x20]
327660 mov    QWORD PTR [rsp+0x20],rax
327665 movsd  QWORD PTR [rsp+0x70],xmm0
32766b call   0x2e8fac
327670 test   al,al
327672 je     0x327ca7
327678 lea    rcx,[rbp+0xf0]
32767f call   0x329920
327684 mov    rcx,rax
327687 mov    rbx,rax
32768a call   0x2caf08
32768f test   al,al
327691 je     0x327ca7
327697 mov    ecx,DWORD PTR [rip+0xcf89b]        # 0x3f6f38
32769d mov    eax,0x100
3276a2 test   eax,ecx
3276a4 jne    0x3276c5
3276a6 mov    r8,QWORD PTR [rip+0xaf853]        # 0x3d6f00
3276ad or     ecx,eax
3276af add    r8,0x597e7b0
3276b6 mov    DWORD PTR [rip+0xcf87c],ecx        # 0x3f6f38
3276bc mov    QWORD PTR [rip+0xcfc4d],r8        # 0x3f7310
3276c3 jmp    0x3276cc
3276c5 mov    r8,QWORD PTR [rip+0xcfc44]        # 0x3f7310
3276cc mov    eax,0x200
3276d1 test   eax,ecx
3276d3 jne    0x3276f3
3276d5 or     ecx,eax
3276d7 lea    rdx,[rip+0xcfc42]        # 0x3f7320
3276de mov    DWORD PTR [rip+0xcf854],ecx        # 0x3f6f38
3276e4 xor    r9d,r9d
3276e7 mov    rcx,QWORD PTR [rip+0xae772]        # 0x3d5e60
3276ee call   0x2cbd24
3276f3 mov    rcx,QWORD PTR [rip+0xae766]        # 0x3d5e60
3276fa lea    rdx,[rip+0xcfc1f]        # 0x3f7320
327701 mov    r8,rbx
327704 call   0x2cb9fc
327709 mov    rcx,rax
32770c mov    rdi,rax
32770f call   0x2caf08
327714 test   al,al
327716 je     0x327ca7
32771c mov    rcx,rdi
32771f call   0x2e5a54
327724 mov    rcx,rax
327727 mov    rdx,rax
32772a call   0x2caf08
32772f test   al,al
327731 je     0x327ca7
327737 mov    rcx,rdx
32773a call   0x2d6354
32773f lea    rdx,[rbp+0x10]
327743 mov    rsi,rax
327746 lea    rcx,[rsp+0x40]
32774b call   0x3240b4 ; STRING getter=0x3240b4 Door
327750 mov    rcx,rax
327753 call   0x2cdccc
327758 mov    rcx,rax
32775b movabs rdx,0xcbf29ce484222325
327765 call   0x2e5b4c
32776a movss  xmm6,DWORD PTR [rip+0xfffffffffff6ba22]        # 0x293194 ; f32=7
327772 cmp    rsi,rax
327775 jne    0x327817
32777b mov    dl,r14b
32777e mov    ecx,0x13
327783 call   0x2e8910
327788 test   al,al
32778a je     0x327817
327790 mov    edx,0x1d8
327795 mov    rcx,rdi
327798 call   0x2dee3c
32779d lea    rdx,[rbp-0x30]
3277a1 mov    rcx,r15
3277a4 movzx  ebx,WORD PTR [rax]
3277a7 call   0x36924c
3277ac lea    rdx,[rsp+0x50]
3277b1 mov    rcx,rdi
3277b4 movsd  xmm0,QWORD PTR [rax]
3277b8 mov    eax,DWORD PTR [rax+0x8]
3277bb movsd  QWORD PTR [rsp+0x50],xmm0
3277c1 mov    DWORD PTR [rsp+0x58],eax
3277c5 call   0x3666b0
3277ca comiss xmm6,xmm0
3277cd jbe    0x327817
3277cf test   bx,bx
3277d2 jne    0x3277ec
3277d4 lea    rdx,[rbp-0x70]
3277d8 lea    rcx,[rsp+0x40]
3277dd call   0x3240cc ; STRING getter=0x3240cc RPC_OpenDoor
3277e2 mov    rcx,rax
3277e5 call   0x2d85f4
3277ea jmp    0x32780c
3277ec mov    eax,0x8
3277f1 cmp    bx,ax
3277f4 jne    0x327817
3277f6 lea    rdx,[rbp-0x70]
3277fa lea    rcx,[rsp+0x40]
3277ff call   0x3240f0 ; STRING getter=0x3240f0 RPC_CloseDoor
327804 mov    rcx,rax
327807 call   0x2dd188
32780c mov    rdx,rax
32780f mov    rcx,rdi
327812 call   0x366c30
327817 cmp    BYTE PTR [rip+0xcca43],r13b        # 0x3f4261
32781e je     0x3279e1
327824 cmp    BYTE PTR [rip+0xbd90d],r13b        # 0x3e5138 ; CONFIG Bools.RequireHammer value(+0x48)
32782b je     0x327881
32782d mov    rcx,r15
327830 call   0x368a84
327835 mov    rcx,rax
327838 mov    rdx,rax
32783b call   0x2caf08
327840 test   al,al
327842 je     0x3279e1
327848 mov    rcx,rdx
32784b call   0x37154c
327850 mov    rcx,rax
327853 mov    rbx,rax
327856 call   0x2caf08
32785b test   al,al
32785d je     0x327881
32785f mov    rcx,rbx
327862 call   0x37261c
327867 cmp    eax,0xbf78eac
32786c je     0x327881
32786e mov    rcx,rbx
327871 call   0x37261c
327876 cmp    eax,0x6b8447f6
32787b jne    0x3279e1
327881 lea    rdx,[rbp-0x70]
327885 lea    rcx,[rsp+0x40]
32788a call   0x324184 ; STRING getter=0x324184 BuildingBlock
32788f mov    rcx,rax
327892 call   0x2dd188
327897 mov    rcx,rax
32789a movabs rdx,0xcbf29ce484222325
3278a4 call   0x2e5b4c
3278a9 cmp    rsi,rax
3278ac jne    0x3279e1
3278b2 mov    r9d,DWORD PTR [rip+0xbdaaf]        # 0x3e5368 ; CONFIG i.UpgradeToTier value(+0x48)
3278b9 test   r9d,r9d
3278bc jle    0x3279e1
3278c2 mov    edx,0x340
3278c7 mov    rcx,rdi
3278ca call   0x2dee3c
3278cf mov    rdx,QWORD PTR [rax]
3278d2 mov    rcx,rdx
3278d5 call   0x2caf08
3278da test   al,al
3278dc je     0x3279e1
3278e2 mov    rcx,QWORD PTR [rdx+0x1f8]
3278e9 call   0x2caf08
3278ee test   al,al
3278f0 je     0x3279e1
3278f6 mov    edx,0x370
3278fb mov    rcx,rdi
3278fe call   0x2dee3c
327903 movsx  ecx,WORD PTR [rax]
327906 cmp    ecx,DWORD PTR [rip+0xbdaac]        # 0x3e53b8 ; CONFIG i.UpgradeFromTier value(+0x48)
32790c jne    0x3279e1
327912 cmp    ecx,r9d
327915 je     0x3279e1
32791b movaps xmm1,xmm7
32791e lea    rcx,[rip+0xcfad3]        # 0x3f73f8
327925 call   0x2e5b7c
32792a test   al,al
32792c je     0x3279e1
327932 lea    rdx,[rbp-0x70]
327936 lea    rcx,[rsp+0x40]
32793b call   0x3241c4 ; STRING getter=0x3241c4 DoUpgradeToGrade
327940 mov    rcx,rax
327943 call   0x2e9bb4
327948 mov    rcx,rax
32794b call   0x2ce5dc
327950 mov    edx,DWORD PTR [rip+0xcf5e2]        # 0x3f6f38
327956 mov    rbx,rax
327959 mov    eax,0x400
32795e test   eax,edx
327960 jne    0x327981
327962 mov    r8,QWORD PTR [rip+0xaf597]        # 0x3d6f00
327969 or     edx,eax
32796b add    r8,0x395f0a0
327972 mov    DWORD PTR [rip+0xcf5c0],edx        # 0x3f6f38
327978 mov    QWORD PTR [rip+0xcfa81],r8        # 0x3f7400
32797f jmp    0x327988
327981 mov    r8,QWORD PTR [rip+0xcfa78]        # 0x3f7400
327988 mov    eax,0x800
32798d test   eax,edx
32798f jne    0x3279af
327991 mov    rcx,QWORD PTR [rip+0xae4c8]        # 0x3d5e60
327998 or     edx,eax
32799a mov    DWORD PTR [rip+0xcf598],edx        # 0x3f6f38
3279a0 xor    r9d,r9d
3279a3 lea    rdx,[rip+0xcfa66]        # 0x3f7410
3279aa call   0x2cbd24
3279af mov    eax,DWORD PTR [rip+0xbd9b3]        # 0x3e5368 ; CONFIG i.UpgradeToTier value(+0x48)
3279b5 lea    rdx,[rip+0xcfa54]        # 0x3f7410
3279bc mov    rcx,QWORD PTR [rip+0xae49d]        # 0x3d5e60
3279c3 xor    r9d,r9d
3279c6 mov    DWORD PTR [rsp+0x38],r13d
3279cb mov    r8,rdi
3279ce mov    DWORD PTR [rsp+0x30],eax
3279d2 mov    QWORD PTR [rsp+0x28],rbx
3279d7 mov    DWORD PTR [rsp+0x20],r13d
3279dc call   0x2e480c
3279e1 mov    dl,r14b
3279e4 mov    ecx,0x13
3279e9 call   0x2e8910
3279ee test   al,al
3279f0 je     0x327a96
3279f6 mov    rcx,r15
3279f9 call   0x368a84
3279fe mov    rcx,rax
327a01 mov    rdx,rax
327a04 call   0x2caf08
327a09 test   al,al
327a0b je     0x327a96
327a11 mov    rcx,rdx
327a14 call   0x37154c
327a19 mov    rcx,rax
327a1c mov    rbx,rax
327a1f call   0x2caf08
327a24 test   al,al
327a26 je     0x327a96
327a28 mov    rcx,rbx
327a2b call   0x37261c
327a30 cmp    eax,0xbf78eac
327a35 je     0x327a46
327a37 mov    rcx,rbx
327a3a call   0x37261c
327a3f cmp    eax,0x6b8447f6
327a44 jne    0x327a96
327a46 lea    rdx,[rbp-0x30]
327a4a mov    rcx,r15
327a4d call   0x36924c
327a52 lea    rdx,[rsp+0x50]
327a57 mov    rcx,rdi
327a5a movsd  xmm0,QWORD PTR [rax]
327a5e mov    eax,DWORD PTR [rax+0x8]
327a61 movsd  QWORD PTR [rsp+0x50],xmm0
327a67 mov    DWORD PTR [rsp+0x58],eax
327a6b call   0x3666b0
327a70 comiss xmm6,xmm0
327a73 jbe    0x327a96
327a75 lea    rdx,[rbp-0x70]
327a79 lea    rcx,[rsp+0x40]
327a7e call   0x3242b0 ; STRING getter=0x3242b0 RPC_PickupStart
327a83 mov    rcx,rax
327a86 call   0x2dd160
327a8b mov    rdx,rax
327a8e mov    rcx,rdi
327a91 call   0x366c30
327a96 lea    rdx,[rsp+0x60]
327a9b lea    rcx,[rsp+0x40]
327aa0 call   0x3242f4 ; STRING getter=0x3242f4 BaseOven
327aa5 mov    rcx,rax
327aa8 call   0x2e9b8c
327aad mov    rcx,rax
327ab0 movabs rdx,0xcbf29ce484222325
327aba call   0x2e5b4c
327abf cmp    rsi,rax
327ac2 jne    0x327b3f
327ac4 mov    dl,r14b
327ac7 mov    ecx,0x13
327acc call   0x2e8910
327ad1 test   al,al
327ad3 je     0x327b3f
327ad5 mov    edx,0x1d8
327ada mov    rcx,rdi
327add call   0x2dee3c
327ae2 lea    rdx,[rbp-0x30]
327ae6 mov    rcx,r15
327ae9 movzx  ebx,WORD PTR [rax]
327aec call   0x36924c
327af1 lea    rdx,[rsp+0x50]
327af6 mov    rcx,rdi
327af9 movsd  xmm0,QWORD PTR [rax]
327afd mov    eax,DWORD PTR [rax+0x8]
327b00 movsd  QWORD PTR [rsp+0x50],xmm0
327b06 mov    DWORD PTR [rsp+0x58],eax
327b0a call   0x3666b0
327b0f comiss xmm6,xmm0
327b12 jbe    0x327b3f
327b14 test   bx,bx
327b17 lea    rdx,[rsp+0x60]
327b1c lea    rcx,[rsp+0x40]
327b21 sete   bl
327b24 call   0x324350 ; STRING getter=0x324350 SVSwitch
327b29 mov    rcx,rax
327b2c call   0x2e9b8c
327b31 mov    rdx,rax
327b34 mov    r8b,bl
327b37 mov    rcx,rdi
327b3a call   0x366ccc
327b3f lea    rdx,[rbp-0x70]
327b43 lea    rcx,[rsp+0x40]
327b48 call   0x32436c ; STRING getter=0x32436c LootableCorpse
327b4d mov    rcx,rax
327b50 call   0x2d866c
327b55 mov    rcx,rax
327b58 movabs rdx,0xcbf29ce484222325
327b62 call   0x2e5b4c
327b67 cmp    rsi,rax
327b6a jne    0x327bcd
327b6c mov    dl,r14b
327b6f mov    ecx,0x13
327b74 call   0x2e8910
327b79 test   al,al
327b7b je     0x327bcd
327b7d lea    rdx,[rbp-0x30]
327b81 mov    rcx,r15
327b84 call   0x36924c
327b89 lea    rdx,[rsp+0x50]
327b8e mov    rcx,rdi
327b91 movsd  xmm0,QWORD PTR [rax]
327b95 mov    eax,DWORD PTR [rax+0x8]
327b98 movsd  QWORD PTR [rsp+0x50],xmm0
327b9e mov    DWORD PTR [rsp+0x58],eax
327ba2 call   0x3666b0
327ba7 comiss xmm6,xmm0
327baa jbe    0x327bcd
327bac lea    rdx,[rbp-0x70]
327bb0 lea    rcx,[rsp+0x40]
327bb5 call   0x3243c0 ; STRING getter=0x3243c0 RPC_LootCorpse
327bba mov    rcx,rax
327bbd call   0x2d866c
327bc2 mov    rdx,rax
327bc5 mov    rcx,rdi
327bc8 call   0x366c30
327bcd lea    rdx,[rbp-0x70]
327bd1 lea    rcx,[rsp+0x40]
327bd6 call   0x32440c ; STRING getter=0x32440c BuildingBlock
327bdb mov    rcx,rax
327bde call   0x2dd188
327be3 mov    rcx,rax
327be6 movabs rdx,0xcbf29ce484222325
327bf0 call   0x2e5b4c
327bf5 cmp    rsi,rax
327bf8 jne    0x327ca7
327bfe lea    rdx,[rbp-0x30]
327c02 mov    rcx,r15
327c05 call   0x36924c
327c0a lea    rdx,[rsp+0x50]
327c0f mov    rcx,rdi
327c12 movsd  xmm0,QWORD PTR [rax]
327c16 mov    eax,DWORD PTR [rax+0x8]
327c19 movsd  QWORD PTR [rsp+0x50],xmm0
327c1f mov    DWORD PTR [rsp+0x58],eax
327c23 call   0x3666b0
327c28 comiss xmm6,xmm0
327c2b jbe    0x327ca7
327c2d mov    ecx,DWORD PTR [rip+0xcc745]        # 0x3f4378 ; CONFIG K.DemolishHotkey value(+0x48)
327c33 mov    dl,r14b
327c36 call   0x2e8910
327c3b test   al,al
327c3d je     0x327c6a
327c3f cmp    BYTE PTR [rip+0xcb6a2],r13b        # 0x3f32e8 ; CONFIG Bools.DemolishEnabled value(+0x48)
327c46 je     0x327c6a
327c48 lea    rdx,[rsp+0x60]
327c4d lea    rcx,[rsp+0x40]
327c52 call   0x32444c ; STRING getter=0x32444c DoDemolish
327c57 mov    rcx,rax
327c5a call   0x2e9c54
327c5f mov    rdx,rax
327c62 mov    rcx,rdi
327c65 call   0x366c30
327c6a mov    ecx,DWORD PTR [rip+0xcc768]        # 0x3f43d8 ; CONFIG K.RotateHotkey value(+0x48)
327c70 mov    dl,r14b
327c73 call   0x2e8910
327c78 test   al,al
327c7a je     0x327ca7
327c7c cmp    BYTE PTR [rip+0xcb6b5],r13b        # 0x3f3338 ; CONFIG Bools.RotateEnabled value(+0x48)
327c83 je     0x327ca7
327c85 lea    rdx,[rsp+0x60]
327c8a lea    rcx,[rsp+0x40]
327c8f call   0x324468 ; STRING getter=0x324468 DoRotation
327c94 mov    rcx,rax
327c97 call   0x2e9c54
327c9c mov    rdx,rax
327c9f mov    rcx,rdi
327ca2 call   0x366c30
327ca7 cmp    BYTE PTR [rip+0xbe1c3],r13b        # 0x3e5e71
327cae jne    0x327cc2
327cb0 cmp    BYTE PTR [rip+0xb05ea],r13b        # 0x3d82a1
327cb7 jne    0x327cc2
327cb9 call   0x3247cc
327cbe test   al,al
327cc0 je     0x327cd7
327cc2 call   0x2e6240
327cc7 addss  xmm0,DWORD PTR [rip+0xfffffffffff65e2d]        # 0x28dafc ; f32=1.5
327ccf movss  DWORD PTR [rip+0xcf811],xmm0        # 0x3f74e8
327cd7 mov    eax,DWORD PTR [rip+0xcf25b]        # 0x3f6f38
327cdd mov    ecx,0x1000
327ce2 test   ecx,eax
327ce4 jne    0x327cfa
327ce6 or     eax,ecx
327ce8 lea    rcx,[rip+0xcf801]        # 0x3f74f0
327cef mov    DWORD PTR [rip+0xcf243],eax        # 0x3f6f38
327cf5 call   0x3c7bbc
327cfa call   0x2e6240
327cff movss  xmm1,DWORD PTR [rip+0xcf7e1]        # 0x3f74e8
327d07 comiss xmm1,xmm0
327d0a jbe    0x327e95
327d10 mov    rcx,r12
327d13 call   0x2caf08
327d18 test   al,al
327d1a je     0x327ebf
327d20 mov    rcx,r12
327d23 call   0x3297f0
327d28 mov    rcx,rax
327d2b mov    rbx,rax
327d2e call   0x2caf08
327d33 xor    r12d,r12d
327d36 test   al,al
327d38 je     0x327ec2
327d3e mov    rdx,QWORD PTR [r15+0x4e8]
327d45 mov    rcx,rdx
327d48 call   0x2caf08
327d4d test   al,al
327d4f je     0x327ec2
327d55 cmp    BYTE PTR [rip+0xcf2c4],r12b        # 0x3f7020
327d5c lea    rdi,[rdx+0x30]
327d60 mov    esi,DWORD PTR [rdx+0x28]
327d63 xorps  xmm3,xmm3
327d66 xorps  xmm1,xmm1
327d69 je     0x327d79
327d6b movss  xmm2,DWORD PTR [rip+0xfffffffffff6b365]        # 0x2930d8 ; f32=0.9
327d73 lea    rcx,[rbp-0x30]
327d77 jmp    0x327d88
327d79 movss  xmm2,DWORD PTR [rip+0xfffffffffff65d7b]        # 0x28dafc ; f32=1.5
327d81 lea    rcx,[rbp+0xa0]
327d88 call   0x3c7ba8
327d8d mov    r8,rax
327d90 lea    rdx,[rbp-0x40]
327d94 mov    rcx,rdi
327d97 call   0x2df708
327d9c lea    rdx,[rbp-0x30]
327da0 mov    rcx,r15
327da3 call   0x3691c0
327da8 test   esi,esi
327daa jne    0x327e18
327dac mov    rcx,r15
327daf call   0x36a0e0
327db4 test   al,al
327db6 jne    0x327e18
327db8 xor    edx,edx
327dba mov    rcx,r15
327dbd call   0x36a20c
327dc2 test   al,al
327dc4 jne    0x327e18
327dc6 cmp    BYTE PTR [rip+0xb04d4],r12b        # 0x3d82a1
327dcd je     0x327e18
327dcf lea    rcx,[rip+0xcf71a]        # 0x3f74f0
327dd6 call   0x2e3b58
327ddb mov    ecx,DWORD PTR [rbp-0x38]
327dde movsd  xmm0,QWORD PTR [rbp-0x40]
327de3 test   al,al
327de5 je     0x327df5
327de7 movsd  QWORD PTR [rip+0xcf701],xmm0        # 0x3f74f0
327def mov    DWORD PTR [rip+0xcf703],ecx        # 0x3f74f8
327df5 mov    DWORD PTR [rsp+0x58],ecx
327df9 lea    rdx,[rsp+0x50]
327dfe mov    rcx,rbx
327e01 movsd  QWORD PTR [rsp+0x50],xmm0
327e07 call   0x375140
327e0c mov    BYTE PTR [rip+0xcacf5],r14b        # 0x3f2b08
327e13 jmp    0x327ec2
327e18 cmp    BYTE PTR [rip+0xcace9],r12b        # 0x3f2b08
327e1f je     0x327e69
327e21 lea    rcx,[rbp-0x30]
327e25 call   0x3c7bbc
327e2a mov    r13,QWORD PTR [rbp+0x270]
327e31 lea    rdx,[rsp+0x50]
327e36 mov    rcx,rbx
327e39 movsd  xmm0,QWORD PTR [rax]
327e3d movsd  QWORD PTR [r13+0x44],xmm0
327e43 mov    eax,DWORD PTR [rax+0x8]
327e46 mov    DWORD PTR [r13+0x4c],eax
327e4a movsd  xmm0,QWORD PTR [rip+0xcf69e]        # 0x3f74f0
327e52 mov    eax,DWORD PTR [rip+0xcf6a0]        # 0x3f74f8
327e58 movsd  QWORD PTR [rsp+0x50],xmm0
327e5e mov    DWORD PTR [rsp+0x58],eax
327e62 call   0x375140
327e67 jmp    0x327ec9
327e69 lea    rdx,[rbp-0x30]
327e6d mov    rcx,r15
327e70 call   0x3691c0
327e75 lea    rdx,[rsp+0x50]
327e7a mov    rcx,rbx
327e7d movsd  xmm0,QWORD PTR [rax]
327e81 mov    eax,DWORD PTR [rax+0x8]
327e84 movsd  QWORD PTR [rsp+0x50],xmm0
327e8a mov    DWORD PTR [rsp+0x58],eax
327e8e call   0x375140
327e93 jmp    0x327ec2
327e95 lea    rcx,[rbp-0x30]
327e99 call   0x3c7bbc
327e9e xor    r12d,r12d
327ea1 movsd  xmm0,QWORD PTR [rax]
327ea5 movsd  QWORD PTR [rip+0xcf643],xmm0        # 0x3f74f0
327ead mov    eax,DWORD PTR [rax+0x8]
327eb0 mov    DWORD PTR [rip+0xcf642],eax        # 0x3f74f8
327eb6 mov    BYTE PTR [rip+0xcac4b],r12b        # 0x3f2b08
327ebd jmp    0x327ec2
327ebf xor    r12d,r12d
327ec2 mov    r13,QWORD PTR [rbp+0x270]
327ec9 cmp    BYTE PTR [rip+0xbdfa1],r12b        # 0x3e5e71
327ed0 je     0x327edb
327ed2 cmp    BYTE PTR [rip+0xcb3bf],r12b        # 0x3f3298 ; CONFIG Bools.Adminmode value(+0x48)
327ed9 jne    0x327ef0
327edb cmp    BYTE PTR [rip+0xcbc26],r12b        # 0x3f3b08 ; CONFIG Bools.interactive value(+0x48)
327ee2 mov    bl,r12b
327ee5 je     0x327f10
327ee7 cmp    BYTE PTR [rip+0xb03b3],r12b        # 0x3d82a1
327eee je     0x327f10
327ef0 mov    rcx,r15
327ef3 mov    bl,r14b
327ef6 call   0x3693b0
327efb test   al,al
327efd je     0x327f10
327eff xor    edx,edx
327f01 mov    rcx,r15
327f04 call   0x36a20c
327f09 mov    dl,r14b
327f0c test   al,al
327f0e je     0x327f13
327f10 mov    dl,r12b
327f13 mov    rcx,r15
327f16 call   0x36ae90
327f1b cmp    BYTE PTR [rip+0xcf0fe],r12b        # 0x3f7020
327f22 je     0x327f37
327f24 test   bl,bl
327f26 je     0x327f37
327f28 mov    rcx,QWORD PTR [rbp+0x280]
327f2f mov    edx,r14d
327f32 call   0x372c1c
327f37 cmp    BYTE PTR [rip+0xcb17a],r12b        # 0x3f30b8 ; CONFIG Bools.nograss value(+0x48)
327f3e mov    edi,0x2000000
327f43 je     0x327f7f
327f45 cmp    BYTE PTR [rip+0xbdf24],r12b        # 0x3e5e70
327f4c jne    0x327fb7
327f4e call   0x315924
327f53 mov    rcx,rax
327f56 mov    rbx,rax
327f59 call   0x2caf08
327f5e test   al,al
327f60 je     0x327fb7
327f62 mov    rcx,rbx
327f65 call   0x36c79c
327f6a xor    eax,edi
327f6c mov    rcx,rbx
327f6f mov    edx,eax
327f71 call   0x36cbe4
327f76 mov    BYTE PTR [rip+0xbdef3],r14b        # 0x3e5e70
327f7d jmp    0x327fb7
327f7f cmp    BYTE PTR [rip+0xbdeea],r12b        # 0x3e5e70
327f86 je     0x327fb7
327f88 call   0x315924
327f8d mov    rcx,rax
327f90 mov    rbx,rax
327f93 call   0x2caf08
327f98 test   al,al
327f9a je     0x327fb0
327f9c mov    rcx,rbx
327f9f call   0x36c79c
327fa4 xor    eax,edi
327fa6 mov    rcx,rbx
327fa9 mov    edx,eax
327fab call   0x36cbe4
327fb0 mov    BYTE PTR [rip+0xbdeb9],r12b        # 0x3e5e70
327fb7 cmp    BYTE PTR [rip+0xcbd7a],r12b        # 0x3f3d38 ; CONFIG Bools.removelayer value(+0x48)
327fbe je     0x32810a
327fc4 mov    dl,r14b
327fc7 lea    rcx,[rip+0xcc58a]        # 0x3f4558 ; CONFIG K.layermaskkey value(+0x48)
327fce call   0x2e89e4
327fd3 test   al,al
327fd5 je     0x32810a
327fdb call   0x315924
327fe0 mov    rcx,rax
327fe3 mov    rsi,rax
327fe6 call   0x2caf08
327feb test   al,al
327fed je     0x32810a
327ff3 mov    rcx,rsi
327ff6 call   0x36c79c
327ffb mov    r8d,0x4
328001 lea    rdx,[rbp-0x70]
328005 lea    rcx,[rip+0xcc71c]        # 0x3f4728 ; CONFIG VectorBools.Layers value(+0x48)
32800c mov    ebx,eax
32800e call   0x2e98f0
328013 mov    rcx,rax
328016 call   0x2d4d70
32801b mov    edi,ebx
32801d lea    rdx,[rbp+0xd0]
328024 btc    edi,0x15
328028 lea    rcx,[rip+0xcc6f9]        # 0x3f4728 ; CONFIG VectorBools.Layers value(+0x48)
32802f test   al,al
328031 mov    r8d,0x5
328037 cmove  edi,ebx
32803a call   0x2e98f0
32803f mov    rcx,rax
328042 call   0x2d4d70
328047 mov    ebx,edi
328049 lea    rdx,[rbp-0x30]
32804d btc    ebx,0x1e
328051 lea    rcx,[rip+0xcc6d0]        # 0x3f4728 ; CONFIG VectorBools.Layers value(+0x48)
328058 test   al,al
32805a mov    r8d,0x3
328060 cmove  ebx,edi
328063 call   0x2e98f0
328068 mov    rcx,rax
32806b call   0x2d4d70
328070 mov    edi,ebx
328072 lea    rdx,[rbp+0xa0]
328079 btc    edi,0x17
32807d lea    rcx,[rip+0xcc6a4]        # 0x3f4728 ; CONFIG VectorBools.Layers value(+0x48)
328084 test   al,al
328086 mov    r8d,0x2
32808c cmove  edi,ebx
32808f call   0x2e98f0
328094 mov    rcx,rax
328097 call   0x2d4d70
32809c mov    ebx,edi
32809e lea    rdx,[rbp+0xc0]
3280a5 xor    ebx,0x10
3280a8 lea    rcx,[rip+0xcc679]        # 0x3f4728 ; CONFIG VectorBools.Layers value(+0x48)
3280af test   al,al
3280b1 mov    r8,r14
3280b4 cmove  ebx,edi
3280b7 call   0x2e98f0
3280bc mov    rcx,rax
3280bf call   0x2d4d70
3280c4 mov    edi,ebx
3280c6 btc    edi,0x10
3280ca test   al,al
3280cc cmove  edi,ebx
3280cf cmp    BYTE PTR [rip+0xcafe2],r12b        # 0x3f30b8 ; CONFIG Bools.nograss value(+0x48)
3280d6 jne    0x328100
3280d8 xor    r8d,r8d
3280db lea    rdx,[rbp-0x70]
3280df lea    rcx,[rip+0xcc642]        # 0x3f4728 ; CONFIG VectorBools.Layers value(+0x48)
3280e6 call   0x2e98f0
3280eb mov    rcx,rax
3280ee call   0x2d4d70
3280f3 mov    edx,edi
3280f5 btc    edx,0x19
3280f9 test   al,al
3280fb cmove  edx,edi
3280fe jmp    0x328102
328100 mov    edx,edi
328102 mov    rcx,rsi
328105 call   0x36cbe4
32810a cmp    BYTE PTR [rip+0xcbae7],r12b        # 0x3f3bf8 ; CONFIG Bools.nosmoke value(+0x48)
328111 je     0x3282a3
328117 lea    rdx,[rsp+0x40]
32811c lea    rcx,[rsp+0x40]
328121 call   0x2cc730
328126 mov    rcx,rax
328129 call   0x2cdca4
32812e lea    rdx,[rbp-0x70]
328132 mov    rbx,rax
328135 lea    rcx,[rsp+0x41]
32813a call   0x32449c ; STRING getter=0x32449c UIFogOverlay
32813f mov    rcx,rax
328142 call   0x2d85f4
328147 mov    rcx,rax
32814a mov    rdx,rbx
32814d call   0x334224
328152 mov    rcx,rax
328155 mov    rdx,rax
328158 call   0x2caf08
32815d test   al,al
32815f je     0x3282a3
328165 mov    rdx,QWORD PTR [rdx+0xb8]
32816c mov    rcx,rdx
32816f call   0x2caf08
328174 test   al,al
328176 je     0x3282a3
32817c mov    r8,QWORD PTR [rdx+0x10]
328180 mov    rcx,r8
328183 call   0x2caf08
328188 test   al,al
32818a je     0x3282a3
328190 mov    r12,QWORD PTR [r8+0x20]
328194 mov    rcx,r12
328197 call   0x2caf08
32819c test   al,al
32819e je     0x3282a0
3281a4 mov    eax,DWORD PTR [rip+0xced8e]        # 0x3f6f38
3281aa mov    ecx,0x2000
3281af test   ecx,eax
3281b1 jne    0x328259
3281b7 or     eax,ecx
3281b9 lea    rdx,[rsp+0x40]
3281be lea    rcx,[rsp+0x40]
3281c3 mov    DWORD PTR [rip+0xced6f],eax        # 0x3f6f38
3281c9 call   0x2cc730
3281ce mov    rcx,rax
3281d1 call   0x2cdca4
3281d6 lea    rdx,[rsp+0x60]
3281db mov    rsi,rax
3281de lea    rcx,[rsp+0x41]
3281e3 call   0x3244f8 ; STRING getter=0x3244f8 set_alpha
3281e8 mov    rcx,rax
3281eb call   0x2cdd44
3281f0 lea    rdx,[rbp-0x30]
3281f4 mov    rdi,rax
3281f7 lea    rcx,[rsp+0x41]
3281fc call   0x3244dc ; STRING getter=0x3244dc UnityEngine
328201 mov    rcx,rax
328204 call   0x2cde34
328209 lea    rdx,[rbp+0xa0]
328210 mov    rbx,rax
328213 lea    rcx,[rsp+0x41]
328218 call   0x3244c0 ; STRING getter=0x3244c0 CanvasGroup
32821d mov    rcx,rax
328220 call   0x2cde34
328225 mov    rcx,rax
328228 mov    rdx,rbx
32822b call   0x334224
328230 or     r8d,0xffffffff
328234 mov    rcx,rax
328237 mov    r9,rsi
32823a mov    DWORD PTR [rsp+0x20],r8d
32823f mov    rdx,rdi
328242 call   0x3349ac
328247 mov    r8,QWORD PTR [rax]
32824a mov    eax,DWORD PTR [rip+0xcece8]        # 0x3f6f38
328250 mov    QWORD PTR [rip+0xcf2a9],r8        # 0x3f7500
328257 jmp    0x328260
328259 mov    r8,QWORD PTR [rip+0xcf2a0]        # 0x3f7500
328260 mov    ecx,0x4000
328265 test   ecx,eax
328267 jne    0x328287
328269 or     eax,ecx
32826b lea    rdx,[rip+0xcf29e]        # 0x3f7510
328272 mov    rcx,QWORD PTR [rip+0xadbe7]        # 0x3d5e60
328279 xor    r9d,r9d
32827c mov    DWORD PTR [rip+0xcecb6],eax        # 0x3f6f38
328282 call   0x2cbd24
328287 mov    rcx,QWORD PTR [rip+0xadbd2]        # 0x3d5e60
32828e lea    rdx,[rip+0xcf27b]        # 0x3f7510
328295 xorps  xmm3,xmm3
328298 mov    r8,r12
32829b call   0x32225c
3282a0 xor    r12d,r12d
3282a3 cmp    BYTE PTR [rip+0xcba3e],r12b        # 0x3f3ce8 ; CONFIG Bools.noflash value(+0x48)
3282aa je     0x3282e7
3282ac lea    rdx,[rsp+0x40]
3282b1 lea    rcx,[rsp+0x40]
3282b6 call   0x2cc730
3282bb mov    rcx,rax
3282be call   0x2cdca4
3282c3 lea    rdx,[rbp-0x70]
3282c7 mov    rbx,rax
3282ca lea    rcx,[rsp+0x41]
3282cf call   0x324514 ; STRING getter=0x324514 FlashbangOverlay
3282d4 mov    rcx,rax
3282d7 call   0x2e9bb4
3282dc mov    rcx,rax
3282df mov    rdx,rbx
3282e2 call   0x334224
3282e7 cmp    DWORD PTR [rip+0xcf2fe],r12d        # 0x3f75ec
3282ee jne    0x3282fd
3282f0 mov    eax,DWORD PTR [r13+0xb8]
3282f7 mov    DWORD PTR [rip+0xcf2ef],eax        # 0x3f75ec
3282fd mov    dil,BYTE PTR [rbp+0x288]
328304 test   dil,dil
328307 je     0x328579
32830d mov    rcx,r15
328310 call   0x36a0e0
328315 test   al,al
328317 jne    0x328579
32831d cmp    BYTE PTR [rip+0xcb1a4],r12b        # 0x3f34c8 ; CONFIG Bools.RageFly value(+0x48)
328324 jne    0x328579
32832a mov    rcx,r15
32832d call   0x369298
328332 mov    rcx,rax
328335 mov    rbx,rax
328338 call   0x2caf08
32833d test   al,al
32833f je     0x3285a9
328345 lea    rcx,[rsp+0x60]
32834a call   0x3c7bbc
32834f lea    rdx,[rbp-0x70]
328353 mov    rcx,rbx
328356 call   0x3739c4
32835b movaps xmm1,xmm11
32835f mov    rcx,r13
328362 call   0x373f0c
328367 cmp    BYTE PTR [rip+0xaff33],r12b        # 0x3d82a1
32836e mov    ecx,0x24
328373 mov    BYTE PTR [rip+0xbbed6],r14b        # 0x3e4250
32837a setne  dl
32837d call   0x2e5e4c
328382 test   al,al
328384 je     0x3283b0
328386 cmp    BYTE PTR [rip+0xbdae4],r12b        # 0x3e5e71
32838d jne    0x3283b0
32838f lea    r8,[rbp-0x70]
328393 lea    rdx,[rip+0xcc726]        # 0x3f4ac0
32839a lea    rcx,[rbp-0x30]
32839e call   0x320db4
3283a3 mov    rdx,rax
3283a6 lea    rcx,[rsp+0x60]
3283ab call   0x3c7bc8
3283b0 cmp    BYTE PTR [rip+0xafeea],r12b        # 0x3d82a1
3283b7 mov    ecx,0x20
3283bc setne  dl
3283bf call   0x2e5e4c
3283c4 test   al,al
3283c6 je     0x3283f2
3283c8 cmp    BYTE PTR [rip+0xbdaa2],r12b        # 0x3e5e71
3283cf jne    0x3283f2
3283d1 lea    r8,[rbp-0x70]
3283d5 lea    rdx,[rip+0xcc6e4]        # 0x3f4ac0
3283dc lea    rcx,[rbp-0x30]
3283e0 call   0x320db4
3283e5 mov    rdx,rax
3283e8 lea    rcx,[rsp+0x60]
3283ed call   0x3c7bf8
3283f2 cmp    BYTE PTR [rip+0xafea8],r12b        # 0x3d82a1
3283f9 mov    ecx,0xe
3283fe setne  dl
328401 call   0x2e5e4c
328406 test   al,al
328408 je     0x328434
32840a cmp    BYTE PTR [rip+0xbda60],r12b        # 0x3e5e71
328411 jne    0x328434
328413 lea    r8,[rbp-0x70]
328417 lea    rdx,[rip+0xcc6b2]        # 0x3f4ad0
32841e lea    rcx,[rbp-0x30]
328422 call   0x320db4
328427 mov    rdx,rax
32842a lea    rcx,[rsp+0x60]
32842f call   0x3c7bf8
328434 cmp    BYTE PTR [rip+0xafe66],r12b        # 0x3d82a1
32843b mov    ecx,0x11
328440 setne  dl
328443 call   0x2e5e4c
328448 test   al,al
32844a je     0x328476
32844c cmp    BYTE PTR [rip+0xbda1e],r12b        # 0x3e5e71
328453 jne    0x328476
328455 lea    r8,[rbp-0x70]
328459 lea    rdx,[rip+0xcc670]        # 0x3f4ad0
328460 lea    rcx,[rbp-0x30]
328464 call   0x320db4
328469 mov    rdx,rax
32846c lea    rcx,[rsp+0x60]
328471 call   0x3c7bc8
328476 cmp    BYTE PTR [rip+0xafe24],r12b        # 0x3d82a1
32847d setne  dl
328480 xor    ecx,ecx
328482 call   0x2e5e4c
328487 test   al,al
328489 je     0x3284a5
32848b cmp    BYTE PTR [rip+0xbd9df],r12b        # 0x3e5e71
328492 jne    0x3284a5
328494 movss  xmm0,DWORD PTR [rsp+0x64]
32849a addss  xmm0,xmm9
32849f movss  DWORD PTR [rsp+0x64],xmm0
3284a5 mov    al,BYTE PTR [rip+0xafdf6]        # 0x3d82a1
3284ab test   al,al
3284ad je     0x3284b9
3284af movss  xmm6,DWORD PTR [rip+0xcba61]        # 0x3f3f18 ; CONFIG F.InteractiveNormalSpeed value(+0x48)
3284b7 jmp    0x3284c1
3284b9 movss  xmm6,DWORD PTR [rip+0xcb967]        # 0x3f3e28 ; CONFIG F.NoclipNormalSpeed value(+0x48)
3284c1 test   al,al
3284c3 mov    ecx,0x36
3284c8 setne  dl
3284cb call   0x2e5e4c
3284d0 mov    cl,BYTE PTR [rip+0xafdcb]        # 0x3d82a1
3284d6 test   al,al
3284d8 je     0x3284f9
3284da cmp    BYTE PTR [rip+0xbd990],r12b        # 0x3e5e71
3284e1 jne    0x3284f9
3284e3 test   cl,cl
3284e5 je     0x3284f1
3284e7 movss  xmm6,DWORD PTR [rip+0xcba79]        # 0x3f3f68 ; CONFIG F.InteractiveNoclipSlowSpeed value(+0x48)
3284ef jmp    0x3284f9
3284f1 movss  xmm6,DWORD PTR [rip+0xcb97f]        # 0x3f3e78 ; CONFIG F.NoclipSlowSpeed value(+0x48)
3284f9 test   cl,cl
3284fb mov    ecx,0x32
328500 setne  dl
328503 call   0x2e5e4c
328508 test   al,al
32850a je     0x328530
32850c cmp    BYTE PTR [rip+0xbd95e],r12b        # 0x3e5e71
328513 jne    0x328530
328515 cmp    BYTE PTR [rip+0xafd85],r12b        # 0x3d82a1
32851c je     0x328528
32851e movss  xmm6,DWORD PTR [rip+0xcba92]        # 0x3f3fb8 ; CONFIG F.InteractiveNoclipShiftSpeed value(+0x48)
328526 jmp    0x328530
328528 movss  xmm6,DWORD PTR [rip+0xcb998]        # 0x3f3ec8 ; CONFIG F.NoclipShiftSpeed value(+0x48)
328530 lea    rcx,[rbp-0x30]
328534 mov    BYTE PTR [rip+0xcf0ad],r14b        # 0x3f75e8
32853b call   0x3c7bbc
328540 mov    rdx,rax
328543 lea    rcx,[rsp+0x60]
328548 call   0x2df5dc
32854d test   al,al
32854f je     0x3285a9
328551 movaps xmm2,xmm6
328554 lea    rdx,[rsp+0x50]
328559 lea    rcx,[rsp+0x60]
32855e call   0x2df66c
328563 movsd  xmm0,QWORD PTR [rsp+0x50]
328569 mov    eax,DWORD PTR [rsp+0x58]
32856d movsd  QWORD PTR [r13+0x44],xmm0
328573 mov    DWORD PTR [r13+0x4c],eax
328577 jmp    0x3285a9
328579 cmp    BYTE PTR [rip+0xcf068],r12b        # 0x3f75e8
328580 je     0x3285a9
328582 xorps  xmm1,xmm1
328585 mov    rcx,r13
328588 call   0x373f0c
32858d movsxd rax,DWORD PTR [rip+0xcf058]        # 0x3f75ec
328594 mov    QWORD PTR [r13+0xb8],rax
32859b mov    BYTE PTR [rip+0xbbcae],r12b        # 0x3e4250
3285a2 mov    BYTE PTR [rip+0xcf03f],r12b        # 0x3f75e8
3285a9 cmp    BYTE PTR [rip+0xc7531],r12b        # 0x3efae1
3285b0 je     0x3285bd
3285b2 xorps  xmm1,xmm1
3285b5 mov    rcx,r13
3285b8 call   0x329a68
3285bd mov    rax,QWORD PTR [rip+0xcf02c]        # 0x3f75f0
3285c4 test   rax,rax
3285c7 jne    0x3285d7
3285c9 mov    eax,DWORD PTR [r13+0x128]
3285d0 mov    QWORD PTR [rip+0xcf019],rax        # 0x3f75f0
3285d7 test   dil,dil
3285da jne    0x3285fc
3285dc cmp    BYTE PTR [rip+0xc719e],r12b        # 0x3ef781
3285e3 je     0x3285fc
3285e5 movss  xmm1,DWORD PTR [rip+0xfffffffffff6bbe7]        # 0x2941d4 ; f32=10000
3285ed mov    rcx,r13
3285f0 mov    DWORD PTR [r13+0x128],eax
3285f7 call   0x329a88
3285fc cmp    BYTE PTR [rip+0xafc3e],r12b        # 0x3d8241
328603 jne    0x328614
328605 cmp    BYTE PTR [rip+0xc6ed5],r12b        # 0x3ef4e1
32860c mov    dl,BYTE PTR [rip+0xcae16]        # 0x3f3428 ; CONFIG Bools.NoFall value(+0x48)
328612 je     0x328617
328614 mov    dl,r14b
328617 mov    rcx,r13
32861a call   0x373eb4
32861f mov    r8,QWORD PTR [r13+0xe8]
328626 mov    rcx,r8
328629 call   0x2caf08
32862e test   al,al
328630 je     0x328643
328632 cmp    BYTE PTR [rip+0xca9df],r12b        # 0x3f3018 ; CONFIG Bools.ropemode value(+0x48)
328639 mov    eax,r12d
32863c setne  al
32863f mov    DWORD PTR [r8+0x50],eax
328643 cmp    BYTE PTR [rip+0xc7557],r12b        # 0x3efba1
32864a mov    rsi,QWORD PTR [rbp+0x280]
328651 je     0x328660
328653 mov    edx,0x20
328658 mov    rcx,rsi
32865b call   0x372c1c
328660 lea    rcx,[rip+0xc18e9]        # 0x3e9f50
328667 call   0x2ef7fc
32866c or     al,dil
32866f jne    0x32868c
328671 cmp    BYTE PTR [rip+0xafbc9],r12b        # 0x3d8241
328678 jne    0x32868c
32867a cmp    BYTE PTR [rip+0xc6e60],r12b        # 0x3ef4e1
328681 jne    0x32868c
328683 cmp    BYTE PTR [rip+0xc74b7],r12b        # 0x3efb41
32868a je     0x32869d
32868c mov    ebx,0x10
328691 mov    rcx,rsi
328694 mov    edx,ebx
328696 call   0x372c1c
32869b jmp    0x3286a2
32869d mov    ebx,0x10
3286a2 cmp    BYTE PTR [rip+0xaf81f],r12b        # 0x3d7ec8 ; CONFIG Bools.Pierce value(+0x48)
3286a9 je     0x328d2a
3286af cmp    BYTE PTR [rip+0xaf9a2],r12b        # 0x3d8058 ; CONFIG Bools.DoFatBulletHit value(+0x48)
3286b6 je     0x328d2a
3286bc cmp    BYTE PTR [rip+0xaf7b5],r12b        # 0x3d7e78 ; CONFIG Bools.PSilent value(+0x48)
3286c3 je     0x328d2a
3286c9 cmp    BYTE PTR [rip+0xaebd0],r12b        # 0x3d72a0
3286d0 je     0x328d2a
3286d6 mov    eax,DWORD PTR [rip+0xca438]        # 0x3f2b14
3286dc movd   xmm0,eax
3286e0 cvtdq2ps xmm0,xmm0
3286e3 comiss xmm0,DWORD PTR [rip+0xcb91e]        # 0x3f4008 ; CONFIG F.value3 value(+0x48)
3286ea jb     0x328d13
3286f0 call   0x2e02b0
3286f5 mov    rcx,rax
3286f8 mov    rbx,rax
3286fb call   0x2caf08
328700 test   al,al
328702 je     0x328ccf
328708 mov    rcx,rbx
32870b call   0x2e0e9c
328710 test   al,al
328712 je     0x328cdf
328718 mov    rcx,rbx
32871b call   0x2e5a54
328720 mov    rcx,rax
328723 mov    r8,rax
328726 call   0x2caf08
32872b test   al,al
32872d je     0x328d10
328733 mov    rcx,r8
328736 call   0x2d6354
32873b lea    rdx,[rbp-0x70]
32873f mov    rsi,rax
328742 lea    rcx,[rbp+0x288]
328749 call   0x32452c ; STRING getter=0x32452c ScientistNPC2
32874e mov    rcx,rax
328751 call   0x2dd188
328756 mov    rcx,rax
328759 movabs rdx,0xcbf29ce484222325
328763 call   0x2e5b4c
328768 mov    rcx,rbx
32876b mov    r12,rax
32876e call   0x3297f0
328773 mov    rcx,rax
328776 mov    rdi,rax
328779 call   0x2caf08
32877e test   al,al
328780 je     0x328d0d
328786 mov    rcx,r15
328789 call   0x368a84
32878e mov    rcx,rax
328791 mov    rdx,rax
328794 call   0x2caf08
328799 test   al,al
32879b je     0x328d0d
3287a1 mov    rcx,rdx
3287a4 call   0x3721b4
3287a9 lea    rdx,[rbp-0x50]
3287ad mov    rcx,r15
3287b0 call   0x369164
3287b5 mov    ecx,0xb
3287ba lea    rdx,[rsp+0x50]
3287bf cmp    rsi,r12
3287c2 lea    r8d,[rcx+0x2c]
3287c6 cmove  r8d,ecx
3287ca mov    rcx,rbx
3287cd call   0x368be8
3287d2 mov    ecx,0xf
3287d7 lea    rdx,[rbp+0x40]
3287db cmp    rsi,r12
3287de lea    r8d,[rcx+0x27]
3287e2 cmove  r8d,ecx
3287e6 mov    rcx,rbx
3287e9 call   0x368be8
3287ee movss  xmm3,DWORD PTR [rsp+0x58]
3287f4 lea    rcx,[rbp-0x30]
3287f8 movss  xmm2,DWORD PTR [rbp+0x44]
3287fd movss  xmm1,DWORD PTR [rsp+0x50]
328803 call   0x3c7ba8
328808 movss  xmm2,DWORD PTR [rip+0xfffffffffff6a888]        # 0x293098 ; f32=0.05
328810 lea    rcx,[rbp+0xa0]
328817 xorps  xmm3,xmm3
32881a xorps  xmm1,xmm1
32881d mov    rbx,rax
328820 call   0x3c7ba8
328825 mov    r8,rax
328828 lea    rdx,[rsp+0x60]
32882d mov    rcx,rbx
328830 call   0x2df708
328835 lea    rdx,[rbp+0xc0]
32883c mov    rcx,rdi
32883f call   0x3747d4
328844 movss  xmm0,DWORD PTR [rip+0xfffffffffff20664]        # 0x248eb0 ; f32=3.065
32884c xor    r12d,r12d
32884f cmp    BYTE PTR [rip+0xca2ba],r12b        # 0x3f2b10
328856 jne    0x328868
328858 addss  xmm0,DWORD PTR [rip+0xfffffffffff6b97c]        # 0x2941dc ; f32=-0.1
328860 movss  DWORD PTR [rip+0xfffffffffff20648],xmm0        # 0x248eb0 ; f32=3.065
328868 comiss xmm8,xmm0
32886c jb     0x32887e
32886e movss  xmm0,DWORD PTR [rip+0xcb562]        # 0x3f3dd8 ; CONFIG F.BulletSize1 value(+0x48)
328876 movss  DWORD PTR [rip+0xfffffffffff20632],xmm0        # 0x248eb0 ; f32=3.065
32887e movss  xmm2,DWORD PTR [rip+0xfffffffffff6a8ae]        # 0x293134 ; f32=2
328886 lea    rcx,[rbp-0x30]
32888a xorps  xmm3,xmm3
32888d xorps  xmm1,xmm1
328890 call   0x3c7ba8
328895 mov    r8,rax
328898 lea    rdx,[rbp+0x20]
32889c lea    rcx,[rsp+0x60]
3288a1 call   0x2df708
3288a6 movsxd rdi,DWORD PTR [rip+0xcb84b]        # 0x3f40f8 ; CONFIG i.MaxAnglesGenerated value(+0x48)
3288ad lea    rsi,[rip+0xcc23c]        # 0x3f4af0
3288b4 mov    rdx,rdi
3288b7 mov    rcx,rsi
3288ba call   0x32a92c
3288bf mov    rdx,rdi
3288c2 lea    rcx,[rip+0xcc23f]        # 0x3f4b08
3288c9 call   0x32a92c
3288ce cmp    DWORD PTR [rip+0xfffffffffff205e0],edi        # 0x248eb4
3288d4 je     0x3288f9
3288d6 mov    rcx,rsi
3288d9 mov    DWORD PTR [rip+0xfffffffffff205d5],edi        # 0x248eb4
3288df call   0x320f64
3288e4 mov    rcx,rsi
3288e7 mov    rbx,rax
3288ea call   0x2d1978
3288ef mov    rcx,rax
3288f2 mov    edx,ebx
3288f4 call   0x3295bc
3288f9 movsd  xmm0,QWORD PTR [rbp+0x40]
3288fe mov    rcx,rsi
328901 mov    eax,DWORD PTR [rbp+0x48]
328904 movsd  QWORD PTR [rsp+0x70],xmm0
32890a mov    DWORD PTR [rsp+0x78],eax
32890e call   0x320f64
328913 lea    rcx,[rip+0xcc1ee]        # 0x3f4b08
32891a mov    rdi,rax
32891d call   0x2d1978
328922 mov    rcx,rsi
328925 mov    rbx,rax
328928 call   0x2d1978
32892d movss  xmm0,DWORD PTR [rip+0xfffffffffff2057b]        # 0x248eb0 ; f32=3.065
328935 lea    r9,[rsp+0x70]
32893a mov    rcx,rax
32893d movss  DWORD PTR [rsp+0x20],xmm0
328943 mov    r8d,edi
328946 mov    rdx,rbx
328949 call   0x32a454
32894e movsd  xmm0,QWORD PTR [rbp-0x50]
328953 mov    eax,DWORD PTR [rbp-0x48]
328956 movsd  QWORD PTR [rsp+0x70],xmm0
32895c movsd  xmm0,QWORD PTR [rsp+0x60]
328962 mov    DWORD PTR [rsp+0x78],eax
328966 mov    eax,DWORD PTR [rsp+0x68]
32896a movsd  QWORD PTR [rbp-0x80],xmm0
32896f mov    DWORD PTR [rbp-0x78],eax
328972 call   0x2e6a6c
328977 mov    r8d,eax
32897a movss  DWORD PTR [rsp+0x20],xmm8
328981 xorps  xmm3,xmm3
328984 lea    rdx,[rsp+0x70]
328989 lea    rcx,[rbp-0x80]
32898d call   0x2e2320
328992 test   al,al
328994 je     0x328aa5
32899a movsd  xmm0,QWORD PTR [rsp+0x60]
3289a0 mov    eax,DWORD PTR [rsp+0x68]
3289a4 movsd  QWORD PTR [rsp+0x70],xmm0
3289aa movsd  xmm0,QWORD PTR [rbp-0x50]
3289af mov    DWORD PTR [rsp+0x78],eax
3289b3 mov    eax,DWORD PTR [rbp-0x48]
3289b6 movsd  QWORD PTR [rbp-0x80],xmm0
3289bb mov    DWORD PTR [rbp-0x78],eax
3289be call   0x2e6a6c
3289c3 mov    r8d,eax
3289c6 movss  DWORD PTR [rsp+0x20],xmm8
3289cd xorps  xmm3,xmm3
3289d0 lea    rdx,[rsp+0x70]
3289d5 lea    rcx,[rbp-0x80]
3289d9 call   0x2e2320
3289de test   al,al
3289e0 je     0x328aa5
3289e6 mov    eax,DWORD PTR [rip+0xae864]        # 0x3d7250
3289ec lea    r9,[rsp+0x70]
3289f1 movsd  xmm0,QWORD PTR [rip+0xae84f]        # 0x3d7248
3289f9 lea    r8,[rbp-0x80]
3289fd mov    DWORD PTR [rsp+0x78],eax
328a01 lea    rdx,[rbp+0x0]
328a05 mov    eax,DWORD PTR [rsp+0x68]
328a09 lea    rcx,[rbp+0x30]
328a0d movsd  QWORD PTR [rsp+0x70],xmm0
328a13 movsd  xmm0,QWORD PTR [rsp+0x60]
328a19 mov    DWORD PTR [rbp-0x78],eax
328a1c mov    eax,DWORD PTR [rbp-0x48]
328a1f movsd  QWORD PTR [rbp-0x80],xmm0
328a24 movsd  xmm0,QWORD PTR [rbp-0x50]
328a29 mov    DWORD PTR [rbp+0x8],eax
328a2c mov    rax,QWORD PTR [rip+0xbcce5]        # 0x3e5718
328a33 movsd  QWORD PTR [rbp+0x0],xmm0
328a38 mov    QWORD PTR [rsp+0x20],rax
328a3d call   0x2e2374
328a42 lea    rcx,[rbp+0x30]
328a46 call   0x2e3b58
328a4b test   al,al
328a4d jne    0x328a6c
328a4f mov    eax,DWORD PTR [rsp+0x68]
328a53 movsd  xmm0,QWORD PTR [rsp+0x60]
328a59 mov    DWORD PTR [rip+0xae879],eax        # 0x3d72d8
328a5f mov    al,r14b
328a62 movsd  QWORD PTR [rip+0xae866],xmm0        # 0x3d72d0
328a6a jmp    0x328a8d
328a6c lea    rcx,[rbp-0x30]
328a70 call   0x3c7bbc
328a75 movsd  xmm0,QWORD PTR [rax]
328a79 movsd  QWORD PTR [rip+0xae84f],xmm0        # 0x3d72d0
328a81 mov    eax,DWORD PTR [rax+0x8]
328a84 mov    DWORD PTR [rip+0xae84e],eax        # 0x3d72d8
328a8a mov    al,r12b
328a8d mov    BYTE PTR [rip+0xbd3e6],al        # 0x3e5e79
328a93 mov    BYTE PTR [rip+0xbb7a0],al        # 0x3e4239
328a99 mov    BYTE PTR [rip+0xca070],r12b        # 0x3f2b10
328aa0 jmp    0x328d10
328aa5 lea    rsi,[rip+0xcc05c]        # 0x3f4b08
328aac mov    ebx,r12d
328aaf mov    rcx,rsi
328ab2 call   0x320f64
328ab7 add    rax,r14
328aba je     0x328d10
328ac0 test   ebx,ebx
328ac2 jne    0x328aca
328ac4 lea    rax,[rbp+0x40]
328ac8 jmp    0x328ad8
328aca lea    eax,[rbx+0x1]
328acd mov    rcx,rsi
328ad0 movsxd rdx,eax
328ad3 call   0x2ef7d0
328ad8 movsd  xmm6,QWORD PTR [rax]
328adc mov    edi,DWORD PTR [rax+0x8]
328adf movsd  xmm0,QWORD PTR [rbp-0x50]
328ae4 mov    eax,DWORD PTR [rbp-0x48]
328ae7 movsd  QWORD PTR [rsp+0x70],xmm6
328aed movsd  QWORD PTR [rbp-0x80],xmm0
328af2 mov    DWORD PTR [rbp-0x78],eax
328af5 mov    DWORD PTR [rsp+0x78],edi
328af9 call   0x2e6a6c
328afe mov    r8d,eax
328b01 movss  DWORD PTR [rsp+0x20],xmm8
328b08 xorps  xmm3,xmm3
328b0b lea    rdx,[rsp+0x70]
328b10 lea    rcx,[rbp-0x80]
328b14 call   0x2e2320
328b19 test   al,al
328b1b jne    0x328b55
328b1d lea    rcx,[rbp-0x30]
328b21 call   0x3c7bbc
328b26 movsd  xmm0,QWORD PTR [rax]
328b2a movsd  QWORD PTR [rip+0xae79e],xmm0        # 0x3d72d0
328b32 mov    eax,DWORD PTR [rax+0x8]
328b35 mov    DWORD PTR [rip+0xae79d],eax        # 0x3d72d8
328b3b mov    BYTE PTR [rip+0xbd337],r12b        # 0x3e5e79
328b42 mov    BYTE PTR [rip+0xbb6f0],r12b        # 0x3e4239
328b49 mov    BYTE PTR [rip+0xc9fc0],r12b        # 0x3f2b10
328b50 jmp    0x328c8e
328b55 movsd  xmm0,QWORD PTR [rbp-0x50]
328b5a mov    eax,DWORD PTR [rbp-0x48]
328b5d movsd  QWORD PTR [rbp+0x0],xmm0
328b62 mov    DWORD PTR [rbp+0x8],eax
328b65 movsd  QWORD PTR [rbp+0x30],xmm6
328b6a mov    DWORD PTR [rbp+0x38],edi
328b6d call   0x2e6a6c
328b72 mov    r8d,eax
328b75 movss  DWORD PTR [rsp+0x20],xmm8
328b7c xorps  xmm3,xmm3
328b7f lea    rdx,[rbp+0x0]
328b83 lea    rcx,[rbp+0x30]
328b87 call   0x2e2320
328b8c test   al,al
328b8e jne    0x328b99
328b90 lea    rcx,[rbp+0xa0]
328b97 jmp    0x328b21
328b99 movsd  xmm0,QWORD PTR [rsp+0x60]
328b9f mov    eax,DWORD PTR [rsp+0x68]
328ba3 movsd  QWORD PTR [rbp+0x90],xmm0
328bab mov    DWORD PTR [rbp+0x98],eax
328bb1 movsd  QWORD PTR [rbp+0x80],xmm6
328bb9 mov    DWORD PTR [rbp+0x88],edi
328bbf call   0x2e6a6c
328bc4 mov    r8d,eax
328bc7 movss  DWORD PTR [rsp+0x20],xmm8
328bce xorps  xmm3,xmm3
328bd1 lea    rdx,[rbp+0x90]
328bd8 lea    rcx,[rbp+0x80]
328bdf call   0x2e2320
328be4 test   al,al
328be6 jne    0x328bf1
328be8 lea    rcx,[rbp+0x10]
328bec jmp    0x328b21
328bf1 movsd  xmm0,QWORD PTR [rsp+0x60]
328bf7 mov    eax,DWORD PTR [rsp+0x68]
328bfb movsd  QWORD PTR [rbp+0x60],xmm0
328c00 movsd  QWORD PTR [rbp+0x70],xmm6
328c05 mov    DWORD PTR [rbp+0x78],edi
328c08 mov    DWORD PTR [rbp+0x68],eax
328c0b call   0x2e6a6c
328c10 mov    r8d,eax
328c13 movss  DWORD PTR [rsp+0x20],xmm8
328c1a xorps  xmm3,xmm3
328c1d lea    rdx,[rbp+0x70]
328c21 lea    rcx,[rbp+0x60]
328c25 call   0x2e2320
328c2a test   al,al
328c2c jne    0x328c3a
328c2e lea    rcx,[rbp+0xd0]
328c35 jmp    0x328b21
328c3a movsd  xmm0,QWORD PTR [rbp+0x40]
328c3f lea    r8,[rbp-0x40]
328c43 mov    eax,DWORD PTR [rbp+0x48]
328c46 lea    rdx,[rbp-0x10]
328c4a movsd  QWORD PTR [rbp-0x40],xmm0
328c4f lea    rcx,[rbp+0x50]
328c53 movsd  xmm0,QWORD PTR [rbp-0x50]
328c58 mov    DWORD PTR [rbp-0x38],eax
328c5b mov    eax,DWORD PTR [rbp-0x48]
328c5e movsd  QWORD PTR [rbp+0x50],xmm0
328c63 movsd  QWORD PTR [rbp-0x10],xmm6
328c68 mov    DWORD PTR [rbp-0x8],edi
328c6b mov    DWORD PTR [rbp+0x58],eax
328c6e call   0x32a770
328c73 cmp    eax,r14d
328c76 jne    0x328c81
328c78 lea    rcx,[rbp-0x70]
328c7c jmp    0x328b21
328c81 cmp    eax,0x2
328c84 je     0x328d10
328c8a test   eax,eax
328c8c je     0x328caa
328c8e mov    rcx,rsi
328c91 add    ebx,r14d
328c94 call   0x320f64
328c99 add    rax,r14
328c9c movsxd rcx,ebx
328c9f cmp    rcx,rax
328ca2 jb     0x328ac0
328ca8 jmp    0x328d10
328caa movsd  QWORD PTR [rip+0xae61e],xmm6        # 0x3d72d0
328cb2 mov    DWORD PTR [rip+0xae620],edi        # 0x3d72d8
328cb8 mov    BYTE PTR [rip+0xbb57a],r14b        # 0x3e4239
328cbf mov    BYTE PTR [rip+0xbd1b3],r14b        # 0x3e5e79
328cc6 mov    BYTE PTR [rip+0xc9e43],r14b        # 0x3f2b10
328ccd jmp    0x328d10
328ccf movss  xmm0,DWORD PTR [rip+0xcb101]        # 0x3f3dd8 ; CONFIG F.BulletSize1 value(+0x48)
328cd7 movss  DWORD PTR [rip+0xfffffffffff201d1],xmm0        # 0x248eb0 ; f32=3.065
328cdf lea    rcx,[rbp-0x70]
328ce3 call   0x3c7bbc
328ce8 movsd  xmm0,QWORD PTR [rax]
328cec movsd  QWORD PTR [rip+0xae5dc],xmm0        # 0x3d72d0
328cf4 mov    eax,DWORD PTR [rax+0x8]
328cf7 mov    DWORD PTR [rip+0xae5db],eax        # 0x3d72d8
328cfd mov    BYTE PTR [rip+0xbd175],r12b        # 0x3e5e79
328d04 mov    BYTE PTR [rip+0xbb52e],r12b        # 0x3e4239
328d0b jmp    0x328d10
328d0d xor    r12d,r12d
328d10 mov    eax,r12d
328d13 mov    rsi,QWORD PTR [rbp+0x280]
328d1a add    eax,r14d
328d1d mov    DWORD PTR [rip+0xc9df1],eax        # 0x3f2b14
328d23 mov    ebx,0x10
328d28 jmp    0x328d66
328d2a movss  xmm0,DWORD PTR [rip+0xcb0a6]        # 0x3f3dd8 ; CONFIG F.BulletSize1 value(+0x48)
328d32 lea    rcx,[rbp-0x70]
328d36 movss  DWORD PTR [rip+0xfffffffffff20172],xmm0        # 0x248eb0 ; f32=3.065
328d3e call   0x3c7bbc
328d43 movsd  xmm0,QWORD PTR [rax]
328d47 movsd  QWORD PTR [rip+0xae581],xmm0        # 0x3d72d0
328d4f mov    eax,DWORD PTR [rax+0x8]
328d52 mov    DWORD PTR [rip+0xae580],eax        # 0x3d72d8
328d58 mov    BYTE PTR [rip+0xbd11a],r12b        # 0x3e5e79
328d5f mov    BYTE PTR [rip+0xbb4d3],r12b        # 0x3e4239
328d66 cmp    BYTE PTR [rip+0xcab1b],r12b        # 0x3f3888 ; CONFIG Bools.OmniSprint value(+0x48)
328d6d je     0x328ebb
328d73 mov    rcx,r15
328d76 call   0x36a0e0
328d7b test   al,al
328d7d jne    0x328ebb
328d83 mov    rcx,r15
328d86 call   0x36b288
328d8b test   al,al
328d8d jne    0x328ebb
328d93 movss  xmm0,DWORD PTR [r13+0x58]
328d99 comiss xmm0,xmm11
328d9d movss  xmm10,DWORD PTR [rip+0xfffffffffff6a3aa]        # 0x293150 ; f32=2.8
328da6 movss  xmm7,DWORD PTR [rip+0xfffffffffff6b412]        # 0x2941c0 ; f32=1.7
328dae movss  xmm9,DWORD PTR [rip+0xfffffffffff6b419]        # 0x2941d0 ; f32=5.5
328db7 ja     0x328dee
328db9 mov    rcx,r15
328dbc call   0x36a238
328dc1 test   al,al
328dc3 jne    0x328dee
328dc5 movss  xmm0,DWORD PTR [r13+0x54]
328dcb comiss xmm0,xmm11
328dcf ja     0x328dee
328dd1 mov    edx,0x2
328dd6 mov    rcx,rsi
328dd9 call   0x372bf4
328dde test   al,al
328de0 je     0x328de8
328de2 movaps xmm6,xmm10
328de6 jmp    0x328df1
328de8 movaps xmm6,xmm9
328dec jmp    0x328df1
328dee movaps xmm6,xmm7
328df1 movss  xmm0,DWORD PTR [r15+0x7f8]
328dfa comiss xmm0,xmm8
328dfe jbe    0x328e2d
328e00 ucomiss xmm6,xmm9
328e04 jp     0x328e0f
328e06 jne    0x328e0f
328e08 mulss  xmm0,xmm9
328e0d jmp    0x328e29
328e0f ucomiss xmm6,xmm10
328e13 jp     0x328e1e
328e15 jne    0x328e1e
328e17 mulss  xmm0,xmm10
328e1c jmp    0x328e29
328e1e ucomiss xmm6,xmm7
328e21 jp     0x328e2d
328e23 jne    0x328e2d
328e25 mulss  xmm0,xmm7
328e29 subss  xmm6,xmm0
328e2d mov    rcx,r15
328e30 call   0x36a238
328e35 test   al,al
328e37 je     0x328e4a
328e39 movss  xmm0,DWORD PTR [r15+0x7d1]
328e42 mulss  xmm0,xmm7
328e46 addss  xmm6,xmm0
328e4a movsd  xmm0,QWORD PTR [r13+0x44]
328e50 lea    rcx,[rsp+0x60]
328e55 mov    eax,DWORD PTR [r13+0x4c]
328e59 movsd  QWORD PTR [rsp+0x60],xmm0
328e5f mov    DWORD PTR [rsp+0x68],eax
328e63 call   0x2e0ee8
328e68 mov    edx,ebx
328e6a mov    rcx,rsi
328e6d movaps xmm7,xmm0
328e70 call   0x372c1c
328e75 comiss xmm7,xmm8
328e79 jbe    0x328ebb
328e7b movss  xmm3,DWORD PTR [rsp+0x68]
328e81 maxss  xmm6,xmm7
328e85 movss  xmm1,DWORD PTR [rsp+0x60]
328e8b lea    rcx,[rbp-0x70]
328e8f movss  xmm2,DWORD PTR [rsp+0x64]
328e95 divss  xmm3,xmm7
328e99 divss  xmm1,xmm7
328e9d mulss  xmm3,xmm6
328ea1 mulss  xmm1,xmm6
328ea5 call   0x3c7ba8
328eaa movsd  xmm0,QWORD PTR [rax]
328eae mov    ecx,DWORD PTR [rax+0x8]
328eb1 movsd  QWORD PTR [r13+0x44],xmm0
328eb7 mov    DWORD PTR [r13+0x4c],ecx
328ebb mov    rcx,QWORD PTR [rip+0xbcfbe]        # 0x3e5e80
328ec2 call   0x2caf08
328ec7 test   al,al
328ec9 jne    0x328ff3
328ecf call   0x329a38
328ed4 mov    rcx,rax
328ed7 mov    rdx,rax
328eda call   0x2caf08
328edf test   al,al
328ee1 je     0x328ff3
328ee7 mov    rcx,rdx
328eea call   0x37628c
328eef mov    rcx,rax
328ef2 mov    rdx,rax
328ef5 call   0x2caf08
328efa test   al,al
328efc je     0x328ff3
328f02 mov    rcx,rdx
328f05 call   0x370508
328f0a mov    rcx,rax
328f0d mov    rdi,rax
328f10 call   0x2caf08
328f15 test   al,al
328f17 je     0x328ff3
328f1d lea    rdx,[rbp-0x70]
328f21 lea    rcx,[rbp+0x288]
328f28 call   0x32456c ; STRING getter=0x32456c UnityEngine
328f2d mov    rcx,rax
328f30 call   0x2cde34
328f35 lea    rdx,[rbp+0xd0]
328f3c mov    rbx,rax
328f3f lea    rcx,[rbp+0x288]
328f46 call   0x324550 ; STRING getter=0x324550 BoxCollider
328f4b mov    rcx,rax
328f4e call   0x2cde34
328f53 mov    rdx,rax
328f56 mov    r8,rbx
328f59 mov    rcx,rdi
328f5c call   0x372efc
328f61 mov    rcx,rax
328f64 mov    QWORD PTR [rip+0xbcf15],rax        # 0x3e5e80
328f6b call   0x2caf08
328f70 test   al,al
328f72 je     0x328ff3
328f74 call   0x315a24
328f79 mov    rcx,rax
328f7c mov    r8,rax
328f7f call   0x2caf08
328f84 test   al,al
328f86 je     0x328ff3
328f88 lea    rdx,[rsp+0x50]
328f8d mov    rcx,r8
328f90 call   0x3743f8
328f95 movsd  xmm1,QWORD PTR [rip+0xfffffffffff6b22b]        # 0x2941c8
328f9d lea    rcx,[rsp+0x70]
328fa2 movss  xmm0,DWORD PTR [rsp+0x58]
328fa8 movss  xmm2,DWORD PTR [rip+0xfffffffffff65210]        # 0x28e1c0 ; f32=0.001
328fb0 cvtps2pd xmm0,xmm0
328fb3 mulsd  xmm0,xmm1
328fb7 cvtpd2ps xmm3,xmm0
328fbb movss  xmm0,DWORD PTR [rsp+0x50]
328fc1 cvtps2pd xmm0,xmm0
328fc4 mulsd  xmm0,xmm1
328fc8 cvtpd2ps xmm1,xmm0
328fcc call   0x3c7ba8
328fd1 movsd  xmm0,QWORD PTR [rsp+0x70]
328fd7 lea    rdx,[rbp-0x80]
328fdb mov    eax,DWORD PTR [rsp+0x78]
328fdf mov    rcx,QWORD PTR [rip+0xbce9a]        # 0x3e5e80
328fe6 movsd  QWORD PTR [rbp-0x80],xmm0
328feb mov    DWORD PTR [rbp-0x78],eax
328fee call   0x370968
328ff3 mov    rcx,r15
328ff6 call   0x3297f0
328ffb mov    rcx,rax
328ffe mov    rbx,rax
329001 call   0x2caf08
329006 mov    edi,0xc
32900b test   al,al
32900d je     0x3290a8
329013 lea    rdx,[rsp+0x50]
329018 mov    rcx,r15
32901b call   0x368b9c
329020 lea    rdx,[rsp+0x70]
329025 mov    rcx,rbx
329028 call   0x3747d4
32902d movsd  xmm0,QWORD PTR [rsp+0x50]
329033 lea    r8,[rbp-0x80]
329037 mov    eax,DWORD PTR [rsp+0x58]
32903b lea    rdx,[rbp-0x70]
32903f movsd  QWORD PTR [rbp+0x0],xmm0
329044 lea    rcx,[rbp+0x0]
329048 movsd  xmm0,QWORD PTR [rsp+0x70]
32904e mov    DWORD PTR [rbp+0x8],eax
329051 mov    eax,DWORD PTR [rsp+0x78]
329055 movsd  QWORD PTR [rbp-0x80],xmm0
32905a mov    DWORD PTR [rbp-0x78],eax
32905d call   0x2df708
329062 mov    rcx,rax
329065 lea    rdx,[rbp+0x30]
329069 movaps xmm2,xmm11
32906d call   0x2df66c
329072 movsd  xmm0,QWORD PTR [rbp+0x30]
329077 lea    rcx,[rbp-0x80]
32907b mov    eax,DWORD PTR [rbp+0x38]
32907e movss  xmm1,DWORD PTR [rip+0xfffffffffff6a006]        # 0x29308c ; f32=0.01
329086 movsd  QWORD PTR [rbp-0x80],xmm0
32908b mov    DWORD PTR [rbp-0x78],eax
32908e call   0x322580
329093 cmp    BYTE PTR [rip+0xca3de],r12b        # 0x3f3478 ; CONFIG Bools.Jesus value(+0x48)
32909a lea    edx,[rdi-0x8]
32909d mov    ecx,edi
32909f sete   r8b
3290a3 call   0x329aa0
3290a8 cmp    BYTE PTR [rip+0xca469],r12b        # 0x3f3518 ; CONFIG Bools.NoCollision value(+0x48)
3290af jne    0x3290bd
3290b1 cmp    BYTE PTR [rip+0xc6a89],r12b        # 0x3efb41
3290b8 jne    0x3290bd
3290ba mov    r14b,r12b
3290bd mov    r8b,r14b
3290c0 mov    edx,0xb
3290c5 mov    ecx,edi
3290c7 lea    r11,[rsp+0x330]
3290cf mov    rbx,QWORD PTR [r11+0x48]
3290d3 movaps xmm6,XMMWORD PTR [r11-0x10]
3290d8 movaps xmm7,XMMWORD PTR [r11-0x20]
3290dd movaps xmm8,XMMWORD PTR [r11-0x30]
3290e2 movaps xmm9,XMMWORD PTR [r11-0x40]
3290e7 movaps xmm10,XMMWORD PTR [r11-0x50]
3290ec movaps xmm11,XMMWORD PTR [r11-0x60]
3290f1 movaps xmm12,XMMWORD PTR [r11-0x70]
3290f6 movaps xmm13,XMMWORD PTR [r11-0x80]
3290fb movaps xmm14,XMMWORD PTR [r11-0x90]
329103 movaps xmm15,XMMWORD PTR [r11-0xa0]
32910b mov    rsp,r11
32910e pop    r15
329110 pop    r14
329112 pop    r13
329114 pop    r12
329116 pop    rdi
329117 pop    rsi
329118 pop    rbp
329119 jmp    0x329aa0
