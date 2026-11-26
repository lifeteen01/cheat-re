2e1270	maxss  xmm1,xmm0
2e1274	movaps xmm0,xmm1
2e1277	ret
2e1278	mov    QWORD PTR [rsp+0x8],rbx
2e127d	push   rdi
2e127e	sub    rsp,0x20
2e1282	mov    rdi,rcx
2e1285	mov    rbx,rdx
2e1288	mov    rcx,rdx
2e128b	call   0x3c7bbc
2e1290	mov    rcx,rdi
2e1293	call   0x2e0ee8
2e1298	xorps  xmm1,xmm1
2e129b	comiss xmm0,xmm1
2e129e	jbe    0x2e12c5
2e12a0	movss  xmm1,DWORD PTR [rdi]
2e12a4	divss  xmm1,xmm0
2e12a8	movss  DWORD PTR [rbx],xmm1
2e12ac	movss  xmm2,DWORD PTR [rdi+0x4]
2e12b1	divss  xmm2,xmm0
2e12b5	movss  DWORD PTR [rbx+0x4],xmm2
2e12ba	movss  xmm1,DWORD PTR [rdi+0x8]
2e12bf	divss  xmm1,xmm0
2e12c3	jmp    0x2e12cc
2e12c5	mov    QWORD PTR [rbx],0x0
2e12cc	movss  DWORD PTR [rbx+0x8],xmm1
2e12d1	mov    rax,rbx
2e12d4	mov    rbx,QWORD PTR [rsp+0x30]
2e12d9	add    rsp,0x20
2e12dd	pop    rdi
2e12de	ret
