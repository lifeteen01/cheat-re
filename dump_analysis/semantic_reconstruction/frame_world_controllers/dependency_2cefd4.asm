2cefd4	mov    QWORD PTR [rsp+0x8],rbx
2cefd9	mov    QWORD PTR [rsp+0x10],rbp
2cefde	push   rsi
2cefdf	push   rdi
2cefe0	push   r14
2cefe2	sub    rsp,0x40
2cefe6	mov    rdi,rcx
2cefe9	mov    rsi,r8
2cefec	mov    rcx,rdx
2cefef	mov    rbx,rdx
2ceff2	call   0x2d8ad8
2ceff7	mov    rcx,rsi
2ceffa	mov    rbp,rax
2ceffd	call   0x2ce5d0
2cf002	mov    rcx,rax
2cf005	call   0x2cb3a4
2cf00a	mov    rcx,rbx
2cf00d	mov    r14,rax
2cf010	call   0x2ce628
2cf015	sub    rax,rbp
2cf018	cmp    rax,r14
2cf01b	jb     0x2cf05c
2cf01d	mov    rcx,rbx
2cf020	call   0x2cd7ec
2cf025	mov    dl,BYTE PTR [rsp+0x78]
2cf029	mov    r9,rax
2cf02c	mov    QWORD PTR [rsp+0x30],r14
2cf031	mov    r8,rbx
2cf034	mov    QWORD PTR [rsp+0x28],rsi
2cf039	mov    rcx,rdi
2cf03c	mov    QWORD PTR [rsp+0x20],rbp
2cf041	call   0x2d4454
2cf046	mov    rbx,QWORD PTR [rsp+0x60]
2cf04b	mov    rax,rdi
2cf04e	mov    rbp,QWORD PTR [rsp+0x68]
2cf053	add    rsp,0x40
2cf057	pop    r14
2cf059	pop    rdi
2cf05a	pop    rsi
2cf05b	ret
2cf05c	call   0x2cd72c
2cf061	int3
