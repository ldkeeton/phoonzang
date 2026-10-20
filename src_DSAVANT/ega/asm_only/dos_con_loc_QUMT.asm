; auto-generated
; asm only
dos_con_loc_QUMT:
    mov ah, 9                        ; 0x1218
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x121c
    int 0x21 ; DOS function dispatcher
loc_VNMM:
    mov ax, cs                       ; 0x1221
    mov ds, ax                       ; 0x1223
    mov dx, cseg_128c - IMAGE_BASE   ; 0x1225
    mov ah, 9                        ; 0x1228
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x122c
    int 0x21 ; DOS function dispatcher
