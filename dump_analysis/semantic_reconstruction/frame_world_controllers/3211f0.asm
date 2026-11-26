3211f0	rex push rbp
3211f2	push   rbx
3211f3	push   rsi
3211f4	push   rdi
3211f5	push   r14
3211f7	mov    rbp,rsp
3211fa	sub    rsp,0x30
3211fe	mov    rsi,rcx
321201	lea    r14,[rcx+0x18]
321205	call   0x2e069c
32120a	mov    rcx,rax
32120d	call   0x2caf08
321212	test   al,al
321214	je     0x3213a6
32121a	call   0x2e0e4c
32121f	test   al,al
321221	jne    0x3213a6
321227	mov    rcx,r14
32122a	call   0x2d79c0
32122f	mov    rcx,r14
321232	mov    rdi,rax
321235	call   0x2d1978
32123a	mov    rbx,rax
32123d	cmp    rax,rdi
321240	je     0x321256
321242	mov    rcx,rbx
321245	call   0x321484
32124a	mov    BYTE PTR [rbx+0x9],al
32124d	add    rbx,0x10
321251	cmp    rbx,rdi
321254	jne    0x321242
321256	lea    rdx,[rbp+0x38]
32125a	mov    rcx,r14
32125d	call   0x31aa78
321262	lea    rdx,[rbp+0x40]
321266	mov    rcx,r14
321269	mov    rdi,QWORD PTR [rax]
32126c	call   0x2d87b0
321271	lea    rdx,[rbp+0x48]
321275	mov    rcx,r14
321278	mov    rbx,QWORD PTR [rax]
32127b	call   0x2d7d90
321280	mov    r9b,BYTE PTR [rbp+0x38]
321284	lea    rcx,[rbp-0x10]
321288	mov    r8,rbx
32128b	mov    rdx,QWORD PTR [rax]
32128e	call   0x2ee658
321293	mov    r9,rdi
321296	lea    rdx,[rbp-0x8]
32129a	mov    rcx,r14
32129d	mov    r8,QWORD PTR [rax]
3212a0	call   0x320760
3212a5	mov    rcx,rsi
3212a8	call   0x2d79c0
3212ad	mov    rcx,rsi
3212b0	mov    rdi,rax
3212b3	call   0x2d1978
3212b8	mov    rbx,rax
3212bb	cmp    rax,rdi
3212be	je     0x3212d4
3212c0	mov    rcx,rbx
3212c3	call   0x321484
3212c8	mov    BYTE PTR [rbx+0x9],al
3212cb	add    rbx,0x10
3212cf	cmp    rbx,rdi
3212d2	jne    0x3212c0
3212d4	lea    rdx,[rbp+0x38]
3212d8	mov    rcx,rsi
3212db	call   0x31aa78
3212e0	lea    rdx,[rbp+0x40]
3212e4	mov    rcx,rsi
3212e7	mov    rdi,QWORD PTR [rax]
3212ea	call   0x2d87b0
3212ef	lea    rdx,[rbp+0x48]
3212f3	mov    rcx,rsi
3212f6	mov    rbx,QWORD PTR [rax]
3212f9	call   0x2d7d90
3212fe	mov    r9b,BYTE PTR [rbp+0x38]
321302	lea    rcx,[rbp-0x8]
321306	mov    r8,rbx
321309	mov    rdx,QWORD PTR [rax]
32130c	call   0x2ee658
321311	mov    r9,rdi
321314	lea    rdx,[rbp-0x10]
321318	mov    rcx,rsi
32131b	mov    r8,QWORD PTR [rax]
32131e	call   0x320760
321323	add    rsi,0x30
321327	mov    rcx,rsi
32132a	call   0x2d79c0
32132f	mov    rcx,rsi
321332	mov    rdi,rax
321335	call   0x2d1978
32133a	mov    rbx,rax
32133d	cmp    rax,rdi
321340	je     0x321355
321342	mov    rcx,rbx
321345	call   0x3213cc
32134a	mov    BYTE PTR [rbx],al
32134c	add    rbx,0x40
321350	cmp    rbx,rdi
321353	jne    0x321342
321355	lea    rdx,[rbp+0x38]
321359	mov    rcx,rsi
32135c	call   0x31aa78
321361	lea    rdx,[rbp+0x40]
321365	mov    rcx,rsi
321368	mov    rdi,QWORD PTR [rax]
32136b	call   0x2d87b0
321370	lea    rdx,[rbp+0x48]
321374	mov    rcx,rsi
321377	mov    rbx,QWORD PTR [rax]
32137a	call   0x2d7d90
32137f	mov    r9b,BYTE PTR [rbp+0x38]
321383	lea    rcx,[rbp-0x8]
321387	mov    r8,rbx
32138a	mov    rdx,QWORD PTR [rax]
32138d	call   0x2ee5a0
321392	mov    r9,rdi
321395	lea    rdx,[rbp-0x10]
321399	mov    rcx,rsi
32139c	mov    r8,QWORD PTR [rax]
32139f	call   0x3207b8
3213a4	jmp    0x3213bf
3213a6	mov    rcx,rsi
3213a9	call   0x31ac64
3213ae	mov    rcx,r14
3213b1	call   0x31ac64
3213b6	lea    rcx,[rsi+0x30]
3213ba	call   0x31ac74
3213bf	add    rsp,0x30
3213c3	pop    r14
3213c5	pop    rdi
3213c6	pop    rsi
3213c7	pop    rbx
3213c8	pop    rbp
3213c9	ret
