; explicit leaf/assembly range 0x2caf08..0x2caf28 unwind=0x0
2caf08  48 85 c9                       test   rcx,rcx
2caf0b  75 03                          jne    0x2caf10
2caf0d  32 c0                          xor    al,al
2caf0f  c3                             ret
2caf10  48 8d 81 00 00 f0 ff           lea    rax,[rcx-0x100000]
2caf17  48 b9 fe ff ef ff ff 07 00 00  movabs rcx,0x7ffffeffffe
2caf21  48 3b c1                       cmp    rax,rcx
2caf24  0f 96 c0                       setbe  al
2caf27  c3                             ret
