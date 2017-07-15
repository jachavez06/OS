; INPUT: al = char to print.
printc:
  mov ah, 0x0e
  int 0x10
  ret

; Input: bx = string to print.
prints:
  push eax                ; Push eax because will use al
  prints_loop:
    cmp byte [bx], 0      ; Check that char non-null
    je prints_end         ; End if == 0
    mov al, [bx]          ; Move contents of current address to al
    call printc           ; Print al
    add bx, 1             ; Increment by 1
    jmp prints_loop       ; loop
  prints_end:
    pop eax               ; Return eax to original value
    ret
