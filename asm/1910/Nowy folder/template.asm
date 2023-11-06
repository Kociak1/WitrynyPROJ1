	;To jest komentarz
	; tu mo¿na wstawiæ:
	; section .text
	; aby daæ znaæ NASMowi, ¿e to bêdzie w sekcji kodu.

	section .text ; poczatek sekcji kodu
			; This is where the actual assembly code is written. 
			; The term "self modifying code" means a program which modifies this section while being executed.


	org 100h	; Ta linia jest informacj¹ dla kompilatora, ¿e program wynikowy bêdzie typu .com. 
			; Informuje ona równie¿ o tym, ¿e nasz kod znajdowaæ siê bêdzie po uruchomieniu pod adresem 100h (256 dziesiêtnie).

	start:		; Start: mo¿e byæ to dowolna nazwa z dwukropkiem. Okreœla ona pocz¹tek kodu w programie.	
		mov ah, 9 ;informuje ¿e program dziala w dosie
		
		;wypisz tekst
		mov dx, label
		int 21h
		
		;wypisz tekst
		mov dx, label2
		int 21h

		;czekaj na klawisz
		mov ah, 0
		int 16h
		
		;zamknij
		mov ax, 4c00h
		int 21h
	
	section .data ; poczatek sekcji danych zainicjowanych
			; This section is for defining constants, such as filenames or buffer sizes, this data does not change at runtime
			label db "czesc ",80,97,116,114,121,107,10 "$"
			label2 db "napis 2$"

	section .bss


;nasm -o naszplik.com -f bin naszplik.asm