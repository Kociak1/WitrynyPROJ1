	;To jest komentarz
	; tu można wstawić:
	; section .text
	; aby dać znać NASMowi, że to będzie w sekcji kodu.

	section .text ; poczatek sekcji kodu
			; This is where the actual assembly code is written. 
			; The term "self modifying code" means a program which modifies this section while being executed.


	org 100h	; Ta linia jest informacją dla kompilatora, że program wynikowy będzie typu .com. 
			; Informuje ona również o tym, że nasz kod znajdować się będzie po uruchomieniu pod adresem 100h (256 dziesiętnie).

	start:		; Start: może być to dowolna nazwa z dwukropkiem. Określa ona początek kodu w programie.	
		mov ah, 9 ;informuje że program dziala w dosie
		
		mov bx, label
		call Print
		
		mov bx, label
		call Print
		
		
		;zamknij
		mov ax, 4c00h
		int 21h
	Print:
	mov ah, 2
	mov dl, [ds:bx]
	cmp dl, 0
	jz end
	int 21h
	inc bx
	jmp Print
end:
	ret
	section .data ; poczatek sekcji danych zainicjowanych
			; This section is for defining constants, such as filenames or buffer sizes, this data does not change at runtime
			label db "czesc ",80,97,116,114,121,107,10 "$"
			label2 db "napis 2$"



;nasm -o naszplik.com -f bin naszplik.asm