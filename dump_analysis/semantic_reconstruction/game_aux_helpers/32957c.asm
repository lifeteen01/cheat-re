32957c	sub    rsp,0x28
329580	mov    rax,QWORD PTR [rip+0xad979]        # 0x3d6f00
329587	mov    rdx,QWORD PTR [rax+0xf0e86e8]
32958e	mov    rcx,rdx
329591	call   0x2caf08
329596	test   al,al
329598	je     0x3295b3
32959a	mov    rdx,QWORD PTR [rdx+0xb8]
3295a1	mov    rcx,rdx
3295a4	call   0x2caf08
3295a9	test   al,al
3295ab	je     0x3295b3
3295ad	mov    rax,QWORD PTR [rdx+0x28]
3295b1	jmp    0x3295b5
3295b3	xor    eax,eax
3295b5	add    rsp,0x28
3295b9	ret
