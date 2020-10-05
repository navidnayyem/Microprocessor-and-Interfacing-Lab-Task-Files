; Displaying  a string

include 'emu8086.inc'   ; you have to write this line 

 PRINT 'Size of String: '
 mov ah,1h
 int 21h
                               
 printn                 
 
 print "String: "
 mov cl,al
 sub cl,'0'         ; substract instruction
 mov dl,cl          ; mov means move the content of cl registor to dl 
 mov bx,0
 
 p1:  
 
 mov ah,1h
 int 21h            ; again input  
 
 mov [bx],ax        ; doing a loop by transfering [x+bx] element to ax
 inc bx	            ; incrementing bx regitor
 dec cl
 cmp cl,0           ; comparing  
 jne p1             ; jump to instruction p1    
 
 printn
 PRINT 'Output: '
 
 mov cl,dl
 mov bx,0

 output: 
 inc bx  ; Before output the bx is incremented
 mov dl,[bx]
 
 mov ah,2h
 int 21h    
 inc bx 
  
 dec cl   
 cmp cl,3  ; compare whether the cl value is equal to 3
 jne output 
 printn     
 
 mov ax, 4c00h ; return to ms-dos  // essential line 
 int 21h

ret