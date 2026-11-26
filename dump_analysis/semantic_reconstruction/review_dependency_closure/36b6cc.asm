36b6cc	rex push rbx
36b6ce	sub    rsp,0x20
36b6d2	mov    rbx,rcx
36b6d5	call   0x2caf08
36b6da	test   al,al
36b6dc	jne    0x36b6e7
36b6de	xorps  xmm0,xmm0
36b6e1	add    rsp,0x20
36b6e5	pop    rbx
36b6e6	ret
36b6e7	mov    ecx,DWORD PTR [rip+0x93a13]        # 0x3ff100
36b6ed	test   cl,0x1
36b6f0	jne    0x36b712
36b6f2	mov    r8,QWORD PTR [rip+0x6b807]        # 0x3d6f00
36b6f9	or     ecx,0x1
36b6fc	add    r8,0x1657ed0
36b703	mov    DWORD PTR [rip+0x939f7],ecx        # 0x3ff100
36b709	mov    QWORD PTR [rip+0x939e8],r8        # 0x3ff0f8
36b710	jmp    0x36b719
36b712	mov    r8,QWORD PTR [rip+0x939df]        # 0x3ff0f8
36b719	test   cl,0x2
36b71c	jne    0x36b73d
36b71e	or     ecx,0x2
36b721	lea    rdx,[rip+0x939e8]        # 0x3ff110
36b728	mov    DWORD PTR [rip+0x939d2],ecx        # 0x3ff100
36b72e	xor    r9d,r9d
36b731	mov    rcx,QWORD PTR [rip+0x6a728]        # 0x3d5e60
36b738	call   0x2cbd24
36b73d	mov    rcx,QWORD PTR [rip+0x6a71c]        # 0x3d5e60
36b744	lea    rdx,[rip+0x939c5]        # 0x3ff110
36b74b	mov    r8,rbx
36b74e	add    rsp,0x20
36b752	pop    rbx
36b753	jmp    0x2dea4c
