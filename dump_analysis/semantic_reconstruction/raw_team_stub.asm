COMMAND: objdump -D -b binary -m i386:x86-64 -M intel -w --start-address=2937644 --stop-address=2937659 /home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002cd32c <.data+0x2cd32c>:
  2cd32c:	33 c0                	xor    eax,eax
  2cd32e:	c3                   	ret
  2cd32f:	cc                   	int3
  2cd330:	40 53                	rex push rbx
  2cd332:	48 83 ec 20          	sub    rsp,0x20
  2cd336:	48 ff 41 08          	inc    QWORD PTR [rcx+0x8]
  2cd33a:	4d               	mov    r9,r8
