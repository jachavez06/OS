; INPUT:
; al = char to print
print_char:
  mov ah, 0x0e
  int 0x10
  ret

print_string:
