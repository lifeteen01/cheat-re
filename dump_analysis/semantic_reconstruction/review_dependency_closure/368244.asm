368244	sub    rsp,0x28
368248	mov    rdx,rcx
36824b	call   0x2caf08
368250	test   al,al
368252	je     0x368277
368254	mov    rcx,rdx
368257	call   0x369400
36825c	mov    rcx,rax
36825f	mov    rdx,rax
368262	call   0x2caf08
368267	test   al,al
368269	je     0x368277
36826b	mov    rcx,rdx
36826e	add    rsp,0x28
368272	jmp    0x372ba4
368277	xor    al,al
368279	add    rsp,0x28
36827d	ret
