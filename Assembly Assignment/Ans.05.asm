;Name: Mohammad Navid Nayyem
;ID: 172014003

;5. Convert a decimal number into an octal number.

include 'emu8086.inc'
 
print "Enter a Decimal Number: "
mov AH,01H   ;Take Input in AL 
int 21H      ;Interrupt
 
sub AL,'0'   ;Taking Input as a char so substract 48 to get the original number
mov BX,0     ;Set the index of BX register to 0
mov CL,0     ;Set the index of AX register to 0
 
printn       ;Print New Line
print "Octal Number is: "
 
convert:
 mov AH,0    ;Set the index of AH register to 0
 mov DL,8    ;to get octal form number must be divided by 8
 div DL      ;al = ax / dl ; ah = ax % dl    
     
 mov DL,AL   ;Move AL Value to DL
 mov AL,AH   ;Move AH Value to AL
 mov AH,0    ;Set the index of AH register to 0
 mov [BX], AX;Save the reminder in the ArrayList
     
 mov AL,DL   ;Move DL Value to AL
 inc BX      ;Increment BX
 inc CL      ;Increment CL
 cmp AL,0    ;Comparing whether the value of AL is equal to 0
 jne convert ;Jump not equal to convert 
 
 dec BX      ;Decrement BX
 
output:  
 mov DL, [BX];Store the last number of the array in dl to get output
 add DL, 48  ;Getting Input as a char so add 48 to get the original number
 mov AH,02H  ;Output Value starting from the last number in the array
 int 21H     ;Interrupt
  
 dec BX      ;Decrement BX
 dec CL      ;Decrement CL
 cmp CL,0    ;Comparing whether the value of CL is equal to 0
 jne output  ;Jump not equal to output 
     
mov AX, 4c00h;Return to MS-DOS
int 21H      ;Interrupt
               
ret