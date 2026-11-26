329920	mov    r11,rsp
329923	mov    QWORD PTR [r11+0x8],rbx
329927	push   rbp
329928	push   rsi
329929	push   rdi
32992a	sub    rsp,0x60
32992e	mov    eax,DWORD PTR [rip+0xc90ec]        # 0x3f2a20
329934	mov    rbp,rcx
329937	test   al,0x1
329939	jne    0x3299e8
32993f	or     eax,0x1
329942	lea    rdx,[r11+0x10]
329946	lea    rcx,[r11+0x10]
32994a	mov    DWORD PTR [rip+0xc90d0],eax        # 0x3f2a20
329950	call   0x2cc730
329955	mov    rcx,rax
329958	call   0x2cdca4
32995d	lea    rdx,[rsp+0x47]
329962	mov    rsi,rax
329965	lea    rcx,[rsp+0x90]
32996d	call   0x323da0   ; STR "get_transform"
329972	mov    rcx,rax
329975	call   0x2d861c
32997a	lea    rdx,[rsp+0x3b]
32997f	mov    rdi,rax
329982	lea    rcx,[rsp+0x90]
32998a	call   0x323b20   ; STR "UnityEngine"
32998f	mov    rcx,rax
329992	call   0x2cde0c
329997	lea    rdx,[rsp+0x30]
32999c	mov    rbx,rax
32999f	lea    rcx,[rsp+0x90]
3299a7	call   0x3238d8   ; STR "RaycastHit"
3299ac	mov    rcx,rax
3299af	call   0x2d85cc
3299b4	mov    rcx,rax
3299b7	mov    rdx,rbx
3299ba	call   0x334224
3299bf	or     r8d,0xffffffff
3299c3	mov    rcx,rax
3299c6	mov    r9,rsi
3299c9	mov    DWORD PTR [rsp+0x20],r8d
3299ce	mov    rdx,rdi
3299d1	call   0x3349ac
3299d6	mov    r8,QWORD PTR [rax]
3299d9	mov    eax,DWORD PTR [rip+0xc9041]        # 0x3f2a20
3299df	mov    QWORD PTR [rip+0xc9032],r8        # 0x3f2a18
3299e6	jmp    0x3299ef
3299e8	mov    r8,QWORD PTR [rip+0xc9029]        # 0x3f2a18
3299ef	test   al,0x2
3299f1	jne    0x329a12
3299f3	mov    rcx,QWORD PTR [rip+0xac466]        # 0x3d5e60
3299fa	lea    rdx,[rip+0xc902f]        # 0x3f2a30
329a01	or     eax,0x2
329a04	xor    r9d,r9d
329a07	mov    DWORD PTR [rip+0xc9013],eax        # 0x3f2a20
329a0d	call   0x2cbd24
329a12	mov    rcx,QWORD PTR [rip+0xac447]        # 0x3d5e60
329a19	lea    rdx,[rip+0xc9010]        # 0x3f2a30
329a20	mov    r8,rbp
329a23	mov    rbx,QWORD PTR [rsp+0x80]
329a2b	add    rsp,0x60
329a2f	pop    rdi
329a30	pop    rsi
329a31	pop    rbp
329a32	jmp    0x2cb9fc
