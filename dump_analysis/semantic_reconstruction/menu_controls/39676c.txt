39676c	mov    rax,QWORD PTR [rip+0x6f3b5]        # 0x405b28
396773	xor    ecx,ecx
396775	cmp    BYTE PTR [rax+0x4941],cl
39677b	jne    0x396785
39677d	cmp    BYTE PTR [rax+0x4929],cl
396783	je     0x396787
396785	mov    cl,0x1
396787	mov    BYTE PTR [rax+0x4928],cl
39678d	ret
