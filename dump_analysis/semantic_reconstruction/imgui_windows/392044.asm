392044	rex push rbx
392046	sub    rsp,0x20
39204a	mov    rbx,rcx
39204d	mov    BYTE PTR [rcx+0x3d4],0x0
392054	mov    rcx,QWORD PTR [rcx+0x298]
39205b	add    rcx,0x10
39205f	mov    edx,DWORD PTR [rbx+0x3cc]
392065	call   0x37a6f8
39206a	mov    rcx,QWORD PTR [rbx+0x298]
392071	mov    edx,DWORD PTR [rbx+0x3d0]
392077	add    rcx,0x20
39207b	call   0x37a888
392080	mov    QWORD PTR [rbx+0x3cc],0x0
39208b	add    rsp,0x20
39208f	pop    rbx
392090	ret
