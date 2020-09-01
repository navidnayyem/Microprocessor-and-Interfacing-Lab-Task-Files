org 100h
include 'emu8086.inc'   

PRINT 'Enter Length of String: ';Print line
mov AH, 01h ;Take Input in AL
int 21h ;Interrupt

printn ;Print New Line
print 'Enter String: ';Print line
mov CL,AL   ;Keep AL Value in CL 
sub CL,'0'  ;Convert Value to Digit
mov DL,CL   ;Move CL Value in DL Register
mov BX,0

p1:  
mov AH,01h  ;Take Input in AL
int 21h     ;Interrupt  
mov [BX],AX ;Doing a loop by transfering [x+bx] element to AX
inc BX	    ;Incrementing BX Register
dec CL      ;Decrement CL Registor
cmp CL,0    ;Comparing  
jne p1      ;Jump to p1 Instruction    
 
printn
PRINT 'Reverse String: '
 
mov CL,DL   ;Move DL Value in CL Register   
mov BX,CX
sub BX,1

output:
mov DL,[BX]
mov AH,02h  ;Show Output
int 21h     ;Interrupt  
dec BX      ;Decrement BX Register
cmp BX,-1   ;Comparing  
jne output  ;Jump to Output Instruction 

mov AX, 4c00h ; return to ms-dos  // essential line 
int 21h ;Interrupt
ret