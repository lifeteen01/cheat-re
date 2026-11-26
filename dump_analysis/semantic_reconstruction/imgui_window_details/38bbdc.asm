38bbdc	rex push rbx
38bbde	sub    rsp,0x20
38bbe2	movss  xmm2,DWORD PTR [rdx+0x4]
38bbe7	mov    rbx,rcx
38bbea	movss  xmm1,DWORD PTR [rdx]
38bbee	mulss  xmm2,DWORD PTR [r8+0x4]
38bbf4	mulss  xmm1,DWORD PTR [r8]
38bbf9	call   0x2cc340
38bbfe	mov    rax,rbx
38bc01	add    rsp,0x20
38bc05	pop    rbx
38bc06	ret
