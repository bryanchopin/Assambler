.model small
.stack
.data

    mensaje1 db 13,10 , 'Bryan $'
    mensaje2 db 13,10 , 'Oliveros $'
    mensaje3 db 13,10 , 'Tu de edad es 21 $'
    mensaje4 db 13,10 , 'tu telefono es 6647517720 $'
    mensaje5 db 13,10 , 'tu direccion es: centro calle 6ta $'

    mensajex db 13,10 , 'Deseas volver a imprimir algun dato? : 1:si   2:no $'
    mensajex1 db 13,10 , 'ingresa un numero: $'
    opcion1 db 13,10 , 'Imprimir tu nombre $'
    opcion2 db 13,10 , 'Imprimir tu apellido $'
    opcion3 db 13,10 , 'imprimir tu edad $'
    opcion4 db 13,10 , 'Imprimir tu celular $'
    opcion5 db 13,10 , 'Imprimir tu direccion $'

    op db 13,10 , 'seleccione una opcion: $'
    resp db 1 dup(' '), '$'
    resp1 db 1 dup(' '), '$'

.code
mov ax, seg @data
mov ds, ax


inicio:
    ;limpiar pantalla
    mov ax,00
    mov al,03h
    int 10h

    ;menu
    mov ah,09h
    lea dx, opcion1 
    int 21h

    mov ah,09h
    lea dx, opcion2
    int 21h

    mov ah,09h
    lea dx, opcion3
    int 21h

    mov ah,09h
    lea dx, opcion4
    int 21h

    mov ah,09h
    lea dx, opcion5
    int 21h

    mov ah,09h
    lea dx, op
    int 21h


captura:
    mov ah,3fh
    mov bx,00
    mov cx,100
    mov dx, offset [resp1]
    int 21h

    ;condicion respuesta
    cmp resp1, '1'
    je MensajeIngresoA
    cmp resp1, '2'
    je MensajeIngresoA
    cmp resp1, '3'
    je MensajeIngresoA
    cmp resp1, '4'
    je MensajeIngresoA
    cmp resp1, '5'
    je MensajeIngresoA

MensajeIngresoA:
    ;limpiar pantalla
    mov ax,00
    mov al,03h
    int 10h

    ;pocisionar el cursor
    mov ah,02h
    mov dh,1 ; fila
    mov dl,2 ;columna
    int 10h

    ;mostrar mensaje
    mov ah,09h
    lea dx,mensaje1
    int 21h

MensajeIngresoB:
    ;limpiar pantalla
    mov ax,00
    mov al,03h
    int 10h

    ;pocisionar el cursor
    mov ah,02h
    mov dh,1 ; fila
    mov dl,2 ;columna
    int 10h

    ;mostrar mensaje
    mov ah,09h
    lea dx,mensaje2
    int 21h

MensajeIngresoC:
    ;limpiar pantalla
    mov ax,00
    mov al,03h
    int 10h

    ;pocisionar el cursor
    mov ah,02h
    mov dh,1 ; fila
    mov dl,2 ;columna
    int 10h

    ;mostrar mensaje
    mov ah,09h
    lea dx,mensaje3
    int 21h

MensajeIngresoD:
    ;limpiar pantalla
    mov ax,00
    mov al,03h
    int 10h

    ;pocisionar el cursor
    mov ah,02h
    mov dh,1 ; fila
    mov dl,2 ;columna
    int 10h

    ;mostrar mensaje
    mov ah,09h
    lea dx,mensaje4
    int 21h

MensajeIngresoE:
    ;limpiar pantalla
    mov ax,00
    mov al,03h
    int 10h

    ;pocisionar el cursor
    mov ah,02h
    mov dh,1 ; fila
    mov dl,2 ;columna
    int 10h

    ;mostrar mensaje
    mov ah,09h
    lea dx,mensaje5
    int 21h


VolverPreguntar:
    ;mostrar mensaje
    mov ah,09h
    lea dx,mensajex
    int 21h


    ;captura de respuesta 2
    mov ah,3fh
    mov bx,00
    mov cx,100
    mov dx, offset [resp]
    int 21h

    ;condicion de respuesta
    cmp resp1, '1'
    je inicio
    cmp resp1, '2'
    je fin


fin:
    mov ah,4ah
    int 21h
    end


    