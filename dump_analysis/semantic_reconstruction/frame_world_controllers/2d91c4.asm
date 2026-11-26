2d91c4	rex push rbp
2d91c6	push   rbx
2d91c7	push   rdi
2d91c8	mov    rbp,rsp
2d91cb	sub    rsp,0x50
2d91cf	lea    rcx,[rip+0xfffffffffff3f53a]        # 0x218710
2d91d6	call   0x2cd7ec
2d91db	mov    rcx,rax
2d91de	call   0x2d57d4
2d91e3	lea    rdx,[rbp+0x20]
2d91e7	lea    rcx,[rbp+0x20]
2d91eb	call   0x2d5188   ; STR "*.bin"
2d91f0	mov    rcx,rax
2d91f3	call   0x2d84b4
2d91f8	lea    rcx,[rip+0xfffffffffff3f511]        # 0x218710
2d91ff	mov    rbx,rax
2d9202	call   0x2cd7ec
2d9207	mov    rdx,rax
2d920a	lea    rcx,[rbp-0x20]
2d920e	mov    r8,rbx
2d9211	call   0x2d5f84
2d9216	lea    rdx,[rbp+0x20]
2d921a	lea    rcx,[rbp-0x20]
2d921e	call   0x2d87b0
2d9223	lea    rdx,[rbp+0x28]
2d9227	lea    rcx,[rbp-0x20]
2d922b	mov    rdi,QWORD PTR [rax]
2d922e	call   0x2d87b0
2d9233	lea    rdx,[rbp+0x30]
2d9237	lea    rcx,[rbp-0x20]
2d923b	mov    rbx,QWORD PTR [rax]
2d923e	call   0x2d7d90
2d9243	mov    r9b,BYTE PTR [rbp+0x20]
2d9247	lea    rcx,[rbp+0x38]
2d924b	mov    r8,rbx
2d924e	mov    rdx,QWORD PTR [rax]
2d9251	call   0x2d35e0
2d9256	mov    r9,rdi
2d9259	lea    rdx,[rbp-0x30]
2d925d	lea    rcx,[rbp-0x20]
2d9261	mov    r8,QWORD PTR [rax]
2d9264	call   0x2d881c
2d9269	lea    rdi,[rip+0xfffffffffff3f4e0]        # 0x218750
2d9270	mov    rcx,rdi
2d9273	lea    rdx,[rbp-0x20]
2d9277	call   0x2d4c70
2d927c	lea    rdx,[rbp+0x20]
2d9280	mov    rcx,rdi
2d9283	call   0x2d87b0
2d9288	lea    rdx,[rbp+0x28]
2d928c	mov    rcx,rdi
2d928f	mov    rbx,QWORD PTR [rax]
2d9292	call   0x2d7d90
2d9297	mov    r8b,BYTE PTR [rbp+0x20]
2d929b	mov    rdx,rbx
2d929e	mov    rcx,QWORD PTR [rax]
2d92a1	call   0x2d3e64
2d92a6	lea    rcx,[rip+0xfffffffffff3f483]        # 0x218730
2d92ad	call   0x2d64c4
2d92b2	test   al,al
2d92b4	jne    0x2d92da
2d92b6	lea    rdx,[rbp-0x30]
2d92ba	lea    rcx,[rbp+0x20]
2d92be	call   0x2d550c   ; STR "DefaultCfg.bin"
2d92c3	mov    rcx,rax
2d92c6	call   0x2d8644
2d92cb	mov    rdx,rax
2d92ce	lea    rcx,[rip+0xfffffffffff3f45b]        # 0x218730
2d92d5	call   0x2d4c68
2d92da	lea    rcx,[rbp-0x20]
2d92de	call   0x2d4a80
2d92e3	add    rsp,0x50
2d92e7	pop    rdi
2d92e8	pop    rbx
2d92e9	pop    rbp
2d92ea	ret
