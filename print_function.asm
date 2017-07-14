; INPUT:
; al = char to print
print_char:
  pusha
  mov ah, 0x0e
  int 0x10
  popa
  ret
