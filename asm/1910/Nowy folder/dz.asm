org 100h

section .text

start:
	%macro write 1
	mov dx, %1
	int 21h
	%endmacro
	mov dx, msg
	int 21h
	write msg
	
	mov ax, 4c00h
	int 21h
	

section .data
	xxx db 55,54,53,52
	msg_newline db 10,"$"
	msg db "komunikat$"

