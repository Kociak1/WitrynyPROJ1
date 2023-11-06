org 100h

section .text

	mov cx, 4
	mov bx, 0	
start:
;mov cx, 5
;petla:
	;mov ah,9
	;mov dx, napis
	;int 21h
	;;dec cx
	;sub cx, 1
	;jnz petla
	;;loop petla

	mov ah,2
	mov dx,[xxx]
	sub dx, bx
	add bx,1
	dec cx
	int 21h
	jnz start
	mov ax, 4c00h
	int 21h
section .data
;napis db "Napis $"
xxx db 55,54,53,52