org 100h

mov ah,01h       ; take input in AL
int 21h

mov dl,al

mov ah,02h         ; show output
int 21h

mov ah,4ch          ; means getch()
int 21h

 
ret




