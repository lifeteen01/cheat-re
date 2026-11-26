.intel_syntax noprefix
.text
.globl re_owned_return
re_owned_return:
    jmp QWORD PTR [rbx]
.globl re_owned_thread_marker
re_owned_thread_marker:
    ret
.globl re_observe_target
re_observe_target:
    mov QWORD PTR [rip+re_observation], rsp
    mov QWORD PTR [rip+re_observation+8], rbp
    mov QWORD PTR [rip+re_observation+16], rbx
    mov QWORD PTR [rip+re_observation+24], r15
    mov QWORD PTR [rip+re_observation+32], rcx
    mov QWORD PTR [rip+re_observation+40], rdx
    mov QWORD PTR [rip+re_observation+48], r8
    mov QWORD PTR [rip+re_observation+56], r9
    movq QWORD PTR [rip+re_observation+64], xmm0
    movq QWORD PTR [rip+re_observation+72], xmm1
    movq QWORD PTR [rip+re_observation+80], xmm2
    movq QWORD PTR [rip+re_observation+88], xmm3
    .irp offset,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120
        mov r10, QWORD PTR [rsp+\offset]
        mov QWORD PTR [rip+re_observation+96+\offset], r10
    .endr
    movabs rax, 0x8877665544332211
    movabs r10, 0x400a000000000000
    movq xmm0, r10
    ret
.globl re_preservation_probe
re_preservation_probe:
    push rbp
    push rbx
    push r15
    push r12
    sub rsp, 0x28
    mov QWORD PTR [rsp+0x20], rsp
    movabs rbp, 0x1122334455667788
    movabs rbx, 0x2233445566778899
    movabs r15, 0x33445566778899aa
    movabs r12, 0x445566778899aabb
    call r8
    test eax, eax
    jne .Lprobe_done
    movabs r10, 0x1122334455667788
    cmp rbp, r10
    jne .Lprobe_fail
    movabs r10, 0x2233445566778899
    cmp rbx, r10
    jne .Lprobe_fail
    movabs r10, 0x33445566778899aa
    cmp r15, r10
    jne .Lprobe_fail
    movabs r10, 0x445566778899aabb
    cmp r12, r10
    jne .Lprobe_fail
    cmp rsp, QWORD PTR [rsp+0x20]
    jne .Lprobe_fail
    xor eax, eax
    jmp .Lprobe_done
.Lprobe_fail:
    mov eax, 0x100
.Lprobe_done:
    add rsp, 0x28
    pop r12
    pop r15
    pop rbx
    pop rbp
    ret
.section .note.GNU-stack,"",@progbits
