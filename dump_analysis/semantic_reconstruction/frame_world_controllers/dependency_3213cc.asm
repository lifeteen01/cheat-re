3213cc	rex push rbx
3213ce	sub    rsp,0x20
3213d2	mov    rbx,rcx
3213d5	call   0x2e0e4c
3213da	test   al,al
3213dc	jne    0x321478
3213e2	call   0x2e069c
3213e7	mov    rcx,rax
3213ea	call   0x2caf08
3213ef	test   al,al
3213f1	je     0x321478
3213f7	call   0x2dda9c
3213fc	mov    rcx,rax
3213ff	call   0x2caf08
321404	test   al,al
321406	je     0x321478
321408	test   rbx,rbx
32140b	je     0x321478
32140d	add    rbx,0x8
321411	mov    rcx,QWORD PTR [rbx]
321414	test   rcx,rcx
321417	je     0x321478
321419	call   0x2e0e9c
32141e	test   al,al
321420	jne    0x321480
321422	cmp    BYTE PTR [rip+0xc83f0],al        # 0x3e9818
321428	je     0x321478
32142a	mov    rdx,rbx
32142d	lea    rcx,[rip+0xc4dbc]        # 0x3e61f0
321434	call   0x2ef774
321439	cmp    BYTE PTR [rax],0x0
32143c	je     0x321478
32143e	mov    rdx,rbx
321441	lea    rcx,[rip+0xc4d28]        # 0x3e6170
321448	call   0x2ef754
32144d	mov    r8,QWORD PTR [rax]
321450	mov    rcx,r8
321453	call   0x2caf08
321458	test   al,al
32145a	je     0x321478
32145c	xor    edx,edx
32145e	mov    rcx,r8
321461	call   0x375d30
321466	mov    rdx,rbx
321469	lea    rcx,[rip+0xc4d80]        # 0x3e61f0
321470	call   0x2ef774
321475	mov    BYTE PTR [rax],0x0
321478	xor    al,al
32147a	add    rsp,0x20
32147e	pop    rbx
32147f	ret
321480	mov    al,0x1
321482	jmp    0x32147a
