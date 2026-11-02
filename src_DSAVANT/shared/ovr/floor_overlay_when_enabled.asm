; auto-generated
floor_overlay_when_enabled:
    mov ax, 0
    call aztec_csav
    mov ax, 0xffff
    cmp word [maze_floor_layer_enabled], byte 0
    je short .return1
    mov ax, word [bp + 4]
.return1:
    ret
