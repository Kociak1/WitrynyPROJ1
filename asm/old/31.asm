org 100h

start:
	;cl /x = ax
	mov ah,1
	int 21h
	sub al,48
	mov cl, [liczba]
	div cl
	
	cmp ax, 10
	ja wieksze_od_100
	jb mniejsze_od_100
	je rowne
		wieksze_od_100:
		mov dx, wieksze
		jmp wypisz
		
		mniejsze_od_100:
		mov dx, mniejsze
		jmp wypisz
		
		rowne:
		mov dx, sto
		jmp wypisz
		
		wypisz:
		mov ah, 9
		int 21h
		jmp koniec
		
		print_num:
		push ax
		push bx
		push cx
		push dx
		mov cx, 10
		mov bx, dx
		
		koniec:
		mov ax,4c00h
		int 21h

;al
section .data
liczba db 20
wieksze db "wynik wiekszy od 10$"
sto db "wynik rowny 10$"
mniejsze db "wynik mniejszy od 10$"