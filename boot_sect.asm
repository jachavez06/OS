;
; A simple boot sector program that loops forever.
;
[org 0x7c00]

; Scroll window up
mov ah, 6  	; Function number  	
mov al, 0	; Scroll entire window
mov bh, 7	; Normal b&w colors
mov cx, 0	; Upper left is (0,0)
mov dh, 0x18
mov dl, 0x4f	; Combined, lower right is (18h, 4f)
int 10h		; Clear screen

; Set cursor position
mov ah, 2	; Function number
mov bh, 0	; Page number
mov dh, 0	; Cursor row
mov dl, 0	; Cursor column
int 10h		; Move cursor to (0,0)	

%include "print_function.asm"
mov al, 'H'
call print_char
mov al, 'e'
call print_char
mov al, 'l'
call print_char
mov al, 'l'
call print_char
mov al, 'o'
call print_char

; Loop forever
jmp $

; Padding
times 510-($-$$) db 0

; Magic number
dw 0xaa55
