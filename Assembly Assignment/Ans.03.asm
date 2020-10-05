;Name: Mohammad Navid Nayyem
;ID: 172014003

;3. As I have uploaded a code which found max from N numbers, there was an error in the code. At first you have to resolve the code. Then, write a single code which will take N input from the user and find out max, again take N input from user and find out min. 

include 'emu8086.inc'  

;For Finding Maximum Number
  
printn "How many numbers for find max"
mov AH,01H  ;Take Input in AL
int 21H     ;Interrupt
mov DL,AL   ;Move AL Value to DL
printn      ;Print New Line
  
print "Enter numbers: "   
mov DX,AX   ;Move AX Value to DX
mov CL,AL   ;Move AL Value to CL
sub CL,'0'  ;Convert Value to Digit
mov BX,0    ;Set the index of BX register to 0
 
p1:
 mov AH,01H ;Take Another Input in AL
 int 21H    ;Interrupt 
 mov [BX],AX;Doing a Loop
 printn     ;Print New Line
 inc BX     ;Increment BX
 dec CL     ;Decrement CL
 cmp CL,0   ;Comparing whether the value of CL is equal to 0  
 jne p1     ;Jump not equal to p1  
 
mov AX,DX   ;Move DX Value to AX
sub AX,'0'  ;Convert Value to Digit
mov CL,AL   ;Move AL Value to CL
mov BX,0    ;Set the index of BX register to 0
mov DL,[BX] ;Doing a Loop
inc BX      ;Increment BX
 
p2: 
 mov AL,[BX];Doing a Loop
 cmp AL,DL  ;Comparing whether the value of DL is equal to AL
 jg label1  ;Jump greater to label1		
 jle func1  ;Jump less equal to func1
 
;Do this two task repeatedly as this is a loop

label1:
 mov DL,AL  ;Move AL Value to DL
 
func1: 
 inc BX     ;Increment BX
 loop p2    ;Continuing the p2 loop
 print "Max: "
 mov AH,02H ;Output
 int 21H    ;Interrupt
      
;For Finding Minimum Number
   
printn     
printn "How many numbers for find min"
mov AH,01H  ;Take Input in AL
int 21H     ;Interrupt
mov DL,AL   ;Move AL Value to DL
printn      ;Print New Line 
 
print "Enter numbers: "   
mov DX,AX   ;Move AX Value to DX
mov CL,AL   ;Move AL Value to CL
sub CL,'0'  ;Convert Value to Digit
mov BX,0    ;Set the index of BX register to 0
 
p3:
 mov AH,01H ;Take Another Input in AL
 int 21H    ;Interrupt 
 mov [BX],AX;Doing a Loop
 printn     ;Print New Line
 inc BX     ;Increment BX
 dec CL     ;Decrement CL
 cmp CL,0   ;Comparing whether the value of CL is equal to 0   
 jne p3     ;Jump not equal to p3  

mov AX,DX   ;Move DX Value to AX
sub AX,'0'  ;Convert Value to Digit
mov CL,AL   ;Move AL Value to CL
mov BX,0    ;Set the index of BX register to 0
 
p4: 
 mov AL,[BX];Doing a Loop
 cmp DL,AL  ;Comparing whether the value of DL is equal to AL
 jg label2  ;Jump greater to label2
 jle func2  ;Jump less equal to func2
 
;Do this two task repeatedly as this is a loop

label2:
 mov DL,AL  ;Move AL Value to DL
 
func2: 
 inc BX     ;Increment BX
 loop p4    ;Continuing the p4 loop
 print "Min: "
 mov AH,02H ;Output
 int 21H    ;Interrupt
      
 mov AX, 4c00h ;Return to MS-DOS
 int 21H       ;Interrupt
 
 ret