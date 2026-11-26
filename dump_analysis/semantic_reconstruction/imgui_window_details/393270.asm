393270	mov    QWORD PTR [rsp+0x8],rbx
393275	push   rdi
393276	sub    rsp,0x20
39327a	mov    rbx,rdx
39327d	mov    rdi,rcx
393280	call   0x3214dc
393285	mov    r8d,eax
393288	test   rdi,rdi
39328b	je     0x3932a4
39328d	cmp    eax,0xffffffff
393290	je     0x393296
393292	cmp    eax,ebx
393294	jl     0x39329a
393296	lea    r8d,[rbx-0x1]
39329a	movsxd rax,r8d
39329d	mov    BYTE PTR [rax+rdi*1],0x0
3932a1	mov    eax,r8d
3932a4	mov    rbx,QWORD PTR [rsp+0x30]
3932a9	add    rsp,0x20
3932ad	pop    rdi
3932ae	ret
