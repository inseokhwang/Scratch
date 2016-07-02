print_string:
pusha
mov ah, 0x0e

iterate:
mov al, [bx]
cmp al, 0
je done
int 0x10
add bx, 1
jmp iterate

done:
popa
ret