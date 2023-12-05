org 0x7C00                      
bits 16                     

start:
	cli                   
	mov si, msg           
	mov ah, 0x0E        
.loop	lodsb               
	or al, al             
	jz halt                 
	int 0x10        
	jmp .loop               

halt:	hlt                     
msg:	db "BOOOOOOOOTY!", 0   

;; Magic numbers
times 510 - ($ - $$) db 0
dw 0xAA55