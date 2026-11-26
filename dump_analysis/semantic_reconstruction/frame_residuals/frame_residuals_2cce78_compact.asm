2cce78 rex push rbx
2cce7a sub    rsp,0x40
2cce7e cmp    cl,BYTE PTR [rip+0x1092dc]        # 0x3d6160
2cce84 mov    bl,cl
2cce86 je     0x2cceec
2cce88 test   cl,cl
2cce8a jne    0x2ccee6
2cce8c lea    rcx,[rip+0x1092bd]        # 0x3d6150
2cce93 call   0x2cd86c
2cce98 mov    eax,DWORD PTR [rsp+0x21]
2cce9c mov    DWORD PTR [rip+0x1092d7],eax        # 0x3d6179
2ccea2 movzx  eax,WORD PTR [rsp+0x25]
2ccea7 mov    WORD PTR [rip+0x1092cf],ax        # 0x3d617d
2cceae mov    al,BYTE PTR [rsp+0x27]
2cceb2 mov    BYTE PTR [rip+0x1092c7],al        # 0x3d617f
2cceb8 mov    BYTE PTR [rip+0x1092a3],bl        # 0x3d6161
2ccebe mov    BYTE PTR [rip+0x1092b4],bl        # 0x3d6178
2ccec4 mov    QWORD PTR [rip+0x1092b1],0x0        # 0x3d6180
2ccecf mov    QWORD PTR [rip+0x1092ae],0x0        # 0x3d6188
2cceda mov    BYTE PTR [rip+0x109283],bl        # 0x3d6163
2ccee0 mov    BYTE PTR [rip+0x10927c],bl        # 0x3d6162
2ccee6 mov    BYTE PTR [rip+0x109274],bl        # 0x3d6160
2cceec add    rsp,0x40
2ccef0 pop    rbx
2ccef1 ret
