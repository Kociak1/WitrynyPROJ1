org 100h

section .text

start:
	mov dx,msg
	int 21h
	mov cx,0
_for:
	cmp cx, 100
	jae _end_for
	
	mov dx,msg
	int 21h
	
	inc cx
	jmp _for
_end_for:	
	mov ax, 4c00h
	int 21h
	

section .data
	xxx db 55,54,53,52
	msg_newline db 10,"$"
	msg db "komunikat$"

