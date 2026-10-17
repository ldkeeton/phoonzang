; auto-generated
leaf_loc_MLUK:
    mov ax, word [bp - 0x0004]       ; 0x4a77
    add ax, word [bp - 0x0006]       ; 0x4a7a
    mov cx, 2                        ; 0x4a7d
    cwd                              ; 0x4a80
    idiv cx                          ; 0x4a81
    mov word [bp - 0x000c], ax       ; 0x4a83
    mov ax, 0x248                    ; 0x4a86
    imul word [bp + 0x4]             ; 0x4a89
    mov bx, ax                       ; 0x4a8c
    mov ax, word [bx + 0x5c18]       ; 0x4a8e
    cwd                              ; 0x4a92
    idiv cx                          ; 0x4a93
    mov word [bp - 0x0014], dx       ; 0x4a95
    mov ax, 0x1e                     ; 0x4a98
    cmp word [bp - 0x0014], byte 0   ; 0x4a9b
    jne short @..leaf_loc_MLUK.l1    ; 0x4a9f
    mov ax, 0x20                     ; 0x4aa1
    mov word [bp - 0x0016], 0x20     ; 0x4aa4
@..leaf_loc_MLUK.l1:
    mov word [bp - 0x0016], ax       ; 0x4aa9
    mov word [bp - 0x0018], 1        ; 0x4aac
    jmp near loc_IOTO                ; 0x4ab1
