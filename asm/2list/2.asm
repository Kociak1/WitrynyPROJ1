org 100h

start:
	mov bl, 5
	mov al, [liczba]
	mul bl
	;add ax, bx
	
	call wyswietl
	mov ax, 4c00h
	int 21h
wyswietl:	
	mov bl, 10
	div bl
	
	mov ch, ah
	mov ah, 0
	div bl
	mov cl, ah
	
	add al, "0"
	mov dl, al
	mov ah, 2
	int 21h
	
	add cl, "0"
	mov dl, cl
	mov ah, 2
	int 21h
	
	add ch, "0"
	mov dl, ch
	mov ah, 2
	int 21h
ret

dodaj:
	mov bl, 5
	mov al, [liczba]
	add al, bl
ret	
	
liczba db 90
liczba2 db 10