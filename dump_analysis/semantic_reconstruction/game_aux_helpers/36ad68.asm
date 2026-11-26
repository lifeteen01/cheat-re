36ad68	sub    rsp,0x28
36ad6c	mov    r9,rcx
36ad6f	call   0x2caf08
36ad74	test   al,al
36ad76	je     0x36ad96
36ad78	mov    r8d,DWORD PTR [r9+0x708]
36ad7f	mov    eax,r8d
36ad82	and    eax,0xfffffffb
36ad85	or     r8d,0x4
36ad89	test   dl,dl
36ad8b	cmove  r8d,eax
36ad8f	mov    DWORD PTR [r9+0x708],r8d
36ad96	add    rsp,0x28
36ad9a	ret
