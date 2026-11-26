3caed0	rex push rbx
3caed2	push   rbp
3caed3	push   rsi
3caed4	push   rdi
3caed5	push   r14
3caed7	push   r15
3caed9	movsxd rax,DWORD PTR [rcx+0x3c]
3caedd	mov    rbx,rdx
3caee0	mov    r8,rcx
3caee3	mov    r9d,DWORD PTR [rax+rcx*1+0x88]
3caeeb	mov    r11d,DWORD PTR [r9+rcx*1+0x18]
3caef0	test   r11d,r11d
3caef3	je     0x3caf3e
3caef5	mov    r14d,DWORD PTR [r9+rcx*1+0x24]
3caefa	xor    r10d,r10d
3caefd	mov    r15d,DWORD PTR [r9+rcx*1+0x20]
3caf02	mov    bpl,BYTE PTR [rdx]
3caf05	lea    rax,[r14+r10*2]
3caf09	xor    edx,edx
3caf0b	movzx  esi,WORD PTR [r8+rax*1]
3caf10	lea    rax,[r15+r10*4]
3caf14	mov    edi,DWORD PTR [r8+rax*1]
3caf18	add    rdi,r8
3caf1b	cmp    BYTE PTR [rdi],bpl
3caf1e	jne    0x3caf36
3caf20	movsxd rax,edx
3caf23	cmp    BYTE PTR [rdi+rax*1],0x0
3caf27	je     0x3caf49
3caf29	inc    edx
3caf2b	movsxd rcx,edx
3caf2e	mov    al,BYTE PTR [rbx+rcx*1]
3caf31	cmp    BYTE PTR [rdi+rcx*1],al
3caf34	je     0x3caf20
3caf36	inc    r10d
3caf39	cmp    r10d,r11d
3caf3c	jb     0x3caf05
3caf3e	xor    eax,eax
3caf40	pop    r15
3caf42	pop    r14
3caf44	pop    rdi
3caf45	pop    rsi
3caf46	pop    rbp
3caf47	pop    rbx
3caf48	ret
3caf49	mov    ecx,DWORD PTR [r9+r8*1+0x1c]
3caf4e	add    rcx,r8
3caf51	mov    eax,DWORD PTR [rcx+rsi*4]
3caf54	add    rax,r8
3caf57	jmp    0x3caf40
