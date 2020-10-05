;Name: Mohammad Navid Nayyem
;ID: 172014003

;2. Write a single program which will take uppercase string and print the string to lowercase then take lowercase string input and print uppercase of the string.

org 100h

include 'emu8086.inc' 

;Converting from Uppercase to Lowercase String
                         
print "Input Length of Upper String: "
mov AH,01H   ;Take Input in AL
int 21H      ;Interrupt
printn       ;Print New Line 
  
print "Input Enter String Here: "
mov CL,AL    ;Move AL Value to CL
sub CL,'0'   ;Convert Value to Digit
mov DL,CL    ;Move CL Value to DL
mov BX,0     ;Set the index of BX register to 0            
 
p1:
 mov AH,01H  ;Take Another Input in AL
 int 21H     ;Interrupt
 mov [BX],AX ;Doing a Loop
 inc BX      ;Increment BX
 dec CL      ;Decrement CL
 cmp CL,0    ;Comparing whether the value of CL is equal to 0 
 jne p1      ;Jump not equal to p1  
 
printn       ;Print New Line 
mov CL,DL    ;Move DL Value to CL
mov BX,0     ;Set the index of BX register to 0

print "Output: "
output1:     ;Doing a Loop for each index to show output
 mov DL,[BX] ;Doing a Loop
 cmp DL,'A'  ;Comparing whether the value of DL is equal to A(Value: 65) 
 jge label1  ;Jump greater equal to label1
 
 mov AH,02H  ;Output
 int 21H     ;Interrupt
 inc BX      ;Increment BX
 dec CL      ;Decrement CL
 cmp CL,0    ;Comparing whether the value of CL is equal to 0                            
 jne output1 ;Jump not equal to output1 
  
mov AX, 4c00h ;Return to MS-DOS
int 21H       ;Interrupt
 
label1:
 cmp DL,'Z'   ;Comparing whether the value of DL is equal to Z(Value: 90) 
 jle function1;Jump less equal to function1  
 
function1:
 add DL,32   ;Add 32 with DL to convert it in Lowercase String   
 mov AH,02H  ;Output
 int 21H     ;Interrupt
 inc BX      ;Increment BX
 dec CL      ;Decrement CL
 cmp CL,0    ;Comparing whether the value of CL is equal to 0 
 jne output1 ;Jump not equal to output1
 printn      ;Print New Line 
 

;Converting from Lowercase to Uppercase String

printn       ;Print New Line                        
print "Input Length of lower String: "
mov AH,01H   ;Take Input in AL
int 21H      ;Interrupt
printn       ;Print New Line   
 
print "Input Enter String Here: "
mov CL,AL    ;Move AL Value to CL
sub CL,'0'   ;Convert Value to Digit
mov DL,CL    ;Move CL Value to DL
mov BX,0     ;Set the index of BX register to 0              
 
p2:
 mov AH,01H  ;Take Another Input in AL
 int 21H     ;Interrupt 
 mov [BX],AX ;Doing a Loop
 inc BX      ;Increment BX
 dec CL      ;Decrement CL
 cmp CL,0    ;Comparing whether the value of CL is equal to 0 
 jne p2      ;Jump not equal to p2  
 
printn       ;Print New Line
mov CL,DL    ;Move DL Value to CL
mov BX,0     ;Set the index of BX register to 0

print "Output: "
output2:     ;Doing a Loop for each index to show output
 mov DL,[BX] ;Doing a Loop
 cmp DL,'a'  ;Comparing whether the value of DL is equal to a(Value: 97)
 jge label2  ;Jump greater equal to label2
 mov AH,02H  ;Output
 int 21H     ;Interrupt
 inc BX      ;Increment BX
 dec CL      ;Decrement CL
 cmp CL,0    ;Comparing whether the value of CL is equal to 0
 jne output2 ;Jump not equal to output2
  
mov AX, 4c00h ;Return to MS-DOS    
int 21H       ;Interrupt
 
label2:
 cmp DL,'z'    ;Comparing whether the value of DL is equal to z(Value: 122)
 jle function2 ;Jump less equal to function2 
 
function2:
 sub DL,32   ;Substract 32 with DL to convert it in Uppercase String
 mov AH,02H  ;Output
 int 21H     ;Interrupt
 inc BX      ;Increment BX
 dec CL      ;Decrement CL
 cmp CL,0    ;Comparing whether the value of CL is equal to 0
 jne output2 ;Jump not equal to output2
 printn      ;Print New Line

mov AX, 4c00h ;Return to MS-DOS
int 21H       ;Interrupt
 
ret