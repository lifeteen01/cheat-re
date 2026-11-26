2e8910	mov    QWORD PTR [rsp+0x10],rbx
2e8915	mov    DWORD PTR [rsp+0x8],ecx
2e8919	push   rdi
2e891a	sub    rsp,0x20
2e891e	mov    bl,dl
2e8920	call   0x2e6744
2e8925	test   al,al
2e8927	je     0x2e8934
2e8929	test   bl,bl
2e892b	je     0x2e8934
2e892d	xor    al,al
2e892f	jmp    0x2e89d6
2e8934	mov    eax,DWORD PTR [rip+0xfc3b6]        # 0x3e4cf0
2e893a	mov    ebx,0x1
2e893f	test   bl,al
2e8941	jne    0x2e8963
2e8943	or     eax,ebx
2e8945	lea    rcx,[rip+0xfc364]        # 0x3e4cb0
2e894c	mov    DWORD PTR [rip+0xfc39e],eax        # 0x3e4cf0
2e8952	call   0x2e4dd0
2e8957	lea    rcx,[rip+0xe625e]        # 0x3cebbc
2e895e	call   0x2cd32c
2e8963	mov    ecx,DWORD PTR [rsp+0x30]
2e8967	xor    edx,edx
2e8969	call   0x2e5e4c
2e896e	lea    r8,[rsp+0x30]
2e8973	mov    dil,al
2e8976	lea    rdx,[rsp+0x40]
2e897b	lea    rcx,[rip+0xfc32e]        # 0x3e4cb0
2e8982	call   0x2d8880
2e8987	lea    rdx,[rsp+0x48]
2e898c	lea    rcx,[rip+0xfc31d]        # 0x3e4cb0
2e8993	call   0x2d86b8
2e8998	mov    rdx,rax
2e899b	lea    rcx,[rsp+0x40]
2e89a0	call   0x2cc534
2e89a5	test   al,al
2e89a7	jne    0x2e89b9
2e89a9	lea    rcx,[rsp+0x40]
2e89ae	call   0x2d4da0
2e89b3	cmp    BYTE PTR [rax+0x4],0x0
2e89b7	jne    0x2e89be
2e89b9	test   dil,dil
2e89bc	jne    0x2e89c0
2e89be	xor    bl,bl
2e89c0	lea    rdx,[rsp+0x30]
2e89c5	lea    rcx,[rip+0xfc2e4]        # 0x3e4cb0
2e89cc	call   0x2e50f8
2e89d1	mov    BYTE PTR [rax],dil
2e89d4	mov    al,bl
2e89d6	mov    rbx,QWORD PTR [rsp+0x38]
2e89db	add    rsp,0x20
2e89df	pop    rdi
2e89e0	ret
