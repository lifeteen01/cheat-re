2e069c	rex push rbx
2e069e	sub    rsp,0x30
2e06a2	lea    rdx,[rsp+0x40]
2e06a7	lea    rcx,[rsp+0x40]
2e06ac	call   0x2cc730
2e06b1	mov    rcx,rax
2e06b4	call   0x2cdca4
2e06b9	lea    rdx,[rsp+0x20]
2e06be	mov    rbx,rax
2e06c1	lea    rcx,[rsp+0x48]
2e06c6	call   0x2df87c   ; STR "MainCamera"
2e06cb	mov    rcx,rax
2e06ce	call   0x2d85cc
2e06d3	mov    rcx,rax
2e06d6	mov    rdx,rbx
2e06d9	call   0x334224
2e06de	mov    rcx,rax
2e06e1	mov    rdx,rax
2e06e4	call   0x2caf08
2e06e9	test   al,al
2e06eb	je     0x2e0714
2e06ed	mov    rdx,QWORD PTR [rdx+0xb8]
2e06f4	mov    rcx,rdx
2e06f7	call   0x2caf08
2e06fc	test   al,al
2e06fe	je     0x2e0714
2e0700	mov    rcx,QWORD PTR [rdx+0x38]
2e0704	call   0x2caf08
2e0709	neg    al
2e070b	sbb    rax,rax
2e070e	and    rax,QWORD PTR [rdx+0x38]
2e0712	jmp    0x2e0716
2e0714	xor    eax,eax
2e0716	add    rsp,0x30
2e071a	pop    rbx
2e071b	ret
