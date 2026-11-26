36ae90	sub    rsp,0x28
36ae94	mov    r9,rcx
36ae97	call   0x2caf08
36ae9c	test   al,al
36ae9e	je     0x36aebe
36aea0	mov    r8d,DWORD PTR [r9+0x708]
36aea7	mov    eax,r8d
36aeaa	and    eax,0xffffffdf
36aead	or     r8d,0x20
36aeb1	test   dl,dl
36aeb3	cmove  r8d,eax
36aeb7	mov    DWORD PTR [r9+0x708],r8d
36aebe	add    rsp,0x28
36aec2	ret
