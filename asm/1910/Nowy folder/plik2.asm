org 100h

section .text

start:
	mov ah, 2
	mov dx, [xxx+1]
	int 21h
	
	mov ax, 4c00h
	int 21h

section .data
xxx db 55,54,53,52