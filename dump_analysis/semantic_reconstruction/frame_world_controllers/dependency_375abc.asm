375abc	rex push rbx
375abe	push   rbp
375abf	push   rsi
375ac0	push   rdi
375ac1	push   r14
375ac3	sub    rsp,0x60
375ac7	cmp    QWORD PTR [rip+0xfffffffffff09ed6],0x402402        # 0x27f9a8
375ad2	mov    rbp,rdx
375ad5	mov    r14,rcx
375ad8	jne    0x375afc
375ada	mov    rdx,r9
375add	mov    rcx,r8
375ae0	call   0x334224
375ae5	mov    rcx,rax
375ae8	call   0x375e6c
375aed	mov    rcx,rax
375af0	call   0x376214
375af5	mov    QWORD PTR [rip+0xfffffffffff09eac],rax        # 0x27f9a8
375afc	mov    eax,DWORD PTR [rip+0x8d11e]        # 0x402c20
375b02	test   al,0x1
375b04	jne    0x375bab
375b0a	or     eax,0x1
375b0d	lea    rdx,[rsp+0x32]
375b12	lea    rcx,[rsp+0x30]
375b17	mov    DWORD PTR [rip+0x8d103],eax        # 0x402c20
375b1d	call   0x375aa0   ; STR "UnityEngine"
375b22	mov    rcx,rax
375b25	call   0x375860
375b2a	lea    rdx,[rsp+0x30]
375b2f	mov    rsi,rax
375b32	lea    rcx,[rsp+0x31]
375b37	call   0x2cc730
375b3c	mov    rcx,rax
375b3f	call   0x2cdca4
375b44	lea    rdx,[rsp+0x4a]
375b49	mov    rdi,rax
375b4c	lea    rcx,[rsp+0x31]
375b51	call   0x3759b4   ; STR "LoadAsset_Internal"
375b56	mov    rcx,rax
375b59	call   0x376034
375b5e	lea    rdx,[rsp+0x3e]
375b63	mov    rbx,rax
375b66	lea    rcx,[rsp+0x31]
375b6b	call   0x375914   ; STR "AssetBundle"
375b70	mov    rcx,rax
375b73	call   0x375860
375b78	mov    rcx,rax
375b7b	mov    DWORD PTR [rsp+0x28],0xffffffff
375b83	mov    r9,rdi
375b86	mov    QWORD PTR [rsp+0x20],rsi
375b8b	mov    r8d,0x2
375b91	mov    rdx,rbx
375b94	call   0x333bf4
375b99	mov    r8,QWORD PTR [rax]
375b9c	mov    eax,DWORD PTR [rip+0x8d07e]        # 0x402c20
375ba2	mov    QWORD PTR [rip+0x8d06f],r8        # 0x402c18
375ba9	jmp    0x375bb2
375bab	mov    r8,QWORD PTR [rip+0x8d066]        # 0x402c18
375bb2	test   al,0x2
375bb4	jne    0x375bd5
375bb6	mov    rcx,QWORD PTR [rip+0x602a3]        # 0x3d5e60
375bbd	lea    rdx,[rip+0x8d06c]        # 0x402c30
375bc4	or     eax,0x2
375bc7	xor    r9d,r9d
375bca	mov    DWORD PTR [rip+0x8d050],eax        # 0x402c20
375bd0	call   0x2cbd24
375bd5	mov    rax,QWORD PTR [rip+0xfffffffffff09dcc]        # 0x27f9a8
375bdc	lea    rdx,[rip+0x8d04d]        # 0x402c30
375be3	mov    rcx,QWORD PTR [rip+0x60276]        # 0x3d5e60
375bea	mov    r9,rbp
375bed	mov    r8,r14
375bf0	mov    QWORD PTR [rsp+0x20],rax
375bf5	call   0x2cba50
375bfa	add    rsp,0x60
375bfe	pop    r14
375c00	pop    rdi
375c01	pop    rsi
375c02	pop    rbp
375c03	pop    rbx
375c04	ret
