39baa8	movsx  r9d,BYTE PTR [rcx+0xdc]
39bab0	mov    r10d,edx
39bab3	mov    r11,rcx
39bab6	test   r8b,r8b
39bab9	je     0x39bac0
39babb	or     r9d,edx
39babe	jmp    0x39bac8
39bac0	mov    eax,r10d
39bac3	not    eax
39bac5	and    r9d,eax
39bac8	mov    BYTE PTR [rcx+0xdc],r9b
39bacf	not    edx
39bad1	movsx  ecx,BYTE PTR [rcx+0xdd]
39bad8	mov    eax,edx
39bada	and    eax,ecx
39badc	or     ecx,r10d
39badf	test   r8b,r8b
39bae2	cmove  ecx,eax
39bae5	movsx  eax,BYTE PTR [r11+0xde]
39baed	and    edx,eax
39baef	mov    BYTE PTR [r11+0xdd],cl
39baf6	or     eax,r10d
39baf9	test   r8b,r8b
39bafc	cmove  eax,edx
39baff	mov    BYTE PTR [r11+0xde],al
39bb06	ret
