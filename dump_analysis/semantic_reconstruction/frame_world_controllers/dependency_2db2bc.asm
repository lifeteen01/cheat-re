2db2bc	mov    QWORD PTR [rsp+0x10],rbx
2db2c1	push   rdi
2db2c2	sub    rsp,0x20
2db2c6	mov    rdi,rcx
2db2c9	mov    rbx,rdx
2db2cc	mov    rcx,rdx
2db2cf	call   0x2cd324
2db2d4	mov    rdx,rax
2db2d7	lea    rcx,[rsp+0x30]
2db2dc	call   0x2cb3a4
2db2e1	mov    dl,BYTE PTR [rsp+0x30]
2db2e5	mov    r8,rax
2db2e8	mov    rcx,rdi
2db2eb	call   0x2ceb10
2db2f0	lea    r9,[rbx+0x8]
2db2f4	mov    r8,rbx
2db2f7	mov    rdx,QWORD PTR [r9]
2db2fa	mov    rcx,rdi
2db2fd	sub    rdx,QWORD PTR [rbx]
2db300	sar    rdx,0x5
2db304	call   0x2d9a44
2db309	mov    rbx,QWORD PTR [rsp+0x38]
2db30e	mov    rax,rdi
2db311	add    rsp,0x20
2db315	pop    rdi
2db316	ret
