; hello.asm
[org 0x7e00]
bits 16

mov ah, 0x0E ; BIOS teletype function
mov al, 'H'
int 10h
mov al, 'e'
int 10h
mov al, 'l'
int 10h
mov al, 'l'
int 10h
mov al, 'o'
int 10h

jmp $

times 512 - ($ - $$) db 0 ; Fill the entire 512-byte program with zeros
