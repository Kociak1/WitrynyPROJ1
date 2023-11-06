org 100h

start:

push
pop

sp -stack pointer 16bit; esp 32bit
bp- base pointer 16bit; ebp 32bit
push 3
push 5
push bp
push bx

mov bp, sp
mov ax, [bp+6]
mov bx, [bp+4]
add ax, bx

pop bx
pop bp

mov ax, 4c00h
int 21h
