;Converting String from Uppercase to Lowercase

include 'emu8086.inc'

PRINT 'Enter Length of Uppercase String: '
mov AH,01h ;Take Input in AL
int 21h    ;Interrupt 
PRINTN     ;Print New Line   
 
PRINT 'Enter Uppercase String Here: '
mov CL,AL  ;Move AL Value in CL 
sub CL,'0' ;Convert Value to Digit
mov DL,CL  ;Move CL Value in DL
mov BX,0   ;Move the BX index to 0              
 
p1:
mov AH,01h ;Take Input in AL
int 21h    ;Interrupt 
mov [BX],AX;Doing a Loop    
inc BX     ;Increment BX
dec CL     ;Decrement CL
cmp CL,0   ;Comparing whether the value of CL is equal to 0
jne p1     ;Jump not equal to p1 
PRINTN     ;Print New Line 

PRINT 'Lowercase String Output: '
mov CL,DL  ;Move DL Value in CL 
mov BX,0   ;Move the BX index to 0 

output:    ;Doing a Loop Again and check input is 'A' and 'Z' 
mov DL,[BX]
cmp DL,'A' ;Comparing whether the value of DL is equal to 'A'
jge label1 ;Jump greater equal to label1
;print    
mov AH,02h ;Show Output
int 21h    ;Interrupt
inc BX     ;Increment BX
dec CL     ;Decrement CL
cmp CL,0   ;Comparing whether the value of CL is equal to 0
jne output ;Jump not equal to output 
ret        ;Halt Emulator

label1:
cmp DL,'Z' ;Comparing whether the value of DL is equal to 'Z'
jle func1  ;Jump less equal to func1

func1:       
add DL,32  ;Add 32 with DL to convert it in Lowercase String       
mov AH,02h ;Show Output
int 21h    ;Interrupt
inc BX     ;Increment BX
dec CL     ;Decrement CL
cmp CL,0   ;Comparing whether the value of CL is equal to 0
jne output
PRINTN
 
mov AX, 4c00h ;Return to MS-DOS
int 21h ;Interrupt
 
ret