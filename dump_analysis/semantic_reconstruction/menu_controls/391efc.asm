
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000391efc <.data+0x391efc>:
  391efc:	40 53                                           	rex push rbx
  391efe:	55                                              	push   rbp
  391eff:	56                                              	push   rsi
  391f00:	57                                              	push   rdi
  391f01:	48 83 ec 28                                     	sub    rsp,0x28
  391f05:	48 8b 3d 1c 3c 07 00                            	mov    rdi,QWORD PTR [rip+0x73c1c]        # 0x405b28
  391f0c:	8b f2                                           	mov    esi,edx
  391f0e:	48 8b d9                                        	mov    rbx,rcx
  391f11:	f6 c2 02                                        	test   dl,0x2
  391f14:	74 46                                           	je     0x391f5c
  391f16:	48 39 8f e8 48 00 00                            	cmp    QWORD PTR [rdi+0x48e8],rcx
  391f1d:	74 3d                                           	je     0x391f5c
  391f1f:	e8 04 fa ff ff                                  	call   0x391928
  391f24:	48 85 c0                                        	test   rax,rax
  391f27:	74 33                                           	je     0x391f5c
  391f29:	48 85 db                                        	test   rbx,rbx
  391f2c:	0f 84 08 01 00 00                               	je     0x39203a
  391f32:	48 3b 9b 78 03 00 00                            	cmp    rbx,QWORD PTR [rbx+0x378]
  391f39:	0f 85 fb 00 00 00                               	jne    0x39203a
  391f3f:	f7 43 14 00 20 00 00                            	test   DWORD PTR [rbx+0x14],0x2000
  391f46:	0f 85 ee 00 00 00                               	jne    0x39203a
  391f4c:	48 8b d0                                        	mov    rdx,rax
  391f4f:	48 8b cb                                        	mov    rcx,rbx
  391f52:	e8 c9 d0 ff ff                                  	call   0x38f020
  391f57:	e9 de 00 00 00                                  	jmp    0x39203a
  391f5c:	40 f6 c6 01                                     	test   sil,0x1
  391f60:	74 10                                           	je     0x391f72
  391f62:	48 85 db                                        	test   rbx,rbx
  391f65:	74 0b                                           	je     0x391f72
  391f67:	48 8b cb                                        	mov    rcx,rbx
  391f6a:	e8 89 3d 00 00                                  	call   0x395cf8
  391f6f:	48 8b d8                                        	mov    rbx,rax
  391f72:	48 39 9f e8 48 00 00                            	cmp    QWORD PTR [rdi+0x48e8],rbx
  391f79:	74 5d                                           	je     0x391fd8
  391f7b:	48 8b cb                                        	mov    rcx,rbx
  391f7e:	e8 55 97 00 00                                  	call   0x39b6d8
  391f83:	48 85 db                                        	test   rbx,rbx
  391f86:	74 18                                           	je     0x391fa0
  391f88:	80 bf 27 49 00 00 00                            	cmp    BYTE PTR [rdi+0x4927],0x0
  391f8f:	74 07                                           	je     0x391f98
  391f91:	c6 87 25 49 00 00 01                            	mov    BYTE PTR [rdi+0x4925],0x1
  391f98:	8b 83 a0 03 00 00                               	mov    eax,DWORD PTR [rbx+0x3a0]
  391f9e:	eb 02                                           	jmp    0x391fa2
  391fa0:	33 c0                                           	xor    eax,eax
  391fa2:	89 87 f0 48 00 00                               	mov    DWORD PTR [rdi+0x48f0],eax
  391fa8:	c7 87 20 49 00 00 00 00 00 00                   	mov    DWORD PTR [rdi+0x4920],0x0
  391fb2:	48 85 db                                        	test   rbx,rbx
  391fb5:	74 08                                           	je     0x391fbf
  391fb7:	8b 83 c8 03 00 00                               	mov    eax,DWORD PTR [rbx+0x3c8]
  391fbd:	eb 02                                           	jmp    0x391fc1
  391fbf:	33 c0                                           	xor    eax,eax
  391fc1:	33 d2                                           	xor    edx,edx
  391fc3:	89 87 f4 48 00 00                               	mov    DWORD PTR [rdi+0x48f4],eax
  391fc9:	48 8b cb                                        	mov    rcx,rbx
  391fcc:	c6 87 24 49 00 00 00                            	mov    BYTE PTR [rdi+0x4924],0x0
  391fd3:	e8 f0 e3 ff ff                                  	call   0x3903c8
  391fd8:	48 85 db                                        	test   rbx,rbx
  391fdb:	74 0c                                           	je     0x391fe9
  391fdd:	48 8b b3 78 03 00 00                            	mov    rsi,QWORD PTR [rbx+0x378]
  391fe4:	48 8b ee                                        	mov    rbp,rsi
  391fe7:	eb 04                                           	jmp    0x391fed
  391fe9:	33 f6                                           	xor    esi,esi
  391feb:	33 ed                                           	xor    ebp,ebp
  391fed:	83 bf 68 3f 00 00 00                            	cmp    DWORD PTR [rdi+0x3f68],0x0
  391ff4:	74 23                                           	je     0x392019
  391ff6:	48 8b 87 88 3f 00 00                            	mov    rax,QWORD PTR [rdi+0x3f88]
  391ffd:	48 85 c0                                        	test   rax,rax
  392000:	74 17                                           	je     0x392019
  392002:	48 39 a8 78 03 00 00                            	cmp    QWORD PTR [rax+0x378],rbp
  392009:	74 0e                                           	je     0x392019
  39200b:	80 bf 76 3f 00 00 00                            	cmp    BYTE PTR [rdi+0x3f76],0x0
  392012:	75 05                                           	jne    0x392019
  392014:	e8 5f e0 ff ff                                  	call   0x390078
  392019:	48 85 db                                        	test   rbx,rbx
  39201c:	74 1c                                           	je     0x39203a
  39201e:	48 8b cd                                        	mov    rcx,rbp
  392021:	e8 3a d1 ff ff                                  	call   0x38f160
  392026:	8b 46 14                                        	mov    eax,DWORD PTR [rsi+0x14]
  392029:	0b 43 14                                        	or     eax,DWORD PTR [rbx+0x14]
  39202c:	0f ba e0 0d                                     	bt     eax,0xd
  392030:	72 08                                           	jb     0x39203a
  392032:	48 8b ce                                        	mov    rcx,rsi
  392035:	e8 82 d0 ff ff                                  	call   0x38f0bc
  39203a:	48 83 c4 28                                     	add    rsp,0x28
  39203e:	5f                                              	pop    rdi
  39203f:	5e                                              	pop    rsi
  392040:	5d                                              	pop    rbp
  392041:	5b                                              	pop    rbx
  392042:	c3                                              	ret
