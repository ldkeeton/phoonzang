; auto-generated
check_frame_index:
    dec ax
    cmp ax, word [bp - 0x12]
    jb short table_entry_ptr
    mov bl, 0xa
    div bl
    or byte [cs:frame_digit_tens - IMAGE_BASE], al
    or byte [cs:frame_digit_ones - IMAGE_BASE], dl
    mov ax, word [bp + 0xc]
    mov bl, 0xa
    div bl
    or byte [cs:slot_digit_tens - IMAGE_BASE], al
    or byte [cs:slot_digit_ones - IMAGE_BASE], dl
frame_too_big_exit:
    mov bx, cs
    mov ds, bx
    mov dx, frame_too_big_message - IMAGE_BASE
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher
frame_too_big_message:
    db 0x0d, 0x0a, 0x07
    db 'Frame '
frame_digit_tens:
    db 0x30
frame_digit_ones:

    db '0 too big in slot '

slot_digit_tens:
    db 0x30
slot_digit_ones:
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
