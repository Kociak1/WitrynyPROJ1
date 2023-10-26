org 100h

start:
	mov ah, 1
	int 21h
	cmp al, 65
	jae szansza_wieksze
	mov dx, blad
	jmp wypisz_blad
szansza_wieksze:
cmp al, 90
jbe wielka
cmp al, 97
jae szansza_male
mov dx, blad
jmp wypisz_blad

szansza_male:
cmp al,122
jbe mala
mov dx,blad
jmp wypisz_blad
mala:
sub al, 32
xor dx, dx
mov dl, al
jmp wypisz
wielka:
add al, 32
xor dx,dx
mov dl,al
jmp wypisz
wypisz:
mov ah, 2
int 21h
jmp koniec
wypisz_blad:
mov ah, 9
int 21h
jmp koniec

koniec:
mov ax, 4c00h
int 21h

	blad db "To nie jest literka"
	