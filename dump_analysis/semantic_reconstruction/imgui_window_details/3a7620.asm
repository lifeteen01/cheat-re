3a7620	sub    rsp,0x48
3a7624	mov    rax,QWORD PTR [rcx+0x38]
3a7628	mov    r9d,r8d
3a762b	mov    QWORD PTR [rsp+0x30],rdx
3a7630	lea    rdx,[rsp+0x30]
3a7635	mov    DWORD PTR [rsp+0x20],0x8
3a763d	movss  xmm2,DWORD PTR [rax+0x10]
3a7642	mulss  xmm2,DWORD PTR [rip+0xffffffffffeeba5e]        # 0x2930a8
3a764a	call   0x39f874
3a764f	add    rsp,0x48
3a7653	ret
