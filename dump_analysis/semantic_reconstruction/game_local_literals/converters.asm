; converters independent pdata/next-pdata extent 2cdccc..2cdcf2 unwind3d2038
2cdccc rex push rbx
2cdcce sub    rsp,0x20
2cdcd2 mov    rbx,rcx
2cdcd5 call   0x2ce564
2cdcda test   al,al
2cdcdc je     0x2cdce9
2cdcde mov    rdx,rbx
2cdce1 mov    rcx,rbx
2cdce4 call   0x2cd9e4
2cdce9 mov    rax,rbx
2cdcec add    rsp,0x20
2cdcf0 pop    rbx
2cdcf1 ret

; converters independent pdata/next-pdata extent 2d6354..2d6384 unwind0
2d6354 movabs rdx,0xcbf29ce484222325
2d635b 
2d635e jmp    0x2d6378
2d6360 movsx  rax,BYTE PTR [rcx]
2d6364 movabs r8,0x100000001b3
2d636b 
2d636e xor    rdx,rax
2d6371 inc    rcx
2d6374 imul   rdx,r8
2d6378 cmp    BYTE PTR [rcx],0x0
2d637b jne    0x2d6360
2d637d mov    rax,rdx
2d6380 ret
2d6381 int3
2d6382 int3
2d6383 int3

; converters independent pdata/next-pdata extent 2d84dc..2d8502 unwind3d2038
2d84dc rex push rbx
2d84de sub    rsp,0x20
2d84e2 mov    rbx,rcx
2d84e5 call   0x2d8a88
2d84ea test   al,al
2d84ec je     0x2d84f9
2d84ee mov    rdx,rbx
2d84f1 mov    rcx,rbx
2d84f4 call   0x2d8144
2d84f9 mov    rax,rbx
2d84fc add    rsp,0x20
2d8500 pop    rbx
2d8501 ret

; converters independent pdata/next-pdata extent 2d85f4..2d861a unwind3d2038
2d85f4 rex push rbx
2d85f6 sub    rsp,0x20
2d85fa mov    rbx,rcx
2d85fd call   0x2ce59c
2d8602 test   al,al
2d8604 je     0x2d8611
2d8606 mov    rdx,rbx
2d8609 mov    rcx,rbx
2d860c call   0x2d82ac
2d8611 mov    rax,rbx
2d8614 add    rsp,0x20
2d8618 pop    rbx
2d8619 ret

; converters independent pdata/next-pdata extent 2d866c..2d8692 unwind3d2038
2d866c rex push rbx
2d866e sub    rsp,0x20
2d8672 mov    rbx,rcx
2d8675 call   0x2d8ac8
2d867a test   al,al
2d867c je     0x2d8689
2d867e mov    rdx,rbx
2d8681 mov    rcx,rbx
2d8684 call   0x2d8348
2d8689 mov    rax,rbx
2d868c add    rsp,0x20
2d8690 pop    rbx
2d8691 ret

; converters independent pdata/next-pdata extent 2dd188..2dd1ae unwind3d2038
2dd188 rex push rbx
2dd18a sub    rsp,0x20
2dd18e mov    rbx,rcx
2dd191 call   0x2d8ac0
2dd196 test   al,al
2dd198 je     0x2dd1a5
2dd19a mov    rdx,rbx
2dd19d mov    rcx,rbx
2dd1a0 call   0x2dd0a0
2dd1a5 mov    rax,rbx
2dd1a8 add    rsp,0x20
2dd1ac pop    rbx
2dd1ad ret

; converters independent pdata/next-pdata extent 2e3614..2e363a unwind3d2038
2e3614 rex push rbx
2e3616 sub    rsp,0x20
2e361a mov    rbx,rcx
2e361d call   0x2dd2e4
2e3622 test   al,al
2e3624 je     0x2e3631
2e3626 mov    rdx,rbx
2e3629 mov    rcx,rbx
2e362c call   0x2e3400
2e3631 mov    rax,rbx
2e3634 add    rsp,0x20
2e3638 pop    rbx
2e3639 ret

; converters independent pdata/next-pdata extent 2e5b4c..2e5b7a unwind3d2064
2e5b4c sub    rsp,0x28
2e5b50 cmp    BYTE PTR [rcx],0x0
2e5b53 mov    rax,rdx
2e5b56 je     0x2e5b75
2e5b58 movsx  rdx,BYTE PTR [rcx]
2e5b5c xor    rdx,rax
2e5b5f movabs rax,0x100000001b3
2e5b66 
2e5b69 imul   rdx,rax
2e5b6d inc    rcx
2e5b70 call   0x2e5b4c
2e5b75 add    rsp,0x28
2e5b79 ret

; converters independent pdata/next-pdata extent 2e9b8c..2e9bb2 unwind3d2038
2e9b8c rex push rbx
2e9b8e sub    rsp,0x20
2e9b92 mov    rbx,rcx
2e9b95 call   0x2d8a90
2e9b9a test   al,al
2e9b9c je     0x2e9ba9
2e9b9e mov    rdx,rbx
2e9ba1 mov    rcx,rbx
2e9ba4 call   0x2e99d8
2e9ba9 mov    rax,rbx
2e9bac add    rsp,0x20
2e9bb0 pop    rbx
2e9bb1 ret

; converters independent pdata/next-pdata extent 2e9bb4..2e9bda unwind3d2038
2e9bb4 rex push rbx
2e9bb6 sub    rsp,0x20
2e9bba mov    rbx,rcx
2e9bbd call   0x2d8aa0
2e9bc2 test   al,al
2e9bc4 je     0x2e9bd1
2e9bc6 mov    rdx,rbx
2e9bc9 mov    rcx,rbx
2e9bcc call   0x2e9a14
2e9bd1 mov    rax,rbx
2e9bd4 add    rsp,0x20
2e9bd8 pop    rbx
2e9bd9 ret

; converters independent pdata/next-pdata extent 2e9c54..2e9c7a unwind3d2038
2e9c54 rex push rbx
2e9c56 sub    rsp,0x20
2e9c5a mov    rbx,rcx
2e9c5d call   0x2d8ab8
2e9c62 test   al,al
2e9c64 je     0x2e9c71
2e9c66 mov    rdx,rbx
2e9c69 mov    rcx,rbx
2e9c6c call   0x2e9aec
2e9c71 mov    rax,rbx
2e9c74 add    rsp,0x20
2e9c78 pop    rbx
2e9c79 ret

; converters independent pdata/next-pdata extent 320494..3204ba unwind3d2038
320494 rex push rbx
320496 sub    rsp,0x20
32049a mov    rbx,rcx
32049d call   0x2ce584
3204a2 test   al,al
3204a4 je     0x3204b1
3204a6 mov    rdx,rbx
3204a9 mov    rcx,rbx
3204ac call   0x31ffc8
3204b1 mov    rax,rbx
3204b4 add    rsp,0x20
3204b8 pop    rbx
3204b9 ret

; converters independent pdata/next-pdata extent 3204bc..3204e2 unwind3d2038
3204bc rex push rbx
3204be sub    rsp,0x20
3204c2 mov    rbx,rcx
3204c5 call   0x2e3b30
3204ca test   al,al
3204cc je     0x3204d9
3204ce mov    rdx,rbx
3204d1 mov    rcx,rbx
3204d4 call   0x320004
3204d9 mov    rax,rbx
3204dc add    rsp,0x20
3204e0 pop    rbx
3204e1 ret

; converters independent pdata/next-pdata extent 32050c..320532 unwind3d2038
32050c rex push rbx
32050e sub    rsp,0x20
320512 mov    rbx,rcx
320515 call   0x2e3b48
32051a test   al,al
32051c je     0x320529
32051e mov    rdx,rbx
320521 mov    rcx,rbx
320524 call   0x32007c
320529 mov    rax,rbx
32052c add    rsp,0x20
320530 pop    rbx
320531 ret
