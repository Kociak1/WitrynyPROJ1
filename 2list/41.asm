org 100h

start:
	xor ax,ax
	xor bx, bx
	
	mov ah,1
	xor cx,cx
	
pobieranie:
	int 21h
	cmp al, 13
	jz popetli
	push ax
	inc cx
	jmp pobieranie
	
popetli:
	mov ah, 2
	mov dx, [nowalinia]
	int 21h
	mov dx, [nowalinia+1]
	int 21h
	
wypisywanie:
	pop dx
	int 21h
	loop wypisywanie
	
mov ax, 4c00h
int 21h

nowalinia db 10, 13