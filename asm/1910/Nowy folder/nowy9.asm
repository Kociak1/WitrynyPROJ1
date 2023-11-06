org 100h

section .text

start:

	mov cx, 3
petla:
	add bx, 1
	mov dx, msg_loop
	mov ah,9
	int 21h
	
	mov dx, msg_newline
	mov ah,9
	int 21h
	
	sub cx, 1
	jnz petla
	
	mov ax, 4c00h
	int 21h
	

section .data
	msg_loop db "wykonanie petli: $"
	msg_newline db 10,"$"

