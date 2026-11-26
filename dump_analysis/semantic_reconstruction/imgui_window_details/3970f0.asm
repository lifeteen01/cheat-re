3970f0	mov    rax,QWORD PTR [rip+0x6ea31]        # 0x405b28
3970f7	cmp    QWORD PTR [rax+0x4b48],0x0
3970ff	mov    rcx,QWORD PTR [rax+0x3f08]
397106	jne    0x397116
397108	cmp    QWORD PTR [rcx+0x1a8],0x0
397110	jne    0x397116
397112	mov    al,0x1
397114	jmp    0x397118
397116	xor    al,al
397118	mov    BYTE PTR [rcx+0x160],al
39711e	ret
