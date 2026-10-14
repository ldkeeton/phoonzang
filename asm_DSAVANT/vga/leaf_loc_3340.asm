; auto-generated
leaf_loc_3340:
    mov al, 0x80                     ; 0x3340
    mov dl, al                       ; 0x3342
    xor ax, ax                       ; 0x3344
    mov word [bp - 0x003e], ax       ; 0x3346
    mov bx, word [bp - 0x0036]       ; 0x3349
    mov cx, 8                        ; 0x334c
@..leaf_loc_3340.l1:
    mov al, byte [cs:bx]             ; 0x334f
    and al, dl                       ; 0x3352
    je short @..leaf_loc_3340.l2     ; 0x3354
    add word [bp - 0x003e], strict word 0x140 ; 0x3356
@..leaf_loc_3340.l2:
    ror dl, 1                        ; 0x335b
    loop @..leaf_loc_3340.l1         ; 0x335d
    ret                              ; 0x335f
