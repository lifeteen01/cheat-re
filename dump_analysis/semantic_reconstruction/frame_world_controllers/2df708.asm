2df708	rex push rbx
2df70a	sub    rsp,0x20
2df70e	movss  xmm3,DWORD PTR [r8+0x8]
2df714	mov    rbx,rdx
2df717	movss  xmm2,DWORD PTR [r8+0x4]
2df71d	movss  xmm1,DWORD PTR [r8]
2df722	addss  xmm3,DWORD PTR [rcx+0x8]
2df727	addss  xmm2,DWORD PTR [rcx+0x4]
2df72c	addss  xmm1,DWORD PTR [rcx]
2df730	mov    rcx,rdx
2df733	call   0x3c7ba8
2df738	mov    rax,rbx
2df73b	add    rsp,0x20
2df73f	pop    rbx
2df740	ret
