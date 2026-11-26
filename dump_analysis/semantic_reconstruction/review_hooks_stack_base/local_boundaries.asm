
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003217ec <.data+0x3217ec>:
  3217ec:	48 83 ec 28          	sub    rsp,0x28
  3217f0:	8b 0d 1a 01 0d 00    	mov    ecx,DWORD PTR [rip+0xd011a]        # 0x3f1910
  3217f6:	f6 c1 01             	test   cl,0x1
  3217f9:	75 20                	jne    0x32181b
  3217fb:	4c 8b 05 fe 56 0b 00 	mov    r8,QWORD PTR [rip+0xb56fe]        # 0x3d6f00
  321802:	83 c9 01             	or     ecx,0x1
  321805:	49 81 c0 10 fe 44 05 	add    r8,0x544fe10
  32180c:	89 0d fe 00 0d 00    	mov    DWORD PTR [rip+0xd00fe],ecx        # 0x3f1910
  321812:	4c 89 05 ef 00 0d 00 	mov    QWORD PTR [rip+0xd00ef],r8        # 0x3f1908
  321819:	eb 07                	jmp    0x321822
  32181b:	4c 8b 05 e6 00 0d 00 	mov    r8,QWORD PTR [rip+0xd00e6]        # 0x3f1908
  321822:	f6 c1 02             	test   cl,0x2
  321825:	75 1f                	jne    0x321846
  321827:	83 c9 02             	or     ecx,0x2
  32182a:	48 8d 15 ef 00 0d 00 	lea    rdx,[rip+0xd00ef]        # 0x3f1920
  321831:	89 0d d9 00 0d 00    	mov    DWORD PTR [rip+0xd00d9],ecx        # 0x3f1910
  321837:	45 33 c9             	xor    r9d,r9d
  32183a:	48 8b 0d 1f 46 0b 00 	mov    rcx,QWORD PTR [rip+0xb461f]        # 0x3d5e60
  321841:	e8 de a4 fa ff       	call   0x2cbd24
  321846:	48 8b 0d 13 46 0b 00 	mov    rcx,QWORD PTR [rip+0xb4613]        # 0x3d5e60
  32184d:	48 8d 15 cc 00 0d 00 	lea    rdx,[rip+0xd00cc]        # 0x3f1920
  321854:	48 83 c4 28          	add    rsp,0x28
  321858:	e9 bb c1 fb ff       	jmp    0x2dda18

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000032189c <.data+0x32189c>:
  32189c:	40 53                	rex push rbx
  32189e:	48 83 ec 20          	sub    rsp,0x20
  3218a2:	48 8b d9             	mov    rbx,rcx
  3218a5:	e8 2a f1 ff ff       	call   0x3209d4
  3218aa:	84 c0                	test   al,al
  3218ac:	74 0b                	je     0x3218b9
  3218ae:	48 8b d3             	mov    rdx,rbx
  3218b1:	48 8b cb             	mov    rcx,rbx
  3218b4:	e8 a7 ff ff ff       	call   0x321860
  3218b9:	48 8b c3             	mov    rax,rbx
  3218bc:	48 83 c4 20          	add    rsp,0x20
  3218c0:	5b                   	pop    rbx
  3218c1:	c3                   	ret

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003218c4 <.data+0x3218c4>:
  3218c4:	40 53                	rex push rbx
  3218c6:	48 83 ec 20          	sub    rsp,0x20
  3218ca:	8b 05 50 ff 0c 00    	mov    eax,DWORD PTR [rip+0xcff50]        # 0x3f1820
  3218d0:	48 8b d9             	mov    rbx,rcx
  3218d3:	a8 01                	test   al,0x1
  3218d5:	75 20                	jne    0x3218f7
  3218d7:	83 c8 01             	or     eax,0x1
  3218da:	89 05 40 ff 0c 00    	mov    DWORD PTR [rip+0xcff40],eax        # 0x3f1820
  3218e0:	e8 67 d5 fb ff       	call   0x2dee4c
  3218e5:	4c 8b c0             	mov    r8,rax
  3218e8:	48 89 05 29 ff 0c 00 	mov    QWORD PTR [rip+0xcff29],rax        # 0x3f1818
  3218ef:	8b 05 2b ff 0c 00    	mov    eax,DWORD PTR [rip+0xcff2b]        # 0x3f1820
  3218f5:	eb 07                	jmp    0x3218fe
  3218f7:	4c 8b 05 1a ff 0c 00 	mov    r8,QWORD PTR [rip+0xcff1a]        # 0x3f1818
  3218fe:	a8 02                	test   al,0x2
  321900:	75 1f                	jne    0x321921
  321902:	48 8b 0d 57 45 0b 00 	mov    rcx,QWORD PTR [rip+0xb4557]        # 0x3d5e60
  321909:	48 8d 15 20 ff 0c 00 	lea    rdx,[rip+0xcff20]        # 0x3f1830
  321910:	83 c8 02             	or     eax,0x2
  321913:	45 33 c9             	xor    r9d,r9d
  321916:	89 05 04 ff 0c 00    	mov    DWORD PTR [rip+0xcff04],eax        # 0x3f1820
  32191c:	e8 03 a4 fa ff       	call   0x2cbd24
  321921:	48 8b 0d 38 45 0b 00 	mov    rcx,QWORD PTR [rip+0xb4538]        # 0x3d5e60
  321928:	48 8d 15 01 ff 0c 00 	lea    rdx,[rip+0xcff01]        # 0x3f1830
  32192f:	4c 8b c3             	mov    r8,rbx
  321932:	48 83 c4 20          	add    rsp,0x20
  321936:	5b                   	pop    rbx
  321937:	e9 c0 a0 fa ff       	jmp    0x2cb9fc

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000036f5cc <.data+0x36f5cc>:
  36f5cc:	48 83 ec 28          	sub    rsp,0x28
  36f5d0:	b9 18 00 00 00       	mov    ecx,0x18
  36f5d5:	e8 ea ad 01 00       	call   0x38a3c4
  36f5da:	48 85 c0             	test   rax,rax
  36f5dd:	74 08                	je     0x36f5e7
  36f5df:	48 8b c8             	mov    rcx,rax
  36f5e2:	e8 71 51 f6 ff       	call   0x2d4758
  36f5e7:	48 89 05 0a 0a 09 00 	mov    QWORD PTR [rip+0x90a0a],rax        # 0x3ffff8
  36f5ee:	48 83 c4 28          	add    rsp,0x28
  36f5f2:	c3                   	ret

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000334bf4 <.data+0x334bf4>:
  334bf4:	40 55                	rex push rbp
  334bf6:	53                   	push   rbx
  334bf7:	56                   	push   rsi
  334bf8:	57                   	push   rdi
  334bf9:	41 54                	push   r12
  334bfb:	41 55                	push   r13
  334bfd:	41 56                	push   r14
  334bff:	41 57                	push   r15
  334c01:	48 8d 6c 24 f8       	lea    rbp,[rsp-0x8]
  334c06:	48 81 ec 08 01 00 00 	sub    rsp,0x108
  334c0d:	e8 8a fb ff ff       	call   0x33479c
  334c12:	48 8d 54 24 28       	lea    rdx,[rsp+0x28]
  334c17:	48 c7 44 24 28 00 00 	mov    QWORD PTR [rsp+0x28],0x0
  334c1e:	00 00 
  334c20:	48 8b c8             	mov    rcx,rax
  334c23:	e8 e4 fb ff ff       	call   0x33480c
  334c28:	45 33 f6             	xor    r14d,r14d
  334c2b:	4c 8b e8             	mov    r13,rax
  334c2e:	4c 39 74 24 28       	cmp    QWORD PTR [rsp+0x28],r14
  334c33:	0f 86 a5 03 00 00    	jbe    0x334fde
  334c39:	42 8d 0c f5 00 00 00 	lea    ecx,[r14*8+0x0]
  334c40:	00 
  334c41:	45 33 ff             	xor    r15d,r15d
  334c44:	48 63 d1             	movsxd rdx,ecx
  334c47:	4a 8b 0c 2a          	mov    rcx,QWORD PTR [rdx+r13*1]
  334c4b:	4c 8b 21             	mov    r12,QWORD PTR [rcx]
  334c4e:	49 8b cc             	mov    rcx,r12
  334c51:	e8 0a fb ff ff       	call   0x334760
  334c56:	48 85 c0             	test   rax,rax
  334c59:	0f 84 6e 03 00 00    	je     0x334fcd
  334c5f:	49 63 d7             	movsxd rdx,r15d
  334c62:	49 8b cc             	mov    rcx,r12
  334c65:	e8 ee fc ff ff       	call   0x334958
  334c6a:	48 8b f0             	mov    rsi,rax
  334c6d:	48 85 c0             	test   rax,rax
  334c70:	0f 84 40 03 00 00    	je     0x334fb6
  334c76:	48 8d 4d c8          	lea    rcx,[rbp-0x38]
  334c7a:	e8 e1 f8 f9 ff       	call   0x2d4560
  334c7f:	48 8b 56 18          	mov    rdx,QWORD PTR [rsi+0x18]
  334c83:	48 8b 5e 10          	mov    rbx,QWORD PTR [rsi+0x10]
  334c87:	48 85 d2             	test   rdx,rdx
  334c8a:	74 2f                	je     0x334cbb
  334c8c:	80 3a 00             	cmp    BYTE PTR [rdx],0x0
  334c8f:	74 2a                	je     0x334cbb
  334c91:	48 8d 4d c8          	lea    rcx,[rbp-0x38]
  334c95:	e8 6a 09 fa ff       	call   0x2d5604
  334c9a:	48 8d 55 68          	lea    rdx,[rbp+0x68]
  334c9e:	48 8d 4d 50          	lea    rcx,[rbp+0x50]
  334ca2:	e8 a5 ee ff ff       	call   0x333b4c
  334ca7:	48 8b c8             	mov    rcx,rax
  334caa:	e8 45 b7 fe ff       	call   0x3203f4
  334caf:	48 8b d0             	mov    rdx,rax
  334cb2:	48 8d 4d c8          	lea    rcx,[rbp-0x38]
  334cb6:	e8 49 09 fa ff       	call   0x2d5604
  334cbb:	48 8b d3             	mov    rdx,rbx
  334cbe:	48 8d 4d c8          	lea    rcx,[rbp-0x38]
  334cc2:	e8 3d 09 fa ff       	call   0x2d5604
  334cc7:	48 c7 44 24 50 00 00 	mov    QWORD PTR [rsp+0x50],0x0
  334cce:	00 00 
  334cd0:	e9 bf 02 00 00       	jmp    0x334f94
  334cd5:	48 8b cf             	mov    rcx,rdi
  334cd8:	e8 e3 05 00 00       	call   0x3352c0
  334cdd:	48 8d 54 24 78       	lea    rdx,[rsp+0x78]
  334ce2:	48 8b d8             	mov    rbx,rax
  334ce5:	48 8d 4d 50          	lea    rcx,[rbp+0x50]
  334ce9:	e8 a6 ee ff ff       	call   0x333b94
  334cee:	48 8b c8             	mov    rcx,rax
  334cf1:	e8 fe b6 fe ff       	call   0x3203f4
  334cf6:	4c 8b c0             	mov    r8,rax
  334cf9:	48 8d 55 c8          	lea    rdx,[rbp-0x38]
  334cfd:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  334d02:	e8 cd a2 f9 ff       	call   0x2cefd4
  334d07:	48 8b d0             	mov    rdx,rax
  334d0a:	48 8d 4d 80          	lea    rcx,[rbp-0x80]
  334d0e:	4c 8b c3             	mov    r8,rbx
  334d11:	e8 22 60 f9 ff       	call   0x2cad38
  334d16:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  334d1b:	e8 d4 77 f9 ff       	call   0x2cc4f4
  334d20:	48 8b cf             	mov    rcx,rdi
  334d23:	e8 a8 05 00 00       	call   0x3352d0
  334d28:	85 c0                	test   eax,eax
  334d2a:	0f 84 67 01 00 00    	je     0x334e97
  334d30:	48 8d 55 58          	lea    rdx,[rbp+0x58]
  334d34:	48 8d 4d 50          	lea    rcx,[rbp+0x50]
  334d38:	e8 a3 bb fb ff       	call   0x2f08e0
  334d3d:	48 8b c8             	mov    rcx,rax
  334d40:	e8 1f 37 fa ff       	call   0x2d8464
  334d45:	48 8b d0             	mov    rdx,rax
  334d48:	48 8d 4d 80          	lea    rcx,[rbp-0x80]
  334d4c:	e8 b3 08 fa ff       	call   0x2d5604
  334d51:	48 8b cf             	mov    rcx,rdi
  334d54:	33 db                	xor    ebx,ebx
  334d56:	e8 75 05 00 00       	call   0x3352d0
  334d5b:	85 c0                	test   eax,eax
  334d5d:	0f 84 b4 00 00 00    	je     0x334e17
  334d63:	8b d3                	mov    edx,ebx
  334d65:	48 8b cf             	mov    rcx,rdi
  334d68:	e8 e3 fb ff ff       	call   0x334950
  334d6d:	48 8b c8             	mov    rcx,rax
  334d70:	e8 53 05 00 00       	call   0x3352c8
  334d75:	48 8b d0             	mov    rdx,rax
  334d78:	48 8d 4d a0          	lea    rcx,[rbp-0x60]
  334d7c:	e8 4b 75 f9 ff       	call   0x2cc2cc
  334d81:	45 33 c0             	xor    r8d,r8d
  334d84:	48 8d 15 d9 00 f6 ff 	lea    rdx,[rip+0xfffffffffff600d9]        # 0x294e64
  334d8b:	48 8d 4d a0          	lea    rcx,[rbp-0x60]
  334d8f:	e8 74 fb ff ff       	call   0x334908
  334d94:	49 83 c9 ff          	or     r9,0xffffffffffffffff
  334d98:	48 8d 54 24 58       	lea    rdx,[rsp+0x58]
  334d9d:	48 8d 4d a0          	lea    rcx,[rbp-0x60]
  334da1:	4c 8d 40 01          	lea    r8,[rax+0x1]
  334da5:	e8 ee 46 fa ff       	call   0x2d9498
  334daa:	48 8b d0             	mov    rdx,rax
  334dad:	48 8d 4d a0          	lea    rcx,[rbp-0x60]
  334db1:	e8 2e fe f9 ff       	call   0x2d4be4
  334db6:	48 8d 4c 24 58       	lea    rcx,[rsp+0x58]
  334dbb:	e8 34 77 f9 ff       	call   0x2cc4f4
  334dc0:	48 8d 55 60          	lea    rdx,[rbp+0x60]
  334dc4:	48 8d 4d 50          	lea    rcx,[rbp+0x50]
  334dc8:	e8 0b 04 fa ff       	call   0x2d51d8
  334dcd:	48 8b c8             	mov    rcx,rax
  334dd0:	e8 8f 36 fa ff       	call   0x2d8464
  334dd5:	4c 8b c0             	mov    r8,rax
  334dd8:	48 8d 55 a0          	lea    rdx,[rbp-0x60]
  334ddc:	48 8d 4c 24 58       	lea    rcx,[rsp+0x58]
  334de1:	e8 ee a1 f9 ff       	call   0x2cefd4
  334de6:	48 8b d0             	mov    rdx,rax
  334de9:	48 8d 4d 80          	lea    rcx,[rbp-0x80]
  334ded:	e8 f2 07 fa ff       	call   0x2d55e4
  334df2:	48 8d 4c 24 58       	lea    rcx,[rsp+0x58]
  334df7:	e8 f8 76 f9 ff       	call   0x2cc4f4
  334dfc:	48 8d 4d a0          	lea    rcx,[rbp-0x60]
  334e00:	e8 ef 76 f9 ff       	call   0x2cc4f4
  334e05:	48 8b cf             	mov    rcx,rdi
  334e08:	ff c3                	inc    ebx
  334e0a:	e8 c1 04 00 00       	call   0x3352d0
  334e0f:	3b d8                	cmp    ebx,eax
  334e11:	0f 82 4c ff ff ff    	jb     0x334d63
  334e17:	48 8d 4d 80          	lea    rcx,[rbp-0x80]
  334e1b:	e8 d8 be fe ff       	call   0x320cf8
  334e20:	48 8b cf             	mov    rcx,rdi
  334e23:	e8 b0 04 00 00       	call   0x3352d8
  334e28:	48 8b c8             	mov    rcx,rax
  334e2b:	e8 98 04 00 00       	call   0x3352c8
  334e30:	48 8b d0             	mov    rdx,rax
  334e33:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  334e38:	e8 8f 74 f9 ff       	call   0x2cc2cc
  334e3d:	45 33 c0             	xor    r8d,r8d
  334e40:	48 8d 15 1d 00 f6 ff 	lea    rdx,[rip+0xfffffffffff6001d]        # 0x294e64
  334e47:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  334e4c:	e8 b7 fa ff ff       	call   0x334908
  334e51:	49 83 c9 ff          	or     r9,0xffffffffffffffff
  334e55:	48 8d 54 24 58       	lea    rdx,[rsp+0x58]
  334e5a:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  334e5f:	4c 8d 40 01          	lea    r8,[rax+0x1]
  334e63:	e8 30 46 fa ff       	call   0x2d9498
  334e68:	48 8b d0             	mov    rdx,rax
  334e6b:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  334e70:	e8 6f fd f9 ff       	call   0x2d4be4
  334e75:	48 8d 4c 24 58       	lea    rcx,[rsp+0x58]
  334e7a:	e8 75 76 f9 ff       	call   0x2cc4f4
  334e7f:	48 8d 54 24 7b       	lea    rdx,[rsp+0x7b]
  334e84:	48 8d 4d 50          	lea    rcx,[rbp+0x50]
  334e88:	e8 1f ed ff ff       	call   0x333bac
  334e8d:	48 8b c8             	mov    rcx,rax
  334e90:	e8 87 b5 fe ff       	call   0x32041c
  334e95:	eb 74                	jmp    0x334f0b
  334e97:	48 8b cf             	mov    rcx,rdi
  334e9a:	e8 39 04 00 00       	call   0x3352d8
  334e9f:	48 8b c8             	mov    rcx,rax
  334ea2:	e8 21 04 00 00       	call   0x3352c8
  334ea7:	48 8b d0             	mov    rdx,rax
  334eaa:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  334eaf:	e8 18 74 f9 ff       	call   0x2cc2cc
  334eb4:	45 33 c0             	xor    r8d,r8d
  334eb7:	48 8d 15 a6 ff f5 ff 	lea    rdx,[rip+0xfffffffffff5ffa6]        # 0x294e64
  334ebe:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  334ec3:	e8 40 fa ff ff       	call   0x334908
  334ec8:	49 83 c9 ff          	or     r9,0xffffffffffffffff
  334ecc:	48 8d 54 24 58       	lea    rdx,[rsp+0x58]
  334ed1:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  334ed6:	4c 8d 40 01          	lea    r8,[rax+0x1]
  334eda:	e8 b9 45 fa ff       	call   0x2d9498
  334edf:	48 8b d0             	mov    rdx,rax
  334ee2:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  334ee7:	e8 f8 fc f9 ff       	call   0x2d4be4
  334eec:	48 8d 4c 24 58       	lea    rcx,[rsp+0x58]
  334ef1:	e8 fe 75 f9 ff       	call   0x2cc4f4
  334ef6:	48 8d 55 c0          	lea    rdx,[rbp-0x40]
  334efa:	48 8d 4d 50          	lea    rcx,[rbp+0x50]
  334efe:	e8 b5 ec ff ff       	call   0x333bb8
  334f03:	48 8b c8             	mov    rcx,rax
  334f06:	e8 c1 8d f9 ff       	call   0x2cdccc
  334f0b:	4c 8d 44 24 30       	lea    r8,[rsp+0x30]
  334f10:	48 8b d0             	mov    rdx,rax
  334f13:	48 8d 4c 24 58       	lea    rcx,[rsp+0x58]
  334f18:	e8 f7 57 fb ff       	call   0x2ea714
  334f1d:	48 8b d0             	mov    rdx,rax
  334f20:	48 8d 4d 80          	lea    rcx,[rbp-0x80]
  334f24:	e8 bb 06 fa ff       	call   0x2d55e4
  334f29:	48 8d 4c 24 58       	lea    rcx,[rsp+0x58]
  334f2e:	e8 c1 75 f9 ff       	call   0x2cc4f4
  334f33:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  334f38:	e8 b7 75 f9 ff       	call   0x2cc4f4
  334f3d:	48 8d 4d 80          	lea    rcx,[rbp-0x80]
  334f41:	48 89 7d 50          	mov    QWORD PTR [rbp+0x50],rdi
  334f45:	e8 a2 88 f9 ff       	call   0x2cd7ec
  334f4a:	48 8b c8             	mov    rcx,rax
  334f4d:	48 8b d8             	mov    rbx,rax
  334f50:	e8 af 59 09 00       	call   0x3ca904
  334f55:	45 33 c0             	xor    r8d,r8d
  334f58:	8b d0                	mov    edx,eax
  334f5a:	48 8b cb             	mov    rcx,rbx
  334f5d:	e8 06 f8 ff ff       	call   0x334768
  334f62:	4c 8d 45 50          	lea    r8,[rbp+0x50]
  334f66:	89 44 24 20          	mov    DWORD PTR [rsp+0x20],eax
  334f6a:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  334f6f:	48 8d 4d e8          	lea    rcx,[rbp-0x18]
  334f73:	e8 18 ea ff ff       	call   0x333990
  334f78:	4c 8b c0             	mov    r8,rax
  334f7b:	48 8d 55 a0          	lea    rdx,[rbp-0x60]
  334f7f:	48 8d 0d c2 48 0c 00 	lea    rcx,[rip+0xc48c2]        # 0x3f9848
  334f86:	e8 d1 e9 ff ff       	call   0x33395c
  334f8b:	48 8d 4d 80          	lea    rcx,[rbp-0x80]
  334f8f:	e8 60 75 f9 ff       	call   0x2cc4f4
  334f94:	48 8d 54 24 50       	lea    rdx,[rsp+0x50]
  334f99:	48 8b ce             	mov    rcx,rsi
  334f9c:	e8 17 03 00 00       	call   0x3352b8
  334fa1:	48 8b f8             	mov    rdi,rax
  334fa4:	48 85 c0             	test   rax,rax
  334fa7:	0f 85 28 fd ff ff    	jne    0x334cd5
  334fad:	48 8d 4d c8          	lea    rcx,[rbp-0x38]
  334fb1:	e8 3e 75 f9 ff       	call   0x2cc4f4
  334fb6:	49 8b cc             	mov    rcx,r12
  334fb9:	41 ff c7             	inc    r15d
  334fbc:	e8 9f f7 ff ff       	call   0x334760
  334fc1:	49 63 cf             	movsxd rcx,r15d
  334fc4:	48 3b c8             	cmp    rcx,rax
  334fc7:	0f 82 92 fc ff ff    	jb     0x334c5f
  334fcd:	41 ff c6             	inc    r14d
  334fd0:	49 63 c6             	movsxd rax,r14d
  334fd3:	48 3b 44 24 28       	cmp    rax,QWORD PTR [rsp+0x28]
  334fd8:	0f 82 5b fc ff ff    	jb     0x334c39
  334fde:	48 81 c4 08 01 00 00 	add    rsp,0x108
  334fe5:	41 5f                	pop    r15
  334fe7:	41 5e                	pop    r14
  334fe9:	41 5d                	pop    r13
  334feb:	41 5c                	pop    r12
  334fed:	5f                   	pop    rdi
  334fee:	5e                   	pop    rsi
  334fef:	5b                   	pop    rbx
  334ff0:	5d                   	pop    rbp
  334ff1:	c3                   	ret
