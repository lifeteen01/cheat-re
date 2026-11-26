3948bc	cmp    QWORD PTR [rcx+0x378],rdx
3948c3	je     0x3948d9
3948c5	cmp    rcx,rdx
3948c8	je     0x3948d9
3948ca	mov    rcx,QWORD PTR [rcx+0x370]
3948d1	test   rcx,rcx
3948d4	jne    0x3948c5
3948d6	xor    al,al
3948d8	ret
3948d9	mov    al,0x1
3948db	ret
