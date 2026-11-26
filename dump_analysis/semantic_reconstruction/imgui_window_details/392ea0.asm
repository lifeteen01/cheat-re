392ea0	mov    eax,DWORD PTR [rcx+0x14]
392ea3	test   eax,0x6000000
392ea8	je     0x392eb0
392eaa	mov    eax,0x5
392eaf	ret
392eb0	and    eax,0x1000000
392eb5	neg    eax
392eb7	sbb    eax,eax
392eb9	neg    eax
392ebb	add    eax,0x3
392ebe	ret
