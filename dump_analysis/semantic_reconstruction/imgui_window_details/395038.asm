395038	mov    r11,rsp
39503b	mov    QWORD PTR [r11+0x8],rcx
39503f	mov    QWORD PTR [r11+0x10],rdx
395043	mov    QWORD PTR [r11+0x18],r8
395047	mov    QWORD PTR [r11+0x20],r9
39504b	sub    rsp,0x28
39504f	mov    rax,QWORD PTR [rip+0x70ad2]        # 0x405b28
395056	cmp    BYTE PTR [rax+0x5c90],0x0
39505d	je     0x39506e
39505f	mov    rdx,rcx
395062	lea    r8,[r11+0x10]
395066	mov    rcx,rax
395069	call   0x395074
39506e	add    rsp,0x28
395072	ret
