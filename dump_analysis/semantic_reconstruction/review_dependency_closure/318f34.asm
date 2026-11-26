318f34	rex push rbx
318f36	sub    rsp,0x30
318f3a	mov    rcx,rdx
318f3d	movaps XMMWORD PTR [rsp+0x20],xmm6
318f42	mov    rbx,rdx
318f45	call   0x2caf08
318f4a	test   al,al
318f4c	je     0x319017
318f52	mov    rcx,rdx
318f55	call   0x2e0e9c
318f5a	test   al,al
318f5c	je     0x319017
318f62	cmp    BYTE PTR [rip+0xd102f],0x0        # 0x3e9f98
318f69	je     0x318ffa
318f6f	movss  xmm1,DWORD PTR [rip+0xcd121]        # 0x3e6098
318f77	addss  xmm1,DWORD PTR [rip+0xfffffffffff7a1f9]        # 0x293178
318f7f	movss  xmm0,DWORD PTR [rip+0xd4cd1]        # 0x3edc58
318f87	comiss xmm0,xmm1
318f8a	jbe    0x318ffa
318f8c	mov    rcx,rbx
318f8f	call   0x36a238
318f94	test   al,al
318f96	jne    0x318ffa
318f98	mov    rcx,rbx
318f9b	call   0x36b288
318fa0	test   al,al
318fa2	jne    0x318ffa
318fa4	mov    ecx,DWORD PTR [rip+0xd694e]        # 0x3ef8f8
318faa	mov    dl,0x1
318fac	call   0x2e5e4c
318fb1	test   al,al
318fb3	je     0x318fbf
318fb5	movss  xmm6,DWORD PTR [rip+0xd4d3b]        # 0x3edcf8
318fbd	jmp    0x318fc2
318fbf	xorps  xmm6,xmm6
318fc2	mov    ecx,DWORD PTR [rip+0xd6990]        # 0x3ef958
318fc8	mov    dl,0x1
318fca	call   0x2e5e4c
318fcf	movss  xmm0,DWORD PTR [rip+0xfffffffffff7a2c9]        # 0x2932a0
318fd7	test   al,al
318fd9	je     0x318fe6
318fdb	movss  xmm6,DWORD PTR [rip+0xd4cc5]        # 0x3edca8
318fe3	xorps  xmm6,xmm0
318fe6	xorps  xmm6,xmm0
318fe9	mov    BYTE PTR [rip+0xd7988],0x1        # 0x3f0978
318ff0	movss  DWORD PTR [rbx+0x7f8],xmm6
318ff8	jmp    0x319017
318ffa	cmp    BYTE PTR [rip+0xd7977],0x0        # 0x3f0978
319001	je     0x319017
319003	call   0x368f50
319008	movss  DWORD PTR [rbx+0x7f8],xmm0
319010	mov    BYTE PTR [rip+0xd7961],0x0        # 0x3f0978
319017	movaps xmm6,XMMWORD PTR [rsp+0x20]
31901c	add    rsp,0x30
319020	pop    rbx
319021	ret
