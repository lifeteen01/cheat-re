3151bc	mov    QWORD PTR [rsp+0x8],rbx
3151c1	mov    QWORD PTR [rsp+0x10],rbp
3151c6	push   rsi
3151c7	push   rdi
3151c8	push   r14
3151ca	sub    rsp,0x60
3151ce	mov    rbp,rdx
3151d1	mov    r14,rcx
3151d4	call   0x2caf08
3151d9	test   al,al
3151db	je     0x3152f4
3151e1	mov    rcx,rdx
3151e4	call   0x2caf08
3151e9	test   al,al
3151eb	je     0x3152f4
3151f1	mov    eax,DWORD PTR [rip+0xd1129]        # 0x3e6320
3151f7	test   al,0x1
3151f9	jne    0x3152af
3151ff	or     eax,0x1
315202	lea    rdx,[rsp+0x3a]
315207	lea    rcx,[rsp+0x90]
31520f	mov    DWORD PTR [rip+0xd110b],eax        # 0x3e6320
315215	call   0x2f49ac   ; STR "UnityEngine"
31521a	mov    rcx,rax
31521d	call   0x2cde0c
315222	lea    rdx,[rsp+0x90]
31522a	mov    rsi,rax
31522d	lea    rcx,[rsp+0x98]
315235	call   0x2cc730
31523a	mov    rcx,rax
31523d	call   0x2cdca4
315242	lea    rdx,[rsp+0x46]
315247	mov    rdi,rax
31524a	lea    rcx,[rsp+0x98]
315252	call   0x2f3694   ; STR "GetComponentsInChildren"
315257	mov    rcx,rax
31525a	call   0x2e36b4
31525f	lea    rdx,[rsp+0x30]
315264	mov    rbx,rax
315267	lea    rcx,[rsp+0x98]
31526f	call   0x2f21bc   ; STR "Component"
315274	mov    rcx,rax
315277	call   0x2cdd1c
31527c	mov    rcx,rax
31527f	mov    DWORD PTR [rsp+0x28],0xffffffff
315287	mov    r9,rdi
31528a	mov    QWORD PTR [rsp+0x20],rsi
31528f	mov    r8d,0x1
315295	mov    rdx,rbx
315298	call   0x333bf4
31529d	mov    r8,QWORD PTR [rax]
3152a0	mov    eax,DWORD PTR [rip+0xd107a]        # 0x3e6320
3152a6	mov    QWORD PTR [rip+0xd106b],r8        # 0x3e6318
3152ad	jmp    0x3152b6
3152af	mov    r8,QWORD PTR [rip+0xd1062]        # 0x3e6318
3152b6	test   al,0x2
3152b8	jne    0x3152d9
3152ba	mov    rcx,QWORD PTR [rip+0xc0b9f]        # 0x3d5e60
3152c1	lea    rdx,[rip+0xd1068]        # 0x3e6330
3152c8	or     eax,0x2
3152cb	xor    r9d,r9d
3152ce	mov    DWORD PTR [rip+0xd104c],eax        # 0x3e6320
3152d4	call   0x2cbd24
3152d9	mov    rcx,QWORD PTR [rip+0xc0b80]        # 0x3d5e60
3152e0	lea    rdx,[rip+0xd1049]        # 0x3e6330
3152e7	mov    r9,rbp
3152ea	mov    r8,r14
3152ed	call   0x2d2094
3152f2	jmp    0x3152f6
3152f4	xor    eax,eax
3152f6	lea    r11,[rsp+0x60]
3152fb	mov    rbx,QWORD PTR [r11+0x20]
3152ff	mov    rbp,QWORD PTR [r11+0x28]
315303	mov    rsp,r11
315306	pop    r14
315308	pop    rdi
315309	pop    rsi
31530a	ret
