2f4a88	mov    eax,DWORD PTR [rip+0xfffffffffff9dbf6]        # 0x292684
2f4a8e	mov    DWORD PTR [rdx],eax
2f4a90	movzx  eax,WORD PTR [rip+0xfffffffffff9dbf1]        # 0x292688
2f4a97	mov    WORD PTR [rdx+0x4],ax
2f4a9b	mov    al,BYTE PTR [rip+0xfffffffffff9dbe9]        # 0x29268a
2f4aa1	mov    BYTE PTR [rdx+0x6],al
2f4aa4	mov    rax,rdx
2f4aa7	ret
2f4aa8	movups xmm0,XMMWORD PTR [rip+0xfffffffffff9d519]        # 0x291fc8
2f4aaf	mov    rax,rdx
2f4ab2	movdqu XMMWORD PTR [rdx],xmm0
2f4ab6	ret
