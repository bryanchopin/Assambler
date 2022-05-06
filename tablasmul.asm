.model small
.stack 100
.data

tabla  db 'tablas de multiplicar','$'
preguntat db 10,13,7,'que tabla desea mostrar','$'
resultadot db 10,13,7,'  =  ','$'
multiplicaciont db 10,13,7,'  *  ','$'


n1 db 0
r db 0

.code

    mov ax,@data
    mov ds,ax

    ;mensaje principal
    mov ah, 09h
    lea dx, tabla
    int 21h

    ;ingreso de tabla
    mov ah, 09h
    lea dx, preguntat
    int 21h

    mov ah, 01h    ;captura del numero de tabla
    int 21h
    sub al, 30h
    mov n1,al

    ciclo:   ; inicia ciclo

    inc conta

    mov dx,048
    mov ah,02h
    int 21h
    

    mov ah, 09h
    lea dx, multiplicaciont
    int 21h

    mov ah, 09h
    lea dx, conta
    int 21h


    ;multi
    mov al, n1
    mov bl, conta
    mul bl   ;se esta realizando la multiplicacion
    mov r, al

    mov ah, 09h
    lea dx, resultadot
    int 21h

    mov al,r
    aam      ;desempacado
    mov bx,ax
    mov ah,02h
    mov dl,bh
    add dl,30h
    int 21h

    mov ah,02h
    mov dl,bl
    add dl,30h
    int 21h




    cmp conta, 9 ;if conta=10
    jz fin
    jmp ciclo

    fin:
    mov ah, 0 ;peticion para hacer una pausa o espera
    int 16h   ; aque presiones una tecla
    ret       ; aqui finaliza nuestro progrma



end
