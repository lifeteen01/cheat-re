
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/3150ac.bin:     file format binary


Disassembly of section .data:

00000000003150ac <.data>:
  3150ac:	48 83 ec 28          	sub    rsp,0x28
  3150b0:	8b 0d ea b6 0d 00    	mov    ecx,DWORD PTR [rip+0xdb6ea]        # 0x3f07a0
  3150b6:	f6 c1 01             	test   cl,0x1
  3150b9:	75 20                	jne    0x3150db
  3150bb:	4c 8b 05 3e 1e 0c 00 	mov    r8,QWORD PTR [rip+0xc1e3e]        # 0x3d6f00
  3150c2:	83 c9 01             	or     ecx,0x1
  3150c5:	49 81 c0 c0 ae bf 02 	add    r8,0x2bfaec0
  3150cc:	89 0d ce b6 0d 00    	mov    DWORD PTR [rip+0xdb6ce],ecx        # 0x3f07a0
  3150d2:	4c 89 05 bf b6 0d 00 	mov    QWORD PTR [rip+0xdb6bf],r8        # 0x3f0798
  3150d9:	eb 07                	jmp    0x3150e2
  3150db:	4c 8b 05 b6 b6 0d 00 	mov    r8,QWORD PTR [rip+0xdb6b6]        # 0x3f0798
  3150e2:	f6 c1 02             	test   cl,0x2
  3150e5:	75 1f                	jne    0x315106
  3150e7:	83 c9 02             	or     ecx,0x2
  3150ea:	48 8d 15 bf b6 0d 00 	lea    rdx,[rip+0xdb6bf]        # 0x3f07b0
  3150f1:	89 0d a9 b6 0d 00    	mov    DWORD PTR [rip+0xdb6a9],ecx        # 0x3f07a0
  3150f7:	45 33 c9             	xor    r9d,r9d
  3150fa:	48 8b 0d 5f 0d 0c 00 	mov    rcx,QWORD PTR [rip+0xc0d5f]        # 0x3d5e60
  315101:	e8 1e 6c fb ff       	call   0x2cbd24
  315106:	48 8b 0d 53 0d 0c 00 	mov    rcx,QWORD PTR [rip+0xc0d53]        # 0x3d5e60
  31510d:	48 8d 15 9c b6 0d 00 	lea    rdx,[rip+0xdb69c]        # 0x3f07b0
  315114:	48 83 c4 28          	add    rsp,0x28
  315118:	e9 fb 88 fc ff       	jmp    0x2dda18
