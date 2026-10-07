math_loc_3bf2:
    mov al, 0x80                     ; 0x3bf2
    mov dl, al                       ; 0x3bf4
    xor ax, ax                       ; 0x3bf6
    mov word [bp - 0x003e], ax       ; 0x3bf8
    mov bx, word [bp - 0x0036]       ; 0x3bfb
    mov cx, 8                        ; 0x3bfe
@..math_loc_3bf2.l1:
    mov al, byte [cs:bx]             ; 0x3c01
    and al, dl                       ; 0x3c04
    je short @..math_loc_3bf2.l2     ; 0x3c06
    add word [bp - 0x003e], strict word 0x140 ; 0x3c08
@..math_loc_3bf2.l2:
    ror dl, 1                        ; 0x3c0d
    loop @..math_loc_3bf2.l1         ; 0x3c0f
    ret                              ; 0x3c11
