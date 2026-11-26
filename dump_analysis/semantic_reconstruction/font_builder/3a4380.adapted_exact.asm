
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a4380 <.data+0x3a4380>:
  3a4380:	40 53                                           	rex push rbx
  3a4382:	48 83 ec 20                                     	sub    rsp,0x20
  3a4386:	83 c2 1f                                        	add    edx,0x1f
  3a4389:	48 8b d9                                        	mov    rbx,rcx
  3a438c:	c1 fa 05                                        	sar    edx,0x5
  3a438f:	e8 5c 0b fc ff                                  	call   0x364ef0
  3a4394:	4c 63 03                                        	movsxd r8,DWORD PTR [rbx]
  3a4397:	33 d2                                           	xor    edx,edx
  3a4399:	48 8b 4b 08                                     	mov    rcx,QWORD PTR [rbx+0x8]
  3a439d:	49 c1 e0 02                                     	shl    r8,0x2
  3a43a1:	48 83 c4 20                                     	add    rsp,0x20
  3a43a5:	5b                                              	pop    rbx
  3a43a6:	e9 c5 49 02 00                                  	jmp    0x3c8d70
