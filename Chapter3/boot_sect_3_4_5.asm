mov ah, 0x0e 	; Scrolling teletype for BIOS

mov bp, 0x8000	; Set the base of stack
mov sp, bp

push 'A'
push 'B'
push 'C'

pop bx				; popping from 0x8000
mov al, bl
int 0x10

pop bx				; popping from 0x7fff
mov al, bl
int 0x10

mov al, [0x7ffe]	; popping from 0x7ffe

int 0x10

jmp $

times 510-($-$$) db 0
dw 0xaa55