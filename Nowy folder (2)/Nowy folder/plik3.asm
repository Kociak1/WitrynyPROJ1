org 100h

section .text

start:
	mov cx,5 ;liczba powtorzen
	label:
	mov ah, 2
	mov dx, [xxx]
	sub dx, 5
	add dx,cx
	int 21h
	
	
	LOOP label
	
	mov ax, 4c00h
	int 21h

xxx db 90, 67,76,88,92
