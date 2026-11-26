2caf08	test   rcx,rcx
2caf0b	jne    0x2caf10
2caf0d	xor    al,al
2caf0f	ret
2caf10	lea    rax,[rcx-0x100000]
2caf17	movabs rcx,0x7ffffeffffe
2caf21	cmp    rax,rcx
2caf24	setbe  al
2caf27	ret
