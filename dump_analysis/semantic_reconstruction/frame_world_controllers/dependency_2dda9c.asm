2dda9c	sub    rsp,0x28
2ddaa0	mov    ecx,DWORD PTR [rip+0xf946a]        # 0x3d6f10
2ddaa6	test   cl,0x1
2ddaa9	jne    0x2ddacb
2ddaab	mov    r8,QWORD PTR [rip+0xf944e]        # 0x3d6f00
2ddab2	or     ecx,0x1
2ddab5	add    r8,0x5458c90
2ddabc	mov    DWORD PTR [rip+0xf944e],ecx        # 0x3d6f10
2ddac2	mov    QWORD PTR [rip+0xf943f],r8        # 0x3d6f08
2ddac9	jmp    0x2ddad2
2ddacb	mov    r8,QWORD PTR [rip+0xf9436]        # 0x3d6f08
2ddad2	test   cl,0x2
2ddad5	jne    0x2ddaf6
2ddad7	or     ecx,0x2
2ddada	lea    rdx,[rip+0xf943f]        # 0x3d6f20
2ddae1	mov    DWORD PTR [rip+0xf9429],ecx        # 0x3d6f10
2ddae7	xor    r9d,r9d
2ddaea	mov    rcx,QWORD PTR [rip+0xf836f]        # 0x3d5e60
2ddaf1	call   0x2cbd24
2ddaf6	mov    rcx,QWORD PTR [rip+0xf8363]        # 0x3d5e60
2ddafd	lea    rdx,[rip+0xf941c]        # 0x3d6f20
2ddb04	add    rsp,0x28
2ddb08	jmp    0x2dda18
