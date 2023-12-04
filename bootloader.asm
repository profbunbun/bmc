; bootloader.asm
[org 0x7c00]
bits 16
jmp near start
start:
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

times 510 - ($ - $$) db 0 ; Fill the rest of the 512-byte bootloader with zeros
dw 0xAA55 ; Boot signature
