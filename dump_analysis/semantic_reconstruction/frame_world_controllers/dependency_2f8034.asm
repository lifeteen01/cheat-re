2f8034	sub    rsp,0x28
2f8038	mov    rax,QWORD PTR [rip+0xdeec1]        # 0x3d6f00
2f803f	mov    rdx,QWORD PTR [rax+0xf0ee490]
2f8046	mov    rcx,rdx
2f8049	call   0x2caf08
2f804e	test   al,al
2f8050	je     0x2f80b5
2f8052	mov    r8,QWORD PTR [rdx+0xb8]
2f8059	mov    rcx,r8
2f805c	call   0x2caf08
2f8061	test   al,al
2f8063	je     0x2f80b5
2f8065	mov    rcx,QWORD PTR [r8+0x18]
2f8069	call   0x2caf08
2f806e	test   al,al
2f8070	je     0x2f80b5
2f8072	mov    rcx,QWORD PTR [r8+0x18]
2f8076	call   0x2f9950
2f807b	mov    rcx,rax
2f807e	mov    rdx,rax
2f8081	call   0x2caf08
2f8086	test   al,al
2f8088	je     0x2f80b5
2f808a	mov    rcx,QWORD PTR [rdx+0x18]
2f808e	call   0x2caf08
2f8093	test   al,al
2f8095	je     0x2f80b5
2f8097	mov    rcx,QWORD PTR [rdx+0x18]
2f809b	call   0x2f996c
2f80a0	mov    rcx,rax
2f80a3	mov    rdx,rax
2f80a6	call   0x2caf08
2f80ab	test   al,al
2f80ad	je     0x2f80b5
2f80af	mov    rax,QWORD PTR [rdx+0x20]
2f80b3	jmp    0x2f80b7
2f80b5	xor    eax,eax
2f80b7	add    rsp,0x28
2f80bb	ret
