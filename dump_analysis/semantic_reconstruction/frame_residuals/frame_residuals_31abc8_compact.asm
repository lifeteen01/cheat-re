31abc8 rex push rbx
31abca sub    rsp,0x20
31abce mov    rbx,rcx
31abd1 call   0x2cd324
31abd6 mov    rdx,QWORD PTR [rbx]
31abd9 mov    rcx,rax
31abdc call   0x2ebe94
31abe1 mov    rax,QWORD PTR [rbx]
31abe4 mov    QWORD PTR [rax],rax
31abe7 mov    rax,QWORD PTR [rbx]
31abea mov    QWORD PTR [rax+0x8],rax
31abee mov    QWORD PTR [rbx+0x8],0x0
31abf6 add    rsp,0x20
31abfa pop    rbx
31abfb ret
