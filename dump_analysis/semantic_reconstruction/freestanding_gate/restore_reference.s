.intel_syntax noprefix
.text
.globl re_gate_capture
re_gate_capture:
    push r12
    sub rsp, 0x20
    mov r12, rdx
    call re_gate_execute_3cdbd4
    mov QWORD PTR [r12], rax
    movq QWORD PTR [r12+8], xmm0
    add rsp, 0x20
    pop r12
    ret
.globl re_gate_restore_3cdbba
re_gate_restore_3cdbba:
    mov rsp, rbp
    add rsp, 0x200
    mov rbp, QWORD PTR [rsp+8]
    mov rbx, QWORD PTR [rsp+0x10]
    mov r15, QWORD PTR [rsp+0x18]
    ret
.globl re_gate_execute_3cdbd4
re_gate_execute_3cdbd4:
    mov QWORD PTR [rsp+8], rbp
    mov QWORD PTR [rsp+0x10], rbx
    mov QWORD PTR [rsp+0x18], r15
    mov rbx, QWORD PTR [rcx+0x20]
    mov QWORD PTR [rsp+0x20], rbx
    mov rbx, rsp
    add rbx, 0x20
    mov QWORD PTR [rcx+0x68], rbx
    sub rsp, 0x200
    mov rbp, rsp
    lea rax, [rip+re_gate_execute_3cdbd4]
    push rax
    lea rbx, [rsp]
    push QWORD PTR [rcx+0x10]
    add QWORD PTR [rsp], 0x20
    mov rax, QWORD PTR [rcx+0x78]
    sub rax, QWORD PTR [rcx+0x30]
    sub rsp, QWORD PTR [rcx+0x38]
    mov r10, QWORD PTR [rcx+0x60]
    mov QWORD PTR [rsp+r10], rax
    xor rax, rax
    push rax
    mov rax, QWORD PTR [rcx+0x10]
    sub rax, QWORD PTR [rcx+0x30]
    sub rsp, QWORD PTR [rcx+0x50]
    mov QWORD PTR [rsp+0x30], rax
    push QWORD PTR [rcx]
    add QWORD PTR [rsp], 0x21
    sub rsp, QWORD PTR [rcx+0x58]
    push QWORD PTR [rcx+8]
    add QWORD PTR [rsp], 0x14
    sub rsp, QWORD PTR [rcx+0x40]
    mov rax, QWORD PTR [rcx]
    sub rax, QWORD PTR [rcx+0x50]
    mov QWORD PTR [rsp+0x30], rax
    push QWORD PTR [rcx+0x20]
    mov rax, QWORD PTR [rcx+8]
    sub rax, QWORD PTR [rcx+0x38]
    sub rsp, QWORD PTR [rcx+0x48]
    mov QWORD PTR [rsp+0x30], rax
    mov r10, QWORD PTR [rcx+0x20]
    mov QWORD PTR [rsp+0x38], r10
    push QWORD PTR [rcx+0x28]
    mov rax, QWORD PTR [rcx+0x48]
    mov QWORD PTR [rbp+0x28], rax
    mov rax, QWORD PTR [rbp+0x28]
    mov QWORD PTR [rsp+0x28], rax
    mov rax, QWORD PTR [rbp+0x30]
    mov rax, QWORD PTR [rcx+0x70]
    jmp .L3cdc9c
.L3cdc9c:
    cmp QWORD PTR [rcx+0x80], 9
    je .L3cdd24
    cmp QWORD PTR [rcx+0x80], 8
    je .L3cdd36
    cmp QWORD PTR [rcx+0x80], 7
    je .L3cdd48
    cmp QWORD PTR [rcx+0x80], 6
    je .L3cdd5a
    cmp QWORD PTR [rcx+0x80], 5
    je .L3cdd6c
    cmp QWORD PTR [rcx+0x80], 4
    je .L3cdd7e
    cmp QWORD PTR [rcx+0x80], 3
    je .L3cdd9a
    cmp QWORD PTR [rcx+0x80], 2
    je .L3cddb6
    cmp QWORD PTR [rcx+0x80], 1
    je .L3cddd2
    cmp QWORD PTR [rcx+0x80], 0
    je .L3cddee
.L3cdd24:
    push r15
    mov r15, QWORD PTR [rcx+0xc8]
    mov QWORD PTR [rsp+0x50], r15
    pop r15
    jmp .L3cdd36
.L3cdd36:
    push r15
    mov r15, QWORD PTR [rcx+0xc0]
    mov QWORD PTR [rsp+0x48], r15
    pop r15
    jmp .L3cdd48
.L3cdd48:
    push r15
    mov r15, QWORD PTR [rcx+0xb8]
    mov QWORD PTR [rsp+0x40], r15
    pop r15
    jmp .L3cdd5a
.L3cdd5a:
    push r15
    mov r15, QWORD PTR [rcx+0xb0]
    mov QWORD PTR [rsp+0x38], r15
    pop r15
    jmp .L3cdd6c
.L3cdd6c:
    push r15
    mov r15, QWORD PTR [rcx+0xa8]
    mov QWORD PTR [rsp+0x30], r15
    pop r15
    jmp .L3cdd7e
.L3cdd7e:
    cmp BYTE PTR [rcx+0xd3], 1
    jne .L3cdd91
    movq xmm3, QWORD PTR [rcx+0xa0]
    jmp .L3cdd98
.L3cdd91:
    mov r9, QWORD PTR [rcx+0xa0]
.L3cdd98:
    jmp .L3cdd9a
.L3cdd9a:
    cmp BYTE PTR [rcx+0xd2], 1
    jne .L3cddad
    movq xmm2, QWORD PTR [rcx+0x98]
    jmp .L3cddb4
.L3cddad:
    mov r8, QWORD PTR [rcx+0x98]
.L3cddb4:
    jmp .L3cddb6
.L3cddb6:
    cmp BYTE PTR [rcx+0xd1], 1
    jne .L3cddc9
    movq xmm1, QWORD PTR [rcx+0x90]
    jmp .L3cddd0
.L3cddc9:
    mov rdx, QWORD PTR [rcx+0x90]
.L3cddd0:
    jmp .L3cddd2
.L3cddd2:
    cmp BYTE PTR [rcx+0xd0], 1
    jne .L3cdde5
    movq xmm0, QWORD PTR [rcx+0x88]
    jmp .L3cddec
.L3cdde5:
    mov rcx, QWORD PTR [rcx+0x88]
.L3cddec:
    jmp .L3cddee
.L3cddee:
    jmp rax
.globl re_gate_execute_end
re_gate_execute_end:
.section .note.GNU-stack,"",@progbits
