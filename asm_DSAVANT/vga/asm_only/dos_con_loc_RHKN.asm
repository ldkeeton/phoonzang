; auto-generated
; asm only
dos_con_loc_RHKN:
    mov ax, cs                       ; 0x0a8d
    mov ds, ax                       ; 0x0a8f
    mov dx, 0xb9d                    ; 0x0a91
    mov ah, 9                        ; 0x0a94
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x0a98
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'SAVE_SCREEN called with table full.', 0
    db 0x0a, 0x24

cseg_0ac6:

    times 228 db 0

cseg_0baa:
    db 0x00, 0x00
cseg_0bac:
    db 0x00, 0x00
