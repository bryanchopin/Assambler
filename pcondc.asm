model small
.stack 100
.data

escuela db 'Instituto tecnologico de tijuana' , '$'
alumno db 'Bryan oliveros perez' , '$'
materia db 'Lenguaje de interfaz' , '$'
ncontrol db '17212166' , '$'

.code; texto

mov ax, @data
mov ds, ax

;limpiar la pantalla
mov ah, 00
mov al, 03h
int 10h

mov ah,02h; peticion para colocar el cursor en renglones y columnas
mov dh, 11; direccionamiento  para la fila
mov dl,34; direccionamiento para la columna
int 10h; genera la interrupcion

mov ah, 09h;primera linea
lea dx, escuela; carga lo de dx
int 21h;



mov ah,02h; peticion para colocar el cursor en renglones y columnas
mov dh, 11; direccionamiento  para la fila
mov dl,35; direccionamiento para la columna
int 10h; genera la interrupcion

mov ah, 09h;primera linea
lea dx, alumno; carga lo de dx
int 21h;



mov ah,02h; peticion para colocar el cursor en renglones y columnas
mov dh, 11; direccionamiento  para la fila
mov dl,36; direccionamiento para la columna
int 10h; genera la interrupcion

mov ah, 09h;primera linea
lea dx, materia; carga lo de dx
int 21h;



mov ah,02h; peticion para colocar el cursor en renglones y columnas
mov dh, 11; direccionamiento  para la fila
mov dl,37; direccionamiento para la columna
int 10h; genera la interrupcion

mov ah, 09h;primera linea
lea dx, ncontrol; carga lo de dx
int 21h;

end