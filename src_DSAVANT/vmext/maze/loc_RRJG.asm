; auto-generated
loc_RRJG:
    mov ax, 0                        ; 0x19e4
    call aztec_csav                  ; 0x19e7
    mov ax, 6                        ; 0x19ea
    push ax                          ; 0x19ed
    push word [bp + 0x4]             ; 0x19ee
    mov ax, word [maze_data]         ; 0x19f1
    add ax, 0x4b0                    ; 0x19f4
    push ax                          ; 0x19f7
    call ds_leaf_loc_NPSL            ; 0x19f8
    add sp, byte 6                   ; 0x19fb
    mov bx, word [bp + 0x6]          ; 0x19fe
    mov word [bx], ax                ; 0x1a01
    mov ax, 2                        ; 0x1a03
    push ax                          ; 0x1a06
    push word [bp + 0x4]             ; 0x1a07
    mov ax, word [maze_data]         ; 0x1a0a
    add ax, 0x7b0                    ; 0x1a0d
    push ax                          ; 0x1a10
    call ds_leaf_loc_NPSL            ; 0x1a11
    add sp, byte 6                   ; 0x1a14
    mov bx, word [bp + 0x8]          ; 0x1a17
    mov word [bx], ax                ; 0x1a1a
    ret                              ; 0x1a1c
