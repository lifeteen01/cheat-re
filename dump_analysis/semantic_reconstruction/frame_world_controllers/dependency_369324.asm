369324	rex push rbx
369326	sub    rsp,0x20
36932a	mov    rbx,rcx
36932d	call   0x2caf08
369332	test   al,al
369334	jne    0x36933e
369336	xor    eax,eax
369338	add    rsp,0x20
36933c	pop    rbx
36933d	ret
36933e	mov    ecx,DWORD PTR [rip+0x9563c]        # 0x3fe980
369344	test   cl,0x1
369347	jne    0x369369
369349	mov    r8,QWORD PTR [rip+0x6dbb0]        # 0x3d6f00
369350	or     ecx,0x1
369353	add    r8,0x3ee0830
36935a	mov    DWORD PTR [rip+0x95620],ecx        # 0x3fe980
369360	mov    QWORD PTR [rip+0x95611],r8        # 0x3fe978
369367	jmp    0x369370
369369	mov    r8,QWORD PTR [rip+0x95608]        # 0x3fe978
369370	test   cl,0x2
369373	jne    0x369394
369375	or     ecx,0x2
369378	lea    rdx,[rip+0x95611]        # 0x3fe990
36937f	mov    DWORD PTR [rip+0x955fb],ecx        # 0x3fe980
369385	xor    r9d,r9d
369388	mov    rcx,QWORD PTR [rip+0x6cad1]        # 0x3d5e60
36938f	call   0x2cbd24
369394	mov    rcx,QWORD PTR [rip+0x6cac5]        # 0x3d5e60
36939b	lea    rdx,[rip+0x955ee]        # 0x3fe990
3693a2	mov    r8,rbx
3693a5	add    rsp,0x20
3693a9	pop    rbx
3693aa	jmp    0x2cb9fc
