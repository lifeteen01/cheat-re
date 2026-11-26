
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000390810 <.data+0x390810>:
  390810:	81 fa 00 10 00 00                               	cmp    edx,0x1000
  390816:	75 06                                           	jne    0x39081e
  390818:	b8 88 02 00 00                                  	mov    eax,0x288
  39081d:	c3                                              	ret
  39081e:	81 fa 00 20 00 00                               	cmp    edx,0x2000
  390824:	75 06                                           	jne    0x39082c
  390826:	b8 89 02 00 00                                  	mov    eax,0x289
  39082b:	c3                                              	ret
  39082c:	81 fa 00 40 00 00                               	cmp    edx,0x4000
  390832:	75 06                                           	jne    0x39083a
  390834:	b8 8a 02 00 00                                  	mov    eax,0x28a
  390839:	c3                                              	ret
  39083a:	81 fa 00 80 00 00                               	cmp    edx,0x8000
  390840:	75 06                                           	jne    0x390848
  390842:	b8 8b 02 00 00                                  	mov    eax,0x28b
  390847:	c3                                              	ret
  390848:	81 fa 00 08 00 00                               	cmp    edx,0x800
  39084e:	75 10                                           	jne    0x390860
  390850:	8a 41 79                                        	mov    al,BYTE PTR [rcx+0x79]
  390853:	f6 d8                                           	neg    al
  390855:	1b c0                                           	sbb    eax,eax
  390857:	83 e0 03                                        	and    eax,0x3
  39085a:	05 88 02 00 00                                  	add    eax,0x288
  39085f:	c3                                              	ret
  390860:	8b c2                                           	mov    eax,edx
  390862:	c3                                              	ret
