; auto-generated
wall_overlay_when_enabled:
    mov ax, 0
    call $csav
    mov ax, 0xffff
    cmp word [side_wall_animation_phase], byte 0
    je short .return1
    mov ax, word [bp + 4]
.return1:
    ret
