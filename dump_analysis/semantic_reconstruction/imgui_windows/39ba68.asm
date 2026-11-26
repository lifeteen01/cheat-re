39ba68	test   r8d,r8d
39ba6b	je     0x39ba79
39ba6d	movsx  eax,BYTE PTR [rcx+0xde]
39ba74	test   r8d,eax
39ba77	je     0x39baa7
39ba79	movzx  r8d,BYTE PTR [rcx+0xde]
39ba81	mov    eax,DWORD PTR [rcx+0xdc]
39ba87	and    r8d,0xf1
39ba8e	shl    r8d,0x10
39ba92	and    eax,0xff00ffff
39ba97	or     r8d,eax
39ba9a	mov    BYTE PTR [rcx+0xb9],dl
39baa0	mov    DWORD PTR [rcx+0xdc],r8d
39baa7	ret
