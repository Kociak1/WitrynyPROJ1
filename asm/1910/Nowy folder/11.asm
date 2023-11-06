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
		
		
		%macro wypisz 1
			mov dx, %1
			int 21h
		%endmacro
		
		%macro zamknij 0
			mov ax, 4c00h
			int 21h
		%endmacro
		
		%macro porownaj 2
			cmp %1 %2
			jz %%rowne
			wypisz nierowne
			ret
		%%rowne:
			wypisz rowne
		%endmacro
		porownaj 3,3
		wypisz label
		wypisz label1
		
		;zamknij
		zamknij
	
	section .data ; poczatek sekcji danych zainicjowanych
			; This section is for defining constants, such as filenames or buffer sizes, this data does not change at runtime
			label db "czesc ",80,97,116,114,121,107,10 "$"
			label1 db "Moje imie to 10$"
			label2 db "napis 2$"
			rowne db "rowne",10,"$"
			nierowne db "nierowne",10,"$"

	section .bss


;nasm -o naszplik.com -f bin naszplik.asm