
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000315c34 <.data+0x315c34>:
  315c34:	40 55                	rex push rbp
  315c36:	53                   	push   rbx
  315c37:	56                   	push   rsi
  315c38:	57                   	push   rdi
  315c39:	41 56                	push   r14
  315c3b:	41 57                	push   r15
  315c3d:	48 8d 6c 24 f8       	lea    rbp,[rsp-0x8]
  315c42:	48 81 ec 08 01 00 00 	sub    rsp,0x108
  315c49:	e8 7e 99 05 00       	call   0x36f5cc
  315c4e:	48 8d 4c 24 48       	lea    rcx,[rsp+0x48]
  315c53:	e8 08 e9 fb ff       	call   0x2d4560
  315c58:	ba 04 00 00 00       	mov    edx,0x4
  315c5d:	48 8d 4c 24 48       	lea    rcx,[rsp+0x48]
  315c62:	e8 85 36 fc ff       	call   0x2d92ec
  315c67:	33 db                	xor    ebx,ebx
  315c69:	48 8d 15 c0 47 f2 ff 	lea    rdx,[rip+0xfffffffffff247c0]        # 0x23a430
  315c70:	8a 14 1a             	mov    dl,BYTE PTR [rdx+rbx*1]
  315c73:	48 8d 4c 24 48       	lea    rcx,[rsp+0x48]
  315c78:	80 fa 0a             	cmp    dl,0xa
  315c7b:	75 4f                	jne    0x315ccc
  315c7d:	e8 12 2a fc ff       	call   0x2d8694
  315c82:	84 c0                	test   al,al
  315c84:	75 19                	jne    0x315c9f
  315c86:	48 8d 4c 24 48       	lea    rcx,[rsp+0x48]
  315c8b:	e8 9c 4c 00 00       	call   0x31a92c
  315c90:	80 38 0d             	cmp    BYTE PTR [rax],0xd
  315c93:	75 0a                	jne    0x315c9f
  315c95:	48 8d 4c 24 48       	lea    rcx,[rsp+0x48]
  315c9a:	e8 59 b0 00 00       	call   0x320cf8
  315c9f:	48 8d 4c 24 48       	lea    rcx,[rsp+0x48]
  315ca4:	e8 2f 2e fc ff       	call   0x2d8ad8
  315ca9:	48 83 f8 04          	cmp    rax,0x4
  315cad:	75 11                	jne    0x315cc0
  315caf:	48 8d 54 24 48       	lea    rdx,[rsp+0x48]
  315cb4:	48 8d 0d cd 2b f0 ff 	lea    rcx,[rip+0xfffffffffff02bcd]        # 0x218888
  315cbb:	e8 5c 33 fc ff       	call   0x2d901c
  315cc0:	48 8d 4c 24 48       	lea    rcx,[rsp+0x48]
  315cc5:	e8 aa 22 fc ff       	call   0x2d7f74
  315cca:	eb 05                	jmp    0x315cd1
  315ccc:	e8 a3 32 fc ff       	call   0x2d8f74
  315cd1:	48 ff c3             	inc    rbx
  315cd4:	48 81 fb 5e ea 00 00 	cmp    rbx,0xea5e
  315cdb:	72 8c                	jb     0x315c69
  315cdd:	48 8d 4c 24 48       	lea    rcx,[rsp+0x48]
  315ce2:	e8 ad 29 fc ff       	call   0x2d8694
  315ce7:	84 c0                	test   al,al
  315ce9:	75 3a                	jne    0x315d25
  315ceb:	48 8d 4c 24 48       	lea    rcx,[rsp+0x48]
  315cf0:	e8 37 4c 00 00       	call   0x31a92c
  315cf5:	80 38 0d             	cmp    BYTE PTR [rax],0xd
  315cf8:	75 0a                	jne    0x315d04
  315cfa:	48 8d 4c 24 48       	lea    rcx,[rsp+0x48]
  315cff:	e8 f4 af 00 00       	call   0x320cf8
  315d04:	48 8d 4c 24 48       	lea    rcx,[rsp+0x48]
  315d09:	e8 ca 2d fc ff       	call   0x2d8ad8
  315d0e:	48 83 f8 04          	cmp    rax,0x4
  315d12:	75 11                	jne    0x315d25
  315d14:	48 8d 54 24 48       	lea    rdx,[rsp+0x48]
  315d19:	48 8d 0d 68 2b f0 ff 	lea    rcx,[rip+0xfffffffffff02b68]        # 0x218888
  315d20:	e8 f7 32 fc ff       	call   0x2d901c
  315d25:	48 8d 55 40          	lea    rdx,[rbp+0x40]
  315d29:	48 8d 4d 40          	lea    rcx,[rbp+0x40]
  315d2d:	e8 fe 69 fb ff       	call   0x2cc730
  315d32:	48 8b c8             	mov    rcx,rax
  315d35:	e8 6a 7f fb ff       	call   0x2cdca4
  315d3a:	48 8d 55 50          	lea    rdx,[rbp+0x50]
  315d3e:	48 8b f8             	mov    rdi,rax
  315d41:	48 8d 4d 48          	lea    rcx,[rbp+0x48]
  315d45:	e8 ba d9 fd ff       	call   0x2f3704
  315d4a:	48 8b c8             	mov    rcx,rax
  315d4d:	e8 a2 7f fb ff       	call   0x2cdcf4
  315d52:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  315d57:	48 8b d8             	mov    rbx,rax
  315d5a:	48 8d 4d 48          	lea    rcx,[rbp+0x48]
  315d5e:	e8 ed c4 fd ff       	call   0x2f2250
  315d63:	48 8b c8             	mov    rcx,rax
  315d66:	e8 e9 3e fd ff       	call   0x2e9c54
  315d6b:	48 8b d0             	mov    rdx,rax
  315d6e:	48 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],rdi
  315d73:	4c 8d 0d 96 50 01 00 	lea    r9,[rip+0x15096]        # 0x32ae10
  315d7a:	4c 8b c3             	mov    r8,rbx
  315d7d:	48 8d 0d ac ab 0d 00 	lea    rcx,[rip+0xdabac]        # 0x3f0930
  315d84:	e8 83 4b fd ff       	call   0x2ea90c
  315d89:	48 8d 55 40          	lea    rdx,[rbp+0x40]
  315d8d:	48 8d 4d 40          	lea    rcx,[rbp+0x40]
  315d91:	e8 9a 69 fb ff       	call   0x2cc730
  315d96:	48 8b c8             	mov    rcx,rax
  315d99:	e8 06 7f fb ff       	call   0x2cdca4
  315d9e:	48 8d 55 50          	lea    rdx,[rbp+0x50]
  315da2:	48 8b f8             	mov    rdi,rax
  315da5:	48 8d 4d 48          	lea    rcx,[rbp+0x48]
  315da9:	e8 1a ec fd ff       	call   0x2f49c8
  315dae:	48 8b c8             	mov    rcx,rax
  315db1:	e8 3e 7f fb ff       	call   0x2cdcf4
  315db6:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  315dbb:	48 8b d8             	mov    rbx,rax
  315dbe:	48 8d 4d 48          	lea    rcx,[rbp+0x48]
  315dc2:	e8 c9 e4 fd ff       	call   0x2f4290
  315dc7:	48 8b c8             	mov    rcx,rax
  315dca:	e8 25 28 fc ff       	call   0x2d85f4
  315dcf:	48 8b d0             	mov    rdx,rax
  315dd2:	48 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],rdi
  315dd7:	4c 8d 0d 76 c7 01 00 	lea    r9,[rip+0x1c776]        # 0x332554
  315dde:	4c 8b c3             	mov    r8,rbx
  315de1:	48 8d 0d e0 09 0d 00 	lea    rcx,[rip+0xd09e0]        # 0x3e67c8
  315de8:	e8 1f 4b fd ff       	call   0x2ea90c
  315ded:	48 8d 55 40          	lea    rdx,[rbp+0x40]
  315df1:	48 8d 4d 40          	lea    rcx,[rbp+0x40]
  315df5:	e8 36 69 fb ff       	call   0x2cc730
  315dfa:	48 8b c8             	mov    rcx,rax
  315dfd:	e8 a2 7e fb ff       	call   0x2cdca4
  315e02:	48 8d 55 50          	lea    rdx,[rbp+0x50]
  315e06:	48 8b f8             	mov    rdi,rax
  315e09:	48 8d 4d 48          	lea    rcx,[rbp+0x48]
  315e0d:	e8 d6 01 fe ff       	call   0x2f5fe8
  315e12:	48 8b c8             	mov    rcx,rax
  315e15:	e8 da 7e fb ff       	call   0x2cdcf4
  315e1a:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  315e1f:	48 8b d8             	mov    rbx,rax
  315e22:	48 8d 4d 48          	lea    rcx,[rbp+0x48]
  315e26:	e8 d1 f3 fd ff       	call   0x2f51fc
  315e2b:	48 8b c8             	mov    rcx,rax
  315e2e:	e8 c1 27 fc ff       	call   0x2d85f4
  315e33:	48 8b d0             	mov    rdx,rax
  315e36:	48 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],rdi
  315e3b:	4c 8d 0d f6 91 01 00 	lea    r9,[rip+0x191f6]        # 0x32f038
  315e42:	4c 8b c3             	mov    r8,rbx
  315e45:	48 8d 0d b4 09 0d 00 	lea    rcx,[rip+0xd09b4]        # 0x3e6800
  315e4c:	e8 bb 4a fd ff       	call   0x2ea90c
  315e51:	48 8d 55 40          	lea    rdx,[rbp+0x40]
  315e55:	48 8d 4d 40          	lea    rcx,[rbp+0x40]
  315e59:	e8 d2 68 fb ff       	call   0x2cc730
  315e5e:	48 8b c8             	mov    rcx,rax
  315e61:	e8 3e 7e fb ff       	call   0x2cdca4
  315e66:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  315e6b:	48 8b f8             	mov    rdi,rax
  315e6e:	48 8d 4d 48          	lea    rcx,[rbp+0x48]
  315e72:	e8 4d 14 fe ff       	call   0x2f72c4
  315e77:	48 8b c8             	mov    rcx,rax
  315e7a:	e8 d5 3d fd ff       	call   0x2e9c54
  315e7f:	48 8b d8             	mov    rbx,rax
  315e82:	48 8d 55 50          	lea    rdx,[rbp+0x50]
  315e86:	48 8d 4d 48          	lea    rcx,[rbp+0x48]
  315e8a:	e8 ed 0c fe ff       	call   0x2f6b7c
  315e8f:	48 8b c8             	mov    rcx,rax
  315e92:	e8 7d d7 fc ff       	call   0x2e3614
  315e97:	48 8b d0             	mov    rdx,rax
  315e9a:	48 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],rdi
  315e9f:	4c 8d 0d 62 95 01 00 	lea    r9,[rip+0x19562]        # 0x32f408
  315ea6:	4c 8b c3             	mov    r8,rbx
  315ea9:	48 8d 0d 88 09 0d 00 	lea    rcx,[rip+0xd0988]        # 0x3e6838
  315eb0:	e8 57 4a fd ff       	call   0x2ea90c
  315eb5:	48 8d 55 40          	lea    rdx,[rbp+0x40]
  315eb9:	48 8d 4d 40          	lea    rcx,[rbp+0x40]
  315ebd:	e8 6e 68 fb ff       	call   0x2cc730
  315ec2:	48 8b c8             	mov    rcx,rax
  315ec5:	e8 da 7d fb ff       	call   0x2cdca4
  315eca:	48 8d 54 24 75       	lea    rdx,[rsp+0x75]
  315ecf:	48 8b f8             	mov    rdi,rax
  315ed2:	48 8d 4d 48          	lea    rcx,[rbp+0x48]
  315ed6:	e8 29 a4 fd ff       	call   0x2f0304
  315edb:	48 8b c8             	mov    rcx,rax
  315ede:	e8 21 d8 fc ff       	call   0x2e3704
  315ee3:	48 8d 54 24 68       	lea    rdx,[rsp+0x68]
  315ee8:	48 8b d8             	mov    rbx,rax
  315eeb:	48 8d 4d 48          	lea    rcx,[rbp+0x48]
  315eef:	e8 dc 1d fe ff       	call   0x2f7cd0
  315ef4:	48 8b c8             	mov    rcx,rax
  315ef7:	e8 90 3c fd ff       	call   0x2e9b8c
  315efc:	41 83 cf ff          	or     r15d,0xffffffff
  315f00:	4c 8d 0d c5 b6 00 00 	lea    r9,[rip+0xb6c5]        # 0x3215cc
  315f07:	44 89 7c 24 28       	mov    DWORD PTR [rsp+0x28],r15d
  315f0c:	48 8d 0d 5d 09 0d 00 	lea    rcx,[rip+0xd095d]        # 0x3e6870
  315f13:	48 8b d0             	mov    rdx,rax
  315f16:	48 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],rdi
  315f1b:	4c 8b c3             	mov    r8,rbx
  315f1e:	e8 55 4a fd ff       	call   0x2ea978
  315f23:	48 8d 55 40          	lea    rdx,[rbp+0x40]
  315f27:	48 8d 4d 40          	lea    rcx,[rbp+0x40]
  315f2b:	e8 00 68 fb ff       	call   0x2cc730
  315f30:	48 8b c8             	mov    rcx,rax
  315f33:	e8 6c 7d fb ff       	call   0x2cdca4
  315f38:	48 8d 54 24 75       	lea    rdx,[rsp+0x75]
  315f3d:	48 8b f8             	mov    rdi,rax
  315f40:	48 8d 4d 48          	lea    rcx,[rbp+0x48]
  315f44:	e8 27 ac fd ff       	call   0x2f0b70
  315f49:	48 8b c8             	mov    rcx,rax
  315f4c:	e8 b3 d7 fc ff       	call   0x2e3704
  315f51:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  315f56:	48 8b d8             	mov    rbx,rax
  315f59:	48 8d 4d 48          	lea    rcx,[rbp+0x48]
  315f5d:	e8 06 a9 fd ff       	call   0x2f0868
  315f62:	48 8b c8             	mov    rcx,rax
  315f65:	e8 2a 7e fb ff       	call   0x2cdd94
  315f6a:	48 8b d0             	mov    rdx,rax
  315f6d:	44 89 7c 24 28       	mov    DWORD PTR [rsp+0x28],r15d
  315f72:	4c 8d 0d 7f 4a 01 00 	lea    r9,[rip+0x14a7f]        # 0x32a9f8
  315f79:	48 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],rdi
  315f7e:	4c 8b c3             	mov    r8,rbx
  315f81:	48 8d 0d 38 a9 0d 00 	lea    rcx,[rip+0xda938]        # 0x3f08c0
  315f88:	e8 eb 49 fd ff       	call   0x2ea978
  315f8d:	48 8d 55 40          	lea    rdx,[rbp+0x40]
  315f91:	48 8d 4d 40          	lea    rcx,[rbp+0x40]
  315f95:	e8 96 67 fb ff       	call   0x2cc730
  315f9a:	48 8b c8             	mov    rcx,rax
  315f9d:	e8 02 7d fb ff       	call   0x2cdca4
  315fa2:	48 8d 54 24 75       	lea    rdx,[rsp+0x75]
  315fa7:	48 8b f8             	mov    rdi,rax
  315faa:	48 8d 4d 48          	lea    rcx,[rbp+0x48]
  315fae:	e8 b9 b1 fd ff       	call   0x2f116c
  315fb3:	48 8b c8             	mov    rcx,rax
  315fb6:	e8 49 d7 fc ff       	call   0x2e3704
  315fbb:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  315fc0:	48 8b d8             	mov    rbx,rax
  315fc3:	48 8d 4d 48          	lea    rcx,[rbp+0x48]
  315fc7:	e8 5c ae fd ff       	call   0x2f0e28
  315fcc:	48 8b c8             	mov    rcx,rax
  315fcf:	e8 c0 7d fb ff       	call   0x2cdd94
  315fd4:	44 89 7c 24 28       	mov    DWORD PTR [rsp+0x28],r15d
  315fd9:	4c 8d 0d 50 eb 00 00 	lea    r9,[rip+0xeb50]        # 0x324b30
  315fe0:	48 8b d0             	mov    rdx,rax
  315fe3:	48 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],rdi
  315fe8:	4c 8b c3             	mov    r8,rbx
  315feb:	48 8d 0d b6 08 0d 00 	lea    rcx,[rip+0xd08b6]        # 0x3e68a8
  315ff2:	e8 81 49 fd ff       	call   0x2ea978
  315ff7:	48 8d 55 40          	lea    rdx,[rbp+0x40]
  315ffb:	48 8d 4d 40          	lea    rcx,[rbp+0x40]
  315fff:	e8 2c 67 fb ff       	call   0x2cc730
  316004:	48 8b c8             	mov    rcx,rax
  316007:	e8 98 7c fb ff       	call   0x2cdca4
  31600c:	48 8d 54 24 75       	lea    rdx,[rsp+0x75]
  316011:	48 8b f8             	mov    rdi,rax
  316014:	48 8d 4d 48          	lea    rcx,[rbp+0x48]
  316018:	e8 1f b8 fd ff       	call   0x2f183c
  31601d:	48 8b c8             	mov    rcx,rax
  316020:	e8 df d6 fc ff       	call   0x2e3704
  316025:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  31602a:	48 8b d8             	mov    rbx,rax
  31602d:	48 8d 4d 48          	lea    rcx,[rbp+0x48]
  316031:	e8 c6 b4 fd ff       	call   0x2f14fc
  316036:	48 8b c8             	mov    rcx,rax
  316039:	e8 56 7d fb ff       	call   0x2cdd94
  31603e:	48 8b d0             	mov    rdx,rax
  316041:	44 89 7c 24 28       	mov    DWORD PTR [rsp+0x28],r15d
  316046:	4c 8d 0d 9f ca 00 00 	lea    r9,[rip+0xca9f]        # 0x322aec
  31604d:	48 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],rdi
  316052:	4c 8b c3             	mov    r8,rbx
  316055:	48 8d 0d 9c a8 0d 00 	lea    rcx,[rip+0xda89c]        # 0x3f08f8
  31605c:	e8 17 49 fd ff       	call   0x2ea978
  316061:	48 8d 55 40          	lea    rdx,[rbp+0x40]
  316065:	48 8d 4d 40          	lea    rcx,[rbp+0x40]
  316069:	e8 c2 66 fb ff       	call   0x2cc730
  31606e:	48 8b c8             	mov    rcx,rax
  316071:	e8 2e 7c fb ff       	call   0x2cdca4
  316076:	48 8d 54 24 75       	lea    rdx,[rsp+0x75]
  31607b:	48 8b d8             	mov    rbx,rax
  31607e:	48 8d 4d 48          	lea    rcx,[rbp+0x48]
  316082:	e8 45 ba fd ff       	call   0x2f1acc
  316087:	48 8b c8             	mov    rcx,rax
  31608a:	e8 75 d6 fc ff       	call   0x2e3704
  31608f:	48 8b d0             	mov    rdx,rax
  316092:	44 89 7c 24 20       	mov    DWORD PTR [rsp+0x20],r15d
  316097:	4c 8b cb             	mov    r9,rbx
  31609a:	4c 8d 05 47 6a 01 00 	lea    r8,[rip+0x16a47]        # 0x32cae8
  3160a1:	48 8d 0d 70 08 0d 00 	lea    rcx,[rip+0xd0870]        # 0x3e6918
  3160a8:	e8 7b 49 fd ff       	call   0x2eaa28
  3160ad:	48 8d 55 40          	lea    rdx,[rbp+0x40]
  3160b1:	48 8d 4d 40          	lea    rcx,[rbp+0x40]
  3160b5:	e8 76 66 fb ff       	call   0x2cc730
  3160ba:	48 8b c8             	mov    rcx,rax
  3160bd:	e8 e2 7b fb ff       	call   0x2cdca4
  3160c2:	48 8d 54 24 75       	lea    rdx,[rsp+0x75]
  3160c7:	48 8b d8             	mov    rbx,rax
  3160ca:	48 8d 4d 48          	lea    rcx,[rbp+0x48]
  3160ce:	e8 f5 bb fd ff       	call   0x2f1cc8
  3160d3:	48 8b c8             	mov    rcx,rax
  3160d6:	e8 29 d6 fc ff       	call   0x2e3704
  3160db:	48 8b d0             	mov    rdx,rax
  3160de:	44 89 7c 24 20       	mov    DWORD PTR [rsp+0x20],r15d
  3160e3:	4c 8b cb             	mov    r9,rbx
  3160e6:	4c 8d 05 3f 55 01 00 	lea    r8,[rip+0x1553f]        # 0x32b62c
  3160ed:	48 8d 0d ec 07 0d 00 	lea    rcx,[rip+0xd07ec]        # 0x3e68e0
  3160f4:	e8 2f 49 fd ff       	call   0x2eaa28
  3160f9:	48 8d 55 40          	lea    rdx,[rbp+0x40]
  3160fd:	48 8d 4d 40          	lea    rcx,[rbp+0x40]
  316101:	e8 2a 66 fb ff       	call   0x2cc730
  316106:	48 8b c8             	mov    rcx,rax
  316109:	e8 96 7b fb ff       	call   0x2cdca4
  31610e:	48 8b 3d eb 0d 0c 00 	mov    rdi,QWORD PTR [rip+0xc0deb]        # 0x3d6f00
  316115:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  31611a:	48 8d 4d 48          	lea    rcx,[rbp+0x48]
  31611e:	48 8b d8             	mov    rbx,rax
  316121:	e8 52 bd fd ff       	call   0x2f1e78
  316126:	48 8b c8             	mov    rcx,rax
  316129:	e8 26 3b fd ff       	call   0x2e9c54
  31612e:	48 8b d0             	mov    rdx,rax
  316131:	48 89 5c 24 20       	mov    QWORD PTR [rsp+0x20],rbx
  316136:	4c 8d 0d bf 30 fd ff 	lea    r9,[rip+0xfffffffffffd30bf]        # 0x2e91fc
  31613d:	4c 8d 87 e0 64 f4 03 	lea    r8,[rdi+0x3f464e0]
  316144:	48 8d 0d 9d ec 0c 00 	lea    rcx,[rip+0xcec9d]        # 0x3e4de8
  31614b:	e8 88 02 00 00       	call   0x3163d8
  316150:	48 8d 55 40          	lea    rdx,[rbp+0x40]
  316154:	48 8d 4d 40          	lea    rcx,[rbp+0x40]
  316158:	e8 d3 65 fb ff       	call   0x2cc730
  31615d:	48 8b c8             	mov    rcx,rax
  316160:	e8 3f 7b fb ff       	call   0x2cdca4
  316165:	48 8d 55 48          	lea    rdx,[rbp+0x48]
  316169:	4c 8b f0             	mov    r14,rax
  31616c:	48 8d 4d 50          	lea    rcx,[rbp+0x50]
  316170:	e8 bb 65 fb ff       	call   0x2cc730
  316175:	48 8b c8             	mov    rcx,rax
  316178:	e8 27 7b fb ff       	call   0x2cdca4
  31617d:	48 8d 54 24 75       	lea    rdx,[rsp+0x75]
  316182:	48 8b f0             	mov    rsi,rax
  316185:	48 8d 4d 50          	lea    rcx,[rbp+0x50]
  316189:	e8 4a c6 fd ff       	call   0x2f27d8
  31618e:	48 8b c8             	mov    rcx,rax
  316191:	e8 6e d5 fc ff       	call   0x2e3704
  316196:	48 8d 55 58          	lea    rdx,[rbp+0x58]
  31619a:	48 8b f8             	mov    rdi,rax
  31619d:	48 8d 4d 50          	lea    rcx,[rbp+0x50]
  3161a1:	e8 8a 65 fb ff       	call   0x2cc730
  3161a6:	48 8b c8             	mov    rcx,rax
  3161a9:	e8 f6 7a fb ff       	call   0x2cdca4
  3161ae:	48 8d 54 24 68       	lea    rdx,[rsp+0x68]
  3161b3:	48 8b d8             	mov    rbx,rax
  3161b6:	48 8d 4d 50          	lea    rcx,[rbp+0x50]
  3161ba:	e8 b5 c4 fd ff       	call   0x2f2674
  3161bf:	48 8b c8             	mov    rcx,rax
  3161c2:	e8 7d 7b fb ff       	call   0x2cdd44
  3161c7:	48 8b c8             	mov    rcx,rax
  3161ca:	48 8b d3             	mov    rdx,rbx
  3161cd:	e8 52 e0 01 00       	call   0x334224
  3161d2:	48 8b c8             	mov    rcx,rax
  3161d5:	44 89 7c 24 20       	mov    DWORD PTR [rsp+0x20],r15d
  3161da:	4c 8b ce             	mov    r9,rsi
  3161dd:	45 8b c7             	mov    r8d,r15d
  3161e0:	48 8b d7             	mov    rdx,rdi
  3161e3:	e8 c4 e7 01 00       	call   0x3349ac
  3161e8:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  3161ed:	48 8d 4d 50          	lea    rcx,[rbp+0x50]
  3161f1:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  3161f4:	e8 9b c2 fd ff       	call   0x2f2494
  3161f9:	48 8b c8             	mov    rcx,rax
  3161fc:	e8 43 7b fb ff       	call   0x2cdd44
  316201:	48 8b d0             	mov    rdx,rax
  316204:	4c 89 74 24 20       	mov    QWORD PTR [rsp+0x20],r14
  316209:	4c 8d 0d d0 b0 fc ff 	lea    r9,[rip+0xfffffffffffcb0d0]        # 0x2e12e0
  316210:	4c 8b c3             	mov    r8,rbx
  316213:	48 8d 0d 6e dd 0c 00 	lea    rcx,[rip+0xcdd6e]        # 0x3e3f88
  31621a:	e8 b9 01 00 00       	call   0x3163d8
  31621f:	48 8d 55 40          	lea    rdx,[rbp+0x40]
  316223:	48 8d 4d 40          	lea    rcx,[rbp+0x40]
  316227:	e8 04 65 fb ff       	call   0x2cc730
  31622c:	48 8b c8             	mov    rcx,rax
  31622f:	e8 70 7a fb ff       	call   0x2cdca4
  316234:	48 8d 55 48          	lea    rdx,[rbp+0x48]
  316238:	4c 8b f0             	mov    r14,rax
  31623b:	48 8d 4d 50          	lea    rcx,[rbp+0x50]
  31623f:	e8 ec 64 fb ff       	call   0x2cc730
  316244:	48 8b c8             	mov    rcx,rax
  316247:	e8 58 7a fb ff       	call   0x2cdca4
  31624c:	48 8d 54 24 75       	lea    rdx,[rsp+0x75]
  316251:	48 8b f0             	mov    rsi,rax
  316254:	48 8d 4d 50          	lea    rcx,[rbp+0x50]
  316258:	e8 47 cc fd ff       	call   0x2f2ea4
  31625d:	48 8b c8             	mov    rcx,rax
  316260:	e8 9f d4 fc ff       	call   0x2e3704
  316265:	48 8d 55 58          	lea    rdx,[rbp+0x58]
  316269:	48 8b f8             	mov    rdi,rax
  31626c:	48 8d 4d 50          	lea    rcx,[rbp+0x50]
  316270:	e8 bb 64 fb ff       	call   0x2cc730
  316275:	48 8b c8             	mov    rcx,rax
  316278:	e8 27 7a fb ff       	call   0x2cdca4
  31627d:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  316282:	48 8b d8             	mov    rbx,rax
  316285:	48 8d 4d 50          	lea    rcx,[rbp+0x50]
  316289:	e8 76 c9 fd ff       	call   0x2f2c04
  31628e:	48 8b c8             	mov    rcx,rax
  316291:	e8 5e 23 fc ff       	call   0x2d85f4
  316296:	48 8b c8             	mov    rcx,rax
  316299:	48 8b d3             	mov    rdx,rbx
  31629c:	e8 83 df 01 00       	call   0x334224
  3162a1:	48 8b c8             	mov    rcx,rax
  3162a4:	4c 8b ce             	mov    r9,rsi
  3162a7:	44 89 7c 24 20       	mov    DWORD PTR [rsp+0x20],r15d
  3162ac:	45 8b c7             	mov    r8d,r15d
  3162af:	48 8b d7             	mov    rdx,rdi
  3162b2:	e8 f5 e6 01 00       	call   0x3349ac
  3162b7:	48 8d 54 24 68       	lea    rdx,[rsp+0x68]
  3162bc:	48 8d 4d 50          	lea    rcx,[rbp+0x50]
  3162c0:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  3162c3:	e8 e4 c6 fd ff       	call   0x2f29ac
  3162c8:	48 8b c8             	mov    rcx,rax
  3162cb:	e8 24 23 fc ff       	call   0x2d85f4
  3162d0:	48 8b d0             	mov    rdx,rax
  3162d3:	4c 89 74 24 20       	mov    QWORD PTR [rsp+0x20],r14
  3162d8:	4c 8d 0d 31 78 fc ff 	lea    r9,[rip+0xfffffffffffc7831]        # 0x2ddb10
  3162df:	4c 8b c3             	mov    r8,rbx
  3162e2:	48 8d 0d 0f 0d 0c 00 	lea    rcx,[rip+0xc0d0f]        # 0x3d6ff8
  3162e9:	e8 ea 00 00 00       	call   0x3163d8
  3162ee:	48 8d 55 40          	lea    rdx,[rbp+0x40]
  3162f2:	48 8d 4d 40          	lea    rcx,[rbp+0x40]
  3162f6:	e8 35 64 fb ff       	call   0x2cc730
  3162fb:	48 8b c8             	mov    rcx,rax
  3162fe:	e8 a1 79 fb ff       	call   0x2cdca4
  316303:	48 8d 55 48          	lea    rdx,[rbp+0x48]
  316307:	4c 8b f0             	mov    r14,rax
  31630a:	48 8d 4d 50          	lea    rcx,[rbp+0x50]
  31630e:	e8 1d 64 fb ff       	call   0x2cc730
  316313:	48 8b c8             	mov    rcx,rax
  316316:	e8 89 79 fb ff       	call   0x2cdca4
  31631b:	48 8d 54 24 75       	lea    rdx,[rsp+0x75]
  316320:	48 8b f0             	mov    rsi,rax
  316323:	48 8d 4d 50          	lea    rcx,[rbp+0x50]
  316327:	e8 ec d0 fd ff       	call   0x2f3418
  31632c:	48 8b c8             	mov    rcx,rax
  31632f:	e8 d0 d3 fc ff       	call   0x2e3704
  316334:	48 8d 55 58          	lea    rdx,[rbp+0x58]
  316338:	48 8b f8             	mov    rdi,rax
  31633b:	48 8d 4d 50          	lea    rcx,[rbp+0x50]
  31633f:	e8 ec 63 fb ff       	call   0x2cc730
  316344:	48 8b c8             	mov    rcx,rax
  316347:	e8 58 79 fb ff       	call   0x2cdca4
  31634c:	48 8d 55 9f          	lea    rdx,[rbp-0x61]
  316350:	48 8b d8             	mov    rbx,rax
  316353:	48 8d 4d 50          	lea    rcx,[rbp+0x50]
  316357:	e8 34 cf fd ff       	call   0x2f3290
  31635c:	48 8b c8             	mov    rcx,rax
  31635f:	e8 a0 d3 fc ff       	call   0x2e3704
  316364:	48 8b c8             	mov    rcx,rax
  316367:	48 8b d3             	mov    rdx,rbx
  31636a:	e8 b5 de 01 00       	call   0x334224
  31636f:	48 8b c8             	mov    rcx,rax
  316372:	44 89 7c 24 20       	mov    DWORD PTR [rsp+0x20],r15d
  316377:	4c 8b ce             	mov    r9,rsi
  31637a:	45 8b c7             	mov    r8d,r15d
  31637d:	48 8b d7             	mov    rdx,rdi
  316380:	e8 27 e6 01 00       	call   0x3349ac
  316385:	48 8d 55 c9          	lea    rdx,[rbp-0x37]
  316389:	48 8d 4d 50          	lea    rcx,[rbp+0x50]
  31638d:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  316390:	e8 c3 cc fd ff       	call   0x2f3058
  316395:	48 8b c8             	mov    rcx,rax
  316398:	e8 67 d3 fc ff       	call   0x2e3704
  31639d:	48 8b d0             	mov    rdx,rax
  3163a0:	4c 89 74 24 20       	mov    QWORD PTR [rsp+0x20],r14
  3163a5:	4c 8d 0d fc 6a 01 00 	lea    r9,[rip+0x16afc]        # 0x32cea8
  3163ac:	4c 8b c3             	mov    r8,rbx
  3163af:	48 8d 0d d2 a4 0d 00 	lea    rcx,[rip+0xda4d2]        # 0x3f0888
  3163b6:	e8 9d 00 00 00       	call   0x316458
  3163bb:	48 8d 4c 24 48       	lea    rcx,[rsp+0x48]
  3163c0:	e8 2f 61 fb ff       	call   0x2cc4f4
  3163c5:	48 81 c4 08 01 00 00 	add    rsp,0x108
  3163cc:	41 5f                	pop    r15
  3163ce:	41 5e                	pop    r14
  3163d0:	5f                   	pop    rdi
  3163d1:	5e                   	pop    rsi
  3163d2:	5b                   	pop    rbx
  3163d3:	5d                   	pop    rbp
  3163d4:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000362118 <.data+0x362118>:
  362118:	40 55                	rex push rbp
  36211a:	53                   	push   rbx
  36211b:	57                   	push   rdi
  36211c:	48 8b ec             	mov    rbp,rsp
  36211f:	48 83 ec 50          	sub    rsp,0x50
  362123:	48 8d 55 e0          	lea    rdx,[rbp-0x20]
  362127:	48 8d 4d 28          	lea    rcx,[rbp+0x28]
  36212b:	e8 e0 01 ff ff       	call   0x352310
  362130:	48 8b c8             	mov    rcx,rax
  362133:	e8 7c 7a f8 ff       	call   0x2e9bb4
  362138:	48 8b c8             	mov    rcx,rax
  36213b:	e8 18 8f 06 00       	call   0x3cb058
  362140:	48 89 05 b9 4d 07 00 	mov    QWORD PTR [rip+0x74db9],rax        # 0x3d6f00
  362147:	e8 a8 2a fd ff       	call   0x334bf4
  36214c:	48 8d 55 e0          	lea    rdx,[rbp-0x20]
  362150:	48 8d 4d 28          	lea    rcx,[rbp+0x28]
  362154:	e8 27 18 ff ff       	call   0x353980
  362159:	48 8b c8             	mov    rcx,rax
  36215c:	e8 f3 7a f8 ff       	call   0x2e9c54
  362161:	48 8b d0             	mov    rdx,rax
  362164:	48 8d 0d a5 65 eb ff 	lea    rcx,[rip+0xffffffffffeb65a5]        # 0x218710
  36216b:	e8 f8 2a f7 ff       	call   0x2d4c68
  362170:	48 8d 55 e0          	lea    rdx,[rbp-0x20]
  362174:	48 8d 4d 28          	lea    rcx,[rbp+0x28]
  362178:	e8 07 2c ff ff       	call   0x354d84
  36217d:	48 8b c8             	mov    rcx,rax
  362180:	e8 e7 64 f7 ff       	call   0x2d866c
  362185:	48 8b d0             	mov    rdx,rax
  362188:	48 8d 0d a1 65 eb ff 	lea    rcx,[rip+0xffffffffffeb65a1]        # 0x218730
  36218f:	e8 d4 2a f7 ff       	call   0x2d4c68
  362194:	48 8d 55 28          	lea    rdx,[rbp+0x28]
  362198:	48 8d 4d 28          	lea    rcx,[rbp+0x28]
  36219c:	e8 8f a5 f6 ff       	call   0x2cc730
  3621a1:	48 8b c8             	mov    rcx,rax
  3621a4:	e8 fb ba f6 ff       	call   0x2cdca4
  3621a9:	48 8d 55 e0          	lea    rdx,[rbp-0x20]
  3621ad:	48 8b f8             	mov    rdi,rax
  3621b0:	48 8d 4d 30          	lea    rcx,[rbp+0x30]
  3621b4:	e8 3b 53 ff ff       	call   0x3574f4
  3621b9:	48 8b c8             	mov    rcx,rax
  3621bc:	e8 93 7a f8 ff       	call   0x2e9c54
  3621c1:	48 8d 55 38          	lea    rdx,[rbp+0x38]
  3621c5:	48 8b d8             	mov    rbx,rax
  3621c8:	48 8d 4d 30          	lea    rcx,[rbp+0x30]
  3621cc:	e8 cb 40 ff ff       	call   0x35629c
  3621d1:	48 8b c8             	mov    rcx,rax
  3621d4:	e8 1b bb f6 ff       	call   0x2cdcf4
  3621d9:	48 8b d0             	mov    rdx,rax
  3621dc:	48 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],rdi
  3621e1:	4c 8d 0d 8c 63 f9 ff 	lea    r9,[rip+0xfffffffffff9638c]        # 0x2f8574
  3621e8:	4c 8b c3             	mov    r8,rbx
  3621eb:	48 8d 0d 5e 47 08 00 	lea    rcx,[rip+0x8475e]        # 0x3e6950
  3621f2:	e8 15 87 f8 ff       	call   0x2ea90c
  3621f7:	48 83 c4 50          	add    rsp,0x50
  3621fb:	5f                   	pop    rdi
  3621fc:	5b                   	pop    rbx
  3621fd:	5d                   	pop    rbp
  3621fe:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000036f5cc <.data+0x36f5cc>:
  36f5cc:	48 83 ec 28          	sub    rsp,0x28
  36f5d0:	b9 18 00 00 00       	mov    ecx,0x18
  36f5d5:	e8 ea ad 01 00       	call   0x38a3c4
  36f5da:	48 85 c0             	test   rax,rax
  36f5dd:	74 08                	je     0x36f5e7
  36f5df:	48 8b c8             	mov    rcx,rax
  36f5e2:	e8 71 51 f6 ff       	call   0x2d4758
  36f5e7:	48 89 05 0a 0a 09 00 	mov    QWORD PTR [rip+0x90a0a],rax        # 0x3ffff8
  36f5ee:	48 83 c4 28          	add    rsp,0x28
  36f5f2:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000334bf4 <.data+0x334bf4>:
  334bf4:	40 55                	rex push rbp
  334bf6:	53                   	push   rbx
  334bf7:	56                   	push   rsi
  334bf8:	57                   	push   rdi
  334bf9:	41 54                	push   r12
  334bfb:	41 55                	push   r13
  334bfd:	41 56                	push   r14
  334bff:	41 57                	push   r15
  334c01:	48 8d 6c 24 f8       	lea    rbp,[rsp-0x8]
  334c06:	48 81 ec 08 01 00 00 	sub    rsp,0x108
  334c0d:	e8 8a fb ff ff       	call   0x33479c
  334c12:	48 8d 54 24 28       	lea    rdx,[rsp+0x28]
  334c17:	48 c7 44 24 28 00 00 00 00 	mov    QWORD PTR [rsp+0x28],0x0
  334c20:	48 8b c8             	mov    rcx,rax
  334c23:	e8 e4 fb ff ff       	call   0x33480c
  334c28:	45 33 f6             	xor    r14d,r14d
  334c2b:	4c 8b e8             	mov    r13,rax
  334c2e:	4c 39 74 24 28       	cmp    QWORD PTR [rsp+0x28],r14
  334c33:	0f 86 a5 03 00 00    	jbe    0x334fde
  334c39:	42 8d 0c f5 00 00 00 00 	lea    ecx,[r14*8+0x0]
  334c41:	45 33 ff             	xor    r15d,r15d
  334c44:	48 63 d1             	movsxd rdx,ecx
  334c47:	4a 8b 0c 2a          	mov    rcx,QWORD PTR [rdx+r13*1]
  334c4b:	4c 8b 21             	mov    r12,QWORD PTR [rcx]
  334c4e:	49 8b cc             	mov    rcx,r12
  334c51:	e8 0a fb ff ff       	call   0x334760
  334c56:	48 85 c0             	test   rax,rax
  334c59:	0f 84 6e 03 00 00    	je     0x334fcd
  334c5f:	49 63 d7             	movsxd rdx,r15d
  334c62:	49 8b cc             	mov    rcx,r12
  334c65:	e8 ee fc ff ff       	call   0x334958
  334c6a:	48 8b f0             	mov    rsi,rax
  334c6d:	48 85 c0             	test   rax,rax
  334c70:	0f 84 40 03 00 00    	je     0x334fb6
  334c76:	48 8d 4d c8          	lea    rcx,[rbp-0x38]
  334c7a:	e8 e1 f8 f9 ff       	call   0x2d4560
  334c7f:	48 8b 56 18          	mov    rdx,QWORD PTR [rsi+0x18]
  334c83:	48 8b 5e 10          	mov    rbx,QWORD PTR [rsi+0x10]
  334c87:	48 85 d2             	test   rdx,rdx
  334c8a:	74 2f                	je     0x334cbb
  334c8c:	80 3a 00             	cmp    BYTE PTR [rdx],0x0
  334c8f:	74 2a                	je     0x334cbb
  334c91:	48 8d 4d c8          	lea    rcx,[rbp-0x38]
  334c95:	e8 6a 09 fa ff       	call   0x2d5604
  334c9a:	48 8d 55 68          	lea    rdx,[rbp+0x68]
  334c9e:	48 8d 4d 50          	lea    rcx,[rbp+0x50]
  334ca2:	e8 a5 ee ff ff       	call   0x333b4c
  334ca7:	48 8b c8             	mov    rcx,rax
  334caa:	e8 45 b7 fe ff       	call   0x3203f4
  334caf:	48 8b d0             	mov    rdx,rax
  334cb2:	48 8d 4d c8          	lea    rcx,[rbp-0x38]
  334cb6:	e8 49 09 fa ff       	call   0x2d5604
  334cbb:	48 8b d3             	mov    rdx,rbx
  334cbe:	48 8d 4d c8          	lea    rcx,[rbp-0x38]
  334cc2:	e8 3d 09 fa ff       	call   0x2d5604
  334cc7:	48 c7 44 24 50 00 00 00 00 	mov    QWORD PTR [rsp+0x50],0x0
  334cd0:	e9 bf 02 00 00       	jmp    0x334f94
  334cd5:	48 8b cf             	mov    rcx,rdi
  334cd8:	e8 e3 05 00 00       	call   0x3352c0
  334cdd:	48 8d 54 24 78       	lea    rdx,[rsp+0x78]
  334ce2:	48 8b d8             	mov    rbx,rax
  334ce5:	48 8d 4d 50          	lea    rcx,[rbp+0x50]
  334ce9:	e8 a6 ee ff ff       	call   0x333b94
  334cee:	48 8b c8             	mov    rcx,rax
  334cf1:	e8 fe b6 fe ff       	call   0x3203f4
  334cf6:	4c 8b c0             	mov    r8,rax
  334cf9:	48 8d 55 c8          	lea    rdx,[rbp-0x38]
  334cfd:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  334d02:	e8 cd a2 f9 ff       	call   0x2cefd4
  334d07:	48 8b d0             	mov    rdx,rax
  334d0a:	48 8d 4d 80          	lea    rcx,[rbp-0x80]
  334d0e:	4c 8b c3             	mov    r8,rbx
  334d11:	e8 22 60 f9 ff       	call   0x2cad38
  334d16:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  334d1b:	e8 d4 77 f9 ff       	call   0x2cc4f4
  334d20:	48 8b cf             	mov    rcx,rdi
  334d23:	e8 a8 05 00 00       	call   0x3352d0
  334d28:	85 c0                	test   eax,eax
  334d2a:	0f 84 67 01 00 00    	je     0x334e97
  334d30:	48 8d 55 58          	lea    rdx,[rbp+0x58]
  334d34:	48 8d 4d 50          	lea    rcx,[rbp+0x50]
  334d38:	e8 a3 bb fb ff       	call   0x2f08e0
  334d3d:	48 8b c8             	mov    rcx,rax
  334d40:	e8 1f 37 fa ff       	call   0x2d8464
  334d45:	48 8b d0             	mov    rdx,rax
  334d48:	48 8d 4d 80          	lea    rcx,[rbp-0x80]
  334d4c:	e8 b3 08 fa ff       	call   0x2d5604
  334d51:	48 8b cf             	mov    rcx,rdi
  334d54:	33 db                	xor    ebx,ebx
  334d56:	e8 75 05 00 00       	call   0x3352d0
  334d5b:	85 c0                	test   eax,eax
  334d5d:	0f 84 b4 00 00 00    	je     0x334e17
  334d63:	8b d3                	mov    edx,ebx
  334d65:	48 8b cf             	mov    rcx,rdi
  334d68:	e8 e3 fb ff ff       	call   0x334950
  334d6d:	48 8b c8             	mov    rcx,rax
  334d70:	e8 53 05 00 00       	call   0x3352c8
  334d75:	48 8b d0             	mov    rdx,rax
  334d78:	48 8d 4d a0          	lea    rcx,[rbp-0x60]
  334d7c:	e8 4b 75 f9 ff       	call   0x2cc2cc
  334d81:	45 33 c0             	xor    r8d,r8d
  334d84:	48 8d 15 d9 00 f6 ff 	lea    rdx,[rip+0xfffffffffff600d9]        # 0x294e64
  334d8b:	48 8d 4d a0          	lea    rcx,[rbp-0x60]
  334d8f:	e8 74 fb ff ff       	call   0x334908
  334d94:	49 83 c9 ff          	or     r9,0xffffffffffffffff
  334d98:	48 8d 54 24 58       	lea    rdx,[rsp+0x58]
  334d9d:	48 8d 4d a0          	lea    rcx,[rbp-0x60]
  334da1:	4c 8d 40 01          	lea    r8,[rax+0x1]
  334da5:	e8 ee 46 fa ff       	call   0x2d9498
  334daa:	48 8b d0             	mov    rdx,rax
  334dad:	48 8d 4d a0          	lea    rcx,[rbp-0x60]
  334db1:	e8 2e fe f9 ff       	call   0x2d4be4
  334db6:	48 8d 4c 24 58       	lea    rcx,[rsp+0x58]
  334dbb:	e8 34 77 f9 ff       	call   0x2cc4f4
  334dc0:	48 8d 55 60          	lea    rdx,[rbp+0x60]
  334dc4:	48 8d 4d 50          	lea    rcx,[rbp+0x50]
  334dc8:	e8 0b 04 fa ff       	call   0x2d51d8
  334dcd:	48 8b c8             	mov    rcx,rax
  334dd0:	e8 8f 36 fa ff       	call   0x2d8464
  334dd5:	4c 8b c0             	mov    r8,rax
  334dd8:	48 8d 55 a0          	lea    rdx,[rbp-0x60]
  334ddc:	48 8d 4c 24 58       	lea    rcx,[rsp+0x58]
  334de1:	e8 ee a1 f9 ff       	call   0x2cefd4
  334de6:	48 8b d0             	mov    rdx,rax
  334de9:	48 8d 4d 80          	lea    rcx,[rbp-0x80]
  334ded:	e8 f2 07 fa ff       	call   0x2d55e4
  334df2:	48 8d 4c 24 58       	lea    rcx,[rsp+0x58]
  334df7:	e8 f8 76 f9 ff       	call   0x2cc4f4
  334dfc:	48 8d 4d a0          	lea    rcx,[rbp-0x60]
  334e00:	e8 ef 76 f9 ff       	call   0x2cc4f4
  334e05:	48 8b cf             	mov    rcx,rdi
  334e08:	ff c3                	inc    ebx
  334e0a:	e8 c1 04 00 00       	call   0x3352d0
  334e0f:	3b d8                	cmp    ebx,eax
  334e11:	0f 82 4c ff ff ff    	jb     0x334d63
  334e17:	48 8d 4d 80          	lea    rcx,[rbp-0x80]
  334e1b:	e8 d8 be fe ff       	call   0x320cf8
  334e20:	48 8b cf             	mov    rcx,rdi
  334e23:	e8 b0 04 00 00       	call   0x3352d8
  334e28:	48 8b c8             	mov    rcx,rax
  334e2b:	e8 98 04 00 00       	call   0x3352c8
  334e30:	48 8b d0             	mov    rdx,rax
  334e33:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  334e38:	e8 8f 74 f9 ff       	call   0x2cc2cc
  334e3d:	45 33 c0             	xor    r8d,r8d
  334e40:	48 8d 15 1d 00 f6 ff 	lea    rdx,[rip+0xfffffffffff6001d]        # 0x294e64
  334e47:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  334e4c:	e8 b7 fa ff ff       	call   0x334908
  334e51:	49 83 c9 ff          	or     r9,0xffffffffffffffff
  334e55:	48 8d 54 24 58       	lea    rdx,[rsp+0x58]
  334e5a:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  334e5f:	4c 8d 40 01          	lea    r8,[rax+0x1]
  334e63:	e8 30 46 fa ff       	call   0x2d9498
  334e68:	48 8b d0             	mov    rdx,rax
  334e6b:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  334e70:	e8 6f fd f9 ff       	call   0x2d4be4
  334e75:	48 8d 4c 24 58       	lea    rcx,[rsp+0x58]
  334e7a:	e8 75 76 f9 ff       	call   0x2cc4f4
  334e7f:	48 8d 54 24 7b       	lea    rdx,[rsp+0x7b]
  334e84:	48 8d 4d 50          	lea    rcx,[rbp+0x50]
  334e88:	e8 1f ed ff ff       	call   0x333bac
  334e8d:	48 8b c8             	mov    rcx,rax
  334e90:	e8 87 b5 fe ff       	call   0x32041c
  334e95:	eb 74                	jmp    0x334f0b
  334e97:	48 8b cf             	mov    rcx,rdi
  334e9a:	e8 39 04 00 00       	call   0x3352d8
  334e9f:	48 8b c8             	mov    rcx,rax
  334ea2:	e8 21 04 00 00       	call   0x3352c8
  334ea7:	48 8b d0             	mov    rdx,rax
  334eaa:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  334eaf:	e8 18 74 f9 ff       	call   0x2cc2cc
  334eb4:	45 33 c0             	xor    r8d,r8d
  334eb7:	48 8d 15 a6 ff f5 ff 	lea    rdx,[rip+0xfffffffffff5ffa6]        # 0x294e64
  334ebe:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  334ec3:	e8 40 fa ff ff       	call   0x334908
  334ec8:	49 83 c9 ff          	or     r9,0xffffffffffffffff
  334ecc:	48 8d 54 24 58       	lea    rdx,[rsp+0x58]
  334ed1:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  334ed6:	4c 8d 40 01          	lea    r8,[rax+0x1]
  334eda:	e8 b9 45 fa ff       	call   0x2d9498
  334edf:	48 8b d0             	mov    rdx,rax
  334ee2:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  334ee7:	e8 f8 fc f9 ff       	call   0x2d4be4
  334eec:	48 8d 4c 24 58       	lea    rcx,[rsp+0x58]
  334ef1:	e8 fe 75 f9 ff       	call   0x2cc4f4
  334ef6:	48 8d 55 c0          	lea    rdx,[rbp-0x40]
  334efa:	48 8d 4d 50          	lea    rcx,[rbp+0x50]
  334efe:	e8 b5 ec ff ff       	call   0x333bb8
  334f03:	48 8b c8             	mov    rcx,rax
  334f06:	e8 c1 8d f9 ff       	call   0x2cdccc
  334f0b:	4c 8d 44 24 30       	lea    r8,[rsp+0x30]
  334f10:	48 8b d0             	mov    rdx,rax
  334f13:	48 8d 4c 24 58       	lea    rcx,[rsp+0x58]
  334f18:	e8 f7 57 fb ff       	call   0x2ea714
  334f1d:	48 8b d0             	mov    rdx,rax
  334f20:	48 8d 4d 80          	lea    rcx,[rbp-0x80]
  334f24:	e8 bb 06 fa ff       	call   0x2d55e4
  334f29:	48 8d 4c 24 58       	lea    rcx,[rsp+0x58]
  334f2e:	e8 c1 75 f9 ff       	call   0x2cc4f4
  334f33:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  334f38:	e8 b7 75 f9 ff       	call   0x2cc4f4
  334f3d:	48 8d 4d 80          	lea    rcx,[rbp-0x80]
  334f41:	48 89 7d 50          	mov    QWORD PTR [rbp+0x50],rdi
  334f45:	e8 a2 88 f9 ff       	call   0x2cd7ec
  334f4a:	48 8b c8             	mov    rcx,rax
  334f4d:	48 8b d8             	mov    rbx,rax
  334f50:	e8 af 59 09 00       	call   0x3ca904
  334f55:	45 33 c0             	xor    r8d,r8d
  334f58:	8b d0                	mov    edx,eax
  334f5a:	48 8b cb             	mov    rcx,rbx
  334f5d:	e8 06 f8 ff ff       	call   0x334768
  334f62:	4c 8d 45 50          	lea    r8,[rbp+0x50]
  334f66:	89 44 24 20          	mov    DWORD PTR [rsp+0x20],eax
  334f6a:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  334f6f:	48 8d 4d e8          	lea    rcx,[rbp-0x18]
  334f73:	e8 18 ea ff ff       	call   0x333990
  334f78:	4c 8b c0             	mov    r8,rax
  334f7b:	48 8d 55 a0          	lea    rdx,[rbp-0x60]
  334f7f:	48 8d 0d c2 48 0c 00 	lea    rcx,[rip+0xc48c2]        # 0x3f9848
  334f86:	e8 d1 e9 ff ff       	call   0x33395c
  334f8b:	48 8d 4d 80          	lea    rcx,[rbp-0x80]
  334f8f:	e8 60 75 f9 ff       	call   0x2cc4f4
  334f94:	48 8d 54 24 50       	lea    rdx,[rsp+0x50]
  334f99:	48 8b ce             	mov    rcx,rsi
  334f9c:	e8 17 03 00 00       	call   0x3352b8
  334fa1:	48 8b f8             	mov    rdi,rax
  334fa4:	48 85 c0             	test   rax,rax
  334fa7:	0f 85 28 fd ff ff    	jne    0x334cd5
  334fad:	48 8d 4d c8          	lea    rcx,[rbp-0x38]
  334fb1:	e8 3e 75 f9 ff       	call   0x2cc4f4
  334fb6:	49 8b cc             	mov    rcx,r12
  334fb9:	41 ff c7             	inc    r15d
  334fbc:	e8 9f f7 ff ff       	call   0x334760
  334fc1:	49 63 cf             	movsxd rcx,r15d
  334fc4:	48 3b c8             	cmp    rcx,rax
  334fc7:	0f 82 92 fc ff ff    	jb     0x334c5f
  334fcd:	41 ff c6             	inc    r14d
  334fd0:	49 63 c6             	movsxd rax,r14d
  334fd3:	48 3b 44 24 28       	cmp    rax,QWORD PTR [rsp+0x28]
  334fd8:	0f 82 5b fc ff ff    	jb     0x334c39
  334fde:	48 81 c4 08 01 00 00 	add    rsp,0x108
  334fe5:	41 5f                	pop    r15
  334fe7:	41 5e                	pop    r14
  334fe9:	41 5d                	pop    r13
  334feb:	41 5c                	pop    r12
  334fed:	5f                   	pop    rdi
  334fee:	5e                   	pop    rsi
  334fef:	5b                   	pop    rbx
  334ff0:	5d                   	pop    rbp
  334ff1:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003215cc <.data+0x3215cc>:
  3215cc:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  3215d1:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
  3215d6:	55                   	push   rbp
  3215d7:	57                   	push   rdi
  3215d8:	41 56                	push   r14
  3215da:	48 8b ec             	mov    rbp,rsp
  3215dd:	48 81 ec 80 00 00 00 	sub    rsp,0x80
  3215e4:	80 3d 5d 04 0d 00 00 	cmp    BYTE PTR [rip+0xd045d],0x0        # 0x3f1a48
  3215eb:	40 8a f2             	mov    sil,dl
  3215ee:	48 8b f9             	mov    rdi,rcx
  3215f1:	0f 84 6a 01 00 00    	je     0x321761
  3215f7:	48 8d 55 30          	lea    rdx,[rbp+0x30]
  3215fb:	48 8d 4d 30          	lea    rcx,[rbp+0x30]
  3215ff:	e8 2c b1 fa ff       	call   0x2cc730
  321604:	48 8b c8             	mov    rcx,rax
  321607:	e8 98 c6 fa ff       	call   0x2cdca4
  32160c:	48 8d 55 b1          	lea    rdx,[rbp-0x4f]
  321610:	48 8b d8             	mov    rbx,rax
  321613:	48 8d 4d 38          	lea    rcx,[rbp+0x38]
  321617:	e8 4c ff ff ff       	call   0x321568
  32161c:	48 8b c8             	mov    rcx,rax
  32161f:	e8 78 02 00 00       	call   0x32189c
  321624:	48 8b c8             	mov    rcx,rax
  321627:	48 8b d3             	mov    rdx,rbx
  32162a:	e8 f5 2b 01 00       	call   0x334224
  32162f:	48 8b c8             	mov    rcx,rax
  321632:	48 8b d0             	mov    rdx,rax
  321635:	e8 ce 98 fa ff       	call   0x2caf08
  32163a:	84 c0                	test   al,al
  32163c:	0f 84 8f 01 00 00    	je     0x3217d1
  321642:	48 8b ca             	mov    rcx,rdx
  321645:	e8 7a 02 00 00       	call   0x3218c4
  32164a:	48 8b c8             	mov    rcx,rax
  32164d:	4c 8b f0             	mov    r14,rax
  321650:	e8 b3 98 fa ff       	call   0x2caf08
  321655:	84 c0                	test   al,al
  321657:	0f 84 74 01 00 00    	je     0x3217d1
  32165d:	49 89 7e 10          	mov    QWORD PTR [r14+0x10],rdi
  321661:	e8 86 01 00 00       	call   0x3217ec
  321666:	48 63 c8             	movsxd rcx,eax
  321669:	49 89 4e 18          	mov    QWORD PTR [r14+0x18],rcx
  32166d:	8b 0d e5 03 0d 00    	mov    ecx,DWORD PTR [rip+0xd03e5]        # 0x3f1a58
  321673:	49 c7 46 20 00 00 00 00 	mov    QWORD PTR [r14+0x20],0x0
  32167b:	f6 c1 01             	test   cl,0x1
  32167e:	0f 85 9a 00 00 00    	jne    0x32171e
  321684:	83 c9 01             	or     ecx,0x1
  321687:	48 8d 55 30          	lea    rdx,[rbp+0x30]
  32168b:	89 0d c7 03 0d 00    	mov    DWORD PTR [rip+0xd03c7],ecx        # 0x3f1a58
  321691:	48 8d 4d 30          	lea    rcx,[rbp+0x30]
  321695:	e8 96 b0 fa ff       	call   0x2cc730
  32169a:	48 8b c8             	mov    rcx,rax
  32169d:	e8 02 c6 fa ff       	call   0x2cdca4
  3216a2:	48 8d 55 b1          	lea    rdx,[rbp-0x4f]
  3216a6:	48 8b f0             	mov    rsi,rax
  3216a9:	48 8d 4d 38          	lea    rcx,[rbp+0x38]
  3216ad:	e8 ee fe ff ff       	call   0x3215a0
  3216b2:	48 8b c8             	mov    rcx,rax
  3216b5:	e8 a6 ba fb ff       	call   0x2dd160
  3216ba:	48 8d 55 b0          	lea    rdx,[rbp-0x50]
  3216be:	48 8b f8             	mov    rdi,rax
  3216c1:	48 8d 4d 38          	lea    rcx,[rbp+0x38]
  3216c5:	e8 66 b0 fa ff       	call   0x2cc730
  3216ca:	48 8b c8             	mov    rcx,rax
  3216cd:	e8 d2 c5 fa ff       	call   0x2cdca4
  3216d2:	48 8d 55 d1          	lea    rdx,[rbp-0x2f]
  3216d6:	48 8b d8             	mov    rbx,rax
  3216d9:	48 8d 4d 38          	lea    rcx,[rbp+0x38]
  3216dd:	e8 a2 fe ff ff       	call   0x321584
  3216e2:	48 8b c8             	mov    rcx,rax
  3216e5:	e8 b2 01 00 00       	call   0x32189c
  3216ea:	48 8b c8             	mov    rcx,rax
  3216ed:	48 8b d3             	mov    rdx,rbx
  3216f0:	e8 2f 2b 01 00       	call   0x334224
  3216f5:	41 83 c8 ff          	or     r8d,0xffffffff
  3216f9:	48 8b c8             	mov    rcx,rax
  3216fc:	4c 8b ce             	mov    r9,rsi
  3216ff:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
  321704:	48 8b d7             	mov    rdx,rdi
  321707:	e8 a0 32 01 00       	call   0x3349ac
  32170c:	8b 0d 46 03 0d 00    	mov    ecx,DWORD PTR [rip+0xd0346]        # 0x3f1a58
  321712:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  321715:	4c 89 05 34 03 0d 00 	mov    QWORD PTR [rip+0xd0334],r8        # 0x3f1a50
  32171c:	eb 07                	jmp    0x321725
  32171e:	4c 8b 05 2b 03 0d 00 	mov    r8,QWORD PTR [rip+0xd032b]        # 0x3f1a50
  321725:	f6 c1 02             	test   cl,0x2
  321728:	75 1f                	jne    0x321749
  32172a:	83 c9 02             	or     ecx,0x2
  32172d:	48 8d 15 2c 03 0d 00 	lea    rdx,[rip+0xd032c]        # 0x3f1a60
  321734:	89 0d 1e 03 0d 00    	mov    DWORD PTR [rip+0xd031e],ecx        # 0x3f1a58
  32173a:	45 33 c9             	xor    r9d,r9d
  32173d:	48 8b 0d 1c 47 0b 00 	mov    rcx,QWORD PTR [rip+0xb471c]        # 0x3d5e60
  321744:	e8 db a5 fa ff       	call   0x2cbd24
  321749:	48 8b 0d 10 47 0b 00 	mov    rcx,QWORD PTR [rip+0xb4710]        # 0x3d5e60
  321750:	48 8d 15 09 03 0d 00 	lea    rdx,[rip+0xd0309]        # 0x3f1a60
  321757:	4d 8b c6             	mov    r8,r14
  32175a:	e8 9d a2 fa ff       	call   0x2cb9fc
  32175f:	eb 70                	jmp    0x3217d1
  321761:	8b 1d f1 02 0d 00    	mov    ebx,DWORD PTR [rip+0xd02f1]        # 0x3f1a58
  321767:	f6 c3 04             	test   bl,0x4
  32176a:	75 1e                	jne    0x32178a
  32176c:	83 cb 04             	or     ebx,0x4
  32176f:	48 8d 0d fa 50 0c 00 	lea    rcx,[rip+0xc50fa]        # 0x3e6870
  321776:	89 1d dc 02 0d 00    	mov    DWORD PTR [rip+0xd02dc],ebx        # 0x3f1a58
  32177c:	e8 57 ce fa ff       	call   0x2ce5d8
  321781:	48 89 05 b0 03 0d 00 	mov    QWORD PTR [rip+0xd03b0],rax        # 0x3f1b38
  321788:	eb 07                	jmp    0x321791
  32178a:	48 8b 05 a7 03 0d 00 	mov    rax,QWORD PTR [rip+0xd03a7]        # 0x3f1b38
  321791:	f6 c3 08             	test   bl,0x8
  321794:	75 22                	jne    0x3217b8
  321796:	48 8b 0d c3 46 0b 00 	mov    rcx,QWORD PTR [rip+0xb46c3]        # 0x3d5e60
  32179d:	48 8d 15 9c 03 0d 00 	lea    rdx,[rip+0xd039c]        # 0x3f1b40
  3217a4:	83 cb 08             	or     ebx,0x8
  3217a7:	45 33 c9             	xor    r9d,r9d
  3217aa:	4c 8b c0             	mov    r8,rax
  3217ad:	89 1d a5 02 0d 00    	mov    DWORD PTR [rip+0xd02a5],ebx        # 0x3f1a58
  3217b3:	e8 6c a5 fa ff       	call   0x2cbd24
  3217b8:	48 8b 0d a1 46 0b 00 	mov    rcx,QWORD PTR [rip+0xb46a1]        # 0x3d5e60
  3217bf:	48 8d 15 7a 03 0d 00 	lea    rdx,[rip+0xd037a]        # 0x3f1b40
  3217c6:	44 8a ce             	mov    r9b,sil
  3217c9:	4c 8b c7             	mov    r8,rdi
  3217cc:	e8 23 fd ff ff       	call   0x3214f4
  3217d1:	4c 8d 9c 24 80 00 00 00 	lea    r11,[rsp+0x80]
  3217d9:	49 8b 5b 20          	mov    rbx,QWORD PTR [r11+0x20]
  3217dd:	49 8b 73 28          	mov    rsi,QWORD PTR [r11+0x28]
  3217e1:	49 8b e3             	mov    rsp,r11
  3217e4:	41 5e                	pop    r14
  3217e6:	5f                   	pop    rdi
  3217e7:	5d                   	pop    rbp
  3217e8:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003217ec <.data+0x3217ec>:
  3217ec:	48 83 ec 28          	sub    rsp,0x28
  3217f0:	8b 0d 1a 01 0d 00    	mov    ecx,DWORD PTR [rip+0xd011a]        # 0x3f1910
  3217f6:	f6 c1 01             	test   cl,0x1
  3217f9:	75 20                	jne    0x32181b
  3217fb:	4c 8b 05 fe 56 0b 00 	mov    r8,QWORD PTR [rip+0xb56fe]        # 0x3d6f00
  321802:	83 c9 01             	or     ecx,0x1
  321805:	49 81 c0 10 fe 44 05 	add    r8,0x544fe10
  32180c:	89 0d fe 00 0d 00    	mov    DWORD PTR [rip+0xd00fe],ecx        # 0x3f1910
  321812:	4c 89 05 ef 00 0d 00 	mov    QWORD PTR [rip+0xd00ef],r8        # 0x3f1908
  321819:	eb 07                	jmp    0x321822
  32181b:	4c 8b 05 e6 00 0d 00 	mov    r8,QWORD PTR [rip+0xd00e6]        # 0x3f1908
  321822:	f6 c1 02             	test   cl,0x2
  321825:	75 1f                	jne    0x321846
  321827:	83 c9 02             	or     ecx,0x2
  32182a:	48 8d 15 ef 00 0d 00 	lea    rdx,[rip+0xd00ef]        # 0x3f1920
  321831:	89 0d d9 00 0d 00    	mov    DWORD PTR [rip+0xd00d9],ecx        # 0x3f1910
  321837:	45 33 c9             	xor    r9d,r9d
  32183a:	48 8b 0d 1f 46 0b 00 	mov    rcx,QWORD PTR [rip+0xb461f]        # 0x3d5e60
  321841:	e8 de a4 fa ff       	call   0x2cbd24
  321846:	48 8b 0d 13 46 0b 00 	mov    rcx,QWORD PTR [rip+0xb4613]        # 0x3d5e60
  32184d:	48 8d 15 cc 00 0d 00 	lea    rdx,[rip+0xd00cc]        # 0x3f1920
  321854:	48 83 c4 28          	add    rsp,0x28
  321858:	e9 bb c1 fb ff       	jmp    0x2dda18


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000321860 <.data+0x321860>:
  321860:	4c 8b d2             	mov    r10,rdx
  321863:	4c 8b d9             	mov    r11,rcx
  321866:	45 33 c9             	xor    r9d,r9d
  321869:	b8 25 49 92 24       	mov    eax,0x24924925
  32186e:	41 f7 e1             	mul    r9d
  321871:	41 8b c1             	mov    eax,r9d
  321874:	2b c2                	sub    eax,edx
  321876:	d1 e8                	shr    eax,1
  321878:	03 c2                	add    eax,edx
  32187a:	c1 e8 05             	shr    eax,0x5
  32187d:	0f be c0             	movsx  eax,al
  321880:	6b c8 38             	imul   ecx,eax,0x38
  321883:	41 8a c1             	mov    al,r9b
  321886:	2a c1                	sub    al,cl
  321888:	04 37                	add    al,0x37
  32188a:	43 32 04 0a          	xor    al,BYTE PTR [r10+r9*1]
  32188e:	43 88 04 0b          	mov    BYTE PTR [r11+r9*1],al
  321892:	41 ff c1             	inc    r9d
  321895:	41 83 f9 20          	cmp    r9d,0x20
  321899:	7c ce                	jl     0x321869
  32189b:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000032189c <.data+0x32189c>:
  32189c:	40 53                	rex push rbx
  32189e:	48 83 ec 20          	sub    rsp,0x20
  3218a2:	48 8b d9             	mov    rbx,rcx
  3218a5:	e8 2a f1 ff ff       	call   0x3209d4
  3218aa:	84 c0                	test   al,al
  3218ac:	74 0b                	je     0x3218b9
  3218ae:	48 8b d3             	mov    rdx,rbx
  3218b1:	48 8b cb             	mov    rcx,rbx
  3218b4:	e8 a7 ff ff ff       	call   0x321860
  3218b9:	48 8b c3             	mov    rax,rbx
  3218bc:	48 83 c4 20          	add    rsp,0x20
  3218c0:	5b                   	pop    rbx
  3218c1:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003218c4 <.data+0x3218c4>:
  3218c4:	40 53                	rex push rbx
  3218c6:	48 83 ec 20          	sub    rsp,0x20
  3218ca:	8b 05 50 ff 0c 00    	mov    eax,DWORD PTR [rip+0xcff50]        # 0x3f1820
  3218d0:	48 8b d9             	mov    rbx,rcx
  3218d3:	a8 01                	test   al,0x1
  3218d5:	75 20                	jne    0x3218f7
  3218d7:	83 c8 01             	or     eax,0x1
  3218da:	89 05 40 ff 0c 00    	mov    DWORD PTR [rip+0xcff40],eax        # 0x3f1820
  3218e0:	e8 67 d5 fb ff       	call   0x2dee4c
  3218e5:	4c 8b c0             	mov    r8,rax
  3218e8:	48 89 05 29 ff 0c 00 	mov    QWORD PTR [rip+0xcff29],rax        # 0x3f1818
  3218ef:	8b 05 2b ff 0c 00    	mov    eax,DWORD PTR [rip+0xcff2b]        # 0x3f1820
  3218f5:	eb 07                	jmp    0x3218fe
  3218f7:	4c 8b 05 1a ff 0c 00 	mov    r8,QWORD PTR [rip+0xcff1a]        # 0x3f1818
  3218fe:	a8 02                	test   al,0x2
  321900:	75 1f                	jne    0x321921
  321902:	48 8b 0d 57 45 0b 00 	mov    rcx,QWORD PTR [rip+0xb4557]        # 0x3d5e60
  321909:	48 8d 15 20 ff 0c 00 	lea    rdx,[rip+0xcff20]        # 0x3f1830
  321910:	83 c8 02             	or     eax,0x2
  321913:	45 33 c9             	xor    r9d,r9d
  321916:	89 05 04 ff 0c 00    	mov    DWORD PTR [rip+0xcff04],eax        # 0x3f1820
  32191c:	e8 03 a4 fa ff       	call   0x2cbd24
  321921:	48 8b 0d 38 45 0b 00 	mov    rcx,QWORD PTR [rip+0xb4538]        # 0x3d5e60
  321928:	48 8d 15 01 ff 0c 00 	lea    rdx,[rip+0xcff01]        # 0x3f1830
  32192f:	4c 8b c3             	mov    r8,rbx
  321932:	48 83 c4 20          	add    rsp,0x20
  321936:	5b                   	pop    rbx
  321937:	e9 c0 a0 fa ff       	jmp    0x2cb9fc


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002ce130 <.data+0x2ce130>:
  2ce130:	40 53                	rex push rbx
  2ce132:	48 83 ec 40          	sub    rsp,0x40
  2ce136:	48 8b da             	mov    rbx,rdx
  2ce139:	48 8d 4c 24 58       	lea    rcx,[rsp+0x58]
  2ce13e:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  2ce143:	e8 3c e5 ff ff       	call   0x2cc684
  2ce148:	48 8b c8             	mov    rcx,rax
  2ce14b:	e8 0c fd ff ff       	call   0x2cde5c
  2ce150:	48 8b c8             	mov    rcx,rax
  2ce153:	e8 00 cf 0f 00       	call   0x3cb058
  2ce158:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  2ce15d:	48 89 03             	mov    QWORD PTR [rbx],rax
  2ce160:	48 8d 4c 24 58       	lea    rcx,[rsp+0x58]
  2ce165:	e8 ae e5 ff ff       	call   0x2cc718
  2ce16a:	48 8b c8             	mov    rcx,rax
  2ce16d:	e8 4a fc ff ff       	call   0x2cddbc
  2ce172:	48 8b 0b             	mov    rcx,QWORD PTR [rbx]
  2ce175:	48 8b d0             	mov    rdx,rax
  2ce178:	e8 4b 06 00 00       	call   0x2ce7c8
  2ce17d:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  2ce182:	48 89 43 10          	mov    QWORD PTR [rbx+0x10],rax
  2ce186:	48 8d 4c 24 58       	lea    rcx,[rsp+0x58]
  2ce18b:	e8 e0 e5 ff ff       	call   0x2cc770
  2ce190:	48 8b c8             	mov    rcx,rax
  2ce193:	e8 84 fb ff ff       	call   0x2cdd1c
  2ce198:	48 8b c8             	mov    rcx,rax
  2ce19b:	e8 b8 ce 0f 00       	call   0x3cb058
  2ce1a0:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  2ce1a5:	48 89 43 08          	mov    QWORD PTR [rbx+0x8],rax
  2ce1a9:	48 8d 4c 24 58       	lea    rcx,[rsp+0x58]
  2ce1ae:	e8 11 e6 ff ff       	call   0x2cc7c4
  2ce1b3:	48 8b c8             	mov    rcx,rax
  2ce1b6:	e8 b1 fb ff ff       	call   0x2cdd6c
  2ce1bb:	48 8b 4b 08          	mov    rcx,QWORD PTR [rbx+0x8]
  2ce1bf:	48 8b d0             	mov    rdx,rax
  2ce1c2:	e8 01 06 00 00       	call   0x2ce7c8
  2ce1c7:	48 89 43 18          	mov    QWORD PTR [rbx+0x18],rax
  2ce1cb:	48 8b c3             	mov    rax,rbx
  2ce1ce:	48 83 c4 40          	add    rsp,0x40
  2ce1d2:	5b                   	pop    rbx
  2ce1d3:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002ce1d4 <.data+0x2ce1d4>:
  2ce1d4:	48 63 41 3c          	movsxd rax,DWORD PTR [rcx+0x3c]
  2ce1d8:	44 8b 84 08 a0 00 00 00 	mov    r8d,DWORD PTR [rax+rcx*1+0xa0]
  2ce1e0:	8b 84 08 a4 00 00 00 	mov    eax,DWORD PTR [rax+rcx*1+0xa4]
  2ce1e7:	89 02                	mov    DWORD PTR [rdx],eax
  2ce1e9:	4a 8d 04 01          	lea    rax,[rcx+r8*1]
  2ce1ed:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002ce1f0 <.data+0x2ce1f0>:
  2ce1f0:	48 83 ec 28          	sub    rsp,0x28
  2ce1f4:	4c 8b d2             	mov    r10,rdx
  2ce1f7:	c7 44 24 40 00 00 00 00 	mov    DWORD PTR [rsp+0x40],0x0
  2ce1ff:	48 8d 54 24 40       	lea    rdx,[rsp+0x40]
  2ce204:	e8 cb ff ff ff       	call   0x2ce1d4
  2ce209:	44 8b 4c 24 40       	mov    r9d,DWORD PTR [rsp+0x40]
  2ce20e:	45 33 c0             	xor    r8d,r8d
  2ce211:	4c 8b d8             	mov    r11,rax
  2ce214:	45 85 c9             	test   r9d,r9d
  2ce217:	74 17                	je     0x2ce230
  2ce219:	4b 8d 14 40          	lea    rdx,[r8+r8*2]
  2ce21d:	49 8d 04 93          	lea    rax,[r11+rdx*4]
  2ce221:	8b 08                	mov    ecx,DWORD PTR [rax]
  2ce223:	49 3b ca             	cmp    rcx,r10
  2ce226:	74 0a                	je     0x2ce232
  2ce228:	41 ff c0             	inc    r8d
  2ce22b:	45 3b c1             	cmp    r8d,r9d
  2ce22e:	72 e9                	jb     0x2ce219
  2ce230:	33 c0                	xor    eax,eax
  2ce232:	48 83 c4 28          	add    rsp,0x28
  2ce236:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002ce7c0 <.data+0x2ce7c0>:
  2ce7c0:	48 63 41 3c          	movsxd rax,DWORD PTR [rcx+0x3c]
  2ce7c4:	48 03 c1             	add    rax,rcx
  2ce7c7:	c3                   	ret
  2ce7c8:	48 89 5c 24 10       	mov    QWORD PTR [rsp+0x10],rbx
  2ce7cd:	48 89 74 24 18       	mov    QWORD PTR [rsp+0x18],rsi
  2ce7d2:	57                   	push   rdi
  2ce7d3:	48 83 ec 20          	sub    rsp,0x20
  2ce7d7:	48 8b f2             	mov    rsi,rdx
  2ce7da:	4c 8b c9             	mov    r9,rcx
  2ce7dd:	e8 de ff ff ff       	call   0x2ce7c0
  2ce7e2:	45 33 d2             	xor    r10d,r10d
  2ce7e5:	44 8b 98 88 00 00 00 	mov    r11d,DWORD PTR [rax+0x88]
  2ce7ec:	41 8b 7c 0b 20       	mov    edi,DWORD PTR [r11+rcx*1+0x20]
  2ce7f1:	41 8b 5c 0b 18       	mov    ebx,DWORD PTR [r11+rcx*1+0x18]
  2ce7f6:	48 03 f9             	add    rdi,rcx
  2ce7f9:	85 db                	test   ebx,ebx
  2ce7fb:	74 20                	je     0x2ce81d
  2ce7fd:	42 8b 14 97          	mov    edx,DWORD PTR [rdi+r10*4]
  2ce801:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  2ce806:	49 03 d1             	add    rdx,r9
  2ce809:	4c 8b c6             	mov    r8,rsi
  2ce80c:	e8 97 de ff ff       	call   0x2cc6a8
  2ce811:	85 c0                	test   eax,eax
  2ce813:	74 1a                	je     0x2ce82f
  2ce815:	49 ff c2             	inc    r10
  2ce818:	4c 3b d3             	cmp    r10,rbx
  2ce81b:	72 e0                	jb     0x2ce7fd
  2ce81d:	33 c0                	xor    eax,eax
  2ce81f:	48 8b 5c 24 38       	mov    rbx,QWORD PTR [rsp+0x38]
  2ce824:	48 8b 74 24 40       	mov    rsi,QWORD PTR [rsp+0x40]
  2ce829:	48 83 c4 20          	add    rsp,0x20
  2ce82d:	5f                   	pop    rdi
  2ce82e:	c3                   	ret
  2ce82f:	43 8b 4c 0b 24       	mov    ecx,DWORD PTR [r11+r9*1+0x24]
  2ce834:	49 03 c9             	add    rcx,r9
  2ce837:	42 0f b7 14 51       	movzx  edx,WORD PTR [rcx+r10*2]
  2ce83c:	43 8b 4c 0b 1c       	mov    ecx,DWORD PTR [r11+r9*1+0x1c]
  2ce841:	49 03 c9             	add    rcx,r9
  2ce844:	8b 04 91             	mov    eax,DWORD PTR [rcx+rdx*4]
  2ce847:	49 03 c1             	add    rax,r9
  2ce84a:	eb d3                	jmp    0x2ce81f


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002d4758 <.data+0x2d4758>:
  2d4758:	40 53                	rex push rbx
  2d475a:	48 83 ec 20          	sub    rsp,0x20
  2d475e:	8a 54 24 30          	mov    dl,BYTE PTR [rsp+0x30]
  2d4762:	48 8b d9             	mov    rbx,rcx
  2d4765:	e8 a6 a3 ff ff       	call   0x2ceb10
  2d476a:	48 8b c3             	mov    rax,rbx
  2d476d:	48 83 c4 20          	add    rsp,0x20
  2d4771:	5b                   	pop    rbx
  2d4772:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002ceb10 <.data+0x2ceb10>:
  2ceb10:	40 53                	rex push rbx
  2ceb12:	48 83 ec 20          	sub    rsp,0x20
  2ceb16:	48 8b d9             	mov    rbx,rcx
  2ceb19:	e8 62 56 00 00       	call   0x2d4180
  2ceb1e:	48 8b c3             	mov    rax,rbx
  2ceb21:	48 83 c4 20          	add    rsp,0x20
  2ceb25:	5b                   	pop    rbx
  2ceb26:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002d4180 <.data+0x2d4180>:
  2d4180:	33 c0                	xor    eax,eax
  2d4182:	48 89 01             	mov    QWORD PTR [rcx],rax
  2d4185:	48 89 41 08          	mov    QWORD PTR [rcx+0x8],rax
  2d4189:	48 89 41 10          	mov    QWORD PTR [rcx+0x10],rax
  2d418d:	48 8b c1             	mov    rax,rcx
  2d4190:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003209d4 <.data+0x3209d4>:
  3209d4:	80 79 1f 00          	cmp    BYTE PTR [rcx+0x1f],0x0
  3209d8:	0f 95 c0             	setne  al
  3209db:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000320b04 <.data+0x320b04>:
  320b04:	40 53                	rex push rbx
  320b06:	48 83 ec 20          	sub    rsp,0x20
  320b0a:	8b 05 d8 51 0c 00    	mov    eax,DWORD PTR [rip+0xc51d8]        # 0x3e5ce8
  320b10:	48 8b d9             	mov    rbx,rcx
  320b13:	a8 01                	test   al,0x1
  320b15:	75 20                	jne    0x320b37
  320b17:	83 c8 01             	or     eax,0x1
  320b1a:	89 05 c8 51 0c 00    	mov    DWORD PTR [rip+0xc51c8],eax        # 0x3e5ce8
  320b20:	e8 e7 db fc ff       	call   0x2ee70c
  320b25:	4c 8b c0             	mov    r8,rax
  320b28:	48 89 05 b1 51 0c 00 	mov    QWORD PTR [rip+0xc51b1],rax        # 0x3e5ce0
  320b2f:	8b 05 b3 51 0c 00    	mov    eax,DWORD PTR [rip+0xc51b3]        # 0x3e5ce8
  320b35:	eb 07                	jmp    0x320b3e
  320b37:	4c 8b 05 a2 51 0c 00 	mov    r8,QWORD PTR [rip+0xc51a2]        # 0x3e5ce0
  320b3e:	a8 02                	test   al,0x2
  320b40:	75 1f                	jne    0x320b61
  320b42:	48 8b 0d 17 53 0b 00 	mov    rcx,QWORD PTR [rip+0xb5317]        # 0x3d5e60
  320b49:	48 8d 15 a0 51 0c 00 	lea    rdx,[rip+0xc51a0]        # 0x3e5cf0
  320b50:	83 c8 02             	or     eax,0x2
  320b53:	45 33 c9             	xor    r9d,r9d
  320b56:	89 05 8c 51 0c 00    	mov    DWORD PTR [rip+0xc518c],eax        # 0x3e5ce8
  320b5c:	e8 c3 b1 fa ff       	call   0x2cbd24
  320b61:	48 8b 0d f8 52 0b 00 	mov    rcx,QWORD PTR [rip+0xb52f8]        # 0x3d5e60
  320b68:	48 8d 15 81 51 0c 00 	lea    rdx,[rip+0xc5181]        # 0x3e5cf0
  320b6f:	4c 8b c3             	mov    r8,rbx
  320b72:	48 83 c4 20          	add    rsp,0x20
  320b76:	5b                   	pop    rbx
  320b77:	e9 80 ae fa ff       	jmp    0x2cb9fc


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002ce5d8 <.data+0x2ce5d8>:
  2ce5d8:	48 8b 01             	mov    rax,QWORD PTR [rcx]
  2ce5db:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002cc6a8 <.data+0x2cc6a8>:
  2cc6a8:	eb 0b                	jmp    0x2cc6b5
  2cc6aa:	80 3a 00             	cmp    BYTE PTR [rdx],0x0
  2cc6ad:	74 18                	je     0x2cc6c7
  2cc6af:	49 ff c0             	inc    r8
  2cc6b2:	48 ff c2             	inc    rdx
  2cc6b5:	41 8a 08             	mov    cl,BYTE PTR [r8]
  2cc6b8:	8a 02                	mov    al,BYTE PTR [rdx]
  2cc6ba:	3a c1                	cmp    al,cl
  2cc6bc:	74 ec                	je     0x2cc6aa
  2cc6be:	0f be c0             	movsx  eax,al
  2cc6c1:	0f be c9             	movsx  ecx,cl
  2cc6c4:	2b c1                	sub    eax,ecx
  2cc6c6:	c3                   	ret
  2cc6c7:	33 c0                	xor    eax,eax
  2cc6c9:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003352b8 <.data+0x3352b8>:
  3352b8:	e9 a3 f3 ff ff       	jmp    0x334660
  3352bd:	cc                   	int3
  3352be:	cc                   	int3
  3352bf:	cc                   	int3
  3352c0:	e9 7b fd ff ff       	jmp    0x335040
  3352c5:	cc                   	int3
  3352c6:	cc                   	int3
  3352c7:	cc                   	int3
  3352c8:	e9 13 00 00 00       	jmp    0x3352e0
  3352cd:	cc                   	int3
  3352ce:	cc                   	int3
  3352cf:	cc                   	int3
  3352d0:	e9 6b fe ff ff       	jmp    0x335140
  3352d5:	cc                   	int3
  3352d6:	cc                   	int3
  3352d7:	cc                   	int3
  3352d8:	e9 63 ff ff ff       	jmp    0x335240
  3352dd:	cc                   	int3
  3352de:	cc                   	int3
  3352df:	cc                   	int3


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002d901c <.data+0x2d901c>:
  2d901c:	e9 73 6c ff ff       	jmp    0x2cfc94


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002cfc94 <.data+0x2cfc94>:
  2cfc94:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  2cfc99:	57                   	push   rdi
  2cfc9a:	48 83 ec 20          	sub    rsp,0x20
  2cfc9e:	48 8b 79 08          	mov    rdi,QWORD PTR [rcx+0x8]
  2cfca2:	48 8b d9             	mov    rbx,rcx
  2cfca5:	48 8b ca             	mov    rcx,rdx
  2cfca8:	e8 f7 b6 ff ff       	call   0x2cb3a4
  2cfcad:	48 8b cb             	mov    rcx,rbx
  2cfcb0:	48 3b 7b 10          	cmp    rdi,QWORD PTR [rbx+0x10]
  2cfcb4:	74 0a                	je     0x2cfcc0
  2cfcb6:	48 8b d0             	mov    rdx,rax
  2cfcb9:	e8 ee fd ff ff       	call   0x2cfaac
  2cfcbe:	eb 0b                	jmp    0x2cfccb
  2cfcc0:	4c 8b c0             	mov    r8,rax
  2cfcc3:	48 8b d7             	mov    rdx,rdi
  2cfcc6:	e8 b1 02 00 00       	call   0x2cff7c
  2cfccb:	48 8b 5c 24 30       	mov    rbx,QWORD PTR [rsp+0x30]
  2cfcd0:	48 83 c4 20          	add    rsp,0x20
  2cfcd4:	5f                   	pop    rdi
  2cfcd5:	c3                   	ret
