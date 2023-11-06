; To jest komentarz
; Tu można wstawić:
; section .text
; aby dać znać NASMowi, że to będzie w sekcji kodu.

section .text ; Początek sekcji kodu
    org 100h  ; Ta linia informuje kompilator, że program wynikowy będzie typu .com. 
              ; Informuje również o tym, że nasz kod znajdować się będzie po uruchomieniu pod adresem 100h (256 dziesiętnie).

start:      ; Start: może być to dowolna nazwa z dwukropkiem. Określa ona początek kodu w programie.
    ;mov ah, 9 ; Informuje, że program działa w DOSie
    ;mov dx, label
       ; int 21h
    %macro wypisz 1
        mov dx, %1
        int 21h
    %endmacro
    
    %macro zamknij 0
        mov ah, 4Ch
        int 21h
    %endmacro
		mov ah, 4Ch
        int 21h

    wypisz label
    ;wypisz label
    ;wypisz label1
	
    ; Zamknij
    zamknij

section .data ; Początek sekcji danych zainicjowanych
    ; This section is for defining constants, such as filenames or buffer sizes, this data does not change at runtime
    label db "czesc ", 80, 97, 116, 114, 121, 107, 10, "$"
    label1 db "Moje imie to 10$", 10, "$"
    label2 db "napis 2$", 10, "$"
    rowne db "rowne", 10, "$"
    nierowne db "nierowne", 10, "$"

section .bss
