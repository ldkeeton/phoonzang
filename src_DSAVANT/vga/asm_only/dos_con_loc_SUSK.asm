; auto-generated
; asm only
dos_con_loc_SUSK:
    mov ax, cs                       ; 0x088f
    mov ds, ax                       ; 0x0891
    mov dx, cseg_089f - IMAGE_BASE   ; 0x0893
    mov ah, 9                        ; 0x0896
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x089a
    int 0x21 ; DOS function dispatcher
cseg_089f:

    db 0x0d, 0x0a, 0x07
    db 'RESTOREAREA called with NULL pointer.', 0
    db 0x0a, 0x24

