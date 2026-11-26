39031c	rex push rbx
39031e	push   rbp
39031f	push   rsi
390320	push   rdi
390321	push   r14
390323	push   r15
390325	sub    rsp,0x28
390329	mov    r15,QWORD PTR [rip+0x757f8]        # 0x405b28
390330	mov    sil,dl
390333	mov    edi,ecx
390335	mov    edx,ecx
390337	lea    rbx,[r15+0x48b0]
39033e	mov    rcx,rbx
390341	call   0x38bb90
390346	mov    edx,edi
390348	mov    rcx,rbx
39034b	mov    rbp,QWORD PTR [rax+0x8]
39034f	call   0x38bb90
390354	mov    edx,edi
390356	mov    rcx,rbx
390359	mov    r14,QWORD PTR [rax+0x10]
39035d	call   0x37ae84
390362	test   sil,sil
390365	je     0x3903b9
390367	test   rbp,rbp
39036a	je     0x39037c
39036c	test   DWORD PTR [rbp+0x14],0x10000000
390373	je     0x39037c
390375	mov    r14,QWORD PTR [rbp+0x368]
39037c	test   r14,r14
39037f	je     0x3903a5
390381	cmp    BYTE PTR [r14+0xb7],0x0
390389	jne    0x3903a5
39038b	test   rbp,rbp
39038e	je     0x3903a5
390390	mov    r9d,0x1
390396	xor    r8d,r8d
390399	xor    edx,edx
39039b	mov    rcx,rbp
39039e	call   0x391e68
3903a3	jmp    0x3903b9
3903a5	xor    edx,edx
3903a7	mov    rcx,r14
3903aa	cmp    DWORD PTR [r15+0x4920],edx
3903b1	sete   dl
3903b4	call   0x391efc
3903b9	add    rsp,0x28
3903bd	pop    r15
3903bf	pop    r14
3903c1	pop    rdi
3903c2	pop    rsi
3903c3	pop    rbp
3903c4	pop    rbx
3903c5	ret
