370b50	mov    QWORD PTR [rsp+0x8],rbx
370b55	push   rdi
370b56	sub    rsp,0x70
370b5a	mov    rbx,rcx
370b5d	call   0x2caf08
370b62	test   al,al
370b64	je     0x370c03
370b6a	lea    rdx,[rsp+0x30]
370b6f	lea    rcx,[rsp+0x88]
370b77	call   0x370b1c   ; STR "assets/bundled/prefabs/system/debug/debug_camera.prefab"
370b7c	mov    rcx,rax
370b7f	call   0x3324ec
370b84	mov    rcx,rax
370b87	call   0x2ce5dc
370b8c	mov    edx,DWORD PTR [rip+0x8fb0e]        # 0x4006a0
370b92	mov    rdi,rax
370b95	test   dl,0x1
370b98	jne    0x370bba
370b9a	mov    r8,QWORD PTR [rip+0x6635f]        # 0x3d6f00
370ba1	or     edx,0x1
370ba4	add    r8,0x171e8f0
370bab	mov    DWORD PTR [rip+0x8faef],edx        # 0x4006a0
370bb1	mov    QWORD PTR [rip+0x8fae0],r8        # 0x400698
370bb8	jmp    0x370bc1
370bba	mov    r8,QWORD PTR [rip+0x8fad7]        # 0x400698
370bc1	test   dl,0x2
370bc4	jne    0x370be5
370bc6	mov    rcx,QWORD PTR [rip+0x65293]        # 0x3d5e60
370bcd	or     edx,0x2
370bd0	mov    DWORD PTR [rip+0x8faca],edx        # 0x4006a0
370bd6	xor    r9d,r9d
370bd9	lea    rdx,[rip+0x8fad0]        # 0x4006b0
370be0	call   0x2cbd24
370be5	mov    rcx,QWORD PTR [rip+0x65274]        # 0x3d5e60
370bec	lea    rdx,[rip+0x8fabd]        # 0x4006b0
370bf3	mov    r9,rdi
370bf6	mov    BYTE PTR [rsp+0x20],0x1
370bfb	mov    r8,rbx
370bfe	call   0x2d2000
370c03	mov    rbx,QWORD PTR [rsp+0x80]
370c0b	add    rsp,0x70
370c0f	pop    rdi
370c10	ret
