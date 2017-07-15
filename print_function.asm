; INPUT: al = char to print.
printc:
  mov ah, 0x0e
  int 0x10
  ret

; Input: bx = string to print.
prints:
  cmp byte [bx], 0      ; Check that char non-null
  je end                ; End if == 0
  mov al, [bx]          ; Move contents of current address to al
  call printc           ; Print al
  add bx, 1             ; Increment by 1
  jmp prints            ; loop

  
 end:
  ret
