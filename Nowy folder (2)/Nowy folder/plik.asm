org 100h

section .text

start:
	;mov byte [zmienna],35 ;nadpisz wartosc
	
	mov cx, [zmienna]
	
	sub cx, 32 ;odejmij 32 
	
	mov ah, 2
	mov dx, cx
	int 21h
	
	;zamknij program
	mov ax, 4c00h
	int 21h

section .data
;zmienna db 55
zmienna db "s"