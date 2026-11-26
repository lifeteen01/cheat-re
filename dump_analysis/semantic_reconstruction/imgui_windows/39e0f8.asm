39e0f8	mov    QWORD PTR [rcx+0x368],r8
39e0ff	lea    r9,[rcx+0x390]
39e106	mov    QWORD PTR [r9],rcx
39e109	mov    QWORD PTR [rcx+0x388],rcx
39e110	mov    QWORD PTR [rcx+0x380],rcx
39e117	mov    QWORD PTR [rcx+0x378],rcx
39e11e	test   r8,r8
39e121	je     0x39e16f
39e123	mov    eax,edx
39e125	and    eax,0x3000000
39e12a	cmp    eax,0x1000000
39e12f	jne    0x39e13f
39e131	mov    rax,QWORD PTR [r8+0x378]
39e138	mov    QWORD PTR [rcx+0x378],rax
39e13f	bt     edx,0x1a
39e143	jae    0x39e153
39e145	mov    rax,QWORD PTR [r8+0x380]
39e14c	mov    QWORD PTR [rcx+0x380],rax
39e153	bt     edx,0x1b
39e157	jb     0x39e16f
39e159	test   edx,0x5000000
39e15f	je     0x39e16f
39e161	mov    rax,QWORD PTR [r8+0x388]
39e168	mov    QWORD PTR [rcx+0x388],rax
39e16f	mov    eax,0x800000
39e174	jmp    0x39e180
39e176	mov    rcx,QWORD PTR [rcx+0x368]
39e17d	mov    QWORD PTR [r9],rcx
39e180	test   DWORD PTR [rcx+0x14],eax
39e183	jne    0x39e176
39e185	ret
