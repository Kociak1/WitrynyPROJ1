org 100h

start:
	mov cl, 90
	mov al, [liczba]
	mul cl
	cmp ax, 100
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
		
		koniec:
		mov ax,4c00h
		int 21h

section .data
liczba db 10
wieksze db "wynik wiekszy od 100$"
sto db "wynik rowny 100$"
mniejsze db "wynik mniejszy od 100$"