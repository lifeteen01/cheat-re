
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/316524.bin:     file format binary


Disassembly of section .data:

0000000000316524 <.data>:
  316524:	48 83 ec 28          	sub    rsp,0x28
  316528:	48 8b d1             	mov    rdx,rcx
  31652b:	e8 d8 49 fb ff       	call   0x2caf08
  316530:	84 c0                	test   al,al
  316532:	75 04                	jne    0x316538
  316534:	33 c0                	xor    eax,eax
  316536:	eb 03                	jmp    0x31653b
  316538:	8b 42 18             	mov    eax,DWORD PTR [rdx+0x18]
  31653b:	48 83 c4 28          	add    rsp,0x28
  31653f:	c3                   	ret
