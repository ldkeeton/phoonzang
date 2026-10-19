; auto-generated
; asm only
dos_con_loc_KVVK:
    mov ax, cs                       ; 0x3d39
    mov ds, ax                       ; 0x3d3b
    mov dx, cseg_3d49 - IMAGE_BASE   ; 0x3d3d
    mov ah, 9                        ; 0x3d40
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x3d44
    int 0x21 ; DOS function dispatcher
cseg_3d49:

    db 0x0d, 0x0a, 0x07
    db 'Error occurred writing to disk', 0
    db 0x0a, 0x24

