; auto-generated
check_frame_index:
    dec ax
    cmp ax, word [bp - 0x12]
    jb short table_entry_ptr
    mov bl, 0xa
    div bl
    or byte [cs:check_frame_index.frame_digit_hi1 - IMAGE_BASE], al
    or byte [cs:check_frame_index.frame_digit_lo1 - IMAGE_BASE], dl
    mov ax, word [bp + 0xc]
    mov bl, 0xa
    div bl
    or byte [cs:check_frame_index.slot_digit_hi1 - IMAGE_BASE], al
    or byte [cs:check_frame_index.slot_digit_lo1 - IMAGE_BASE], dl
check_frame_index.loc1:
    mov bx, cs
    mov ds, bx
    mov dx, check_frame_index.msg_frame_too_big1 - IMAGE_BASE
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher
check_frame_index.msg_frame_too_big1:
    db 0x0d, 0x0a, 0x07
    db 'Frame '
check_frame_index.frame_digit_hi1:
    db 0x30
check_frame_index.frame_digit_lo1:

    db '0 too big in slot '

check_frame_index.slot_digit_hi1:
    db 0x30
check_frame_index.slot_digit_lo1:
    db 0x30, 0x2e, 0x00, 0x0a, 0x24
table_entry_ptr:
    mov cl, 2
    shl al, cl
    mov bx, 2
    add bx, ax
    mov ax, word [bx]
    mov dx, word [bx + 2]
    mov bx, ds
    add bx, dx
    mov ds, bx
    mov bx, ax
    ret
