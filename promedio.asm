.model small
.stack 150
.data
    n1 db 0
    n2 db 0
    n3 db 0
    n4 db 051

    r db 0
    rr db 0

    sumam db 10,13,7,'suma de calificaciones:','$'
    divm db 10,13,7,'division de calificaciones:','$'
    numm db 10,13,7,'Ingresa 1ra calificacion:','$'
    num2m db 10,13,7,'Ingresa 2da calificacion:','$'
    num3m db 10,13,7,'Ingresa 3ra calificacion:','$'
    num4m db 10,13,7,'total de materias:  ','$'


.code
    mov ax, seg @data
    mov ds, ax

    mov ah, 09h
    lea dx, numm
    int 21h

    mov ah, 01h    ;captura del numero 1
    int 21h
    sub al, 30h
    mov n1,al

    mov ah, 09h
    lea dx, num2m
    int 21h

    mov ah, 01h    ;captura del numero 2
    int 21h
    sub al, 30h
    mov n2,al


    mov ah, 09h
    lea dx, num3m
    int 21h

    mov ah, 01h    ;captura del numero 3
    int 21h
    sub al, 30h
    mov n3,al

    mov ah, 09h
    lea dx, num4m
    int 21h

    mov ah, 01h    ;captura del total de materias
    int 21h
    sub al, 30h
    mov n4,al



    ;suma
    mov al, n1
    add al,n2
    add al,n3
    mov r, al

    mov ah, 09h
    lea dx, sumam
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

    ;division
    xor ax,ax

    mov al, r
    mov bl, n4
    div bl
    mov rr, al


    mov ah, 09h
    lea dx, divm
    int 21h

    mov al,rr
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


    mov ah, 0 ;peticion para hacer una pausa o espera
    int 16h   ; aque presiones una tecla
    ret       ; aqui finaliza nuestro progrma
end