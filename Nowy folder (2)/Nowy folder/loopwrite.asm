org 100h

section .text

start:
	mov bx, xxx
	mov cx, 4
petla:
	mov ah,2 ;wyświetl znak
	mov dl, [ds:bx] ; ds segment danych bx wskaznik na znak
	int 21h
	inc bx
	
	mov dx, msg_newline
	mov ah,9
	int 21h
	
	loop petla
	
	mov ax, 4c00h
	int 21h
	

section .data
	xxx db 55,54,53,52
	msg_newline db 10,"$"

