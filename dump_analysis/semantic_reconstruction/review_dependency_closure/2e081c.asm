2e081c	rex push rbx
2e081e	push   rsi
2e081f	push   rdi
2e0820	sub    rsp,0x50
2e0824	mov    eax,DWORD PTR [rip+0xf6bb6]        # 0x3d73e0
2e082a	test   al,0x1
2e082c	jne    0x2e08d7
2e0832	or     eax,0x1
2e0835	lea    rdx,[rsp+0x70]
2e083a	lea    rcx,[rsp+0x70]
2e083f	mov    DWORD PTR [rip+0xf6b9b],eax        # 0x3d73e0
2e0845	call   0x2cc730
2e084a	mov    rcx,rax
2e084d	call   0x2cdca4
2e0852	lea    rdx,[rsp+0x3c]
2e0857	mov    rsi,rax
2e085a	lea    rcx,[rsp+0x78]
2e085f	call   0x2dfb28   ; STR "get_fixedDeltaTime"
2e0864	mov    rcx,rax
2e0867	call   0x2cdd6c
2e086c	lea    rdx,[rsp+0x30]
2e0871	mov    rdi,rax
2e0874	lea    rcx,[rsp+0x78]
2e0879	call   0x2df9cc   ; STR "UnityEngine"
2e087e	mov    rcx,rax
2e0881	call   0x2cde0c
2e0886	lea    rdx,[rsp+0x80]
2e088e	mov    rbx,rax
2e0891	lea    rcx,[rsp+0x78]
2e0896	call   0x2df8b0   ; STR "Time"
2e089b	mov    rcx,rax
2e089e	call   0x2e35ec
2e08a3	mov    rcx,rax
2e08a6	mov    rdx,rbx
2e08a9	call   0x334224
2e08ae	or     r8d,0xffffffff
2e08b2	mov    rcx,rax
2e08b5	mov    r9,rsi
2e08b8	mov    DWORD PTR [rsp+0x20],r8d
2e08bd	mov    rdx,rdi
2e08c0	call   0x3349ac
2e08c5	mov    r8,QWORD PTR [rax]
2e08c8	mov    eax,DWORD PTR [rip+0xf6b12]        # 0x3d73e0
2e08ce	mov    QWORD PTR [rip+0xf6b03],r8        # 0x3d73d8
2e08d5	jmp    0x2e08de
2e08d7	mov    r8,QWORD PTR [rip+0xf6afa]        # 0x3d73d8
2e08de	test   al,0x2
2e08e0	jne    0x2e0901
2e08e2	mov    rcx,QWORD PTR [rip+0xf5577]        # 0x3d5e60
2e08e9	lea    rdx,[rip+0xf6b00]        # 0x3d73f0
2e08f0	or     eax,0x2
2e08f3	xor    r9d,r9d
2e08f6	mov    DWORD PTR [rip+0xf6ae4],eax        # 0x3d73e0
2e08fc	call   0x2cbd24
2e0901	mov    rcx,QWORD PTR [rip+0xf5558]        # 0x3d5e60
2e0908	lea    rdx,[rip+0xf6ae1]        # 0x3d73f0
2e090f	add    rsp,0x50
2e0913	pop    rdi
2e0914	pop    rsi
2e0915	pop    rbx
2e0916	jmp    0x2de950
