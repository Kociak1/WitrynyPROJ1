org 100h

section .text

start:
	mov ax, 9
	mov bx,7
	cmp ax,bx
	ja wieksze
	cmp ax, bx
	jb mniejsze
	
	mov dx, msg_rowne
	mov ah, 9
	int 21h
	
	mov ax, 4c00h
	int 21h
	
wieksze:
	mov dx, msg_wieksze
	mov ah,9
	int 21h
	mov ax, 4c00h
	int 21h
		
mniejsze:
	mov dx, msg_mniejsze
	mov ah,9
	int 21h
	mov ax, 4c00h
	int 21h
section .data
	msg_wieksze db "ax > bx$"
	msg_rowne db "ax = bx$"
	msg_mniejsze db "ax < bx$"
