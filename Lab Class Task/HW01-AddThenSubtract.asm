org 100h
include 'emu8086.inc'

mov AH, 01h ;Take Input in AL
int 21h     ;Interrupt 
mov DL,AL   ;Keep AL Value in DL 

PRINT "+"   ;Print (+) Symbol
 
mov AH, 01h ;Take Another Input in AL
int 21h     ;Interrupt                  
  
PRINT "="   ;Print (=) Symbol  

add DL,AL   ;Add Two Numbers
sub DL,'0'  ;Convert Value to Digit
mov AH, 02h ;Show Output of Addition
int 21h     ;Interrupt     

PRINT "-"   ;Print (-) Symbol    

mov AH, 01h ;Take Another Input in AL for Substraction
int 21h     ;Interrupt                                         

PRINT "="   ;Print (=) Symbol 

sub DL,AL   ;Substract
add DL,'0'  ;Convert Value to Digit
mov AH, 02h ;Show Output
int 21h     ;Interrupt  
                              
ret