2e480c	mov    QWORD PTR [rsp+0x8],rbx
2e4811	push   rdi
2e4812	sub    rsp,0x50
2e4816	mov    rdi,rdx
2e4819	lea    rcx,[rsp+0x20]
2e481e	mov    rdx,r8
2e4821	mov    ebx,r9d
2e4824	call   0x2cc268
2e4829	mov    edx,ebx
2e482b	lea    rcx,[rsp+0x28]
2e4830	call   0x2df370
2e4835	mov    edx,DWORD PTR [rsp+0x80]
2e483c	lea    rcx,[rsp+0x30]
2e4841	call   0x2df370
2e4846	mov    rdx,QWORD PTR [rsp+0x88]
2e484e	lea    rcx,[rsp+0x38]
2e4853	call   0x2cc268
2e4858	mov    edx,DWORD PTR [rsp+0x90]
2e485f	lea    rcx,[rsp+0x40]
2e4864	call   0x2df370
2e4869	mov    edx,DWORD PTR [rsp+0x98]
2e4870	lea    rcx,[rsp+0x48]
2e4875	call   0x2df370
2e487a	movups xmm0,XMMWORD PTR [rsp+0x20]
2e487f	xor    eax,eax
2e4881	mov    rcx,rdi
2e4884	movups xmm1,XMMWORD PTR [rsp+0x30]
2e4889	mov    DWORD PTR [rsp+0x68],eax
2e488d	movups XMMWORD PTR [rdi+0x88],xmm0
2e4894	mov    DWORD PTR [rdi+0xd0],eax
2e489a	lea    rax,[rsp+0x58]
2e489f	movups xmm0,XMMWORD PTR [rsp+0x40]
2e48a4	mov    QWORD PTR [rdi+0x80],0x6
2e48af	movups XMMWORD PTR [rdi+0x98],xmm1
2e48b6	mov    QWORD PTR [rdi+0x78],rax
2e48ba	movups XMMWORD PTR [rdi+0xa8],xmm0
2e48c1	mov    rbx,QWORD PTR [rsp+0x60]
2e48c6	add    rsp,0x50
2e48ca	pop    rdi
2e48cb	jmp    0x3cdbd4
