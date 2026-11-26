2e98f0	mov    QWORD PTR [rsp+0x8],rbx
2e98f5	mov    QWORD PTR [rsp+0x10],rsi
2e98fa	push   rdi
2e98fb	sub    rsp,0x20
2e98ff	mov    rdi,r8
2e9902	mov    rbx,rdx
2e9905	mov    rsi,rcx
2e9908	call   0x2d93f4
2e990d	cmp    rax,rdi
2e9910	jbe    0x2e9933
2e9912	mov    r8,rdi
2e9915	mov    rdx,rbx
2e9918	mov    rcx,rsi
2e991b	call   0x2d4d2c
2e9920	mov    rsi,QWORD PTR [rsp+0x38]
2e9925	mov    rax,rbx
2e9928	mov    rbx,QWORD PTR [rsp+0x30]
2e992d	add    rsp,0x20
2e9931	pop    rdi
2e9932	ret
2e9933	call   0x2e98c4
2e9938	int3
