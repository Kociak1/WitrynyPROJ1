org 100h

start:
%macro wypisz 1
	mov ah, 9
	mov dx, %1
	int 21h
	mov ax, 4c00h
	int 21h
%endmacro

mov ah, 1
int 21h
mov bx, ax

int 21h
mov cx, ax


	cmp bx, cx
	jb mniejszy
	ja wiekszy
	jmp rowne
wiekszy:
wypisz greather
mniejszy:
wypisz less
rowne:
wypisz eqal
eqal db "rowne$"
less db "mniejszy$"
greather db "wiekszy$"
