36cbe4	mov    QWORD PTR [rsp+0x8],rbx
36cbe9	mov    QWORD PTR [rsp+0x10],rbp
36cbee	push   rsi
36cbef	push   rdi
36cbf0	push   r14
36cbf2	sub    rsp,0x60
36cbf6	mov    r14d,edx
36cbf9	mov    rbp,rcx
36cbfc	call   0x2caf08
36cc01	test   al,al
36cc03	je     0x36cd0b
36cc09	mov    eax,DWORD PTR [rip+0x92f41]        # 0x3ffb50
36cc0f	test   al,0x1
36cc11	jne    0x36ccc8
36cc17	or     eax,0x1
36cc1a	lea    rdx,[rsp+0x90]
36cc22	lea    rcx,[rsp+0x90]
36cc2a	mov    DWORD PTR [rip+0x92f20],eax        # 0x3ffb50
36cc30	call   0x2cc730
36cc35	mov    rcx,rax
36cc38	call   0x2cdca4
36cc3d	lea    rdx,[rsp+0x43]
36cc42	mov    rsi,rax
36cc45	lea    rcx,[rsp+0x98]
36cc4d	call   0x36c628   ; STR "set_cullingMask"
36cc52	mov    rcx,rax
36cc55	call   0x2dd160
36cc5a	lea    rdx,[rsp+0x37]
36cc5f	mov    rdi,rax
36cc62	lea    rcx,[rsp+0x98]
36cc6a	call   0x36c5a0   ; STR "UnityEngine"
36cc6f	mov    rcx,rax
36cc72	call   0x2cde34
36cc77	lea    rdx,[rsp+0x30]
36cc7c	mov    rbx,rax
36cc7f	lea    rcx,[rsp+0x98]
36cc87	call   0x36c510   ; STR "Camera"
36cc8c	mov    rcx,rax
36cc8f	call   0x2cdcf4
36cc94	mov    rcx,rax
36cc97	mov    rdx,rbx
36cc9a	call   0x334224
36cc9f	or     r8d,0xffffffff
36cca3	mov    rcx,rax
36cca6	mov    r9,rsi
36cca9	mov    DWORD PTR [rsp+0x20],r8d
36ccae	mov    rdx,rdi
36ccb1	call   0x3349ac
36ccb6	mov    r8,QWORD PTR [rax]
36ccb9	mov    eax,DWORD PTR [rip+0x92e91]        # 0x3ffb50
36ccbf	mov    QWORD PTR [rip+0x92e82],r8        # 0x3ffb48
36ccc6	jmp    0x36cccf
36ccc8	mov    r8,QWORD PTR [rip+0x92e79]        # 0x3ffb48
36cccf	test   al,0x2
36ccd1	jne    0x36ccf2
36ccd3	mov    rcx,QWORD PTR [rip+0x69186]        # 0x3d5e60
36ccda	lea    rdx,[rip+0x92e7f]        # 0x3ffb60
36cce1	or     eax,0x2
36cce4	xor    r9d,r9d
36cce7	mov    DWORD PTR [rip+0x92e63],eax        # 0x3ffb50
36cced	call   0x2cbd24
36ccf2	mov    rcx,QWORD PTR [rip+0x69167]        # 0x3d5e60
36ccf9	lea    rdx,[rip+0x92e60]        # 0x3ffb60
36cd00	mov    r9d,r14d
36cd03	mov    r8,rbp
36cd06	call   0x32b1c8
36cd0b	lea    r11,[rsp+0x60]
36cd10	mov    rbx,QWORD PTR [r11+0x20]
36cd14	mov    rbp,QWORD PTR [r11+0x28]
36cd18	mov    rsp,r11
36cd1b	pop    r14
36cd1d	pop    rdi
36cd1e	pop    rsi
36cd1f	ret
