
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/review_dependency_closure/root_review_2dda9c.bin:     file format binary


Disassembly of section .data:

00000000002dda9c <.data>:
  2dda9c:	48 83 ec 28          	sub    $0x28,%rsp
  2ddaa0:	8b 0d 6a 94 0f 00    	mov    0xf946a(%rip),%ecx        # 0x3d6f10
  2ddaa6:	f6 c1 01             	test   $0x1,%cl
  2ddaa9:	75 20                	jne    0x2ddacb
  2ddaab:	4c 8b 05 4e 94 0f 00 	mov    0xf944e(%rip),%r8        # 0x3d6f00
  2ddab2:	83 c9 01             	or     $0x1,%ecx
  2ddab5:	49 81 c0 90 8c 45 05 	add    $0x5458c90,%r8
  2ddabc:	89 0d 4e 94 0f 00    	mov    %ecx,0xf944e(%rip)        # 0x3d6f10
  2ddac2:	4c 89 05 3f 94 0f 00 	mov    %r8,0xf943f(%rip)        # 0x3d6f08
  2ddac9:	eb 07                	jmp    0x2ddad2
  2ddacb:	4c 8b 05 36 94 0f 00 	mov    0xf9436(%rip),%r8        # 0x3d6f08
  2ddad2:	f6 c1 02             	test   $0x2,%cl
  2ddad5:	75 1f                	jne    0x2ddaf6
  2ddad7:	83 c9 02             	or     $0x2,%ecx
  2ddada:	48 8d 15 3f 94 0f 00 	lea    0xf943f(%rip),%rdx        # 0x3d6f20
  2ddae1:	89 0d 29 94 0f 00    	mov    %ecx,0xf9429(%rip)        # 0x3d6f10
  2ddae7:	45 33 c9             	xor    %r9d,%r9d
  2ddaea:	48 8b 0d 6f 83 0f 00 	mov    0xf836f(%rip),%rcx        # 0x3d5e60
  2ddaf1:	e8 2e e2 fe ff       	call   0x2cbd24
  2ddaf6:	48 8b 0d 63 83 0f 00 	mov    0xf8363(%rip),%rcx        # 0x3d5e60
  2ddafd:	48 8d 15 1c 94 0f 00 	lea    0xf941c(%rip),%rdx        # 0x3d6f20
  2ddb04:	48 83 c4 28          	add    $0x28,%rsp
  2ddb08:	e9 0b ff ff ff       	jmp    0x2dda18
