2d2aa4 mov    rax,rsp
2d2aa7 mov    QWORD PTR [rax+0x18],rbx
2d2aab mov    QWORD PTR [rax+0x20],rsi
2d2aaf mov    QWORD PTR [rax+0x10],rdx
2d2ab3 mov    QWORD PTR [rax+0x8],rcx
2d2ab7 push   rdi
2d2ab8 sub    rsp,0x20
2d2abc lea    rcx,[rax+0x8]
2d2ac0 mov    rsi,r8
2d2ac3 call   0x2ce5d8
2d2ac8 lea    rcx,[rsp+0x38]
2d2acd mov    rbx,rax
2d2ad0 call   0x2ce5d8
2d2ad5 xor    ecx,ecx
2d2ad7 mov    r10,rax
2d2ada sub    r10,rbx
2d2add mov    r9,rax
2d2ae0 add    r10,0x7
2d2ae4 mov    rdx,r10
2d2ae7 shr    rdx,0x3
2d2aeb lea    r11d,[rcx+0x8]
2d2aef cmp    rbx,rax
2d2af2 cmova  rdx,rcx
2d2af6 cmp    rdx,0x2
2d2afa jb     0x2d2b4f
2d2afc xor    eax,eax
2d2afe mov    rcx,r10
2d2b01 and    rcx,0xfffffffffffffff8
2d2b05 cmp    rbx,r9
2d2b08 cmova  rcx,rax
2d2b0c cmp    rbx,rsi
2d2b0f ja     0x2d2b1d
2d2b11 lea    rax,[rbx-0x8]
2d2b15 add    rax,rcx
2d2b18 cmp    rax,rsi
2d2b1b jae    0x2d2b4f
2d2b1d mov    r8,QWORD PTR [rsi]
2d2b20 xor    ecx,ecx
2d2b22 and    r10,0xfffffffffffffff0
2d2b26 cmp    rbx,r9
2d2b29 mov    rdi,rbx
2d2b2c cmova  r10,rcx
2d2b30 xor    edx,edx
2d2b32 mov    rax,r10
2d2b35 div    r11
2d2b38 add    rbx,r10
2d2b3b mov    rcx,rax
2d2b3e mov    rax,r8
2d2b41 rep stos QWORD PTR [rdi],rax
2d2b44 jmp    0x2d2b4f
2d2b46 mov    rax,QWORD PTR [rsi]
2d2b49 mov    QWORD PTR [rbx],rax
2d2b4c add    rbx,r11
2d2b4f cmp    rbx,r9
2d2b52 jne    0x2d2b46
2d2b54 mov    rbx,QWORD PTR [rsp+0x40]
2d2b59 mov    rsi,QWORD PTR [rsp+0x48]
2d2b5e add    rsp,0x20
2d2b62 pop    rdi
2d2b63 ret
