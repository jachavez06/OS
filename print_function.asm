; INPUT:
; al = char to print
printc:
  mov ah, 0x0e
  int 0x10
  ret

; Input:
; 
prints:
