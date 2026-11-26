; heuristic leaf/code range 0x2d50e0..0x2d50f8 unwind=0x0
2d50e0  80 fa 20                       cmp    dl,0x20
2d50e3  77 13                          ja     0x2d50f8
2d50e5  48 b9 00 26 00 00 01 00 00 00  movabs rcx,0x100002600
2d50ef  48 0f a3 d1                    bt     rcx,rdx
2d50f3  73 03                          jae    0x2d50f8
2d50f5  b0 01                          mov    al,0x1
2d50f7  c3                             ret

