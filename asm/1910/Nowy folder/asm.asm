global _start

section .data

    komunikat db "Podaj liczbe liczb do zsumowania: ", 10
    dlugosc_komunikatu equ $ - komunikat

    liczba_liczb dw 0
    liczba_aktualna dw 0
    wynik dw 0

section .text

_start:

    mov ah, 09h
    mov dx,  komunikat
    int 21h

    mov ax, 3fh
    mov bx, 0
    mov cx,  liczba_liczb
    mov dx, 2
    int 21h

    mov ax, [liczba_liczb]
    cmp ax, 0
    je koniec

    petla:

        mov ah, 09h
        mov dx,  komunikat
        int 21h

        mov ax, 3fh
        mov bx, 0
        mov cx,  liczba_aktualna
        mov dx, 2
        int 21h

        mov ax, [liczba_aktualna]
        add ax, [wynik]
        mov [wynik], ax

        dec ax
        mov [liczba_liczb], ax
        cmp ax, 0
        jne petla

koniec:

    mov ah, 09h
    mov dx,  wynik
    int 21h

    mov ah, 4ch
    int 21h