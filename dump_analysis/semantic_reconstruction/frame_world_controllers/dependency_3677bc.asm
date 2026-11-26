3677bc	mov    QWORD PTR [rsp+0x8],rbx
3677c1	push   rbp
3677c2	mov    rbp,rsp
3677c5	sub    rsp,0x70
3677c9	mov    rbx,rdx
3677cc	movaps XMMWORD PTR [rsp+0x60],xmm6
3677d1	mov    rdx,r8
3677d4	lea    rcx,[rbp-0x50]
3677d8	movaps xmm6,xmm3
3677db	call   0x2cc268
3677e0	movaps xmm1,xmm6
3677e3	lea    rcx,[rbp-0x48]
3677e7	call   0x2ddbf8
3677ec	mov    rdx,QWORD PTR [rbp+0x30]
3677f0	lea    rcx,[rbp-0x40]
3677f4	call   0x2cc268
3677f9	movss  xmm1,DWORD PTR [rbp+0x38]
3677fe	lea    rcx,[rbp-0x38]
367802	call   0x2ddbf8
367807	mov    edx,DWORD PTR [rbp+0x40]
36780a	lea    rcx,[rbp-0x30]
36780e	call   0x2df370
367813	mov    edx,DWORD PTR [rbp+0x48]
367816	lea    rcx,[rbp-0x28]
36781a	call   0x2df370
36781f	mov    edx,DWORD PTR [rbp+0x50]
367822	lea    rcx,[rbp-0x20]
367826	call   0x2df370
36782b	movups xmm0,XMMWORD PTR [rbp-0x50]
36782f	mov    DWORD PTR [rbp+0x18],0x1000100
367836	mov    rcx,rbx
367839	movups xmm1,XMMWORD PTR [rbp-0x40]
36783d	mov    eax,DWORD PTR [rbp+0x18]
367840	movups XMMWORD PTR [rbx+0x88],xmm0
367847	mov    DWORD PTR [rbx+0xd0],eax
36784d	lea    rax,[rbp+0x8]
367851	movups xmm0,XMMWORD PTR [rbp-0x30]
367855	mov    QWORD PTR [rbx+0x80],0x7
367860	movups XMMWORD PTR [rbx+0x98],xmm1
367867	mov    QWORD PTR [rbx+0x78],rax
36786b	movsd  xmm1,QWORD PTR [rbp-0x20]
367870	movups XMMWORD PTR [rbx+0xa8],xmm0
367877	movsd  QWORD PTR [rbx+0xb8],xmm1
36787f	mov    rbx,QWORD PTR [rsp+0x80]
367887	movaps xmm6,XMMWORD PTR [rsp+0x60]
36788c	add    rsp,0x70
367890	pop    rbp
367891	jmp    0x3cdbd4
