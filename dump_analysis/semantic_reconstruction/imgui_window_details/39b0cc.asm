39b0cc	mov    QWORD PTR [rsp+0x8],rbx
39b0d1	mov    QWORD PTR [rsp+0x10],rsi
39b0d6	push   rdi
39b0d7	sub    rsp,0x20
39b0db	mov    rbx,QWORD PTR [rip+0x6aa46]        # 0x405b28
39b0e2	mov    edi,ecx
39b0e4	mov    rsi,rdx
39b0e7	mov    ecx,DWORD PTR [rbx+0x3f68]
39b0ed	test   ecx,ecx
39b0ef	je     0x39b11a
39b0f1	mov    rax,QWORD PTR [rbx+0x3f20]
39b0f8	test   rax,rax
39b0fb	je     0x39b10d
39b0fd	cmp    ecx,DWORD PTR [rax+0x7c]
39b100	jne    0x39b10d
39b102	mov    QWORD PTR [rbx+0x3f20],0x0
39b10d	cmp    DWORD PTR [rbx+0x4c20],ecx
39b113	jne    0x39b11a
39b115	call   0x3c04d0
39b11a	cmp    DWORD PTR [rbx+0x3f68],edi
39b120	setne  al
39b123	mov    BYTE PTR [rbx+0x3f74],al
39b129	je     0x39b15c
39b12b	mov    DWORD PTR [rbx+0x3f70],0x0
39b135	mov    WORD PTR [rbx+0x3f77],0x0
39b13e	mov    DWORD PTR [rbx+0x3f94],0xffffffff
39b148	test   edi,edi
39b14a	je     0x39b15c
39b14c	mov    DWORD PTR [rbx+0x3fa8],edi
39b152	mov    DWORD PTR [rbx+0x3fac],0x0
39b15c	mov    DWORD PTR [rbx+0x3f68],edi
39b162	mov    WORD PTR [rbx+0x3f75],0x0
39b16b	mov    QWORD PTR [rbx+0x3f88],rsi
39b172	mov    BYTE PTR [rbx+0x3f79],0x0
39b179	test   edi,edi
39b17b	je     0x39b1a4
39b17d	mov    DWORD PTR [rbx+0x3f6c],edi
39b183	cmp    DWORD PTR [rbx+0x48f8],edi
39b189	je     0x39b198
39b18b	mov    eax,0x1
39b190	cmp    DWORD PTR [rbx+0x4908],edi
39b196	jne    0x39b19e
39b198	mov    eax,DWORD PTR [rbx+0x491c]
39b19e	mov    DWORD PTR [rbx+0x3f90],eax
39b1a4	mov    rsi,QWORD PTR [rsp+0x38]
39b1a9	mov    DWORD PTR [rbx+0x4778],0x0
39b1b3	mov    BYTE PTR [rbx+0x477c],0x0
39b1ba	mov    DWORD PTR [rbx+0x4780],0x0
39b1c4	mov    rbx,QWORD PTR [rsp+0x30]
39b1c9	add    rsp,0x20
39b1cd	pop    rdi
39b1ce	ret
