2fb2f4	rex push rbp
2fb2f6	push   rbx
2fb2f7	push   rsi
2fb2f8	push   rdi
2fb2f9	push   r12
2fb2fb	push   r13
2fb2fd	push   r14
2fb2ff	push   r15
2fb301	lea    rbp,[rsp-0x1f]
2fb306	sub    rsp,0xf8
2fb30d	cmp    BYTE PTR [rip+0xebe44],0x0        # 0x3e7158
2fb314	je     0x2fb718
2fb31a	call   0x3150ac
2fb31f	mov    rcx,rax
2fb322	mov    rdi,rax
2fb325	call   0x2caf08
2fb32a	test   al,al
2fb32c	je     0x2fb718
2fb332	lea    rdx,[rbp-0x79]
2fb336	mov    BYTE PTR [rdi+0x40],0x0
2fb33a	lea    rcx,[rbp+0x67]
2fb33e	call   0x2f3764   ; STR "UnityEngine"
2fb343	mov    rcx,rax
2fb346	call   0x2cde34
2fb34b	lea    rdx,[rsp+0x40]
2fb350	mov    rbx,rax
2fb353	lea    rcx,[rbp+0x67]
2fb357	call   0x2f22a4   ; STR "SkinnedMeshRenderer"
2fb35c	mov    rcx,rax
2fb35f	call   0x320494
2fb364	mov    rcx,rax
2fb367	mov    rdx,rbx
2fb36a	call   0x334204
2fb36f	mov    rcx,rax
2fb372	mov    rdx,rax
2fb375	call   0x2caf08
2fb37a	test   al,al
2fb37c	je     0x2fb718
2fb382	mov    rcx,rdi
2fb385	call   0x3151bc
2fb38a	mov    rcx,rax
2fb38d	mov    r13,rax
2fb390	call   0x2caf08
2fb395	test   al,al
2fb397	je     0x2fb718
2fb39d	mov    eax,DWORD PTR [r13+0x18]
2fb3a1	xor    r14d,r14d
2fb3a4	mov    DWORD PTR [rsp+0x28],eax
2fb3a8	test   eax,eax
2fb3aa	jle    0x2fb718
2fb3b0	lea    rbx,[rip+0xffffffffffd04c49]        # 0x0
2fb3b7	lea    eax,[r14*8+0x0]
2fb3bf	movsxd rcx,eax
2fb3c2	mov    rdx,QWORD PTR [rcx+r13*1+0x20]
2fb3c7	mov    rcx,rdx
2fb3ca	call   0x2caf08
2fb3cf	test   al,al
2fb3d1	je     0x2fb703
2fb3d7	mov    rcx,rdx
2fb3da	call   0x370fac
2fb3df	mov    rcx,rax
2fb3e2	mov    r15,rax
2fb3e5	call   0x2caf08
2fb3ea	test   al,al
2fb3ec	je     0x2fb703
2fb3f2	mov    rcx,r15
2fb3f5	call   0x370e84
2fb3fa	mov    rcx,rax
2fb3fd	call   0x2caf08
2fb402	test   al,al
2fb404	je     0x2fb703
2fb40a	mov    rcx,r15
2fb40d	call   0x37361c
2fb412	mov    rcx,rax
2fb415	call   0x2caf08
2fb41a	test   al,al
2fb41c	je     0x2fb703
2fb422	movsxd rcx,DWORD PTR [rip+0xf3b8f]        # 0x3eefb8
2fb429	mov    r12,QWORD PTR [rbx+rcx*8+0x3e5e88]
2fb431	test   r12,r12
2fb434	je     0x2fb703
2fb43a	lea    rsi,[rcx*8+0x3e5ec0]
2fb442	add    rsi,rbx
2fb445	mov    rax,QWORD PTR [rsi]
2fb448	test   rax,rax
2fb44b	jne    0x2fb682
2fb451	test   ecx,ecx
2fb453	je     0x2fb614
2fb459	sub    ecx,0x1
2fb45c	je     0x2fb5d4
2fb462	sub    ecx,0x1
2fb465	je     0x2fb594
2fb46b	sub    ecx,0x1
2fb46e	je     0x2fb551
2fb474	sub    ecx,0x1
2fb477	je     0x2fb50f
2fb47d	sub    ecx,0x1
2fb480	je     0x2fb4cd
2fb482	cmp    ecx,0x1
2fb485	jne    0x2fb703
2fb48b	lea    rdx,[rbp-0x43]
2fb48f	lea    rcx,[rbp+0x67]
2fb493	call   0x2f2a08   ; STR "UnityEngine"
2fb498	mov    rcx,rax
2fb49b	call   0x2cde34
2fb4a0	lea    rdx,[rbp-0x6d]
2fb4a4	mov    rdi,rax
2fb4a7	lea    rcx,[rbp+0x67]
2fb4ab	call   0x2f2840   ; STR "Shader"
2fb4b0	mov    rcx,rax
2fb4b3	call   0x2cdcf4
2fb4b8	lea    rdx,[rbp+0x6f]
2fb4bc	mov    rbx,rax
2fb4bf	lea    rcx,[rbp+0x67]
2fb4c3	call   0x2f1644   ; STR "6"
2fb4c8	jmp    0x2fb652
2fb4cd	lea    rdx,[rbp-0x37]
2fb4d1	lea    rcx,[rbp+0x67]
2fb4d5	call   0x2f24d8   ; STR "UnityEngine"
2fb4da	mov    rcx,rax
2fb4dd	call   0x2cde34
2fb4e2	lea    rdx,[rbp-0x66]
2fb4e6	mov    rdi,rax
2fb4e9	lea    rcx,[rbp+0x67]
2fb4ed	call   0x2f1ec0   ; STR "Shader"
2fb4f2	mov    rcx,rax
2fb4f5	call   0x2cdcf4
2fb4fa	lea    rdx,[rbp+0x77]
2fb4fe	mov    rbx,rax
2fb501	lea    rcx,[rbp+0x67]
2fb505	call   0x2f14d8   ; STR "5"
2fb50a	jmp    0x2fb652
2fb50f	lea    rdx,[rbp-0x2b]
2fb513	lea    rcx,[rbp+0x67]
2fb517	call   0x2f1b04   ; STR "UnityEngine"
2fb51c	mov    rcx,rax
2fb51f	call   0x2cde34
2fb524	lea    rdx,[rbp-0x5f]
2fb528	mov    rdi,rax
2fb52b	lea    rcx,[rbp+0x67]
2fb52f	call   0x2f1878   ; STR "Shader"
2fb534	mov    rcx,rax
2fb537	call   0x2cdcf4
2fb53c	lea    rdx,[rbp+0x7f]
2fb540	mov    rbx,rax
2fb543	lea    rcx,[rbp+0x67]
2fb547	call   0x2f13e8   ; STR "4"
2fb54c	jmp    0x2fb652
2fb551	lea    rdx,[rbp-0x1f]
2fb555	lea    rcx,[rbp+0x67]
2fb559	call   0x2f11bc   ; STR "UnityEngine"
2fb55e	mov    rcx,rax
2fb561	call   0x2cde34
2fb566	lea    rdx,[rbp-0x58]
2fb56a	mov    rdi,rax
2fb56d	lea    rcx,[rbp+0x67]
2fb571	call   0x2f0e84   ; STR "Shader"
2fb576	mov    rcx,rax
2fb579	call   0x2cdcf4
2fb57e	lea    rdx,[rsp+0x20]
2fb583	mov    rbx,rax
2fb586	lea    rcx,[rbp+0x67]
2fb58a	call   0x2f0bd4   ; STR "3"
2fb58f	jmp    0x2fb652
2fb594	lea    rdx,[rbp-0x13]
2fb598	lea    rcx,[rbp+0x67]
2fb59c	call   0x2f08a8   ; STR "UnityEngine"
2fb5a1	mov    rcx,rax
2fb5a4	call   0x2cde34
2fb5a9	lea    rdx,[rbp-0x51]
2fb5ad	mov    rdi,rax
2fb5b0	lea    rcx,[rbp+0x67]
2fb5b4	call   0x2f0358   ; STR "Shader"
2fb5b9	mov    rcx,rax
2fb5bc	call   0x2cdcf4
2fb5c1	lea    rdx,[rsp+0x22]
2fb5c6	mov    rbx,rax
2fb5c9	lea    rcx,[rbp+0x67]
2fb5cd	call   0x2f1250   ; STR "2"
2fb5d2	jmp    0x2fb652
2fb5d4	lea    rdx,[rbp-0x7]
2fb5d8	lea    rcx,[rbp+0x67]
2fb5dc	call   0x2f7318   ; STR "UnityEngine"
2fb5e1	mov    rcx,rax
2fb5e4	call   0x2cde34
2fb5e9	lea    rdx,[rbp-0x4a]
2fb5ed	mov    rdi,rax
2fb5f0	lea    rcx,[rbp+0x67]
2fb5f4	call   0x2f6bb4   ; STR "Shader"
2fb5f9	mov    rcx,rax
2fb5fc	call   0x2cdcf4
2fb601	lea    rdx,[rsp+0x24]
2fb606	mov    rbx,rax
2fb609	lea    rcx,[rbp+0x67]
2fb60d	call   0x2f10cc   ; STR "1"
2fb612	jmp    0x2fb652
2fb614	lea    rdx,[rbp+0x5]
2fb618	lea    rcx,[rbp+0x67]
2fb61c	call   0x2f5274   ; STR "UnityEngine"
2fb621	mov    rcx,rax
2fb624	call   0x2cde34
2fb629	lea    rdx,[rbp-0x79]
2fb62d	mov    rdi,rax
2fb630	lea    rcx,[rbp+0x67]
2fb634	call   0x2f4a4c   ; STR "Shader"
2fb639	mov    rcx,rax
2fb63c	call   0x2cdcf4
2fb641	lea    rdx,[rsp+0x26]
2fb646	mov    rbx,rax
2fb649	lea    rcx,[rbp+0x67]
2fb64d	call   0x2f1004   ; STR "0"
2fb652	mov    rcx,rax
2fb655	call   0x2d8464
2fb65a	mov    rcx,rax
2fb65d	call   0x2ce5dc
2fb662	mov    r9,rdi
2fb665	mov    r8,rbx
2fb668	mov    rdx,rax
2fb66b	mov    rcx,r12
2fb66e	call   0x375abc
2fb673	mov    QWORD PTR [rsi],rax
2fb676	mov    rcx,rax
2fb679	test   rax,rax
2fb67c	je     0x2fb703
2fb682	mov    rdx,rax
2fb685	mov    rcx,r15
2fb688	call   0x3710dc
2fb68d	movups xmm0,XMMWORD PTR [rip+0xf1604]        # 0x3ecc98
2fb694	lea    rdx,[rsp+0x2c]
2fb699	lea    rcx,[rbp+0x67]
2fb69d	movdqa XMMWORD PTR [rsp+0x40],xmm0
2fb6a3	call   0x2f2c50   ; STR "_b"
2fb6a8	mov    rcx,rax
2fb6ab	call   0x3203f4
2fb6b0	mov    rcx,rax
2fb6b3	call   0x2ce5dc
2fb6b8	mov    rdx,rax
2fb6bb	lea    r8,[rsp+0x40]
2fb6c0	mov    rcx,r15
2fb6c3	call   0x370d64
2fb6c8	movups xmm0,XMMWORD PTR [rip+0xf1629]        # 0x3eccf8
2fb6cf	lea    rdx,[rsp+0x2f]
2fb6d4	lea    rcx,[rbp+0x67]
2fb6d8	movdqa XMMWORD PTR [rsp+0x40],xmm0
2fb6de	call   0x2f2f04   ; STR "_a"
2fb6e3	mov    rcx,rax
2fb6e6	call   0x3203f4
2fb6eb	mov    rcx,rax
2fb6ee	call   0x2ce5dc
2fb6f3	mov    rdx,rax
2fb6f6	lea    r8,[rsp+0x40]
2fb6fb	mov    rcx,r15
2fb6fe	call   0x370d64
2fb703	inc    r14d
2fb706	lea    rbx,[rip+0xffffffffffd048f3]        # 0x0
2fb70d	cmp    r14d,DWORD PTR [rsp+0x28]
2fb712	jl     0x2fb3b7
2fb718	add    rsp,0xf8
2fb71f	pop    r15
2fb721	pop    r14
2fb723	pop    r13
2fb725	pop    r12
2fb727	pop    rdi
2fb728	pop    rsi
2fb729	pop    rbx
2fb72a	pop    rbp
2fb72b	ret
