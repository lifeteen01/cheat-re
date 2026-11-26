390260	rex push rbx
390262	push   rbp
390263	push   rsi
390264	push   rdi
390265	push   r14
390267	sub    rsp,0x20
39026b	mov    rsi,QWORD PTR [rip+0x758b6]        # 0x405b28
390272	lea    rcx,[rsi+0x48c0]
390279	mov    edi,DWORD PTR [rcx]
39027b	sub    edi,0x1
39027e	js     0x39030f
390284	lea    rbp,[rsi+0x48b0]
39028b	cmp    edi,DWORD PTR [rbp+0x0]
39028e	jge    0x39030f
390290	mov    edx,edi
390292	call   0x38bb90
390297	mov    edx,edi
390299	mov    rcx,rbp
39029c	mov    rbx,rax
39029f	call   0x38bb90
3902a4	mov    ecx,DWORD PTR [rax]
3902a6	cmp    DWORD PTR [rbx],ecx
3902a8	jne    0x39030f
3902aa	test   edi,edi
3902ac	jle    0x3902f3
3902ae	mov    edx,edi
3902b0	mov    rcx,rbp
3902b3	call   0x38bb90
3902b8	lea    r14d,[rdi-0x1]
3902bc	mov    rcx,rbp
3902bf	mov    edx,r14d
3902c2	mov    rbx,QWORD PTR [rax+0x8]
3902c6	call   0x38bb90
3902cb	test   rbx,rbx
3902ce	je     0x3902f3
3902d0	test   DWORD PTR [rbx+0x14],0x10000000
3902d7	je     0x3902f3
3902d9	mov    rax,QWORD PTR [rax+0x8]
3902dd	test   rax,rax
3902e0	je     0x3902f3
3902e2	test   DWORD PTR [rax+0x14],0x400
3902e9	jne    0x3902f3
3902eb	mov    edi,r14d
3902ee	test   r14d,r14d
3902f1	jg     0x3902ae
3902f3	mov    dl,0x1
3902f5	mov    ecx,edi
3902f7	call   0x39031c
3902fc	mov    rax,QWORD PTR [rsi+0x48e8]
390303	test   rax,rax
390306	je     0x39030f
390308	mov    BYTE PTR [rax+0x161],0x1
39030f	add    rsp,0x20
390313	pop    r14
390315	pop    rdi
390316	pop    rsi
390317	pop    rbp
390318	pop    rbx
390319	ret
