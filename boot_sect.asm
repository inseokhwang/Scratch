mov ah, 0x0e	;Teletype mode on BIOS

mov al, 'H'
int 0x10		;Interrupt 16 - print 
mov al, 'e'
int 0x10
mov al, 'l'
int 0x10
mov al, 'l'
int 0x10
mov al, 'o'
int 0x10

jmp $

times 510-($-$$) db 0

dw 0xaa55