; auto-generated
select_wall_face_index:
    mov ax, 0
    call $csav
    mov ax, word [bp + 4]
    cmp word [side_wall_animation_phase], byte 0
    je short .return1
    mov ax, word [bp + 6]
.return1:
    ret
