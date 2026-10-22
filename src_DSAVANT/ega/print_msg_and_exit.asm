; auto-generated
print_msg_and_exit:
    mov ah, 9                        ; 0x3a0f
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x3a13
    int 0x21 ; DOS function dispatcher
msg_frame_too_big:
    db 0x0d, 0x0a, 0x07
    db 'Frame '
frame_digit_hi:
    db 0x30
frame_digit_lo:

    db '0 too big in slot '

slot_digit_hi:
    db 0x30
slot_digit_lo:
    db 0x30, 0x2e, 0x00, 0x0a, 0x24
