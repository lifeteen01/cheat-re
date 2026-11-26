
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039233c <.data+0x39233c>:
  39233c:	48 89 5c 24 10                                  	mov    QWORD PTR [rsp+0x10],rbx
  392341:	57                                              	push   rdi
  392342:	48 83 ec 20                                     	sub    rsp,0x20
  392346:	48 8b 05 db 37 07 00                            	mov    rax,QWORD PTR [rip+0x737db]        # 0x405b28
  39234d:	48 8b f9                                        	mov    rdi,rcx
  392350:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  392355:	48 8b 98 08 3f 00 00                            	mov    rbx,QWORD PTR [rax+0x3f08]
  39235c:	e8 23 00 00 00                                  	call   0x392384
  392361:	48 8b d0                                        	mov    rdx,rax
  392364:	4c 8d 83 00 01 00 00                            	lea    r8,[rbx+0x100]
  39236b:	48 8b cf                                        	mov    rcx,rdi
  39236e:	e8 71 44 fa ff                                  	call   0x3367e4
  392373:	48 8b 5c 24 38                                  	mov    rbx,QWORD PTR [rsp+0x38]
  392378:	48 8b c7                                        	mov    rax,rdi
  39237b:	48 83 c4 20                                     	add    rsp,0x20
  39237f:	5f                                              	pop    rdi
  392380:	c3                                              	ret
