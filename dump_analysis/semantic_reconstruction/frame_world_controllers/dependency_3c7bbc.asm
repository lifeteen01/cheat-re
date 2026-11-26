3c7bbc	xor    eax,eax
3c7bbe	mov    QWORD PTR [rcx],rax
3c7bc1	mov    DWORD PTR [rcx+0x8],eax
3c7bc4	mov    rax,rcx
3c7bc7	ret
3c7bc8	movss  xmm0,DWORD PTR [rdx]
3c7bcc	mov    rax,rcx
3c7bcf	addss  xmm0,DWORD PTR [rcx]
3c7bd3	movss  DWORD PTR [rcx],xmm0
3c7bd7	movss  xmm1,DWORD PTR [rdx+0x4]
3c7bdc	addss  xmm1,DWORD PTR [rcx+0x4]
3c7be1	movss  DWORD PTR [rcx+0x4],xmm1
3c7be6	movss  xmm0,DWORD PTR [rdx+0x8]
3c7beb	addss  xmm0,DWORD PTR [rcx+0x8]
3c7bf0	movss  DWORD PTR [rcx+0x8],xmm0
3c7bf5	ret
