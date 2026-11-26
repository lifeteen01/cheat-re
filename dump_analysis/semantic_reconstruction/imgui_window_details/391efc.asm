391efc	rex push rbx
391efe	push   rbp
391eff	push   rsi
391f00	push   rdi
391f01	sub    rsp,0x28
391f05	mov    rdi,QWORD PTR [rip+0x73c1c]        # 0x405b28
391f0c	mov    esi,edx
391f0e	mov    rbx,rcx
391f11	test   dl,0x2
391f14	je     0x391f5c
391f16	cmp    QWORD PTR [rdi+0x48e8],rcx
391f1d	je     0x391f5c
391f1f	call   0x391928
391f24	test   rax,rax
391f27	je     0x391f5c
391f29	test   rbx,rbx
391f2c	je     0x39203a
391f32	cmp    rbx,QWORD PTR [rbx+0x378]
391f39	jne    0x39203a
391f3f	test   DWORD PTR [rbx+0x14],0x2000
391f46	jne    0x39203a
391f4c	mov    rdx,rax
391f4f	mov    rcx,rbx
391f52	call   0x38f020
391f57	jmp    0x39203a
391f5c	test   sil,0x1
391f60	je     0x391f72
391f62	test   rbx,rbx
391f65	je     0x391f72
391f67	mov    rcx,rbx
391f6a	call   0x395cf8
391f6f	mov    rbx,rax
391f72	cmp    QWORD PTR [rdi+0x48e8],rbx
391f79	je     0x391fd8
391f7b	mov    rcx,rbx
391f7e	call   0x39b6d8
391f83	test   rbx,rbx
391f86	je     0x391fa0
391f88	cmp    BYTE PTR [rdi+0x4927],0x0
391f8f	je     0x391f98
391f91	mov    BYTE PTR [rdi+0x4925],0x1
391f98	mov    eax,DWORD PTR [rbx+0x3a0]
391f9e	jmp    0x391fa2
391fa0	xor    eax,eax
391fa2	mov    DWORD PTR [rdi+0x48f0],eax
391fa8	mov    DWORD PTR [rdi+0x4920],0x0
391fb2	test   rbx,rbx
391fb5	je     0x391fbf
391fb7	mov    eax,DWORD PTR [rbx+0x3c8]
391fbd	jmp    0x391fc1
391fbf	xor    eax,eax
391fc1	xor    edx,edx
391fc3	mov    DWORD PTR [rdi+0x48f4],eax
391fc9	mov    rcx,rbx
391fcc	mov    BYTE PTR [rdi+0x4924],0x0
391fd3	call   0x3903c8
391fd8	test   rbx,rbx
391fdb	je     0x391fe9
391fdd	mov    rsi,QWORD PTR [rbx+0x378]
391fe4	mov    rbp,rsi
391fe7	jmp    0x391fed
391fe9	xor    esi,esi
391feb	xor    ebp,ebp
391fed	cmp    DWORD PTR [rdi+0x3f68],0x0
391ff4	je     0x392019
391ff6	mov    rax,QWORD PTR [rdi+0x3f88]
391ffd	test   rax,rax
392000	je     0x392019
392002	cmp    QWORD PTR [rax+0x378],rbp
392009	je     0x392019
39200b	cmp    BYTE PTR [rdi+0x3f76],0x0
392012	jne    0x392019
392014	call   0x390078
392019	test   rbx,rbx
39201c	je     0x39203a
39201e	mov    rcx,rbp
392021	call   0x38f160
392026	mov    eax,DWORD PTR [rsi+0x14]
392029	or     eax,DWORD PTR [rbx+0x14]
39202c	bt     eax,0xd
392030	jb     0x39203a
392032	mov    rcx,rsi
392035	call   0x38f0bc
39203a	add    rsp,0x28
39203e	pop    rdi
39203f	pop    rsi
392040	pop    rbp
392041	pop    rbx
392042	ret
