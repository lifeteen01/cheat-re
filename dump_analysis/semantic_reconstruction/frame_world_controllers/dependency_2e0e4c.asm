2e0e4c	sub    rsp,0x28
2e0e50	mov    rax,QWORD PTR [rip+0xf60a9]        # 0x3d6f00
2e0e57	mov    rdx,QWORD PTR [rax+0xf069320]
2e0e5e	mov    rcx,rdx
2e0e61	call   0x2caf08
2e0e66	test   al,al
2e0e68	je     0x2e0e92
2e0e6a	mov    rdx,QWORD PTR [rdx+0xb8]
2e0e71	mov    rcx,rdx
2e0e74	call   0x2caf08
2e0e79	test   al,al
2e0e7b	je     0x2e0e92
2e0e7d	mov    rdx,QWORD PTR [rdx+0x20]
2e0e81	mov    rcx,rdx
2e0e84	call   0x2caf08
2e0e89	test   al,al
2e0e8b	je     0x2e0e92
2e0e8d	mov    al,BYTE PTR [rdx+0x20]
2e0e90	jmp    0x2e0e94
2e0e92	xor    al,al
2e0e94	add    rsp,0x28
2e0e98	ret
