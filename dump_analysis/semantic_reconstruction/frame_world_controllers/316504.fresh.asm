
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/316504.bin:     file format binary


Disassembly of section .data:

0000000000316504 <.data>:
  316504:	48 83 ec 28          	sub    rsp,0x28
  316508:	48 8b d1             	mov    rdx,rcx
  31650b:	e8 f8 49 fb ff       	call   0x2caf08
  316510:	84 c0                	test   al,al
  316512:	75 04                	jne    0x316518
  316514:	33 c0                	xor    eax,eax
  316516:	eb 04                	jmp    0x31651c
  316518:	48 8b 42 10          	mov    rax,QWORD PTR [rdx+0x10]
  31651c:	48 83 c4 28          	add    rsp,0x28
  316520:	c3                   	ret
