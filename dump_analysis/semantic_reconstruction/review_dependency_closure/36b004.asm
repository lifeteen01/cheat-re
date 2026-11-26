36b004	rex push rbx
36b006	sub    rsp,0x20
36b00a	mov    rbx,rcx
36b00d	call   0x2caf08
36b012	test   al,al
36b014	je     0x36b088
36b016	mov    edx,DWORD PTR [rip+0x93ff4]        # 0x3ff010
36b01c	test   dl,0x1
36b01f	jne    0x36b041
36b021	mov    r8,QWORD PTR [rip+0x6bed8]        # 0x3d6f00
36b028	or     edx,0x1
36b02b	add    r8,0x3f37e50
36b032	mov    DWORD PTR [rip+0x93fd8],edx        # 0x3ff010
36b038	mov    QWORD PTR [rip+0x93fc9],r8        # 0x3ff008
36b03f	jmp    0x36b048
36b041	mov    r8,QWORD PTR [rip+0x93fc0]        # 0x3ff008
36b048	test   dl,0x2
36b04b	jne    0x36b06c
36b04d	mov    rcx,QWORD PTR [rip+0x6ae0c]        # 0x3d5e60
36b054	or     edx,0x2
36b057	mov    DWORD PTR [rip+0x93fb3],edx        # 0x3ff010
36b05d	xor    r9d,r9d
36b060	lea    rdx,[rip+0x93fb9]        # 0x3ff020
36b067	call   0x2cbd24
36b06c	mov    rcx,QWORD PTR [rip+0x6aded]        # 0x3d5e60
36b073	lea    rdx,[rip+0x93fa6]        # 0x3ff020
36b07a	mov    r9d,0xffffffce
36b080	mov    r8,rbx
36b083	call   0x32b1c8
36b088	add    rsp,0x20
36b08c	pop    rbx
36b08d	ret
