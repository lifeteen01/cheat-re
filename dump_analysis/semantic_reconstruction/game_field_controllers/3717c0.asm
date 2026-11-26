
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003717c0 <.data+0x3717c0>:
  3717c0:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3717c5:	57                                              	push   rdi
  3717c6:	48 83 ec 20                                     	sub    rsp,0x20
  3717ca:	48 8b d9                                        	mov    rbx,rcx
  3717cd:	e8 36 97 f5 ff                                  	call   0x2caf08
  3717d2:	84 c0                                           	test   al,al
  3717d4:	74 43                                           	je     0x371819
  3717d6:	48 8b cb                                        	mov    rcx,rbx
  3717d9:	e8 6e fd ff ff                                  	call   0x37154c
  3717de:	48 8b c8                                        	mov    rcx,rax
  3717e1:	48 8b f8                                        	mov    rdi,rax
  3717e4:	e8 1f 97 f5 ff                                  	call   0x2caf08
  3717e9:	84 c0                                           	test   al,al
  3717eb:	74 2c                                           	je     0x371819
  3717ed:	48 8b cf                                        	mov    rcx,rdi
  3717f0:	e8 27 0e 00 00                                  	call   0x37261c
  3717f5:	3d b9 97 ef 05                                  	cmp    eax,0x5ef97b9
  3717fa:	74 07                                           	je     0x371803
  3717fc:	3d 60 dc 52 c6                                  	cmp    eax,0xc652dc60
  371801:	75 16                                           	jne    0x371819
  371803:	48 8b cf                                        	mov    rcx,rdi
  371806:	e8 61 0b 00 00                                  	call   0x37236c
  37180b:	33 c9                                           	xor    ecx,ecx
  37180d:	83 f8 01                                        	cmp    eax,0x1
  371810:	48 0f 45 d9                                     	cmovne rbx,rcx
  371814:	48 8b c3                                        	mov    rax,rbx
  371817:	eb 02                                           	jmp    0x37181b
  371819:	33 c0                                           	xor    eax,eax
  37181b:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  371820:	48 83 c4 20                                     	add    rsp,0x20
  371824:	5f                                              	pop    rdi
  371825:	c3                                              	ret
