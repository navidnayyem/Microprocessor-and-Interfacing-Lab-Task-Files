MOV CX, 0         

WhileLp:        cmp     CX, 5
                jge     WhileDone
                MOV DL, '*'
                MOV     AH, 02H
                INT     21H        
                
                inc     CX
                jmp     WhileLp

WhileDone:
