section .data
    msg db "Liczba to: $"
    num dw 42 ; Liczba do wyświetlenia

section .text
global _start

_start:
    ; Wyświetl tekst
    mov ah, 9
    mov dx, msg
    int 21h

    ; Wyświetl liczbę
    mov ax, [num] ; Wczytaj liczbę z pamięci
    call print_num

    ; Zakończ program
    mov ah, 4Ch
    int 21h

print_num:
    ; Procedura do wyświetlania liczby
    push ax
    push bx
    push cx
    push dx

    mov cx, 10
    mov bx, 0

.loop:
    div cx ; Podziel AX przez 10
    add dl, '0' ; Konwertuj resztę na znak ASCII
    push dx ; Umieść znak na stosie
    inc bx ; Zwiększ licznik cyfr

    xor dx, dx ; Wyczyść DX
    test ax, ax
    jnz .loop

.print_loop:
    pop dx ; Pobierz znak z stosu
    mov ah, 2 ; Funkcja 2 - Wyświetl znak
    int 21h

    dec bx ; Zmniejsz licznik cyfr
    jnz .print_loop

    pop dx
    pop cx
    pop bx
    pop ax

    ret
