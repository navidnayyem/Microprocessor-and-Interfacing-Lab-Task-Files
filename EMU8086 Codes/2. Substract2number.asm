org 100h

mov ah, 01h         ; take input in AL
int 21h

 
MOV DL,AL           ; keep AL value in DL 
 
mov ah, 01h         ; take another input in AL
int 21h                                        



SUB DL,AL            ; Substract TWO NUMBER

ADD DL,'0'            ; convert to digit.

 
mov ah, 02h          ; show output
int 21h 
                
                
                
mov ah, 4ch             ; means getch()
int 21h

 
ret




