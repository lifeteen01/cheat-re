38f1fc	mov    rax,QWORD PTR [rcx]
38f1ff	movss  xmm0,DWORD PTR [rax+0x3c34]
38f207	mov    rax,QWORD PTR [rcx+0x368]
38f20e	mulss  xmm0,DWORD PTR [rcx+0x290]
38f216	test   rax,rax
38f219	je     0x38f223
38f21b	mulss  xmm0,DWORD PTR [rax+0x290]
38f223	ret
