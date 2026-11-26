
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2d7078.audit.bin:     file format binary


Disassembly of section .data:

00000000002d7078 <.data>:
  2d7078:	45 33 c9                                        	xor    r9d,r9d
  2d707b:	4d 85 c0                                        	test   r8,r8
  2d707e:	74 1e                                           	je     0x2d709e
  2d7080:	41 0f b6 04 11                                  	movzx  eax,BYTE PTR [r9+rdx*1]
  2d7085:	49 ba b3 01 00 00 00 01 00 00                   	movabs r10,0x100000001b3
  2d708f:	48 33 c8                                        	xor    rcx,rax
  2d7092:	49 ff c1                                        	inc    r9
  2d7095:	49 0f af ca                                     	imul   rcx,r10
  2d7099:	4d 3b c8                                        	cmp    r9,r8
  2d709c:	72 e2                                           	jb     0x2d7080
  2d709e:	48 8b c1                                        	mov    rax,rcx
  2d70a1:	c3                                              	ret
