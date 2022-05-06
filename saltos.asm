.model small
.stack 100
.data

mensaje1 db 13,10, 'A > B mayor$'
mensaje2 db 13,10, 'A < B menor$'
mensaje3 db 13,10, 'A = B igual$'
mensaje4 db 13,10, 'A > B encima$'
mensaje5 db 13,10, 'A >= B encimaoig$'
mensaje6 db 13,10, 'A < B debajo$'
mensaje7 db 13,10, 'A <= B debajooig$'
mensaje8 db 13,10, 'A >= B mayoroig$'
mensaje9 db 13,10, 'A <= B menoroig$'

.code
mov ax,@data
mov ds,ax

;limpiar pantalla
mov ah, 00
mov al, 03h
int 10h

mov ax, 10h;valor de A
mov bx, 14h;VALOR DE B
cmp ax,bx;compara valores



jg mayor
jl menor
je igual
ja encima
jae encimaoig
jb debajo
jbe debajooig
jge mayoroig
jle menoroig

mayor:
lea dx, mensaje1
call imprimir
jmp finalizar

menor:
lea dx, mensaje2
call imprimir
jmp finalizar

igual:
lea dx, mensaje3
call imprimir
jmp finalizar

encima:
lea dx, mensaje4
call imprimir
jmp finalizar

encimaoig:
lea dx, mensaje5
call imprimir
jmp finalizar

debajo:
lea dx, mensaje6
call imprimir
jmp finalizar

debajooig:
lea dx, mensaje7
call imprimir
jmp finalizar

mayoroig:
lea dx, mensaje8
call imprimir
jmp finalizar

menoroig:
lea dx, mensaje9
call imprimir
jmp finalizar



imprimir:
   mov ah,9h
   int 21h
   ret

finalizar:
mov ah, 4ch
int 21h

inicio:



end