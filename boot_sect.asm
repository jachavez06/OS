;
; A simple boot sector program.
;
[org 0x7c00]  ; Allow to use Labels w/o adding  0x7c00

; Scroll window up
mov ah, 6  	  ; Function number  	
mov al, 0	    ; Scroll entire window
mov bh, 7	    ; Normal b&w colors
mov cx, 0	    ; Upper left is (0,0)
mov dh, 0x18
mov dl, 0x4f	; Combined, lower right is (18h, 4f)
int 0x10		  ; Clear screen

; Set cursor position
mov ah, 2	    ; Function number
mov bh, 0	    ; Page number
mov dh, 0	    ; Cursor row
mov dl, 0	    ; Cursor column
int 0x10		  ; Move cursor to (0,0)	

; Print string
mov al, [bx]
call prints

; Print first letter
mov bx, my_string
mov al, [bx]
call print_char

looping:
  add bx, 1
  cmp byte [bx],0
  je end
  mov al, [bx]
  call print_char
  jmp looping
end:


jmp $         ; Hang

my_string:
  db 'Boot OS',0
  
%include "print_function.asm"

; Padding
times 510-($-$$) db 0

; Magic number
dw 0xaa55
