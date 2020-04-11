name "flags"

org 100h
                                        


; now a little game:
firstValue:  
       mov dx, offset msg1
       mov ah, 9
       int 21h                   

       ; read character in al:
       mov ah, 1 
       int 21h
       
       mov dx, offset msg2
       mov bh, 9
       int 21h                   

       ; read character in bl:
       mov bh, 1 
       int 21h

       cmp al, '0'
       jb stop

       cmp al, '9'
       ja stop

       cmp al, '5'
       jb below
       ja above
       mov dx, offset equal_5
       
       mov ah, 9
       int 21h   
       
       jmp secondValue ; loop.

secondValue:  
       mov dx, offset msg2
       mov bh, 9
       int 21h                   

       ; read character in bl:
       mov bh, 1 
       int 21h

       cmp bl, '0'
       jb stop

       cmp bl, '9'
       ja stop

       cmp bl, '5'
       jb below
       ja above
       mov dx, offset equal_5  
       
       mov ah, 9
       int 21h   
       
       jmp secondValue; loop.
below: mov dx, offset below_5     
       jmp print
above: mov dx, offset above_5
print: mov ah, 9
       int 21h
       jmp firstValue ; loop.


stop: ret  ; stop


msg1 db "digite o primeiro valor:  $" 

msg2 db "digite o segundo valor:  $"
equal_5 db " is five! (equal)", 0Dh,0Ah, "$"
below_5 db " is below five!" , 0Dh,0Ah, "$"
above_5 db " is above five!" , 0Dh,0Ah, "$"


