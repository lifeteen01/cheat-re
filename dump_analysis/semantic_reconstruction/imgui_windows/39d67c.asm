39d67c	mov    QWORD PTR [rsp+0x8],rcx
39d681	push   rbx
39d682	push   rbp
39d683	push   rsi
39d684	push   rdi
39d685	push   r14
39d687	push   r15
39d689	sub    rsp,0x28
39d68d	mov    rdi,rcx
39d690	bt     r8d,0x18
39d695	jae    0x39d6ac
39d697	and    r8d,0x14000000
39d69e	cmp    r8d,0x4000000
39d6a5	je     0x39d6ac
39d6a7	mov    sil,0x1
39d6aa	jmp    0x39d6af
39d6ac	xor    sil,sil
39d6af	mov    al,BYTE PTR [rcx+0xbf]
39d6b5	test   dl,dl
39d6b7	jne    0x39d6c2
39d6b9	cmp    sil,al
39d6bc	je     0x39d749
39d6c2	mov    r14,QWORD PTR [rip+0x6845f]        # 0x405b28
39d6c9	test   sil,sil
39d6cc	jne    0x39d6f1
39d6ce	lea    rbx,[r14+0x3eb8]
39d6d5	mov    rcx,rbx
39d6d8	lea    rdx,[rsp+0x60]
39d6dd	call   0x37a658
39d6e2	movzx  eax,WORD PTR [rbx]
39d6e5	dec    ax
39d6e8	mov    WORD PTR [rdi+0xca],ax
39d6ef	jmp    0x39d749
39d6f1	test   dl,dl
39d6f3	jne    0x39d749
39d6f5	cmp    sil,al
39d6f8	je     0x39d749
39d6fa	movsx  ebx,WORD PTR [rcx+0xca]
39d701	lea    r15,[r14+0x3eb8]
39d708	inc    ebx
39d70a	or     ebp,0xffffffff
39d70d	jmp    0x39d722
39d70f	mov    edx,ebx
39d711	call   0x38bb84
39d716	mov    rdx,QWORD PTR [rax]
39d719	add    WORD PTR [rdx+0xca],bp
39d720	inc    ebx
39d722	mov    rcx,r15
39d725	cmp    ebx,DWORD PTR [r15]
39d728	jl     0x39d70f
39d72a	movsx  rdx,WORD PTR [rdi+0xca]
39d732	mov    rax,QWORD PTR [r14+0x3ec0]
39d739	lea    rdx,[rax+rdx*8]
39d73d	call   0x39ebc0
39d742	mov    WORD PTR [rdi+0xca],bp
39d749	mov    BYTE PTR [rdi+0xbf],sil
39d750	add    rsp,0x28
39d754	pop    r15
39d756	pop    r14
39d758	pop    rdi
39d759	pop    rsi
39d75a	pop    rbp
39d75b	pop    rbx
39d75c	ret
