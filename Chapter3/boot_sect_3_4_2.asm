[org 0x7c00]	;Set LocationCounter (LC) to 0x7c00. 
mov ah, 0x0e	;Teletype mode on BIOS

mov al, the_secret		;print the_secret (the lable)
int 0x10

mov al, [the_secret]	;print the value of the_secret
int 0x10

mov bx, the_secret
add bx, 0x7c00			;BIOS boot_sect loaded location
mov al, [bx]			;offset it by the_secret
int 0x10

mov al, [0x7c1d]		;Adding the location offset and boot_sect loaded location
int 0x10

jmp $

the_secret:
db 'X'

db 'string', 0 			;Add 0 at the end to indicate end of a string

times 510-($-$$) db 0

dw 0xaa55