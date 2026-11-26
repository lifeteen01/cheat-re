; literal independent pdata/next-pdata extent 332514..332554 unwind0
332514 cmp    BYTE PTR [rcx+0x37],0x0
332518 setne  al
33251b ret
33251c movzx  eax,WORD PTR [rip+0xfffffffffff6292d]        # 0x294e50
332523 movups xmm0,XMMWORD PTR [rip+0xfffffffffff62916]        # 0x294e40
33252a movups XMMWORD PTR [rdx],xmm0
33252d mov    WORD PTR [rdx+0x10],ax
332531 mov    rax,rdx
332534 ret
332535 int3
332536 int3
332537 int3
332538 mov    eax,DWORD PTR [rip+0xfffffffffff62922]        # 0x294e60
33253e movsd  xmm0,QWORD PTR [rip+0xfffffffffff62912]        # 0x294e58
332545 
332546 movsd  QWORD PTR [rdx],xmm0
33254a mov    DWORD PTR [rdx+0x8],eax
33254d mov    rax,rdx
332550 ret
332551 int3
332552 int3
332553 int3

; literal independent pdata/next-pdata extent 332460..33249c unwind0
332460 mov    r10,rdx
332463 mov    r11,rcx
332466 xor    r9d,r9d
332469 mov    eax,0x24924925
33246e mul    r9d
332471 mov    eax,r9d
332474 sub    eax,edx
332476 shr    eax,1
332478 add    eax,edx
33247a shr    eax,0x5
33247d movsx  eax,al
332480 imul   ecx,eax,0x38
332483 mov    al,r9b
332486 sub    al,cl
332488 add    al,0x37
33248a xor    al,BYTE PTR [r10+r9*1]
33248e mov    BYTE PTR [r11+r9*1],al
332492 inc    r9d
332495 cmp    r9d,0x38
332499 jl     0x332469
33249b ret

; literal independent pdata/next-pdata extent 2d8a98..2d8ae0 unwind0
2d8a98 cmp    BYTE PTR [rcx+0xf],0x0
2d8a9c setne  al
2d8a9f ret
2d8aa0 cmp    BYTE PTR [rcx+0x10],0x0
2d8aa4 setne  al
2d8aa7 ret
2d8aa8 cmp    BYTE PTR [rcx+0x11],0x0
2d8aac setne  al
2d8aaf ret
2d8ab0 cmp    BYTE PTR [rcx+0x15],0x0
2d8ab4 setne  al
2d8ab7 ret
2d8ab8 cmp    BYTE PTR [rcx+0xa],0x0
2d8abc setne  al
2d8abf ret
2d8ac0 cmp    BYTE PTR [rcx+0xd],0x0
2d8ac4 setne  al
2d8ac7 ret
2d8ac8 cmp    BYTE PTR [rcx+0xe],0x0
2d8acc setne  al
2d8acf ret
2d8ad0 jmp    0x3cab84
2d8ad5 int3
2d8ad6 int3
2d8ad7 int3
2d8ad8 mov    rax,QWORD PTR [rcx+0x10]
2d8adc ret
2d8add int3
2d8ade int3
2d8adf int3

; literal independent pdata/next-pdata extent 2dd064..2dd0e8 unwind0
2dd064 mov    r10,rdx
2dd067 mov    r11,rcx
2dd06a xor    r9d,r9d
2dd06d mov    eax,0x24924925
2dd072 mul    r9d
2dd075 mov    eax,r9d
2dd078 sub    eax,edx
2dd07a shr    eax,1
2dd07c add    eax,edx
2dd07e shr    eax,0x5
2dd081 movsx  eax,al
2dd084 imul   ecx,eax,0x38
2dd087 mov    al,r9b
2dd08a sub    al,cl
2dd08c add    al,0x37
2dd08e xor    al,BYTE PTR [r10+r9*1]
2dd092 mov    BYTE PTR [r11+r9*1],al
2dd096 inc    r9d
2dd099 cmp    r9d,0x10
2dd09d jl     0x2dd06d
2dd09f ret
2dd0a0 mov    r10,rdx
2dd0a3 mov    r11,rcx
2dd0a6 xor    r9d,r9d
2dd0a9 mov    eax,0x24924925
2dd0ae mul    r9d
2dd0b1 mov    eax,r9d
2dd0b4 sub    eax,edx
2dd0b6 shr    eax,1
2dd0b8 add    eax,edx
2dd0ba shr    eax,0x5
2dd0bd movsx  eax,al
2dd0c0 imul   ecx,eax,0x38
2dd0c3 mov    al,r9b
2dd0c6 sub    al,cl
2dd0c8 add    al,0x37
2dd0ca xor    al,BYTE PTR [r10+r9*1]
2dd0ce mov    BYTE PTR [r11+r9*1],al
2dd0d2 inc    r9d
2dd0d5 cmp    r9d,0xe
2dd0d9 jl     0x2dd0a9
2dd0db ret
2dd0dc mov    rcx,rdx
2dd0df imul   rdx,r8,0x68
2dd0e3 jmp    0x2cb3a8

; literal independent pdata/next-pdata extent 2d8a90..2d8ae0 unwind0
2d8a90 cmp    BYTE PTR [rcx+0x8],0x0
2d8a94 setne  al
2d8a97 ret
2d8a98 cmp    BYTE PTR [rcx+0xf],0x0
2d8a9c setne  al
2d8a9f ret
2d8aa0 cmp    BYTE PTR [rcx+0x10],0x0
2d8aa4 setne  al
2d8aa7 ret
2d8aa8 cmp    BYTE PTR [rcx+0x11],0x0
2d8aac setne  al
2d8aaf ret
2d8ab0 cmp    BYTE PTR [rcx+0x15],0x0
2d8ab4 setne  al
2d8ab7 ret
2d8ab8 cmp    BYTE PTR [rcx+0xa],0x0
2d8abc setne  al
2d8abf ret
2d8ac0 cmp    BYTE PTR [rcx+0xd],0x0
2d8ac4 setne  al
2d8ac7 ret
2d8ac8 cmp    BYTE PTR [rcx+0xe],0x0
2d8acc setne  al
2d8acf ret
2d8ad0 jmp    0x3cab84
2d8ad5 int3
2d8ad6 int3
2d8ad7 int3
2d8ad8 mov    rax,QWORD PTR [rcx+0x10]
2d8adc ret
2d8add int3
2d8ade int3
2d8adf int3

; literal independent pdata/next-pdata extent 2e99d8..2e9b28 unwind0
2e99d8 mov    r10,rdx
2e99db mov    r11,rcx
2e99de xor    r9d,r9d
2e99e1 mov    eax,0x24924925
2e99e6 mul    r9d
2e99e9 mov    eax,r9d
2e99ec sub    eax,edx
2e99ee shr    eax,1
2e99f0 add    eax,edx
2e99f2 shr    eax,0x5
2e99f5 movsx  eax,al
2e99f8 imul   ecx,eax,0x38
2e99fb mov    al,r9b
2e99fe sub    al,cl
2e9a00 add    al,0x37
2e9a02 xor    al,BYTE PTR [r10+r9*1]
2e9a06 mov    BYTE PTR [r11+r9*1],al
2e9a0a inc    r9d
2e9a0d cmp    r9d,0x9
2e9a11 jl     0x2e99e1
2e9a13 ret
2e9a14 mov    r10,rdx
2e9a17 mov    r11,rcx
2e9a1a xor    r9d,r9d
2e9a1d mov    eax,0x24924925
2e9a22 mul    r9d
2e9a25 mov    eax,r9d
2e9a28 sub    eax,edx
2e9a2a shr    eax,1
2e9a2c add    eax,edx
2e9a2e shr    eax,0x5
2e9a31 movsx  eax,al
2e9a34 imul   ecx,eax,0x38
2e9a37 mov    al,r9b
2e9a3a sub    al,cl
2e9a3c add    al,0x37
2e9a3e xor    al,BYTE PTR [r10+r9*1]
2e9a42 mov    BYTE PTR [r11+r9*1],al
2e9a46 inc    r9d
2e9a49 cmp    r9d,0x11
2e9a4d jl     0x2e9a1d
2e9a4f ret
2e9a50 mov    r10,rdx
2e9a53 mov    r11,rcx
2e9a56 xor    r9d,r9d
2e9a59 mov    eax,0x24924925
2e9a5e mul    r9d
2e9a61 mov    eax,r9d
2e9a64 sub    eax,edx
2e9a66 shr    eax,1
2e9a68 add    eax,edx
2e9a6a shr    eax,0x5
2e9a6d movsx  eax,al
2e9a70 imul   ecx,eax,0x38
2e9a73 mov    al,r9b
2e9a76 sub    al,cl
2e9a78 add    al,0x37
2e9a7a xor    al,BYTE PTR [r10+r9*1]
2e9a7e mov    BYTE PTR [r11+r9*1],al
2e9a82 inc    r9d
2e9a85 cmp    r9d,0x12
2e9a89 jl     0x2e9a59
2e9a8b ret
2e9a8c mov    r10,rdx
2e9a8f xor    r9d,r9d
2e9a92 mov    eax,0x4ec4ec4f
2e9a97 mul    r9d
2e9a9a shr    edx,0x4
2e9a9d movsx  eax,dl
2e9aa0 imul   edx,eax,0x34
2e9aa3 mov    al,r9b
2e9aa6 sub    al,dl
2e9aa8 add    al,0x37
2e9aaa xor    al,BYTE PTR [r10+r9*1]
2e9aae mov    BYTE PTR [rcx+r9*1],al
2e9ab2 inc    r9d
2e9ab5 cmp    r9d,0x1b
2e9ab9 jl     0x2e9a92
2e9abb ret
2e9abc mov    r10,rdx
2e9abf xor    r9d,r9d
2e9ac2 mov    eax,0x4ec4ec4f
2e9ac7 mul    r9d
2e9aca shr    edx,0x4
2e9acd movsx  eax,dl
2e9ad0 imul   edx,eax,0x34
2e9ad3 mov    al,r9b
2e9ad6 sub    al,dl
2e9ad8 add    al,0x37
2e9ada xor    al,BYTE PTR [r10+r9*1]
2e9ade mov    BYTE PTR [rcx+r9*1],al
2e9ae2 inc    r9d
2e9ae5 cmp    r9d,0x21
2e9ae9 jl     0x2e9ac2
2e9aeb ret
2e9aec mov    r10,rdx
2e9aef mov    r11,rcx
2e9af2 xor    r9d,r9d
2e9af5 mov    eax,0x24924925
2e9afa mul    r9d
2e9afd mov    eax,r9d
2e9b00 sub    eax,edx
2e9b02 shr    eax,1
2e9b04 add    eax,edx
2e9b06 shr    eax,0x5
2e9b09 movsx  eax,al
2e9b0c imul   ecx,eax,0x38
2e9b0f mov    al,r9b
2e9b12 sub    al,cl
2e9b14 add    al,0x37
2e9b16 xor    al,BYTE PTR [r10+r9*1]
2e9b1a mov    BYTE PTR [r11+r9*1],al
2e9b1e inc    r9d
2e9b21 cmp    r9d,0xb
2e9b25 jl     0x2e9af5
2e9b27 ret

; literal independent pdata/next-pdata extent 2dd2e4..2dd2ec unwind0
2dd2e4 cmp    BYTE PTR [rcx+0x7],0x0
2dd2e8 setne  al
2dd2eb ret

; literal independent pdata/next-pdata extent 2e3400..2e3568 unwind0
2e3400 mov    r10,rdx
2e3403 mov    r11,rcx
2e3406 xor    r9d,r9d
2e3409 mov    eax,0x24924925
2e340e mul    r9d
2e3411 mov    eax,r9d
2e3414 sub    eax,edx
2e3416 shr    eax,1
2e3418 add    eax,edx
2e341a shr    eax,0x5
2e341d movsx  eax,al
2e3420 imul   ecx,eax,0x38
2e3423 mov    al,r9b
2e3426 sub    al,cl
2e3428 add    al,0x37
2e342a xor    al,BYTE PTR [r10+r9*1]
2e342e mov    BYTE PTR [r11+r9*1],al
2e3432 inc    r9d
2e3435 cmp    r9d,0x8
2e3439 jl     0x2e3409
2e343b ret
2e343c mov    r10,rdx
2e343f xor    r9d,r9d
2e3442 mov    eax,0x4ec4ec4f
2e3447 mul    r9d
2e344a shr    edx,0x4
2e344d movsx  eax,dl
2e3450 imul   edx,eax,0x34
2e3453 mov    al,r9b
2e3456 sub    al,dl
2e3458 add    al,0x37
2e345a xor    al,BYTE PTR [r10+r9*1]
2e345e mov    BYTE PTR [rcx+r9*1],al
2e3462 inc    r9d
2e3465 cmp    r9d,0x15
2e3469 jl     0x2e3442
2e346b ret
2e346c mov    r10,rdx
2e346f xor    r9d,r9d
2e3472 mov    eax,0x4ec4ec4f
2e3477 mul    r9d
2e347a shr    edx,0x4
2e347d movsx  eax,dl
2e3480 imul   edx,eax,0x34
2e3483 mov    al,r9b
2e3486 sub    al,dl
2e3488 add    al,0x37
2e348a xor    al,BYTE PTR [r10+r9*1]
2e348e mov    BYTE PTR [rcx+r9*1],al
2e3492 inc    r9d
2e3495 cmp    r9d,0x16
2e3499 jl     0x2e3472
2e349b ret
2e349c mov    r10,rdx
2e349f xor    r9d,r9d
2e34a2 mov    eax,0x4ec4ec4f
2e34a7 mul    r9d
2e34aa shr    edx,0x4
2e34ad movsx  eax,dl
2e34b0 imul   edx,eax,0x34
2e34b3 mov    al,r9b
2e34b6 sub    al,dl
2e34b8 add    al,0x37
2e34ba xor    al,BYTE PTR [r10+r9*1]
2e34be mov    BYTE PTR [rcx+r9*1],al
2e34c2 inc    r9d
2e34c5 cmp    r9d,0x17
2e34c9 jl     0x2e34a2
2e34cb ret
2e34cc mov    r10,rdx
2e34cf xor    r9d,r9d
2e34d2 mov    eax,0x4ec4ec4f
2e34d7 mul    r9d
2e34da shr    edx,0x4
2e34dd movsx  eax,dl
2e34e0 imul   edx,eax,0x34
2e34e3 mov    al,r9b
2e34e6 sub    al,dl
2e34e8 add    al,0x37
2e34ea xor    al,BYTE PTR [r10+r9*1]
2e34ee mov    BYTE PTR [rcx+r9*1],al
2e34f2 inc    r9d
2e34f5 cmp    r9d,0x18
2e34f9 jl     0x2e34d2
2e34fb ret
2e34fc mov    r10,rdx
2e34ff xor    r9d,r9d
2e3502 mov    eax,0x4ec4ec4f
2e3507 mul    r9d
2e350a shr    edx,0x4
2e350d movsx  eax,dl
2e3510 imul   edx,eax,0x34
2e3513 mov    al,r9b
2e3516 sub    al,dl
2e3518 add    al,0x37
2e351a xor    al,BYTE PTR [r10+r9*1]
2e351e mov    BYTE PTR [rcx+r9*1],al
2e3522 inc    r9d
2e3525 cmp    r9d,0x19
2e3529 jl     0x2e3502
2e352b ret
2e352c mov    r10,rdx
2e352f mov    r11,rcx
2e3532 xor    r9d,r9d
2e3535 mov    eax,0x24924925
2e353a mul    r9d
2e353d mov    eax,r9d
2e3540 sub    eax,edx
2e3542 shr    eax,1
2e3544 add    eax,edx
2e3546 shr    eax,0x5
2e3549 movsx  eax,al
2e354c imul   ecx,eax,0x38
2e354f mov    al,r9b
2e3552 sub    al,cl
2e3554 add    al,0x37
2e3556 xor    al,BYTE PTR [r10+r9*1]
2e355a mov    BYTE PTR [r11+r9*1],al
2e355e inc    r9d
2e3561 cmp    r9d,0x2a
2e3565 jl     0x2e3535
2e3567 ret

; literal independent pdata/next-pdata extent 2ce718..2ce790 unwind3d2038
2ce718 rex push rbx
2ce71a sub    rsp,0x20
2ce71e mov    eax,DWORD PTR [rip+0x10774c]        # 0x3d5e70
2ce724 mov    rbx,rcx
2ce727 test   al,0x1
2ce729 jne    0x2ce74b
2ce72b or     eax,0x1
2ce72e mov    DWORD PTR [rip+0x10773c],eax        # 0x3d5e70
2ce734 call   0x2cc164
2ce739 mov    r8,rax
2ce73c mov    QWORD PTR [rip+0x107725],rax        # 0x3d5e68
2ce743 mov    eax,DWORD PTR [rip+0x107727]        # 0x3d5e70
2ce749 jmp    0x2ce752
2ce74b mov    r8,QWORD PTR [rip+0x107716]        # 0x3d5e68
2ce752 test   al,0x2
2ce754 jne    0x2ce775
2ce756 mov    rcx,QWORD PTR [rip+0x107703]        # 0x3d5e60
2ce75d lea    rdx,[rip+0x10771c]        # 0x3d5e80
2ce764 or     eax,0x2
2ce767 xor    r9d,r9d
2ce76a mov    DWORD PTR [rip+0x107700],eax        # 0x3d5e70
2ce770 call   0x2cbd24
2ce775 mov    rcx,QWORD PTR [rip+0x1076e4]        # 0x3d5e60
2ce77c lea    rdx,[rip+0x1076fd]        # 0x3d5e80
2ce783 mov    r8,rbx
2ce786 add    rsp,0x20
2ce78a pop    rbx
2ce78b jmp    0x2cb9fc

; literal independent pdata/next-pdata extent 2cc268..2cc284 unwind0
2cc268 mov    QWORD PTR [rcx],rdx
2cc26b mov    rax,rcx
2cc26e ret
2cc26f int3
2cc270 mov    QWORD PTR [rcx],0x0
2cc277 mov    rax,rcx
2cc27a mov    QWORD PTR [rcx+0x8],0x0
2cc281 
2cc282 ret
2cc283 int3

; literal independent pdata/next-pdata extent 2ddbf8..2ddc00 unwind0
2ddbf8 movss  DWORD PTR [rcx],xmm1
2ddbfc mov    rax,rcx
2ddbff ret

; literal independent pdata/next-pdata extent 2d4928..2d4930 unwind0
2d4928 mov    BYTE PTR [rcx],dl
2d492a mov    rax,rcx
2d492d ret
2d492e int3
2d492f int3

; literal independent pdata/next-pdata extent 2df370..2df388 unwind0
2df370 mov    DWORD PTR [rcx],edx
2df372 mov    rax,rcx
2df375 ret
2df376 int3
2df377 int3
2df378 xor    eax,eax
2df37a mov    QWORD PTR [rcx],rax
2df37d mov    WORD PTR [rcx+0x8],ax
2df381 mov    rax,rcx
2df384 ret
2df385 int3
2df386 int3
2df387 int3

; literal independent pdata/next-pdata extent 332e8c..332f1d unwind3d2228
332e8c mov    QWORD PTR [rsp+0x8],rbx
332e91 push   rdi
332e92 sub    rsp,0x40
332e96 mov    rdi,rdx
332e99 lea    rcx,[rsp+0x20]
332e9e mov    rdx,r8
332ea1 mov    rbx,r9
332ea4 call   0x2cc268
332ea9 mov    rdx,rbx
332eac lea    rcx,[rsp+0x28]
332eb1 call   0x2cc268
332eb6 mov    edx,DWORD PTR [rsp+0x70]
332eba lea    rcx,[rsp+0x30]
332ebf call   0x2df370
332ec4 movups xmm0,XMMWORD PTR [rsp+0x20]
332ec9 xor    eax,eax
332ecb mov    rcx,rdi
332ece movsd  xmm1,QWORD PTR [rsp+0x30]
332ed4 mov    WORD PTR [rdi+0xd0],ax
332edb mov    BYTE PTR [rdi+0xd2],al
332ee1 mov    al,BYTE PTR [rsp+0x5b]
332ee5 mov    BYTE PTR [rdi+0xd3],al
332eeb lea    rax,[rsp+0x48]
332ef0 movups XMMWORD PTR [rdi+0x88],xmm0
332ef7 mov    QWORD PTR [rdi+0x78],rax
332efb movsd  QWORD PTR [rdi+0x98],xmm1
332f02 
332f03 mov    QWORD PTR [rdi+0x80],0x3
332f0a 
332f0e mov    rbx,QWORD PTR [rsp+0x50]
332f13 add    rsp,0x40
332f17 pop    rdi
332f18 jmp    0x3cdbd4
