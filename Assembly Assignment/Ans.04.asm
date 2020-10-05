;Name: Mohammad Navid Nayyem
;ID: 172014003

;4. Write a code which will input a number which is more than one digit and check whether it is divisible by 2 or not.    

include 'emu8086.inc'                                                                                                     

mov BX,0 ;Set the index of BX register to 0
mov AX,0 ;Set the index of AX register to 0
 
printn "Enter number"     

p1:
 mov AH,01H   ;Take Input in AL
 int 21H      ;Interrupt
      
 cmp AL,13    ;Comparing whether the value of AL is equal to 13
 je label1    ;Jump equal to label1 
     
 sub AL,'0'   ;Convert Value to Digit
 mov [BX],AX  ;Doing a Loop
 inc BX       ;Increment BX
 loop p1      ;Continuing the p1 loop
 
label1:
 printn       ;Print New Line
 dec BX       ;Decrement BX
 mov AL,[BX]  ;Doing a Loop
     
 cmp AL,8     ;Comparing whether the value of AL is equal to 8
 je function1 ;Jump equal to function1 
     
 cmp AL,6     ;Comparing whether the value of AL is equal to 6
 je function1 ;Jump equal to function1 
     
 cmp AL,4     ;Comparing whether the value of AL is equal to 4
 je function1 ;Jump equal to function1 
     
 cmp AL,2     ;Comparing whether the value of AL is equal to 2
 je function1 ;Jump equal to function1
     
 cmp AL,0     ;Comparing whether the value of AL is equal to 0
 je function1 ;Jump equal to function1 
     
printn "Not Divisible by 2" 
ret    
     
function1:
 printn "Divisible by 2"
     
ret   