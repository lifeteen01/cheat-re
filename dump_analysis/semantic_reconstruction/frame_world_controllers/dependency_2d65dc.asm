2d65dc	mov    QWORD PTR [rsp+0x8],rbx
2d65e1	push   rbp
2d65e2	push   rsi
2d65e3	push   rdi
2d65e4	sub    rsp,0x40
2d65e8	mov    eax,DWORD PTR [rip+0x1005f2]        # 0x3d6be0
2d65ee	mov    rsi,rdx
2d65f1	mov    rbp,rcx
2d65f4	test   al,0x1
2d65f6	jne    0x2d667f
2d65fc	or     eax,0x1
2d65ff	lea    rdx,[rsp+0x2a]
2d6604	lea    rcx,[rsp+0x70]
2d6609	mov    DWORD PTR [rip+0x1005d1],eax        # 0x3d6be0
2d660f	call   0x2d542c   ; STR "InternalWriteAllBytes"
2d6614	mov    rcx,rax
2d6617	call   0x2d85a4
2d661c	lea    rdx,[rsp+0x20]
2d6621	mov    rdi,rax
2d6624	lea    rcx,[rsp+0x70]
2d6629	call   0x2d52d4   ; STR "System.IO"
2d662e	mov    rcx,rax
2d6631	call   0x2cdd44
2d6636	lea    rdx,[rsp+0x78]
2d663b	mov    rbx,rax
2d663e	lea    rcx,[rsp+0x70]
2d6643	call   0x2d50fc   ; STR "File"
2d6648	mov    rcx,rax
2d664b	call   0x2cdccc
2d6650	mov    rcx,rax
2d6653	mov    rdx,rbx
2d6656	call   0x334224
2d665b	xor    r9d,r9d
2d665e	mov    rcx,rax
2d6661	mov    rdx,rdi
2d6664	lea    r8d,[r9+0x2]
2d6668	call   0x334a90
2d666d	mov    r8,QWORD PTR [rax]
2d6670	mov    eax,DWORD PTR [rip+0x10056a]        # 0x3d6be0
2d6676	mov    QWORD PTR [rip+0x10055b],r8        # 0x3d6bd8
2d667d	jmp    0x2d6686
2d667f	mov    r8,QWORD PTR [rip+0x100552]        # 0x3d6bd8
2d6686	test   al,0x2
2d6688	jne    0x2d66a9
2d668a	mov    rcx,QWORD PTR [rip+0xff7cf]        # 0x3d5e60
2d6691	lea    rdx,[rip+0x100558]        # 0x3d6bf0
2d6698	or     eax,0x2
2d669b	xor    r9d,r9d
2d669e	mov    DWORD PTR [rip+0x10053c],eax        # 0x3d6be0
2d66a4	call   0x2cbd24
2d66a9	mov    rcx,rbp
2d66ac	call   0x2ce5dc
2d66b1	mov    rcx,QWORD PTR [rip+0xff7a8]        # 0x3d5e60
2d66b8	lea    rdx,[rip+0x100531]        # 0x3d6bf0
2d66bf	mov    r9,rsi
2d66c2	mov    r8,rax
2d66c5	mov    rbx,QWORD PTR [rsp+0x60]
2d66ca	add    rsp,0x40
2d66ce	pop    rdi
2d66cf	pop    rsi
2d66d0	pop    rbp
2d66d1	jmp    0x2d2094
