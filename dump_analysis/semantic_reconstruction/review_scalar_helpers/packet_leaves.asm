; packet_leaves independent pdata/next-pdata extent 2ddbf8..2ddc00 unwind0
2ddbf8 movss  DWORD PTR [rcx],xmm1
2ddbfc mov    rax,rcx
2ddbff ret

; packet_leaves independent pdata/next-pdata extent 2d4928..2d4930 unwind0
2d4928 mov    BYTE PTR [rcx],dl
2d492a mov    rax,rcx
2d492d ret
2d492e int3
2d492f int3

; packet_leaves independent pdata/next-pdata extent 2cc268..2cc284 unwind0
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
