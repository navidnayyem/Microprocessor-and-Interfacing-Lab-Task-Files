org 100h

MOV AH,01H         ; take input in AL
INT 21H
                     

Add AL,32            ; convert into lowercase

 
MOV DL,AL           ; keep AL value in DL 
 
 
mov ah, 02h          ; show output
int 21h 
                
                
                
mov ah, 4ch             ; means getch()
int 21h
 
ret




