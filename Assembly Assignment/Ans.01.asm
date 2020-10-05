;Name: Mohammad Navid Nayyem
;ID: 172014003

;1.	Take five inputs and calculate 1st subtract, then sum, then subtract then sum.

org 100h

mov AH, 01H  ;Take Input in AL
int 21H      ;Interrupt
 
mov DL,AL    ;Move AL Value to DL 
 
mov AH, 01h  ;Take Another Input in AL
int 21h                 

sub DL,AL    ;Subtract Two Numbers
add DL,'0'   ;Convert Value to Digit
                                                                  
mov AH, 02H  ;Output
int 21h      ;Interrupt           
                                                      
mov DL,AL    ;Move AL Value to DL 

mov AH, 01H  ;Take Another Input in AL
int 21h 

add DL,AL    ;Add Two Numbers
sub DL,'0'   ;Convert Value to Digit  

mov AH, 02H  ;Output
int 21H      ;Interrupt                      

mov DL,AL    ;Move AL Value to DL 

mov AH, 01H  ;Take Another Input in AL
int 21H      ;Interrupt

sub DL,AL    ;Substract Two Numbers
add DL,'0'   ;Convert Value to Digit
 
mov AH, 02H  ;Output
int 21H      ;Interrupt 

mov DL,AL    ;Move AL Value to DL 

mov AH, 01H  ;Take Another Input in AL
int 21h      ;Interrupt

add DL,AL    ;Add Two Numbers
sub DL,'0'   ;Convert Value to Digit 

mov AH, 02H  ;Output
int 21H      ;Interrupt
               
mov AH, 4ch  ;Means getch()        
int 21H      ;Interrupt
 
ret