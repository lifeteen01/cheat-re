2e2320	sub    rsp,0x58
2e2324	movsd  xmm0,QWORD PTR [rdx]
2e2328	mov    eax,DWORD PTR [rdx+0x8]
2e232b	lea    rdx,[rsp+0x30]
2e2330	movsd  QWORD PTR [rsp+0x30],xmm0
2e2336	movsd  xmm0,QWORD PTR [rcx]
2e233a	movsd  QWORD PTR [rsp+0x40],xmm0
2e2340	movss  xmm0,DWORD PTR [rsp+0x80]
2e2349	movss  DWORD PTR [rsp+0x28],xmm0
2e234f	mov    DWORD PTR [rsp+0x38],eax
2e2353	mov    eax,DWORD PTR [rcx+0x8]
2e2356	lea    rcx,[rsp+0x40]
2e235b	movss  DWORD PTR [rsp+0x20],xmm3
2e2361	xorps  xmm3,xmm3
2e2364	mov    DWORD PTR [rsp+0x48],eax
2e2368	call   0x2e0f10
2e236d	add    rsp,0x58
2e2371	ret
