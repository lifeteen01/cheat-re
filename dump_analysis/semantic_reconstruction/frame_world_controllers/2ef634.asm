2ef634	mov    QWORD PTR [rsp+0x8],rbx
2ef639	push   rdi
2ef63a	sub    rsp,0x20
2ef63e	mov    al,BYTE PTR [rdx]
2ef640	mov    rbx,rdx
2ef643	mov    BYTE PTR [rcx],al
2ef645	mov    rdi,rcx
2ef648	mov    rax,QWORD PTR [rdx+0x8]
2ef64c	add    rdx,0x10
2ef650	mov    QWORD PTR [rcx+0x8],rax
2ef654	add    rcx,0x10
2ef658	call   0x2d4be4
2ef65d	mov    eax,DWORD PTR [rbx+0x30]
2ef660	mov    DWORD PTR [rdi+0x30],eax
2ef663	mov    rax,QWORD PTR [rbx+0x38]
2ef667	mov    rbx,QWORD PTR [rsp+0x30]
2ef66c	mov    QWORD PTR [rdi+0x38],rax
2ef670	mov    rax,rdi
2ef673	add    rsp,0x20
2ef677	pop    rdi
2ef678	ret
