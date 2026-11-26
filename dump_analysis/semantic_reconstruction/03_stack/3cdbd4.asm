; explicit leaf/assembly range 0x3cdbd4..0x3cddf0 unwind=0x0
3cdbd4  48 89 6c 24 08                 mov    QWORD PTR [rsp+0x8],rbp
3cdbd9  48 89 5c 24 10                 mov    QWORD PTR [rsp+0x10],rbx
3cdbde  4c 89 7c 24 18                 mov    QWORD PTR [rsp+0x18],r15
3cdbe3  48 8b 59 20                    mov    rbx,QWORD PTR [rcx+0x20]
3cdbe7  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
3cdbec  48 8b dc                       mov    rbx,rsp
3cdbef  48 83 c3 20                    add    rbx,0x20
3cdbf3  48 89 59 68                    mov    QWORD PTR [rcx+0x68],rbx
3cdbf7  48 81 ec 00 02 00 00           sub    rsp,0x200
3cdbfe  48 8b ec                       mov    rbp,rsp
3cdc01  48 8d 05 b2 ff ff ff           lea    rax,[rip+0xffffffffffffffb2]        # 0x3cdbba
3cdc08  50                             push   rax
3cdc09  48 8d 1c 24                    lea    rbx,[rsp]
3cdc0d  ff 71 10                       push   QWORD PTR [rcx+0x10]
3cdc10  48 83 04 24 20                 add    QWORD PTR [rsp],0x20
3cdc15  48 8b 41 78                    mov    rax,QWORD PTR [rcx+0x78]
3cdc19  48 2b 41 30                    sub    rax,QWORD PTR [rcx+0x30]
3cdc1d  48 2b 61 38                    sub    rsp,QWORD PTR [rcx+0x38]
3cdc21  4c 8b 51 60                    mov    r10,QWORD PTR [rcx+0x60]
3cdc25  4a 89 04 14                    mov    QWORD PTR [rsp+r10*1],rax
3cdc29  48 33 c0                       xor    rax,rax
3cdc2c  50                             push   rax
3cdc2d  48 8b 41 10                    mov    rax,QWORD PTR [rcx+0x10]
3cdc31  48 2b 41 30                    sub    rax,QWORD PTR [rcx+0x30]
3cdc35  48 2b 61 50                    sub    rsp,QWORD PTR [rcx+0x50]
3cdc39  48 89 44 24 30                 mov    QWORD PTR [rsp+0x30],rax
3cdc3e  ff 31                          push   QWORD PTR [rcx]
3cdc40  48 83 04 24 21                 add    QWORD PTR [rsp],0x21
3cdc45  48 2b 61 58                    sub    rsp,QWORD PTR [rcx+0x58]
3cdc49  ff 71 08                       push   QWORD PTR [rcx+0x8]
3cdc4c  48 83 04 24 14                 add    QWORD PTR [rsp],0x14
3cdc51  48 2b 61 40                    sub    rsp,QWORD PTR [rcx+0x40]
3cdc55  48 8b 01                       mov    rax,QWORD PTR [rcx]
3cdc58  48 2b 41 50                    sub    rax,QWORD PTR [rcx+0x50]
3cdc5c  48 89 44 24 30                 mov    QWORD PTR [rsp+0x30],rax
3cdc61  ff 71 20                       push   QWORD PTR [rcx+0x20]
3cdc64  48 8b 41 08                    mov    rax,QWORD PTR [rcx+0x8]
3cdc68  48 2b 41 38                    sub    rax,QWORD PTR [rcx+0x38]
3cdc6c  48 2b 61 48                    sub    rsp,QWORD PTR [rcx+0x48]
3cdc70  48 89 44 24 30                 mov    QWORD PTR [rsp+0x30],rax
3cdc75  4c 8b 51 20                    mov    r10,QWORD PTR [rcx+0x20]
3cdc79  4c 89 54 24 38                 mov    QWORD PTR [rsp+0x38],r10
3cdc7e  ff 71 28                       push   QWORD PTR [rcx+0x28]
3cdc81  48 8b 41 48                    mov    rax,QWORD PTR [rcx+0x48]
3cdc85  48 89 45 28                    mov    QWORD PTR [rbp+0x28],rax
3cdc89  48 8b 45 28                    mov    rax,QWORD PTR [rbp+0x28]
3cdc8d  48 89 44 24 28                 mov    QWORD PTR [rsp+0x28],rax
3cdc92  48 8b 45 30                    mov    rax,QWORD PTR [rbp+0x30]
3cdc96  48 8b 41 70                    mov    rax,QWORD PTR [rcx+0x70]
3cdc9a  eb 00                          jmp    0x3cdc9c
3cdc9c  48 83 b9 80 00 00 00 09        cmp    QWORD PTR [rcx+0x80],0x9
3cdca4  74 7e                          je     0x3cdd24
3cdca6  48 83 b9 80 00 00 00 08        cmp    QWORD PTR [rcx+0x80],0x8
3cdcae  0f 84 82 00 00 00              je     0x3cdd36
3cdcb4  48 83 b9 80 00 00 00 07        cmp    QWORD PTR [rcx+0x80],0x7
3cdcbc  0f 84 86 00 00 00              je     0x3cdd48
3cdcc2  48 83 b9 80 00 00 00 06        cmp    QWORD PTR [rcx+0x80],0x6
3cdcca  0f 84 8a 00 00 00              je     0x3cdd5a
3cdcd0  48 83 b9 80 00 00 00 05        cmp    QWORD PTR [rcx+0x80],0x5
3cdcd8  0f 84 8e 00 00 00              je     0x3cdd6c
3cdcde  48 83 b9 80 00 00 00 04        cmp    QWORD PTR [rcx+0x80],0x4
3cdce6  0f 84 92 00 00 00              je     0x3cdd7e
3cdcec  48 83 b9 80 00 00 00 03        cmp    QWORD PTR [rcx+0x80],0x3
3cdcf4  0f 84 a0 00 00 00              je     0x3cdd9a
3cdcfa  48 83 b9 80 00 00 00 02        cmp    QWORD PTR [rcx+0x80],0x2
3cdd02  0f 84 ae 00 00 00              je     0x3cddb6
3cdd08  48 83 b9 80 00 00 00 01        cmp    QWORD PTR [rcx+0x80],0x1
3cdd10  0f 84 bc 00 00 00              je     0x3cddd2
3cdd16  48 83 b9 80 00 00 00 00        cmp    QWORD PTR [rcx+0x80],0x0
3cdd1e  0f 84 ca 00 00 00              je     0x3cddee
3cdd24  41 57                          push   r15
3cdd26  4c 8b b9 c8 00 00 00           mov    r15,QWORD PTR [rcx+0xc8]
3cdd2d  4c 89 7c 24 50                 mov    QWORD PTR [rsp+0x50],r15
3cdd32  41 5f                          pop    r15
3cdd34  eb 00                          jmp    0x3cdd36
3cdd36  41 57                          push   r15
3cdd38  4c 8b b9 c0 00 00 00           mov    r15,QWORD PTR [rcx+0xc0]
3cdd3f  4c 89 7c 24 48                 mov    QWORD PTR [rsp+0x48],r15
3cdd44  41 5f                          pop    r15
3cdd46  eb 00                          jmp    0x3cdd48
3cdd48  41 57                          push   r15
3cdd4a  4c 8b b9 b8 00 00 00           mov    r15,QWORD PTR [rcx+0xb8]
3cdd51  4c 89 7c 24 40                 mov    QWORD PTR [rsp+0x40],r15
3cdd56  41 5f                          pop    r15
3cdd58  eb 00                          jmp    0x3cdd5a
3cdd5a  41 57                          push   r15
3cdd5c  4c 8b b9 b0 00 00 00           mov    r15,QWORD PTR [rcx+0xb0]
3cdd63  4c 89 7c 24 38                 mov    QWORD PTR [rsp+0x38],r15
3cdd68  41 5f                          pop    r15
3cdd6a  eb 00                          jmp    0x3cdd6c
3cdd6c  41 57                          push   r15
3cdd6e  4c 8b b9 a8 00 00 00           mov    r15,QWORD PTR [rcx+0xa8]
3cdd75  4c 89 7c 24 30                 mov    QWORD PTR [rsp+0x30],r15
3cdd7a  41 5f                          pop    r15
3cdd7c  eb 00                          jmp    0x3cdd7e
3cdd7e  80 b9 d3 00 00 00 01           cmp    BYTE PTR [rcx+0xd3],0x1
3cdd85  75 0a                          jne    0x3cdd91
3cdd87  f3 0f 7e 99 a0 00 00 00        movq   xmm3,QWORD PTR [rcx+0xa0]
3cdd8f  eb 07                          jmp    0x3cdd98
3cdd91  4c 8b 89 a0 00 00 00           mov    r9,QWORD PTR [rcx+0xa0]
3cdd98  eb 00                          jmp    0x3cdd9a
3cdd9a  80 b9 d2 00 00 00 01           cmp    BYTE PTR [rcx+0xd2],0x1
3cdda1  75 0a                          jne    0x3cddad
3cdda3  f3 0f 7e 91 98 00 00 00        movq   xmm2,QWORD PTR [rcx+0x98]
3cddab  eb 07                          jmp    0x3cddb4
3cddad  4c 8b 81 98 00 00 00           mov    r8,QWORD PTR [rcx+0x98]
3cddb4  eb 00                          jmp    0x3cddb6
3cddb6  80 b9 d1 00 00 00 01           cmp    BYTE PTR [rcx+0xd1],0x1
3cddbd  75 0a                          jne    0x3cddc9
3cddbf  f3 0f 7e 89 90 00 00 00        movq   xmm1,QWORD PTR [rcx+0x90]
3cddc7  eb 07                          jmp    0x3cddd0
3cddc9  48 8b 91 90 00 00 00           mov    rdx,QWORD PTR [rcx+0x90]
3cddd0  eb 00                          jmp    0x3cddd2
3cddd2  80 b9 d0 00 00 00 01           cmp    BYTE PTR [rcx+0xd0],0x1
3cddd9  75 0a                          jne    0x3cdde5
3cdddb  f3 0f 7e 81 88 00 00 00        movq   xmm0,QWORD PTR [rcx+0x88]
3cdde3  eb 07                          jmp    0x3cddec
3cdde5  48 8b 89 88 00 00 00           mov    rcx,QWORD PTR [rcx+0x88]
3cddec  eb 00                          jmp    0x3cddee
3cddee  ff e0                          jmp    rax
