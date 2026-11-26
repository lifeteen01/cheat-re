39878c	rex push rbx
39878e	sub    rsp,0x30
398792	call   0x35d200
398797	mov    rbx,rax
39879a	mov    rcx,QWORD PTR [rax+0x298]
3987a1	call   0x3a6e34
3987a6	mov    rcx,QWORD PTR [rbx+0x298]
3987ad	add    rcx,0x58
3987b1	call   0x39e380
3987b6	mov    rdx,rax
3987b9	lea    rcx,[rsp+0x20]
3987be	call   0x38bab4
3987c3	movups xmm0,XMMWORD PTR [rsp+0x20]
3987c8	movdqu XMMWORD PTR [rbx+0x238],xmm0
3987d0	add    rsp,0x30
3987d4	pop    rbx
3987d5	ret
