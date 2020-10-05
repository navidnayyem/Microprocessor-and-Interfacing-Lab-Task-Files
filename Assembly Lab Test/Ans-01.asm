include 'emu8086.inc'  

PRINT 'String size: '
mov ah,1h
int 21h
printn                 
print "Enter string: "
mov cl,al
sub cl,'0'         
mov dl,cl         
mov bx,0

p1:  
 mov ah,1h
 int 21h              
 mov [bx],ax        
 inc bx	           
 dec cl
 cmp cl,0          
 jne p1                
 printn
 mov cl,dl
 mov bx,0
 
output: 
 mov dl,[bx]
 mov ah,2h
 int 21h    
 inc bx 
 inc bx  
 dec cl   
 cmp cl,2  
 jne output 
 printn     
 mov ax, 4c00h  
 int 21h
ret


