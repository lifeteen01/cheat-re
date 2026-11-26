2ef9d8	rex push rbx
2ef9da	sub    rsp,0x20
2ef9de	movss  xmm2,DWORD PTR [rdx+0x4]
2ef9e3	mov    rbx,rcx
2ef9e6	movss  xmm1,DWORD PTR [rdx]
2ef9ea	addss  xmm2,DWORD PTR [r8+0x4]
2ef9f0	addss  xmm1,DWORD PTR [r8]
2ef9f5	call   0x2cc340
2ef9fa	mov    rax,rbx
2ef9fd	add    rsp,0x20
2efa01	pop    rbx
2efa02	ret
