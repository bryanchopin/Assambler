.model small
.stack 100
.data


escuela db 'Instituto Tecnologico de tijuana','$'
materia db 'Lenguaje de interfaz','$'
nombre db 'bryan oliveros perez ','$'
control db '17212166 ','$'
carerra db 'ing en sistemas computacionales ','$'

.code

mov ax,@data
mov ds,ax

;limpiar la pantalla

mov ah, 00
mov al, 03h
int 10h



;inicio

mov ah,02h ; peticion para color el cursor
mov dh, 9 ; direccionamiento para la fila
mov dl, 34 ; direccionamiento para la columna
int 10h    ; interuppcion ejecuta la instruccion

mov dx, 196; -
mov ah, 02h
int 21h

mov dx, 000; ESPACIO
mov ah, 02h
int 21h

mov ah,09h;primera linea 
lea dx,escuela  ;carga lo de dx 
int 21h;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

mov ah,02h ; peticion para color el cursor
mov dh, 10 ; direccionamiento para la fila
mov dl, 34 ; direccionamiento para la columna
int 10h    ; interuppcion ejecuta la instruccion

mov dx, 196; -
mov ah, 02h
int 21h

mov dx, 000; ESPACIO
mov ah, 02h
int 21h

mov ah,09h;primera linea 
lea dx,materia  ;carga lo de dx 
int 21h;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

mov ah,02h ; peticion para color el cursor
mov dh, 11 ; direccionamiento para la fila
mov dl, 34 ; direccionamiento para la columna
int 10h    ; interuppcion ejecuta la instruccion

mov dx, 196; -
mov ah, 02h
int 21h

mov dx, 000; ESPACIO
mov ah, 02h
int 21h

mov ah,09h;primera linea 
lea dx,nombre  ;carga lo de dx 
int 21h;


;;;;;;;;;;;;;;;;;;;;;;;;;;

mov ah,02h ; peticion para color el cursor
mov dh, 12 ; direccionamiento para la fila
mov dl, 34 ; direccionamiento para la columna
int 10h    ; interuppcion ejecuta la instruccion

mov dx, 196; -
mov ah, 02h
int 21h

mov dx, 000; ESPACIO
mov ah, 02h
int 21h

mov ah,09h;primera linea 
lea dx,control  ;carga lo de dx 
int 21h;

;;;;;;;;;;;;;;;;;

mov ah,02h ; peticion para color el cursor
mov dh, 13 ; direccionamiento para la fila
mov dl, 34 ; direccionamiento para la columna
int 10h    ; interuppcion ejecuta la instruccion

mov dx, 196; -
mov ah, 02h
int 21h

mov dx, 000; ESPACIO
mov ah, 02h
int 21h

mov ah,09h;primera linea 
lea dx,carerra  ;carga lo de dx 
int 21h;

;;;;;;;;;;;;;;;;;

mov ah, 0 ;peticion para hacer una pausa o espera
int 16h   ; aque presiones una tecla
ret       ; aqui finaliza nuestro progrma

end
