;
; A simple boot sector program that loops forever.
;

; GRAPHICS MODE
; mov ax, 0
; int 10h

MOV AH, 6    ;THIS WILL CLEAR SCREEN
MOV AL, 0
MOV BH, 7
MOV CX, 0
MOV DL, 79
MOV DH, 24
INT 10H

MOV AH,2       ;THIS WILL CONTROL CURSOR LOCATION
MOV BH,0
MOV DH,0
MOV DL,0
INT 10H

jmp $


times 510-($-$$) db 0

dw 0xaa55
