;Name: Mohammad Navid Nayyem
;ID: 172014003

;6. Take N input and find which one is even or odd. If even print 'e' else print 'o'

include 'emu8086.inc'

print "Enter Length of Number: "

mov AH, 01h  ;Take Input in AL
int 21H      ;Interrupt

mov CL,AL    ;Move AL Value to cL
sub CL,'0'   ;Convert Value to Digit

printn       ;Print New Line
printn "Enter Number: "

p:
 mov AH,01H  ;Take Another Input in AL
 int 21H     ;Interrupt

 mov AH,0    ;Set the index of AH register to 0
 mov DL,2    ;Put the value of DL to 2

 div DL      ;quotient al = ax / dl ; reminder ah = ax % al
  
 dec CL      ;Decrement CL
 cmp AH,0    ;Comparing whether the value of AH is equal to 0
 je even     ;Jump equal to even

 print 'o'   ;Print o as 'odd'

 cmp CL,0    ;Comparing whether the value of CL is equal to 0
 jne p       ;Jump not equal to p

even:
 print 'e'   ;Print e as 'even'
 cmp CL,0    ;Comparing whether the value of CL is equal to 0
 jne p       ;Jump not equal to p

ret