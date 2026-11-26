3987d8	mov    QWORD PTR [rsp+0x8],rbx
3987dd	push   rdi
3987de	sub    rsp,0x20
3987e2	mov    rdi,QWORD PTR [rip+0x6d33f]        # 0x405b28
3987e9	lea    rbx,[rdi+0x4880]
3987f0	mov    rcx,rbx
3987f3	call   0x39eea0
3987f8	xor    ecx,ecx
3987fa	cmp    DWORD PTR [rbx],ecx
3987fc	je     0x398808
3987fe	mov    rcx,rbx
398801	call   0x39e304
398806	mov    ecx,DWORD PTR [rax]
398808	mov    rbx,QWORD PTR [rsp+0x30]
39880d	mov    DWORD PTR [rdi+0x4784],ecx
398813	add    rsp,0x20
398817	pop    rdi
398818	ret
