
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003ac1d8 <.data+0x3ac1d8>:
  3ac1d8:	80 39 31                                        	cmp    BYTE PTR [rcx],0x31
  3ac1db:	75 11                                           	jne    0x3ac1ee
  3ac1dd:	33 c0                                           	xor    eax,eax
  3ac1df:	38 41 01                                        	cmp    BYTE PTR [rcx+0x1],al
  3ac1e2:	75 4e                                           	jne    0x3ac232
  3ac1e4:	38 41 02                                        	cmp    BYTE PTR [rcx+0x2],al
  3ac1e7:	75 49                                           	jne    0x3ac232
  3ac1e9:	38 41 03                                        	cmp    BYTE PTR [rcx+0x3],al
  3ac1ec:	eb 42                                           	jmp    0x3ac230
  3ac1ee:	80 39 74                                        	cmp    BYTE PTR [rcx],0x74
  3ac1f1:	75 28                                           	jne    0x3ac21b
  3ac1f3:	80 79 01 79                                     	cmp    BYTE PTR [rcx+0x1],0x79
  3ac1f7:	75 0c                                           	jne    0x3ac205
  3ac1f9:	80 79 02 70                                     	cmp    BYTE PTR [rcx+0x2],0x70
  3ac1fd:	75 33                                           	jne    0x3ac232
  3ac1ff:	80 79 03 31                                     	cmp    BYTE PTR [rcx+0x3],0x31
  3ac203:	eb 2b                                           	jmp    0x3ac230
  3ac205:	80 79 01 72                                     	cmp    BYTE PTR [rcx+0x1],0x72
  3ac209:	75 27                                           	jne    0x3ac232
  3ac20b:	80 79 02 75                                     	cmp    BYTE PTR [rcx+0x2],0x75
  3ac20f:	75 21                                           	jne    0x3ac232
  3ac211:	33 c0                                           	xor    eax,eax
  3ac213:	80 79 03 65                                     	cmp    BYTE PTR [rcx+0x3],0x65
  3ac217:	0f 94 c0                                        	sete   al
  3ac21a:	c3                                              	ret
  3ac21b:	80 39 4f                                        	cmp    BYTE PTR [rcx],0x4f
  3ac21e:	75 15                                           	jne    0x3ac235
  3ac220:	80 79 01 54                                     	cmp    BYTE PTR [rcx+0x1],0x54
  3ac224:	75 0c                                           	jne    0x3ac232
  3ac226:	80 79 02 54                                     	cmp    BYTE PTR [rcx+0x2],0x54
  3ac22a:	75 06                                           	jne    0x3ac232
  3ac22c:	80 79 03 4f                                     	cmp    BYTE PTR [rcx+0x3],0x4f
  3ac230:	74 19                                           	je     0x3ac24b
  3ac232:	33 c0                                           	xor    eax,eax
  3ac234:	c3                                              	ret
  3ac235:	33 c0                                           	xor    eax,eax
  3ac237:	38 01                                           	cmp    BYTE PTR [rcx],al
  3ac239:	75 f7                                           	jne    0x3ac232
  3ac23b:	80 79 01 01                                     	cmp    BYTE PTR [rcx+0x1],0x1
  3ac23f:	75 f1                                           	jne    0x3ac232
  3ac241:	38 41 02                                        	cmp    BYTE PTR [rcx+0x2],al
  3ac244:	75 ec                                           	jne    0x3ac232
  3ac246:	38 41 03                                        	cmp    BYTE PTR [rcx+0x3],al
  3ac249:	75 e7                                           	jne    0x3ac232
  3ac24b:	b8 01 00 00 00                                  	mov    eax,0x1
  3ac250:	c3                                              	ret
  3ac251:	cc                                              	int3
  3ac252:	cc                                              	int3
  3ac253:	cc                                              	int3
