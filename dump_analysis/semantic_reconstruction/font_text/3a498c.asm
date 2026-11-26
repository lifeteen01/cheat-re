
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a498c <.data+0x3a498c>:
  3a498c:	b8 02 00 00 00       	mov    eax,0x2
  3a4991:	c3                   	ret
  3a4992:	cc                   	int3
  3a4993:	cc                   	int3
  3a4994:	40 53                	rex push rbx
  3a4996:	56                   	push   rsi
  3a4997:	57                   	push   rdi
  3a4998:	41 56                	push   r14
  3a499a:	48 83 ec 28          	sub    rsp,0x28
  3a499e:	48 83 79 30 00       	cmp    QWORD PTR [rcx+0x30],0x0
  3a49a3:	49 8b f9             	mov    rdi,r9
  3a49a6:	49 8b f0             	mov    rsi,r8
  3a49a9:	4c 8b f2             	mov    r14,rdx
