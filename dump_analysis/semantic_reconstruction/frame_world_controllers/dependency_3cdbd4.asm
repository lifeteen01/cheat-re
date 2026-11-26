3cdbd4	mov    QWORD PTR [rsp+0x8],rbp
3cdbd9	mov    QWORD PTR [rsp+0x10],rbx
3cdbde	mov    QWORD PTR [rsp+0x18],r15
3cdbe3	mov    rbx,QWORD PTR [rcx+0x20]
3cdbe7	mov    QWORD PTR [rsp+0x20],rbx
3cdbec	mov    rbx,rsp
3cdbef	add    rbx,0x20
3cdbf3	mov    QWORD PTR [rcx+0x68],rbx
3cdbf7	sub    rsp,0x200
3cdbfe	mov    rbp,rsp
3cdc01	lea    rax,[rip+0xffffffffffffffb2]        # 0x3cdbba
3cdc08	push   rax
3cdc09	lea    rbx,[rsp]
3cdc0d	push   QWORD PTR [rcx+0x10]
3cdc10	add    QWORD PTR [rsp],0x20
3cdc15	mov    rax,QWORD PTR [rcx+0x78]
3cdc19	sub    rax,QWORD PTR [rcx+0x30]
3cdc1d	sub    rsp,QWORD PTR [rcx+0x38]
3cdc21	mov    r10,QWORD PTR [rcx+0x60]
3cdc25	mov    QWORD PTR [rsp+r10*1],rax
3cdc29	xor    rax,rax
3cdc2c	push   rax
3cdc2d	mov    rax,QWORD PTR [rcx+0x10]
3cdc31	sub    rax,QWORD PTR [rcx+0x30]
3cdc35	sub    rsp,QWORD PTR [rcx+0x50]
3cdc39	mov    QWORD PTR [rsp+0x30],rax
3cdc3e	push   QWORD PTR [rcx]
3cdc40	add    QWORD PTR [rsp],0x21
3cdc45	sub    rsp,QWORD PTR [rcx+0x58]
3cdc49	push   QWORD PTR [rcx+0x8]
3cdc4c	add    QWORD PTR [rsp],0x14
3cdc51	sub    rsp,QWORD PTR [rcx+0x40]
3cdc55	mov    rax,QWORD PTR [rcx]
3cdc58	sub    rax,QWORD PTR [rcx+0x50]
3cdc5c	mov    QWORD PTR [rsp+0x30],rax
3cdc61	push   QWORD PTR [rcx+0x20]
3cdc64	mov    rax,QWORD PTR [rcx+0x8]
3cdc68	sub    rax,QWORD PTR [rcx+0x38]
3cdc6c	sub    rsp,QWORD PTR [rcx+0x48]
3cdc70	mov    QWORD PTR [rsp+0x30],rax
3cdc75	mov    r10,QWORD PTR [rcx+0x20]
3cdc79	mov    QWORD PTR [rsp+0x38],r10
3cdc7e	push   QWORD PTR [rcx+0x28]
3cdc81	mov    rax,QWORD PTR [rcx+0x48]
3cdc85	mov    QWORD PTR [rbp+0x28],rax
3cdc89	mov    rax,QWORD PTR [rbp+0x28]
3cdc8d	mov    QWORD PTR [rsp+0x28],rax
3cdc92	mov    rax,QWORD PTR [rbp+0x30]
3cdc96	mov    rax,QWORD PTR [rcx+0x70]
3cdc9a	jmp    0x3cdc9c
3cdc9c	cmp    QWORD PTR [rcx+0x80],0x9
3cdca4	je     0x3cdd24
3cdca6	cmp    QWORD PTR [rcx+0x80],0x8
3cdcae	je     0x3cdd36
3cdcb4	cmp    QWORD PTR [rcx+0x80],0x7
3cdcbc	je     0x3cdd48
3cdcc2	cmp    QWORD PTR [rcx+0x80],0x6
3cdcca	je     0x3cdd5a
3cdcd0	cmp    QWORD PTR [rcx+0x80],0x5
3cdcd8	je     0x3cdd6c
3cdcde	cmp    QWORD PTR [rcx+0x80],0x4
3cdce6	je     0x3cdd7e
3cdcec	cmp    QWORD PTR [rcx+0x80],0x3
3cdcf4	je     0x3cdd9a
3cdcfa	cmp    QWORD PTR [rcx+0x80],0x2
3cdd02	je     0x3cddb6
3cdd08	cmp    QWORD PTR [rcx+0x80],0x1
3cdd10	je     0x3cddd2
3cdd16	cmp    QWORD PTR [rcx+0x80],0x0
3cdd1e	je     0x3cddee
3cdd24	push   r15
3cdd26	mov    r15,QWORD PTR [rcx+0xc8]
3cdd2d	mov    QWORD PTR [rsp+0x50],r15
3cdd32	pop    r15
3cdd34	jmp    0x3cdd36
3cdd36	push   r15
3cdd38	mov    r15,QWORD PTR [rcx+0xc0]
3cdd3f	mov    QWORD PTR [rsp+0x48],r15
3cdd44	pop    r15
3cdd46	jmp    0x3cdd48
3cdd48	push   r15
3cdd4a	mov    r15,QWORD PTR [rcx+0xb8]
3cdd51	mov    QWORD PTR [rsp+0x40],r15
3cdd56	pop    r15
3cdd58	jmp    0x3cdd5a
3cdd5a	push   r15
3cdd5c	mov    r15,QWORD PTR [rcx+0xb0]
3cdd63	mov    QWORD PTR [rsp+0x38],r15
3cdd68	pop    r15
3cdd6a	jmp    0x3cdd6c
3cdd6c	push   r15
3cdd6e	mov    r15,QWORD PTR [rcx+0xa8]
3cdd75	mov    QWORD PTR [rsp+0x30],r15
3cdd7a	pop    r15
3cdd7c	jmp    0x3cdd7e
3cdd7e	cmp    BYTE PTR [rcx+0xd3],0x1
3cdd85	jne    0x3cdd91
3cdd87	movq   xmm3,QWORD PTR [rcx+0xa0]
3cdd8f	jmp    0x3cdd98
3cdd91	mov    r9,QWORD PTR [rcx+0xa0]
3cdd98	jmp    0x3cdd9a
3cdd9a	cmp    BYTE PTR [rcx+0xd2],0x1
3cdda1	jne    0x3cddad
3cdda3	movq   xmm2,QWORD PTR [rcx+0x98]
3cddab	jmp    0x3cddb4
3cddad	mov    r8,QWORD PTR [rcx+0x98]
3cddb4	jmp    0x3cddb6
3cddb6	cmp    BYTE PTR [rcx+0xd1],0x1
3cddbd	jne    0x3cddc9
3cddbf	movq   xmm1,QWORD PTR [rcx+0x90]
3cddc7	jmp    0x3cddd0
3cddc9	mov    rdx,QWORD PTR [rcx+0x90]
3cddd0	jmp    0x3cddd2
3cddd2	cmp    BYTE PTR [rcx+0xd0],0x1
3cddd9	jne    0x3cdde5
3cdddb	movq   xmm0,QWORD PTR [rcx+0x88]
3cdde3	jmp    0x3cddec
3cdde5	mov    rcx,QWORD PTR [rcx+0x88]
3cddec	jmp    0x3cddee
3cddee	jmp    rax
3cddf0	push   rbx
3cddf1	call   0x6a4c6d
3cddf6	push   rdi
3cddf7	call   0x72da20
