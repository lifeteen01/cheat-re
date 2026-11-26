
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/2df708.bin:     file format binary


Disassembly of section .data:

00000000002df708 <.data>:
  2df708:	40 53                	rex push rbx
  2df70a:	48 83 ec 20          	sub    rsp,0x20
  2df70e:	f3 41 0f 10 58 08    	movss  xmm3,DWORD PTR [r8+0x8]
  2df714:	48 8b da             	mov    rbx,rdx
  2df717:	f3 41 0f 10 50 04    	movss  xmm2,DWORD PTR [r8+0x4]
  2df71d:	f3 41 0f 10 08       	movss  xmm1,DWORD PTR [r8]
  2df722:	f3 0f 58 59 08       	addss  xmm3,DWORD PTR [rcx+0x8]
  2df727:	f3 0f 58 51 04       	addss  xmm2,DWORD PTR [rcx+0x4]
  2df72c:	f3 0f 58 09          	addss  xmm1,DWORD PTR [rcx]
  2df730:	48 8b ca             	mov    rcx,rdx
  2df733:	e8 70 84 0e 00       	call   0x3c7ba8
  2df738:	48 8b c3             	mov    rax,rbx
  2df73b:	48 83 c4 20          	add    rsp,0x20
  2df73f:	5b                   	pop    rbx
  2df740:	c3                   	ret
