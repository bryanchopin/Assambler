.model small
.stack 100
.data


Verso1  db 'que quieres imprimir:  ','$'
verso1v db 50 dup("  "),"$"
Verso1m  db 'impresion:  ','$'


conta db 0

.code

mov ax,@data
mov ds,ax

;limpiar la pantalla

mov ah, 00
mov al, 03h
int 10h

ciclo:   ; inicia ciclo

inc conta


mov ah,02h ; peticion para color el cursor
mov dh, 0 ; direccionamiento para la fila
mov dl, 0 ; direccionamiento para la columna
int 10h    ; interuppcion ejecuta la instruccion

;captura de nombre
mov ah, 09h
lea dx, verso1
int 21h

;ingreso de nombre
mov ah, 3fh
mov bx, 00
mov cx, 50
mov dx, offset [verso1v]
int 21h

mov ah,02h ; peticion para color el cursor
mov dh, conta ; direccionamiento para la fila
mov dl, conta ; direccionamiento para la columna
int 10h    ; interuppcion ejecuta la instruccion 

;impresion de nombre
mov ah, 09h
lea dx, Verso1m
int 21h
mov ah, 09h
mov dx, offset [verso1v]
int 21h


cmp conta, 5 ;if conta=5
jz fin
jmp ciclo

fin:
mov ah, 0 ;peticion para hacer una pausa o espera
int 16h   ; aque presiones una tecla
ret       ; aqui finaliza nuestro progrma

end
