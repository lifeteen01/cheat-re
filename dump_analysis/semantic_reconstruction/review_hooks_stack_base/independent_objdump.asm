
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

00000000002ce1d4 <.data+0x2ce1d4>:
  2ce1d4:	48 63 41 3c          	movsxd rax,DWORD PTR [rcx+0x3c]
  2ce1d8:	44 8b 84 08 a0 00 00 	mov    r8d,DWORD PTR [rax+rcx*1+0xa0]
  2ce1df:	00 
  2ce1e0:	8b 84 08 a4 00 00 00 	mov    eax,DWORD PTR [rax+rcx*1+0xa4]
  2ce1e7:	89 02                	mov    DWORD PTR [rdx],eax
  2ce1e9:	4a 8d 04 01          	lea    rax,[rcx+r8*1]
  2ce1ed:	c3                   	ret
  2ce1ee:	cc                   	int3
  2ce1ef:	cc                   	int3
  2ce1f0:	48 83 ec 28          	sub    rsp,0x28
  2ce1f4:	4c 8b d2             	mov    r10,rdx
  2ce1f7:	c7 44 24 40 00 00 00 	mov    DWORD PTR [rsp+0x40],0x0
  2ce1fe:	00 
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

00000000002ce3dc <.data+0x2ce3dc>:
  2ce3dc:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  2ce3e1:	48 89 7c 24 10       	mov    QWORD PTR [rsp+0x10],rdi
  2ce3e6:	4c 8b da             	mov    r11,rdx
  2ce3e9:	48 8b f9             	mov    rdi,rcx
  2ce3ec:	41 0f b6 5b 02       	movzx  ebx,BYTE PTR [r11+0x2]
  2ce3f1:	4d 8d 4b 04          	lea    r9,[r11+0x4]
  2ce3f5:	45 33 d2             	xor    r10d,r10d
  2ce3f8:	45 89 10             	mov    DWORD PTR [r8],r10d
  2ce3fb:	84 db                	test   bl,bl
  2ce3fd:	74 60                	je     0x2ce45f
  2ce3ff:	41 0f b6 51 01       	movzx  edx,BYTE PTR [r9+0x1]
  2ce404:	8b ca                	mov    ecx,edx
  2ce406:	83 e1 0f             	and    ecx,0xf
  2ce409:	83 f9 06             	cmp    ecx,0x6
  2ce40c:	0f 87 f0 00 00 00    	ja     0x2ce502
  2ce412:	0f 84 23 01 00 00    	je     0x2ce53b
  2ce418:	85 c9                	test   ecx,ecx
  2ce41a:	0f 84 d1 00 00 00    	je     0x2ce4f1
  2ce420:	83 e9 01             	sub    ecx,0x1
  2ce423:	0f 84 87 00 00 00    	je     0x2ce4b0
  2ce429:	83 e9 01             	sub    ecx,0x1
  2ce42c:	74 72                	je     0x2ce4a0
  2ce42e:	83 e9 02             	sub    ecx,0x2
  2ce431:	74 51                	je     0x2ce484
  2ce433:	83 f9 01             	cmp    ecx,0x1
  2ce436:	75 1b                	jne    0x2ce453
  2ce438:	c0 ea 04             	shr    dl,0x4
  2ce43b:	80 fa 04             	cmp    dl,0x4
  2ce43e:	0f 84 03 01 00 00    	je     0x2ce547
  2ce444:	41 c7 00 00 00 00 00 	mov    DWORD PTR [r8],0x0
  2ce44b:	49 83 c1 04          	add    r9,0x4
  2ce44f:	41 83 c2 02          	add    r10d,0x2
  2ce453:	49 83 c1 02          	add    r9,0x2
  2ce457:	41 ff c2             	inc    r10d
  2ce45a:	44 3b d3             	cmp    r10d,ebx
  2ce45d:	72 a0                	jb     0x2ce3ff
  2ce45f:	41 f6 03 20          	test   BYTE PTR [r11],0x20
  2ce463:	0f 84 e2 00 00 00    	je     0x2ce54b
  2ce469:	41 0f b6 53 02       	movzx  edx,BYTE PTR [r11+0x2]
  2ce46e:	f6 c2 01             	test   dl,0x1
  2ce471:	8d 4a 01             	lea    ecx,[rdx+0x1]
  2ce474:	0f 44 ca             	cmove  ecx,edx
  2ce477:	45 8b 5c 4b 0c       	mov    r11d,DWORD PTR [r11+rcx*2+0xc]
  2ce47c:	4c 03 df             	add    r11,rdi
  2ce47f:	e9 68 ff ff ff       	jmp    0x2ce3ec
  2ce484:	c0 ea 04             	shr    dl,0x4
  2ce487:	80 fa 04             	cmp    dl,0x4
  2ce48a:	0f 84 b7 00 00 00    	je     0x2ce547
  2ce490:	49 83 c1 02          	add    r9,0x2
  2ce494:	41 c7 00 00 00 00 00 	mov    DWORD PTR [r8],0x0
  2ce49b:	41 ff c2             	inc    r10d
  2ce49e:	eb b3                	jmp    0x2ce453
  2ce4a0:	d1 ea                	shr    edx,1
  2ce4a2:	81 e2 f8 ff ff 7f    	and    edx,0x7ffffff8
  2ce4a8:	83 c2 08             	add    edx,0x8
  2ce4ab:	41 01 10             	add    DWORD PTR [r8],edx
  2ce4ae:	eb a3                	jmp    0x2ce453
  2ce4b0:	41 8a 41 03          	mov    al,BYTE PTR [r9+0x3]
  2ce4b4:	41 0f b7 49 02       	movzx  ecx,WORD PTR [r9+0x2]
  2ce4b9:	c0 e8 04             	shr    al,0x4
  2ce4bc:	84 c0                	test   al,al
  2ce4be:	75 11                	jne    0x2ce4d1
  2ce4c0:	8d 04 cd 00 00 00 00 	lea    eax,[rcx*8+0x0]
  2ce4c7:	b9 02 00 00 00       	mov    ecx,0x2
  2ce4cc:	8d 51 ff             	lea    edx,[rcx-0x1]
  2ce4cf:	eb 12                	jmp    0x2ce4e3
  2ce4d1:	41 0f b7 41 04       	movzx  eax,WORD PTR [r9+0x4]
  2ce4d6:	c1 e0 10             	shl    eax,0x10
  2ce4d9:	0b c1                	or     eax,ecx
  2ce4db:	b9 04 00 00 00       	mov    ecx,0x4
  2ce4e0:	8d 51 fe             	lea    edx,[rcx-0x2]
  2ce4e3:	41 01 00             	add    DWORD PTR [r8],eax
  2ce4e6:	4c 03 c9             	add    r9,rcx
  2ce4e9:	44 03 d2             	add    r10d,edx
  2ce4ec:	e9 62 ff ff ff       	jmp    0x2ce453
  2ce4f1:	c0 ea 04             	shr    dl,0x4
  2ce4f4:	80 fa 04             	cmp    dl,0x4
  2ce4f7:	74 4e                	je     0x2ce547
  2ce4f9:	41 83 00 08          	add    DWORD PTR [r8],0x8
  2ce4fd:	e9 51 ff ff ff       	jmp    0x2ce453
  2ce502:	83 e9 07             	sub    ecx,0x7
  2ce505:	0f 84 40 ff ff ff    	je     0x2ce44b
  2ce50b:	83 e9 01             	sub    ecx,0x1
  2ce50e:	74 2b                	je     0x2ce53b
  2ce510:	83 e9 01             	sub    ecx,0x1
  2ce513:	0f 84 32 ff ff ff    	je     0x2ce44b
  2ce519:	83 f9 01             	cmp    ecx,0x1
  2ce51c:	0f 85 31 ff ff ff    	jne    0x2ce453
  2ce522:	c0 ea 04             	shr    dl,0x4
  2ce525:	84 d2                	test   dl,dl
  2ce527:	75 09                	jne    0x2ce532
  2ce529:	41 83 00 40          	add    DWORD PTR [r8],0x40
  2ce52d:	e9 21 ff ff ff       	jmp    0x2ce453
  2ce532:	41 83 00 48          	add    DWORD PTR [r8],0x48
  2ce536:	e9 18 ff ff ff       	jmp    0x2ce453
  2ce53b:	49 83 c1 02          	add    r9,0x2
  2ce53f:	41 ff c2             	inc    r10d
  2ce542:	e9 0c ff ff ff       	jmp    0x2ce453
  2ce547:	33 c0                	xor    eax,eax
  2ce549:	eb 03                	jmp    0x2ce54e
  2ce54b:	41 8b 00             	mov    eax,DWORD PTR [r8]
  2ce54e:	48 8b 5c 24 08       	mov    rbx,QWORD PTR [rsp+0x8]
  2ce553:	48 8b 7c 24 10       	mov    rdi,QWORD PTR [rsp+0x10]
  2ce558:	c3                   	ret

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000368cb0 <.data+0x368cb0>:
  368cb0:	48 8b c4             	mov    rax,rsp
  368cb3:	48 89 58 08          	mov    QWORD PTR [rax+0x8],rbx
  368cb7:	89 50 10             	mov    DWORD PTR [rax+0x10],edx
  368cba:	55                   	push   rbp
  368cbb:	56                   	push   rsi
  368cbc:	57                   	push   rdi
  368cbd:	41 54                	push   r12
  368cbf:	41 55                	push   r13
  368cc1:	41 56                	push   r14
  368cc3:	41 57                	push   r15
  368cc5:	48 8d 68 a1          	lea    rbp,[rax-0x5f]
  368cc9:	48 81 ec b0 00 00 00 	sub    rsp,0xb0
  368cd0:	0f 29 70 b8          	movaps XMMWORD PTR [rax-0x48],xmm6
  368cd4:	4c 8b f1             	mov    r14,rcx
  368cd7:	0f 29 78 a8          	movaps XMMWORD PTR [rax-0x58],xmm7
  368cdb:	44 0f 29 40 98       	movaps XMMWORD PTR [rax-0x68],xmm8
  368ce0:	e8 b7 79 f7 ff       	call   0x2e069c
  368ce5:	48 8b c8             	mov    rcx,rax
  368ce8:	4c 8b e8             	mov    r13,rax
  368ceb:	e8 18 22 f6 ff       	call   0x2caf08
  368cf0:	84 c0                	test   al,al
  368cf2:	0f 84 2a 02 00 00    	je     0x368f22
  368cf8:	49 8b ce             	mov    rcx,r14
  368cfb:	e8 08 22 f6 ff       	call   0x2caf08
  368d00:	84 c0                	test   al,al
  368d02:	0f 84 1a 02 00 00    	je     0x368f22
  368d08:	49 8b ce             	mov    rcx,r14
  368d0b:	e8 8c 81 f7 ff       	call   0x2e0e9c
  368d10:	84 c0                	test   al,al
  368d12:	0f 84 0a 02 00 00    	je     0x368f22
  368d18:	e8 7f 4d f7 ff       	call   0x2dda9c
  368d1d:	48 8b c8             	mov    rcx,rax
  368d20:	e8 e3 21 f6 ff       	call   0x2caf08
  368d25:	84 c0                	test   al,al
  368d27:	0f 84 f5 01 00 00    	je     0x368f22
  368d2d:	4d 8b be d0 01 00 00 	mov    r15,QWORD PTR [r14+0x1d0]
  368d34:	49 8b cf             	mov    rcx,r15
  368d37:	e8 cc 21 f6 ff       	call   0x2caf08
  368d3c:	84 c0                	test   al,al
  368d3e:	0f 84 de 01 00 00    	je     0x368f22
  368d44:	4d 8b 7f 50          	mov    r15,QWORD PTR [r15+0x50]
  368d48:	49 8b cf             	mov    rcx,r15
  368d4b:	e8 b8 21 f6 ff       	call   0x2caf08
  368d50:	84 c0                	test   al,al
  368d52:	0f 84 ca 01 00 00    	je     0x368f22
  368d58:	45 8b 67 18          	mov    r12d,DWORD PTR [r15+0x18]
  368d5c:	45 85 e4             	test   r12d,r12d
  368d5f:	0f 8e bd 01 00 00    	jle    0x368f22
  368d65:	f3 0f 10 3d e7 4d f2 	movss  xmm7,DWORD PTR [rip+0xfffffffffff24de7]        # 0x28db54
  368d6c:	ff 
  368d6d:	83 cf ff             	or     edi,0xffffffff
  368d70:	33 f6                	xor    esi,esi
  368d72:	45 0f 57 c0          	xorps  xmm8,xmm8
  368d76:	8d 04 f5 00 00 00 00 	lea    eax,[rsi*8+0x0]
  368d7d:	48 63 c8             	movsxd rcx,eax
  368d80:	4d 8b 44 0f 20       	mov    r8,QWORD PTR [r15+rcx*1+0x20]
  368d85:	49 8b c8             	mov    rcx,r8
  368d88:	e8 7b 21 f6 ff       	call   0x2caf08
  368d8d:	84 c0                	test   al,al
  368d8f:	0f 84 17 01 00 00    	je     0x368eac
  368d95:	8d 46 d5             	lea    eax,[rsi-0x2b]
  368d98:	83 f8 01             	cmp    eax,0x1
  368d9b:	0f 86 0b 01 00 00    	jbe    0x368eac
  368da1:	48 8d 55 a7          	lea    rdx,[rbp-0x59]
  368da5:	49 8b c8             	mov    rcx,r8
  368da8:	e8 27 ba 00 00       	call   0x3747d4
  368dad:	e8 ba dc f7 ff       	call   0x2e6a6c
  368db2:	8b 4d af             	mov    ecx,DWORD PTR [rbp-0x51]
  368db5:	48 8d 55 e7          	lea    rdx,[rbp-0x19]
  368db9:	f2 0f 10 45 a7       	movsd  xmm0,QWORD PTR [rbp-0x59]
  368dbe:	8b d8                	mov    ebx,eax
  368dc0:	89 4d bf             	mov    DWORD PTR [rbp-0x41],ecx
  368dc3:	49 8b cd             	mov    rcx,r13
  368dc6:	f2 0f 11 45 b7       	movsd  QWORD PTR [rbp-0x49],xmm0
  368dcb:	e8 64 3c 00 00       	call   0x36ca34
  368dd0:	0f 57 db             	xorps  xmm3,xmm3
  368dd3:	f3 44 0f 11 44 24 20 	movss  DWORD PTR [rsp+0x20],xmm8
  368dda:	44 8b c3             	mov    r8d,ebx
  368ddd:	48 8d 55 b7          	lea    rdx,[rbp-0x49]
  368de1:	8b 48 08             	mov    ecx,DWORD PTR [rax+0x8]
  368de4:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  368de8:	89 4d cf             	mov    DWORD PTR [rbp-0x31],ecx
  368deb:	48 8d 4d c7          	lea    rcx,[rbp-0x39]
  368def:	f2 0f 11 45 c7       	movsd  QWORD PTR [rbp-0x39],xmm0
  368df4:	e8 27 95 f7 ff       	call   0x2e2320
  368df9:	84 c0                	test   al,al
  368dfb:	0f 84 ab 00 00 00    	je     0x368eac
  368e01:	48 8d 4d 77          	lea    rcx,[rbp+0x77]
  368e05:	e8 9a 25 f6 ff       	call   0x2cb3a4
  368e0a:	f2 0f 10 45 a7       	movsd  xmm0,QWORD PTR [rbp-0x59]
  368e0f:	4c 8d 0d 92 e4 06 00 	lea    r9,[rip+0x6e492]        # 0x3d72a8
  368e16:	8b 45 af             	mov    eax,DWORD PTR [rbp-0x51]
  368e19:	4c 8d 45 77          	lea    r8,[rbp+0x77]
  368e1d:	48 8d 55 d7          	lea    rdx,[rbp-0x29]
  368e21:	f2 0f 11 45 d7       	movsd  QWORD PTR [rbp-0x29],xmm0
  368e26:	49 8b cd             	mov    rcx,r13
  368e29:	89 45 df             	mov    DWORD PTR [rbp-0x21],eax
  368e2c:	e8 ef 3e 00 00       	call   0x36cd20
  368e31:	84 c0                	test   al,al
  368e33:	74 77                	je     0x368eac
  368e35:	e8 b6 7c f7 ff       	call   0x2e0af0
  368e3a:	66 0f 6e f0          	movd   xmm6,eax
  368e3e:	0f 5b f6             	cvtdq2ps xmm6,xmm6
  368e41:	f3 0f 59 35 07 44 f2 	mulss  xmm6,DWORD PTR [rip+0xfffffffffff24407]        # 0x28d250
  368e48:	ff 
  368e49:	e8 a2 7b f7 ff       	call   0x2e09f0
  368e4e:	0f 28 ce             	movaps xmm1,xmm6
  368e51:	48 8d 4d 7f          	lea    rcx,[rbp+0x7f]
  368e55:	66 0f 6e d0          	movd   xmm2,eax
  368e59:	0f 5b d2             	cvtdq2ps xmm2,xmm2
  368e5c:	f3 0f 59 15 ec 43 f2 	mulss  xmm2,DWORD PTR [rip+0xfffffffffff243ec]        # 0x28d250
  368e63:	ff 
  368e64:	e8 d7 34 f6 ff       	call   0x2cc340
  368e69:	f3 0f 10 85 83 00 00 	movss  xmm0,DWORD PTR [rbp+0x83]
  368e70:	00 
  368e71:	bb 02 00 00 00       	mov    ebx,0x2
  368e76:	f3 0f 5c 45 7b       	subss  xmm0,DWORD PTR [rbp+0x7b]
  368e7b:	8b d3                	mov    edx,ebx
  368e7d:	e8 ce ad f7 ff       	call   0x2e3c50
  368e82:	0f 28 f0             	movaps xmm6,xmm0
  368e85:	8b d3                	mov    edx,ebx
  368e87:	f3 0f 10 45 7f       	movss  xmm0,DWORD PTR [rbp+0x7f]
  368e8c:	f3 0f 5c 45 77       	subss  xmm0,DWORD PTR [rbp+0x77]
  368e91:	e8 ba ad f7 ff       	call   0x2e3c50
  368e96:	f3 0f 58 f0          	addss  xmm6,xmm0
  368e9a:	0f 28 c6             	movaps xmm0,xmm6
  368e9d:	e8 e6 ad f7 ff       	call   0x2e3c88
  368ea2:	0f 2f f8             	comiss xmm7,xmm0
  368ea5:	76 05                	jbe    0x368eac
  368ea7:	8b fe                	mov    edi,esi
  368ea9:	0f 28 f8             	movaps xmm7,xmm0
  368eac:	ff c6                	inc    esi
  368eae:	41 3b f4             	cmp    esi,r12d
  368eb1:	0f 8c bf fe ff ff    	jl     0x368d76
  368eb7:	8b 75 6f             	mov    esi,DWORD PTR [rbp+0x6f]
  368eba:	85 f6                	test   esi,esi
  368ebc:	74 60                	je     0x368f1e
  368ebe:	44 8b c6             	mov    r8d,esi
  368ec1:	48 8d 55 d7          	lea    rdx,[rbp-0x29]
  368ec5:	49 8b ce             	mov    rcx,r14
  368ec8:	e8 1b fd ff ff       	call   0x368be8
  368ecd:	e8 9a db f7 ff       	call   0x2e6a6c
  368ed2:	8b 4d df             	mov    ecx,DWORD PTR [rbp-0x21]
  368ed5:	48 8d 55 e7          	lea    rdx,[rbp-0x19]
  368ed9:	f2 0f 10 45 d7       	movsd  xmm0,QWORD PTR [rbp-0x29]
  368ede:	8b d8                	mov    ebx,eax
  368ee0:	89 4d cf             	mov    DWORD PTR [rbp-0x31],ecx
  368ee3:	49 8b cd             	mov    rcx,r13
  368ee6:	f2 0f 11 45 c7       	movsd  QWORD PTR [rbp-0x39],xmm0
  368eeb:	e8 44 3b 00 00       	call   0x36ca34
  368ef0:	0f 57 db             	xorps  xmm3,xmm3
  368ef3:	f3 44 0f 11 44 24 20 	movss  DWORD PTR [rsp+0x20],xmm8
  368efa:	44 8b c3             	mov    r8d,ebx
  368efd:	48 8d 55 c7          	lea    rdx,[rbp-0x39]
  368f01:	8b 48 08             	mov    ecx,DWORD PTR [rax+0x8]
  368f04:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  368f08:	89 4d bf             	mov    DWORD PTR [rbp-0x41],ecx
  368f0b:	48 8d 4d b7          	lea    rcx,[rbp-0x49]
  368f0f:	f2 0f 11 45 b7       	movsd  QWORD PTR [rbp-0x49],xmm0
  368f14:	e8 07 94 f7 ff       	call   0x2e2320
  368f19:	84 c0                	test   al,al
  368f1b:	0f 45 fe             	cmovne edi,esi
  368f1e:	8b c7                	mov    eax,edi
  368f20:	eb 03                	jmp    0x368f25
  368f22:	83 c8 ff             	or     eax,0xffffffff
  368f25:	4c 8d 9c 24 b0 00 00 	lea    r11,[rsp+0xb0]
  368f2c:	00 
  368f2d:	49 8b 5b 40          	mov    rbx,QWORD PTR [r11+0x40]
  368f31:	41 0f 28 73 f0       	movaps xmm6,XMMWORD PTR [r11-0x10]
  368f36:	41 0f 28 7b e0       	movaps xmm7,XMMWORD PTR [r11-0x20]
  368f3b:	45 0f 28 43 d0       	movaps xmm8,XMMWORD PTR [r11-0x30]
  368f40:	49 8b e3             	mov    rsp,r11
  368f43:	41 5f                	pop    r15
  368f45:	41 5e                	pop    r14
  368f47:	41 5d                	pop    r13
  368f49:	41 5c                	pop    r12
  368f4b:	5f                   	pop    rdi
  368f4c:	5e                   	pop    rsi
  368f4d:	5d                   	pop    rbp
  368f4e:	c3                   	ret

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000036b758 <.data+0x36b758>:
  36b758:	48 8b c4             	mov    rax,rsp
  36b75b:	48 89 58 08          	mov    QWORD PTR [rax+0x8],rbx
  36b75f:	48 89 68 18          	mov    QWORD PTR [rax+0x18],rbp
  36b763:	56                   	push   rsi
  36b764:	57                   	push   rdi
  36b765:	41 54                	push   r12
  36b767:	41 56                	push   r14
  36b769:	41 57                	push   r15
  36b76b:	48 81 ec b0 00 00 00 	sub    rsp,0xb0
  36b772:	0f 29 70 c8          	movaps XMMWORD PTR [rax-0x38],xmm6
  36b776:	4c 8b c1             	mov    r8,rcx
  36b779:	e8 8a f7 f5 ff       	call   0x2caf08
  36b77e:	84 c0                	test   al,al
  36b780:	0f 84 8e 01 00 00    	je     0x36b914
  36b786:	ba 90 00 00 00       	mov    edx,0x90
  36b78b:	49 8b c8             	mov    rcx,r8
  36b78e:	e8 a9 36 f7 ff       	call   0x2dee3c
  36b793:	4c 8b 30             	mov    r14,QWORD PTR [rax]
  36b796:	49 8b ce             	mov    rcx,r14
  36b799:	e8 6a f7 f5 ff       	call   0x2caf08
  36b79e:	84 c0                	test   al,al
  36b7a0:	0f 84 6e 01 00 00    	je     0x36b914
  36b7a6:	45 8b 7e 18          	mov    r15d,DWORD PTR [r14+0x18]
  36b7aa:	45 85 ff             	test   r15d,r15d
  36b7ad:	0f 8e 61 01 00 00    	jle    0x36b914
  36b7b3:	33 ff                	xor    edi,edi
  36b7b5:	0f 57 f6             	xorps  xmm6,xmm6
  36b7b8:	33 f6                	xor    esi,esi
  36b7ba:	49 bc 25 23 22 84 e4 	movabs r12,0xcbf29ce484222325
  36b7c1:	9c f2 cb 
  36b7c4:	49 8b 6e 10          	mov    rbp,QWORD PTR [r14+0x10]
  36b7c8:	48 8b cd             	mov    rcx,rbp
  36b7cb:	e8 38 f7 f5 ff       	call   0x2caf08
  36b7d0:	84 c0                	test   al,al
  36b7d2:	0f 84 ed 00 00 00    	je     0x36b8c5
  36b7d8:	8d 04 f5 00 00 00 00 	lea    eax,[rsi*8+0x0]
  36b7df:	48 63 c8             	movsxd rcx,eax
  36b7e2:	48 8b 6c 29 20       	mov    rbp,QWORD PTR [rcx+rbp*1+0x20]
  36b7e7:	48 8b cd             	mov    rcx,rbp
  36b7ea:	e8 19 f7 f5 ff       	call   0x2caf08
  36b7ef:	84 c0                	test   al,al
  36b7f1:	0f 84 ce 00 00 00    	je     0x36b8c5
  36b7f7:	48 8b cd             	mov    rcx,rbp
  36b7fa:	e8 55 a2 f7 ff       	call   0x2e5a54
  36b7ff:	48 8b c8             	mov    rcx,rax
  36b802:	48 8b d0             	mov    rdx,rax
  36b805:	e8 fe f6 f5 ff       	call   0x2caf08
  36b80a:	84 c0                	test   al,al
  36b80c:	0f 84 b3 00 00 00    	je     0x36b8c5
  36b812:	48 8b ca             	mov    rcx,rdx
  36b815:	e8 3a ab f6 ff       	call   0x2d6354
  36b81a:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  36b81f:	48 8b d8             	mov    rbx,rax
  36b822:	48 8d 8c 24 e8 00 00 	lea    rcx,[rsp+0xe8]
  36b829:	00 
  36b82a:	e8 1d fb ff ff       	call   0x36b34c
  36b82f:	48 8b c8             	mov    rcx,rax
  36b832:	e8 5d 4c fb ff       	call   0x320494
  36b837:	48 8b c8             	mov    rcx,rax
  36b83a:	49 8b d4             	mov    rdx,r12
  36b83d:	e8 0a a3 f7 ff       	call   0x2e5b4c
  36b842:	48 3b d8             	cmp    rbx,rax
  36b845:	75 7e                	jne    0x36b8c5
  36b847:	48 8b cd             	mov    rcx,rbp
  36b84a:	e8 cd 7d 00 00       	call   0x37361c
  36b84f:	48 8b c8             	mov    rcx,rax
  36b852:	4c 8b c0             	mov    r8,rax
  36b855:	e8 ae f6 f5 ff       	call   0x2caf08
  36b85a:	84 c0                	test   al,al
  36b85c:	74 67                	je     0x36b8c5
  36b85e:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  36b863:	49 8b c8             	mov    rcx,r8
  36b866:	e8 ad c5 f6 ff       	call   0x2d7e18
  36b86b:	48 8b c8             	mov    rcx,rax
  36b86e:	e8 79 1f f6 ff       	call   0x2cd7ec
  36b873:	48 8b c8             	mov    rcx,rax
  36b876:	e8 d9 aa f6 ff       	call   0x2d6354
  36b87b:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  36b880:	48 8b d8             	mov    rbx,rax
  36b883:	e8 6c 0c f6 ff       	call   0x2cc4f4
  36b888:	48 8d 54 24 40       	lea    rdx,[rsp+0x40]
  36b88d:	48 8d 8c 24 e8 00 00 	lea    rcx,[rsp+0xe8]
  36b894:	00 
  36b895:	e8 3e fb ff ff       	call   0x36b3d8
  36b89a:	48 8b c8             	mov    rcx,rax
  36b89d:	e8 e2 0a 00 00       	call   0x36c384
  36b8a2:	48 8b c8             	mov    rcx,rax
  36b8a5:	49 8b d4             	mov    rdx,r12
  36b8a8:	e8 9f a2 f7 ff       	call   0x2e5b4c
  36b8ad:	80 bd 30 02 00 00 00 	cmp    BYTE PTR [rbp+0x230],0x0
  36b8b4:	75 05                	jne    0x36b8bb
  36b8b6:	48 3b d8             	cmp    rbx,rax
  36b8b9:	75 0a                	jne    0x36b8c5
  36b8bb:	f3 0f 58 b5 48 02 00 	addss  xmm6,DWORD PTR [rbp+0x248]
  36b8c2:	00 
  36b8c3:	ff c7                	inc    edi
  36b8c5:	ff c6                	inc    esi
  36b8c7:	41 3b f7             	cmp    esi,r15d
  36b8ca:	0f 8c f4 fe ff ff    	jl     0x36b7c4
  36b8d0:	f3 0f 10 0d 7c 19 f2 	movss  xmm1,DWORD PTR [rip+0xfffffffffff2197c]        # 0x28d254
  36b8d7:	ff 
  36b8d8:	85 ff                	test   edi,edi
  36b8da:	74 0d                	je     0x36b8e9
  36b8dc:	66 0f 6e c7          	movd   xmm0,edi
  36b8e0:	0f 5b c0             	cvtdq2ps xmm0,xmm0
  36b8e3:	f3 0f 5e f0          	divss  xmm6,xmm0
  36b8e7:	eb 03                	jmp    0x36b8ec
  36b8e9:	0f 28 f1             	movaps xmm6,xmm1
  36b8ec:	80 3d f5 c3 06 00 00 	cmp    BYTE PTR [rip+0x6c3f5],0x0        # 0x3d7ce8
  36b8f3:	74 18                	je     0x36b90d
  36b8f5:	0f 2e 35 60 ce f3 ff 	ucomiss xmm6,DWORD PTR [rip+0xfffffffffff3ce60]        # 0x2a875c
  36b8fc:	7a 0f                	jp     0x36b90d
  36b8fe:	75 0d                	jne    0x36b90d
  36b900:	f3 0f 5c 35 90 77 f2 	subss  xmm6,DWORD PTR [rip+0xfffffffffff27790]        # 0x293098
  36b907:	ff 
  36b908:	0f 28 c6             	movaps xmm0,xmm6
  36b90b:	eb 0a                	jmp    0x36b917
  36b90d:	0f 2e f1             	ucomiss xmm6,xmm1
  36b910:	7a f6                	jp     0x36b908
  36b912:	75 f4                	jne    0x36b908
  36b914:	0f 57 c0             	xorps  xmm0,xmm0
  36b917:	4c 8d 9c 24 b0 00 00 	lea    r11,[rsp+0xb0]
  36b91e:	00 
  36b91f:	49 8b 5b 30          	mov    rbx,QWORD PTR [r11+0x30]
  36b923:	49 8b 6b 40          	mov    rbp,QWORD PTR [r11+0x40]
  36b927:	41 0f 28 73 f0       	movaps xmm6,XMMWORD PTR [r11-0x10]
  36b92c:	49 8b e3             	mov    rsp,r11
  36b92f:	41 5f                	pop    r15
  36b931:	41 5e                	pop    r14
  36b933:	41 5c                	pop    r12
  36b935:	5f                   	pop    rdi
  36b936:	5e                   	pop    rsi
  36b937:	c3                   	ret

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000031530c <.data+0x31530c>:
  31530c:	48 8b c4             	mov    rax,rsp
  31530f:	48 89 58 08          	mov    QWORD PTR [rax+0x8],rbx
  315313:	55                   	push   rbp
  315314:	48 8d 68 a1          	lea    rbp,[rax-0x5f]
  315318:	48 81 ec e0 00 00 00 	sub    rsp,0xe0
  31531f:	0f 29 70 e8          	movaps XMMWORD PTR [rax-0x18],xmm6
  315323:	48 8b d9             	mov    rbx,rcx
  315326:	0f 29 78 d8          	movaps XMMWORD PTR [rax-0x28],xmm7
  31532a:	48 8d 4d 97          	lea    rcx,[rbp-0x69]
  31532e:	44 0f 29 40 c8       	movaps XMMWORD PTR [rax-0x38],xmm8
  315333:	f3 44 0f 10 02       	movss  xmm8,DWORD PTR [rdx]
  315338:	44 0f 29 48 b8       	movaps XMMWORD PTR [rax-0x48],xmm9
  31533d:	41 0f 28 f8          	movaps xmm7,xmm8
  315341:	f3 44 0f 10 4a 04    	movss  xmm9,DWORD PTR [rdx+0x4]
  315347:	44 0f 29 50 a8       	movaps XMMWORD PTR [rax-0x58],xmm10
  31534c:	45 0f 28 d1          	movaps xmm10,xmm9
  315350:	44 0f 29 58 98       	movaps XMMWORD PTR [rax-0x68],xmm11
  315355:	f3 44 0f 10 5a 0c    	movss  xmm11,DWORD PTR [rdx+0xc]
  31535b:	44 0f 29 60 88       	movaps XMMWORD PTR [rax-0x78],xmm12
  315360:	41 0f 28 c3          	movaps xmm0,xmm11
  315364:	44 0f 29 6c 24 60    	movaps XMMWORD PTR [rsp+0x60],xmm13
  31536a:	f3 44 0f 10 6a 08    	movss  xmm13,DWORD PTR [rdx+0x8]
  315370:	44 0f 29 74 24 50    	movaps XMMWORD PTR [rsp+0x50],xmm14
  315376:	45 0f 28 e5          	movaps xmm12,xmm13
  31537a:	f3 45 0f 59 d1       	mulss  xmm10,xmm9
  31537f:	45 0f 28 f0          	movaps xmm14,xmm8
  315383:	f3 45 0f 59 f0       	mulss  xmm14,xmm8
  315388:	41 0f 28 cd          	movaps xmm1,xmm13
  31538c:	f3 45 0f 59 e5       	mulss  xmm12,xmm13
  315391:	f3 45 0f 58 d6       	addss  xmm10,xmm14
  315396:	f3 41 0f 59 c3       	mulss  xmm0,xmm11
  31539b:	f3 41 0f 59 fb       	mulss  xmm7,xmm11
  3153a0:	f3 41 0f 59 c9       	mulss  xmm1,xmm9
  3153a5:	41 0f 28 f2          	movaps xmm6,xmm10
  3153a9:	f3 41 0f 58 f4       	addss  xmm6,xmm12
  3153ae:	f3 0f 5c f9          	subss  xmm7,xmm1
  3153b2:	f3 0f 58 f0          	addss  xmm6,xmm0
  3153b6:	e8 01 28 0b 00       	call   0x3c7bbc
  3153bb:	0f 28 ce             	movaps xmm1,xmm6
  3153be:	f3 0f 59 0d fa dc f7 	mulss  xmm1,DWORD PTR [rip+0xfffffffffff7dcfa]        # 0x2930c0
  3153c5:	ff 
  3153c6:	0f 2f f9             	comiss xmm7,xmm1
  3153c9:	76 29                	jbe    0x3153f4
  3153cb:	41 0f 28 c8          	movaps xmm1,xmm8
  3153cf:	41 0f 28 c1          	movaps xmm0,xmm9
  3153d3:	e8 d4 32 0b 00       	call   0x3c86ac
  3153d8:	f3 0f 58 c0          	addss  xmm0,xmm0
  3153dc:	c7 45 97 db 0f c9 3f 	mov    DWORD PTR [rbp-0x69],0x3fc90fdb
  3153e3:	f3 0f 11 45 9b       	movss  DWORD PTR [rbp-0x65],xmm0
  3153e8:	c7 45 9f 00 00 00 00 	mov    DWORD PTR [rbp-0x61],0x0
  3153ef:	e9 af 00 00 00       	jmp    0x3154a3
  3153f4:	f3 0f 59 35 5c de f7 	mulss  xmm6,DWORD PTR [rip+0xfffffffffff7de5c]        # 0x293258
  3153fb:	ff 
  3153fc:	0f 2f f7             	comiss xmm6,xmm7
  3153ff:	76 1e                	jbe    0x31541f
  315401:	41 0f 28 c8          	movaps xmm1,xmm8
  315405:	41 0f 28 c1          	movaps xmm0,xmm9
  315409:	e8 9e 32 0b 00       	call   0x3c86ac
  31540e:	f3 0f 59 05 4e de f7 	mulss  xmm0,DWORD PTR [rip+0xfffffffffff7de4e]        # 0x293264
  315415:	ff 
  315416:	c7 45 97 db 0f c9 bf 	mov    DWORD PTR [rbp-0x69],0xbfc90fdb
  31541d:	eb c4                	jmp    0x3153e3
  31541f:	f3 0f 10 35 2d 7e f7 	movss  xmm6,DWORD PTR [rip+0xfffffffffff77e2d]        # 0x28d254
  315426:	ff 
  315427:	f3 45 0f 58 db       	addss  xmm11,xmm11
  31542c:	41 0f 28 c5          	movaps xmm0,xmm13
  315430:	f3 45 0f 58 d2       	addss  xmm10,xmm10
  315435:	f3 41 0f 58 c5       	addss  xmm0,xmm13
  31543a:	41 0f 28 cb          	movaps xmm1,xmm11
  31543e:	f3 41 0f 59 c9       	mulss  xmm1,xmm9
  315443:	f3 41 0f 59 c0       	mulss  xmm0,xmm8
  315448:	f3 0f 58 c1          	addss  xmm0,xmm1
  31544c:	0f 28 ce             	movaps xmm1,xmm6
  31544f:	f3 41 0f 5c ca       	subss  xmm1,xmm10
  315454:	e8 53 32 0b 00       	call   0x3c86ac
  315459:	f3 0f 58 ff          	addss  xmm7,xmm7
  31545d:	f3 0f 11 45 9b       	movss  DWORD PTR [rbp-0x65],xmm0
  315462:	0f 28 c7             	movaps xmm0,xmm7
  315465:	e8 7a 54 00 00       	call   0x31a8e4
  31546a:	f3 45 0f 58 c0       	addss  xmm8,xmm8
  31546f:	f3 45 0f 59 dd       	mulss  xmm11,xmm13
  315474:	f3 45 0f 58 e6       	addss  xmm12,xmm14
  315479:	f3 0f 11 45 97       	movss  DWORD PTR [rbp-0x69],xmm0
  31547e:	f3 45 0f 59 c1       	mulss  xmm8,xmm9
  315483:	f3 45 0f 58 e4       	addss  xmm12,xmm12
  315488:	f3 45 0f 58 c3       	addss  xmm8,xmm11
  31548d:	f3 41 0f 5c f4       	subss  xmm6,xmm12
  315492:	41 0f 28 c0          	movaps xmm0,xmm8
  315496:	0f 28 ce             	movaps xmm1,xmm6
  315499:	e8 0e 32 0b 00       	call   0x3c86ac
  31549e:	f3 0f 11 45 9f       	movss  DWORD PTR [rbp-0x61],xmm0
  3154a3:	f3 0f 10 15 51 dd f7 	movss  xmm2,DWORD PTR [rip+0xfffffffffff7dd51]        # 0x2931fc
  3154aa:	ff 
  3154ab:	48 8d 55 b7          	lea    rdx,[rbp-0x49]
  3154af:	48 8d 4d 97          	lea    rcx,[rbp-0x69]
  3154b3:	e8 b4 a1 fc ff       	call   0x2df66c
  3154b8:	48 8d 55 a7          	lea    rdx,[rbp-0x59]
  3154bc:	48 8b cb             	mov    rcx,rbx
  3154bf:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  3154c3:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  3154c6:	f2 0f 11 45 a7       	movsd  QWORD PTR [rbp-0x59],xmm0
  3154cb:	89 45 af             	mov    DWORD PTR [rbp-0x51],eax
  3154ce:	e8 69 1b 00 00       	call   0x31703c
  3154d3:	44 0f 28 74 24 50    	movaps xmm14,XMMWORD PTR [rsp+0x50]
  3154d9:	4c 8d 9c 24 e0 00 00 	lea    r11,[rsp+0xe0]
  3154e0:	00 
  3154e1:	41 0f 28 73 f0       	movaps xmm6,XMMWORD PTR [r11-0x10]
  3154e6:	48 8b c3             	mov    rax,rbx
  3154e9:	49 8b 5b 10          	mov    rbx,QWORD PTR [r11+0x10]
  3154ed:	41 0f 28 7b e0       	movaps xmm7,XMMWORD PTR [r11-0x20]
  3154f2:	45 0f 28 43 d0       	movaps xmm8,XMMWORD PTR [r11-0x30]
  3154f7:	45 0f 28 4b c0       	movaps xmm9,XMMWORD PTR [r11-0x40]
  3154fc:	45 0f 28 53 b0       	movaps xmm10,XMMWORD PTR [r11-0x50]
  315501:	45 0f 28 5b a0       	movaps xmm11,XMMWORD PTR [r11-0x60]
  315506:	45 0f 28 63 90       	movaps xmm12,XMMWORD PTR [r11-0x70]
  31550b:	45 0f 28 6b 80       	movaps xmm13,XMMWORD PTR [r11-0x80]
  315510:	49 8b e3             	mov    rsp,r11
  315513:	5d                   	pop    rbp
  315514:	c3                   	ret

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003696e4 <.data+0x3696e4>:
  3696e4:	48 83 ec 28          	sub    rsp,0x28
  3696e8:	4c 8b c1             	mov    r8,rcx
  3696eb:	e8 18 18 f6 ff       	call   0x2caf08
  3696f0:	84 c0                	test   al,al
  3696f2:	75 04                	jne    0x3696f8
  3696f4:	33 c0                	xor    eax,eax
  3696f6:	eb 0f                	jmp    0x369707
  3696f8:	ba 08 07 00 00       	mov    edx,0x708
  3696fd:	49 8b c8             	mov    rcx,r8
  369700:	e8 37 57 f7 ff       	call   0x2dee3c
  369705:	8b 00                	mov    eax,DWORD PTR [rax]
  369707:	48 83 c4 28          	add    rsp,0x28
  36970b:	c3                   	ret
  36970c:	48 83 ec 28          	sub    rsp,0x28
  369710:	4c 8b c1             	mov    r8,rcx
  369713:	e8 f0 17 f6 ff       	call   0x2caf08
  369718:	84 c0                	test   al,al
  36971a:	75 05                	jne    0x369721
  36971c:	0f 57 c0             	xorps  xmm0,xmm0
  36971f:	eb 11                	jmp    0x369732
  369721:	ba cc 02 00 00       	mov    edx,0x2cc
  369726:	49 8b c8             	mov    rcx,r8
  369729:	e8 0e 57 f7 ff       	call   0x2dee3c
  36972e:	f3 0f 10 00          	movss  xmm0,DWORD PTR [rax]
  369732:	48 83 c4 28          	add    rsp,0x28
  369736:	c3                   	ret
  369737:	cc                   	int3

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002d45c8 <.data+0x2d45c8>:
  2d45c8:	48 89 5c 24 10       	mov    QWORD PTR [rsp+0x10],rbx
  2d45cd:	57                   	push   rdi
  2d45ce:	48 83 ec 20          	sub    rsp,0x20
  2d45d2:	48 8b da             	mov    rbx,rdx
  2d45d5:	48 8b f9             	mov    rdi,rcx
  2d45d8:	8a 54 24 30          	mov    dl,BYTE PTR [rsp+0x30]
  2d45dc:	e8 df 65 ff ff       	call   0x2cabc0
  2d45e1:	48 8b cb             	mov    rcx,rbx
  2d45e4:	e8 e7 44 00 00       	call   0x2d8ad0
  2d45e9:	48 8b c8             	mov    rcx,rax
  2d45ec:	e8 b3 6d ff ff       	call   0x2cb3a4
  2d45f1:	4c 8b c0             	mov    r8,rax
  2d45f4:	48 8b d3             	mov    rdx,rbx
  2d45f7:	48 8b cf             	mov    rcx,rdi
  2d45fa:	e8 05 ad ff ff       	call   0x2cf304
  2d45ff:	48           	mov    rbx,QWORD PTR [rsp+0x38]

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002d7d40 <.data+0x2d7d40>:
  2d7d40:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  2d7d45:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
  2d7d4a:	57                   	push   rdi
  2d7d4b:	48 83 ec 20          	sub    rsp,0x20
  2d7d4f:	48 8b f2             	mov    rsi,rdx
  2d7d52:	48 8b f9             	mov    rdi,rcx
  2d7d55:	e8 82 f8 ff ff       	call   0x2d75dc
  2d7d5a:	48 8b c8             	mov    rcx,rax
  2d7d5d:	e8 42 36 ff ff       	call   0x2cb3a4
  2d7d62:	48 8b cf             	mov    rcx,rdi
  2d7d65:	48 8b d8             	mov    rbx,rax
  2d7d68:	e8 37 36 ff ff       	call   0x2cb3a4
  2d7d6d:	4c 8b c0             	mov    r8,rax
  2d7d70:	48 8b d3             	mov    rdx,rbx
  2d7d73:	48 8b ce             	mov    rcx,rsi
  2d7d76:	e8 65 c2 ff ff       	call   0x2d3fe0
  2d7d7b:	48 8b 5c 24 30       	mov    rbx,QWORD PTR [rsp+0x30]
  2d7d80:	48 8b c6             	mov    rax,rsi
  2d7d83:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  2d7d88:	48 83 c4 20          	add    rsp,0x20
  2d7d8c:	5f                   	pop    rdi
  2d7d8d:	c3                   	ret
  2d7d8e:	cc                   	int3
  2d7d8f:	cc                   	int3
  2d7d90:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  2d7d95:	57                   	push   rdi
  2d7d96:	48 83 ec 20          	sub    rsp,0x20
  2d7d9a:	48 8b fa             	mov    rdi,rdx
  2d7d9d:	48 8b d9             	mov    rbx,rcx
  2d7da0:	e8 ff 35 ff ff       	call   0x2cb3a4
  2d7da5:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
  2d7da8:	4c 8b c0             	mov    r8,rax
  2d7dab:	48 8b cf             	mov    rcx,rdi
  2d7dae:	e8 2d          	call   0x2d3fe0
