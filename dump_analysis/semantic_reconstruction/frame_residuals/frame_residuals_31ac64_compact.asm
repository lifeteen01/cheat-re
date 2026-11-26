31ac64 mov    rax,QWORD PTR [rcx]
31ac67 cmp    rax,QWORD PTR [rcx+0x8]
31ac6b je     0x31ac71
31ac6d mov    QWORD PTR [rcx+0x8],rax
31ac71 ret
31ac72 int3
31ac73 int3
