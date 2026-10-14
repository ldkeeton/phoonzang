; auto-generated
leaf_loc_TUPL:
    mov ax, 0x248                    ; 0x127d
    imul word [bp - 0x0006]          ; 0x1280
    mov bx, ax                       ; 0x1283
    mov al, byte [bx + 0x5e32]       ; 0x1285
    sub ah, ah                       ; 0x1289
    cmp ax, word [bp - 0x000a]       ; 0x128b
    jge short @..leaf_loc_TUPL.l1    ; 0x128e
    mov al, byte [bp - 0x000a]       ; 0x1290
    mov byte [bx + 0x5e32], al       ; 0x1293
@..leaf_loc_TUPL.l1:
    mov al, byte [bx + 0x5d5f]       ; 0x1297
    sub ah, ah                       ; 0x129b
    cmp ax, word [bp - 0x000e]       ; 0x129d
    jge short @..leaf_loc_TUPL.l2    ; 0x12a0
    mov al, byte [bp - 0x000e]       ; 0x12a2
    mov byte [bx + 0x5d5f], al       ; 0x12a5
@..leaf_loc_TUPL.l2:
    jmp near loc_1325                ; 0x12a9
